import 'package:aula01flutter/screens/formulario_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menuDrawer.dart';
import 'myhomepage.dart';

class GaleriaPage extends StatefulWidget{
  @override
  State<GaleriaPage> createState() => _GaleriaPageState();
}

class _GaleriaPageState extends State<GaleriaPage>{
  final List<Map<String,String>> _lugares=[
    {
      'nome': 'Gato Fofo',
      'local': 'Em cima da mesa',
      'imagem': 'assets/images/gatofofo.jpg',
      'descricao': 'Um gatinho fofo'
    },
    {
      'nome': 'Gato Branco',
      'local': 'Em cima do sofa',
      'imagem': 'assets/images/gatobranco.jpg',
      'descricao': 'Um gatinho branco'
    },
    {
      'nome': 'Gato',
      'local': 'Floresta',
      'imagem': 'assets/images/gato.jpg',
      'descricao': 'Um gatinho'
    },
    {
      'nome': 'Gato Olho azul',
      'local': 'Chão',
      'imagem': 'assets/images/gatoolhoazul.jpg',
      'descricao': 'Um gatinho com o olho azul'
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Galeria"),
    ),
    drawer: MenuDrawer(),
    body: Padding(padding: EdgeInsets.all(10),
      child: GridView.builder(
          itemCount: _lugares.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

        itemBuilder: (context, index){
            final lugar = _lugares[index];
            return _buildCardDestino(lugar);
        },
      ),
    )
    );
  }

  Widget _buildCardDestino(Map<String, String> lugar) {
    final String nome = lugar['nome'] ?? '';
    final String local = lugar['local'] ?? '';
    final String imagem = lugar['imagem'] ?? '';
    
    //InkWell deixa o componente filho clicavel desenhando um efeito no mesmo.
    return InkWell(
      onTap: () => {},
      child: Card(
        elevation: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagem,
                fit: BoxFit.cover
              ),
            ),
            Positioned(
              left: 0, right: 0, bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.55),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)
                    )
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(nome, style: TextStyle(color: Colors.white)),
                      Row(children: [
                        Icon(Icons.location_on,
                        color: Colors.amber,
                        size: 14,),
                        SizedBox(width: 2),
                        Expanded(child:
                          Text(local, style: TextStyle(color: Colors.white)
                          ))
                      ],)
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

}