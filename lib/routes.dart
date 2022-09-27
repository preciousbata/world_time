import 'package:flutter/material.dart';
import 'package:world_time/screens/choose_location_screen.dart';
import 'package:world_time/screens/home_screen.dart';

final Map<String, WidgetBuilder> routes ={
HomeScreen.routeName : (_) => const HomeScreen(),
  ChooselocationScreen.routeName : (_) => const ChooselocationScreen()
};