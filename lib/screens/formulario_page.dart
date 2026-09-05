import 'package:aula01flutter/screens/galeria_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menuDrawer.dart';
import 'myhomepage.dart';

class FormularioPage extends StatefulWidget{
  @override
  State<FormularioPage> createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Formulário"),
        ),
        drawer: MenuDrawer(),
        body: Center(
            child: Column(
                children: [
                  Text("tela 2 deu certo")
                ]
            )));
  }

}