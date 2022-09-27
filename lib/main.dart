import 'package:flutter/material.dart';
import 'package:world_time/routes.dart';
import 'package:world_time/screens/choose_location_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Mulish',
        primarySwatch: Colors.blue,
      ),
      initialRoute: ChooselocationScreen.routeName,
      routes: routes,
    );
  }
}
