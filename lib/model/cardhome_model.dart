import 'package:flutter/material.dart';

class CardHome {
  //modal class for Person object
  String title, description, route;
  IconData? icon;

  CardHome(
      {required this.title,
      required this.description,
      required this.route,
      this.icon});
}
