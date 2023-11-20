package com.kitegroup.watchtower;

import WatchtowerScreenRecordingApi
import WatchtowerScreenRecordingFlutterListener
import android.annotation.SuppressLint
import android.app.Activity
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding


class WatchtowerPlugin : FlutterPlugin, ActivityAware {
    companion object {
        @SuppressLint("StaticFieldLeak")
        var activity: Activity? = null
        lateinit var screenRecordingFlutterListener: WatchtowerScreenRecordingFlutterListener
    }

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        val api = WatchtowerSessionRecording()
        WatchtowerScreenRecordingApi.setUp(binding.getBinaryMessenger(), api)
        screenRecordingFlutterListener = WatchtowerScreenRecordingFlutterListener(binding.getBinaryMessenger())
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {

    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivity() {
        activity = null
    }

}