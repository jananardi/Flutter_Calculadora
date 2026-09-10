import 'package:aula01flutter/screens/myhomepage.dart';
import 'package:aula01flutter/screens/galeria_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aula01',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blueGrey),
      ),
       home: MyHomePage(title: 'Calculadora',modoEscuro: true, aoAlterarTema: (bool value) { }),
    );
  }
}

