package com.octacoresoftwares.message_parser

import com.example.messageparserlibrary.MessageParser
import io.flutter.app.FlutterApplication

class ParserApplication: FlutterApplication() {

    override fun onCreate() {
        super.onCreate()
        MessageParser.initialize(this)
    }
}