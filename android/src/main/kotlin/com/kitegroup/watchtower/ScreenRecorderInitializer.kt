package com.kitegroup.watchtower

import android.app.Application
import android.content.Context
import androidx.startup.Initializer
class ScreenRecorderInitializer: Initializer<ScreenRec> {
    override fun create(context: Context): ScreenRec {
        val screenRec = ScreenRec()
        screenRec.init(context as Application)
        return screenRec
    }

    override fun dependencies(): List<Class<out Initializer<*>>> {
        return emptyList()
    }
}