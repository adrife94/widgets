import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItems()
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista = List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text("Cualquier cosa"),
        leading: Icon(Icons.map),
        trailing: Icon(Icons.accessible),
        onTap: (){},

      );
      lista..add(tempWidget)
           ..add(Divider());
    }


    return lista;
  }


}
