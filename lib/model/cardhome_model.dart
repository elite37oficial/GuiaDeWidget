import 'package:flutter/material.dart';
import 'package:guiadewidget/model/code_model.dart';

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
