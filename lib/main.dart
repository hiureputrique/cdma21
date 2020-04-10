import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _tarefas = ['Estudar'];
  
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Center(
            child: Text('CDM - Tarefa A2.1')
          )
        ),
        body: SingleChildScrollView(
          child: Column(children: [
           Container(
              margin: EdgeInsets.all(20.0),
               child: Column(
                children: <Widget>[
                  TextField(
                    controller: myController,
                    ),
                  Center(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          _tarefas.add(myController.text);
                          myController.clear();
                          });
                        },
                        child: Text(
                          'Adicionar tarefa',
                           style: TextStyle(fontSize: 22),
                        )),
                ),
                ],
               )
           ),
          Column(
                children: _tarefas
                 .map((element) => Card(
                   child: Column(
                    children: <Widget>[
                      Padding(
                        child: Text(
                          element,
                          style: TextStyle(fontSize: 18),
                        ),
                        padding: EdgeInsets.all(5.0),
                      )
                    ],
                   ),
                 ))
             .toList()),
        ]),
      ),
      ),
    );
  }
}