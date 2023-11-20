package com.kitegroup.watchtower;

import WatchtowerScreenRecordingApi
import WatchtowerScreenRecordingFlutterListener
import android.annotation.SuppressLint
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding

class WatchtowerPlugin : FlutterPlugin, ActivityAware {
    companion object {
        @SuppressLint("StaticFieldLeak")
        lateinit var screenRecordingFlutterListener: WatchtowerScreenRecordingFlutterListener
    }

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        val api = WatchtowerSessionRecording()
        ScreenRecorderInitializer()
        WatchtowerScreenRecordingApi.setUp(binding.getBinaryMessenger(), api)
        screenRecordingFlutterListener =
            WatchtowerScreenRecordingFlutterListener(binding.getBinaryMessenger())
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {

    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {

    }

    override fun onDetachedFromActivityForConfigChanges() {

    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    }

    override fun onDetachedFromActivity() {
    }

}