package com.example.tv_aspeptare

import android.app.Activity
import android.app.admin.DevicePolicyManager
import android.content.ComponentName
import android.content.Context
import android.view.View

class KioskManager(private val activity: Activity) {

    private val dpm =
        activity.getSystemService(Context.DEVICE_POLICY_SERVICE) as DevicePolicyManager

    private val admin =
        ComponentName(activity, MyAdminReceiver::class.java)

    fun enableKioskMode() {
        if (dpm.isDeviceOwnerApp(activity.packageName)) {

            dpm.setLockTaskPackages(admin, arrayOf(activity.packageName))
            activity.startLockTask()
        }
    }

    fun hideSystemUI() {
        activity.window.decorView.systemUiVisibility =
            View.SYSTEM_UI_FLAG_FULLSCREEN or
                    View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
    }
}