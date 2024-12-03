import 'package:flutter/material.dart';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:audioplayers/audioplayers.dart';
class Reader{
  FlutterTts flutterTts = FlutterTts();
  Future speak(String text) async {
    var x= await flutterTts.setLanguage('ar');
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(text);

  }
}