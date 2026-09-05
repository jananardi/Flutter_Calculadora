import 'package:aula01flutter/components/menuDrawer.dart';
import 'package:aula01flutter/screens/galeria_page.dart';
import 'package:aula01flutter/screens/formulario_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 0;
  double _resultado = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }
  void _decrementCounter2() {
    setState(() {
      _counter2--;
    });
  }

  void _somar() {
    setState(() {
      _resultado = (_counter + _counter2).toDouble();
    });
  }

  void _diminuir() {
    setState(() {
      _resultado = (_counter - _counter2).toDouble();
    });
  }

  void _vezes() {
    setState(() {
      _resultado = (_counter * _counter2).toDouble();
    });
  }

  void _dividir() {
    setState(() {
      if (_counter2 != 0) {
        _resultado = _counter / _counter2;
      } else {
        _resultado = 0;
      }
    });
  }

  void _limpar() {
    setState(() {
      _counter = 0;
      _counter2 = 0;
      _resultado = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Numero 1:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.red
                      ),
                      backgroundColor: Colors.amber
                    ),
                    onPressed: (){
                      _incrementCounter();
                    },
                    child: Text('Aumentar')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                        backgroundColor: Colors.greenAccent,
                        alignment: Alignment.center
                    ),
                    onPressed: (){
                      _decrementCounter();
                    },
                    child: Text('Diminuir')
                )
              ],
            ),
            const Text('Numero 2:'),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.red
                        ),
                        backgroundColor: Colors.amber
                    ),
                    onPressed: (){
                      _incrementCounter2();
                    },
                    child: Text('Aumentar')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.red
                        ),
                        backgroundColor: Colors.greenAccent,
                        alignment: Alignment.center
                    ),
                    onPressed: (){
                      _decrementCounter2();
                    },
                    child: Text('Diminuir')
                )
              ],
            ),
            const Text('Resultado:'),
            Text(
              '$_resultado',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.amber
                    ),
                    onPressed: (){
                      _somar();
                    },
                    child: Text('+')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.greenAccent,
                        alignment: Alignment.center
                    ),
                    onPressed: (){
                      _diminuir();
                    },
                    child: Text('-')
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.amber
                    ),
                    onPressed: (){
                      _dividir();
                    },
                    child: Text('/')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.greenAccent,
                        alignment: Alignment.center
                    ),
                    onPressed: (){
                      _vezes();
                    },
                    child: Text('*')
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    _limpar();
                  },
                  child: const Text('Limpar'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
