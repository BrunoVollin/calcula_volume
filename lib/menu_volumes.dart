import 'package:flutter/material.dart';

class MenuVolumes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(height: 30),
          ListTile(
            title: Text("Cone"),
            leading: Icon(Icons.architecture),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/cone");
            },
          ),
          ListTile(
            title: Text("Romboedro"),
            leading: Icon(Icons.architecture),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/romboedro");
            },
          ),
        ],
      ),
    );
  }
}
