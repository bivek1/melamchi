import 'dart:js';

import 'package:flutter/material.dart';
import 'package:melamchi/pages/event.dart';
import 'package:melamchi/pages/homepage.dart';
import 'package:melamchi/pages/maps.dart';
import 'package:melamchi/pages/news.dart';
import 'package:melamchi/pages/picture.dart';
import 'package:melamchi/pages/video.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homepage',
    routes: {
      'homepage': (context) => MyHomepage(),
      'customer_news': (context) => CustomerNews(),
      'customer_event': (context) => CustomerEvent(),
      'customer_photo': (context) => Picture(),
      'customer_video': (context) => VideoPage(),
      'map': (context) => MyMap(),
    },
  ));
}
