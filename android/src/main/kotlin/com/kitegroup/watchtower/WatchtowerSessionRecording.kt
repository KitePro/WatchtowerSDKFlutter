package com.kitegroup.watchtower

import WatchtowerScreenRecordingApi
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.view.PixelCopy
import android.view.SurfaceView
import android.view.View
import android.view.ViewGroup
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import java.io.ByteArrayOutputStream


class WatchtowerSessionRecording : WatchtowerScreenRecordingApi{

    override fun startRecorder(interval: Long) {

        CoroutineScope(Dispatchers.Default).launch {
            while (true) {
                takeScreenshot()
                delay(interval)
            }
        }
    }

    private fun takeScreenshot(){

        val activity = ScreenRec.currentActivity ?: return

        val window = activity.window
        val view = window.decorView.rootView

        val surfaceView = getSurfaceView(view) ?: return

        val surface = surfaceView.holder.surface

        if(!surface.isValid) return

        var bitmap : Bitmap
        val scale = view.width.toFloat() / view.height.toFloat()
        val resolution = 640
        val height = resolution
        val width = (resolution * scale).toInt()

        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            PixelCopy.request(
                surfaceView,
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
    }

    private fun getSurfaceView(view: View): SurfaceView?{
        var surfaceView: SurfaceView? = null
        traverseView(view) {
                v -> if(v is SurfaceView) surfaceView = v
        }
        return surfaceView
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