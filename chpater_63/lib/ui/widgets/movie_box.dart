import 'package:chpater_63/ui/styles/style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class MovieBox extends StatelessWidget {
  final String url;

  MovieBox(this.url);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: parentStyle.clone()..background.image(url: url, fit: BoxFit.cover),
    );
  }
}
