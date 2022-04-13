import 'package:chapter_65/switch_day_night.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Rive Animation'),
        ),
        body: Center(
          child: SwitchDayNight(),
        ),
      ),
    );
  }
}
