import 'package:flutter/material.dart';

class LayoutBuilderCustom extends StatefulWidget {
  const LayoutBuilderCustom({Key? key}) : super(key: key);

  @override
  State<LayoutBuilderCustom> createState() => _LayoutBuilderCustomState();
}

class _LayoutBuilderCustomState extends State<LayoutBuilderCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              leading: Image.asset('assets/images/dash_v2.png'),
              title: const Text('Eu Sou o Super Dash'),
              subtitle: const Text('uma das minhas habilidade é voar!'),
              trailing: PopupMenuButton<String>(
                onSelected: (String value) {},
                child: const Icon(Icons.more_vert),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    child: Text('Fogo'),
                  ),
                  const PopupMenuItem<String>(
                    child: Text('Energia Extra'),
                  ),
                  const PopupMenuItem<String>(
                    child: Text('Voar'),
                  ),
                  const PopupMenuItem<String>(
                    child: Text('Radar'),
                  ),
                  const PopupMenuItem<String>(
                    child: Text('Correr'),
                  ),
                  const PopupMenuItem<String>(
                    child: Text('Super Visão'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWideContainers() {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 7,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/dash_v2.png',
                height: 300,
                width: 300,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text('Eu Sou o Super Dash', textScaleFactor: 2),
                const Text('uma das minhas habilidade é voar!'),
                Row(
                  children: [
                    Column(
                      children: const [
                        ButtomCustom(myIcon: Icons.fireplace),
                        ButtomCustom(myIcon: Icons.bolt),
                        ButtomCustom(myIcon: Icons.flight)
                      ],
                    ),
                    Column(
                      children: const [
                        ButtomCustom(myIcon: Icons.radar),
                        ButtomCustom(myIcon: Icons.run_circle),
                        ButtomCustom(myIcon: Icons.visibility)
                      ],
                    )
                  ],
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtomCustom extends StatelessWidget {
  final IconData myIcon;
  const ButtomCustom({Key? key, required this.myIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      color: Colors.blue,
      child: IconButton(
        icon: Icon(myIcon),
        onPressed: () {},
      ),
    );
  }
}
