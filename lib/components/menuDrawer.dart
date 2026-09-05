import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/myhomepage.dart';
import '../screens/galeria_page.dart';
import '../screens/formulario_page.dart';

class MenuDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Home"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Navegou")));
            },
          ),
          ListTile(
            title: Text("Galeria"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GaleriaPage()));
            },
          ),
          ListTile(
            title: Text("Formulário"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FormularioPage()));
            },
          )
        ],
      ),
    );
  }

}