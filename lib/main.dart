import 'package:flutter/material.dart';

void main() => runApp(Mifotito());

class Mifotito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ejemplo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaInicio(),
    ); //Fin de Material APP
  } //Fin de widget
} //fin de Mifotito

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregando bordes App de Gerson'),
        centerTitle: true,
      ), //fin de appbar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.orange[900],
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Gerson Ramirez',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ), //Fin de Text.Container
              SizedBox(height: 50),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  image: DecorationImage(image: NetworkImage(""), alignment: Alignment.topCenter),
                  border: Border(
                    top: BorderSide(
                      color: Colors.purple[300],
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.purple[300],
                      width: 5.0,
                    ),
                  ),
                ), //fin de el decoration box
              ), //fin de el container foto
              SizedBox(height: 50),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange[900],
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange[900],
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ), //Fin de container de
            ], //fin del children
          ), //fin de p.colum
        ), //centro
      ), //fin de single
    ); //fin de scaffold
  }
} //Fin de p.inicio
