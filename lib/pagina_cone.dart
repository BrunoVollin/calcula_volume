import 'package:flutter/material.dart';
import 'menu_volumes.dart';

class PaginaCone extends StatefulWidget {
  _PaginaConeState createState() => _PaginaConeState();
}

class _PaginaConeState extends State<PaginaCone> {
  double volume = 0;
  double altura = 0;
  double raio = 0;
  double pi = 3.1415926535897932;

  onPressed() {
    setState(() {
      volume = (pi * raio * raio * altura) / 3;
    });
    print(volume);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Volume do Cone")),
      drawer: MenuVolumes(),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset("assets/cone.png"),
                ),
                Text("Volume: ", style: TextStyle(fontSize: 10)),
                Text("${volume.toStringAsFixed(4)} m³", style: TextStyle(fontSize: 20)),
                TextField(
                  onChanged: (text) {
                    raio = double.parse(text);
                    print(text);
                  },
                  decoration: InputDecoration(
                    labelText: 'Raio',
                  ),
                ),
                TextField(
                  onChanged: (text) {
                    altura = double.parse(text);
                    print(text);
                  },
                  decoration: InputDecoration(
                    labelText: 'Altura',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text("Calcular"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
