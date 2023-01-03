
import 'package:flutter/material.dart';
import 'package:instagram/screen/bottom_screen/home_page.dart';
import 'package:instagram/screen/bottom_screen/like.dart';
import 'package:instagram/screen/bottom_screen/profile.dart';
import 'package:instagram/screen/bottom_screen/reel.dart';
import 'package:instagram/screen/bottom_screen/search.dart';
import 'package:instagram/screen/home.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/' : (context) => Home(),
        'homepage' : (context) => HomePage(),
        'search' : (context) => Search(),
        'reel' : (context) => Reel(),
        'like' : (context) => Like(),
        'profile' : (context) => Profile(),
      },
    ),
  );
}