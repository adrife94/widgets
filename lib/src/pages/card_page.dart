import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color:  Colors.blue),
            title: Text("Soy el titulo"),
            subtitle: Text("Soy el subtitulo"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: null,
                  child: Text("Ok")
              ),
              FlatButton(
                  onPressed: null,
                  child: Text("Ok")
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
              placeholder: AssetImage("assets/jar-loading.gif"),
              image: NetworkImage('https://www.movilzona.es/app/uploads/2018/10/app-foto-movimiento.jpg'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover // como la imagen debe ocupar el espacio que tiene

          ),

          Container(
            padding: EdgeInsets.all(10.0),
              child: Text("Fotografia")
          )
        ],
      )
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0)  //pone la sombra al lado que quieras
          )

        ]
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
