import 'package:flutter/material.dart';
import 'pagina_cone.dart';
import 'pagina_romboedro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "/cone",
      routes: {
        "/cone": (context) => PaginaCone(),
        "/romboedro": (context) => PaginaRomboedro(),
      },
    );
  }
}
