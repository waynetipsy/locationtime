import 'package:flutter/material.dart';
import 'package:learning_three/pages/choose_location.dart';
import 'package:learning_three/pages/home.dart';
import 'package:learning_three/pages/loading.dart';
void main() => runApp(MaterialApp(
initialRoute: '/',
routes: {
  '/': (context) => Loading(),
  '/home': (context) => Home(),
  '/location' : (context) => ChooseLocation(),
},
));

