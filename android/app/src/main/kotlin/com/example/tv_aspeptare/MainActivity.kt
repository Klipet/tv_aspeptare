package com.example.tv_aspeptare
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity(){
   //
     private lateinit var kiosk: KioskManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        kiosk = KioskManager(this)

        kiosk.hideSystemUI()
        kiosk.enableKioskMode()
    }
}
