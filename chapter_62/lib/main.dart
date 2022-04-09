import 'package:chapter_62/my_button.dart';
import 'package:chapter_62/style/custom_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:chapter_62/custom_button_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Txt(
          'Division',
          style: CustomStyles.txtStyle.clone()..fontSize(18),
        ),
        backgroundColor: Colors.red[900],
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtonState(CustomStyles.buttonStyle),
          SizedBox(height: 20),
          CustomButtonState(CustomStyles.buttonStyle.clone()
            ..background.color(Colors.green[300])
            ..border(all: 3, color: Colors.green[900])),
        ],
      )),
    );
  }
}
