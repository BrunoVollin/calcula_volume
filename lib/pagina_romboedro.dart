import 'package:flutter/material.dart';
import 'menu_volumes.dart';

class PaginaRomboedro extends StatefulWidget {
  _PaginaRomboedroState createState() => _PaginaRomboedroState();
}

class _PaginaRomboedroState extends State<PaginaRomboedro> {
  double diagonalA = 0;
  double diagonalB = 0;
  double altura = 0;
  double volume = 0;

  onPress() {
    setState(() {
      volume = ((diagonalA * diagonalB) * 0.5 * altura);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Volume Romboedro")),
      drawer: MenuVolumes(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset("assets/figRomboedro.png"),
              ),
              Text("Volume: ", style: TextStyle(fontSize: 10)),
              Text("${volume.toStringAsFixed(4)} m³", style: TextStyle(fontSize: 20)),
              TextField(
                onChanged: (text) {
                  diagonalA = double.parse(text);
                },
                decoration: InputDecoration(labelText: 'Diagonal maior'),
              ),
              TextField(
                onChanged: (text) {
                  diagonalB = double.parse(text);
                },
                decoration: InputDecoration(labelText: 'Diagonal Menor'),
              ),
              TextField(
                onChanged: (text) {
                  altura = double.parse(text);
                },
                decoration: InputDecoration(labelText: 'Altura'),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: onPress,
                child: Text("Calcular"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
