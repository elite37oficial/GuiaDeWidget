import 'package:flutter/material.dart';

class CardHomeModel {
  //modal class for Person object
  String title, description, route, urlVideo, fileName;
  IconData? icon;

  CardHomeModel(
      {required this.title,
      required this.description,
      required this.route,
      required this.fileName,
      required this.urlVideo,
      this.icon});
}
