import 'package:flutter/material.dart';

class CardHomeModel {
  //modal class for Person object
  String title, description, route, urlVideo, code;
  IconData? icon;

  CardHomeModel(
      {required this.title,
      required this.description,
      required this.route,
      required this.code,
      required this.urlVideo,
      this.icon});
}
