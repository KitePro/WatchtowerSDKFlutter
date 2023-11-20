package com.kitegroup.watchtower

import WatchtowerScreenRecordingApi
import android.annotation.TargetApi
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.view.PixelCopy
import android.view.View
import android.view.ViewGroup
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import java.io.ByteArrayOutputStream
import io.flutter.embedding.android.FlutterSurfaceView


class WatchtowerSessionRecording : WatchtowerScreenRecordingApi {
    override fun startRecorder(interval: Long) {
        CoroutineScope(Dispatchers.Default).launch {
            while (true) {
                takeScreenshot()
                delay(interval)
            }
        }
    }

    @TargetApi(Build.VERSION_CODES.O)
    private fun takeScreenshot() {
        if (WatchtowerPlugin.activity == null) return


        try {
            val activity = WatchtowerPlugin.activity!!
            val window = activity.window
            val view = window.decorView.rootView
            val scale = view.width.toFloat() / view.height.toFloat()
            val resolution = 640
            val height = resolution
            val width = (resolution * scale).toInt()
            var bitmap : Bitmap
            val flutterSurfaceView = getFlutterSurfaceView(view)

            if(flutterSurfaceView == null) return

            val surface = flutterSurfaceView.holder.surface

            if(!surface.isValid) return

            if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
                PixelCopy.request(
                    flutterSurfaceView,
                    bitmap,
                    { copyResult ->
                        if (copyResult == PixelCopy.SUCCESS) {
                            val stream = ByteArrayOutputStream()
                            bitmap.compress(Bitmap.CompressFormat.PNG, 10, stream)
                            WatchtowerPlugin.screenRecordingFlutterListener.takeScreenshot(stream.toByteArray()) {}
                        }
                        bitmap.recycle()
                    },
                    Handler(Looper.getMainLooper())
                )
            }
            else{
                bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565)
                val canvas = Canvas(bitmap)
                view.draw(canvas)
                canvas.setBitmap(null)
                val stream = ByteArrayOutputStream()
                bitmap.compress(Bitmap.CompressFormat.PNG, 10, stream)
                WatchtowerPlugin.screenRecordingFlutterListener.takeScreenshot(stream.toByteArray()) {}
            }
        } catch (e: Exception) {
            Log.e("Take screenshot", e.toString())
        }
    }

    private fun getFlutterSurfaceView(view: View): FlutterSurfaceView?{
        var flutterSurfaceView: FlutterSurfaceView? = null
        traverseView(view) {
            v -> if(v is FlutterSurfaceView) flutterSurfaceView = v
        }
        return flutterSurfaceView
    }

    private fun traverseView(view: View, callback: (View) -> Unit){
        callback(view)
        if(view is ViewGroup){
            for (i in 0 until view.childCount){
                traverseView(view.getChildAt(i), callback)
            }
        }
    }
}