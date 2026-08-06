import 'package:aula01flutter/screens/segunda_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myhomepage.dart';

class TerceiraPage extends StatefulWidget{
  @override
  State<TerceiraPage> createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Terceira tela"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Navegou")));
                },
              ),
              ListTile(
                title: Text("Segunda Page"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SegundaPage()));
                },
              ),
              ListTile(
                title: Text("Terceira Page"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TerceiraPage()));
                },
              )
            ],
          ),
        ),
        body: Center(
            child: Column(
                children: [
                  Text("tela 2 deu certo")
                ]
            )));
  }

}