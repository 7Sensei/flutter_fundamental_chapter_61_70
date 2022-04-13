import 'dart:math';

import 'package:chpater_63/ui/widgets/movie_box.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(
    initialPage: 0,
    viewportFraction: 0.5,
  );
  double currentPageValue = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/12/15/2761900963.jpeg',
      'https://terrigen-cdn-dev.marvel.com/content/prod/1x/halfstack_busshelter_48x70_moonknight_v7_lg_0.jpg',
      'https://sportshub.cbsistatic.com/i/2022/03/15/167616d8-e4e3-476c-9717-f729934a52bb/ms-marvel-digital-teaser-vert-v3-lg.jpg?auto=webp&width=1688&height=2500&crop=0.675:1,smart',
      'https://sportshub.cbsistatic.com/i/2022/01/21/6c422820-0c68-41e2-8496-ccc76599f26a/spider-man-no-way-home-multiverse-poster.jpg?auto=webp&width=928&height=1374&crop=0.675:1,smart'
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('WidgetStyle'),
        ),
        body: PageView.builder(
          controller: controller,
          itemCount: urls.length,
          itemBuilder: (context, index) {
            double difference = index - currentPageValue;
            if (difference < 0) {
              difference *= -1;
            }
            difference = min(1, difference);
            return Center(
              child: MovieBox(
                urls[index],
                scale: 1 - (difference * 0.3),
              ),
            );
          },
        ));
  }
}
