import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardHome extends StatefulWidget {
  final String title;
  final String description;
  final String route;
  final String code;
  final String urlVideo;
  final IconData? icon;

  const cardHome(
      {Key? key,
      required this.title,
      required this.route,
      required this.description,
      required this.code,
      required this.urlVideo,
      this.icon})
      : super(key: key);

  @override
  State<cardHome> createState() => _cardHomeState();
}

class _cardHomeState extends State<cardHome> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ListTile(
          leading: Icon(widget.icon, color: Colors.amber, size: 30),
          title: Text(
            widget.title,
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: Text(widget.description),
          trailing: const Icon(Icons.arrow_forward_ios_rounded,
              color: Colors.grey, size: 20),
          onTap: () =>
              Navigator.of(context).pushNamed(widget.route, arguments: widget),
        )
      ]),
    );
  }
}
