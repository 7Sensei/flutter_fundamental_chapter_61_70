import 'package:flutter/material.dart';
import 'package:flutter_fundamental_chapter_61_70/mobx/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

final CounterMobx counter = CounterMobx();

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
        title: Text('MOBX Statement Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (context) => Text(
                counter.value.toString(),
                style: TextStyle(
                  fontSize: 80,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: Icon(Icons.arrow_downward),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: Icon(Icons.arrow_upward),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
