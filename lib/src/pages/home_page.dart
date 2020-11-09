import 'package:flutter/material.dart';
import 'package:widgets/src/providers/menu_provider.dart';
import 'package:widgets/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
        initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {

        return ListView(
          children: _listaItems(context, snapshot.data),
        );
      },
    );
  }

  }

  List<Widget> _listaItems(context, List<dynamic> data) {
   final List<Widget> opciones = [];
   data.forEach((element) {
     final widgetTemp = ListTile(
       title: Text(element['texto']),
       leading: getIcon(element['icon']),
         trailing: Icon(Icons.add, color: Colors.blue,),
       onTap: () {
        Navigator.pushNamed(context, element['ruta']);
       },
     );
     opciones..add(widgetTemp)
             ..add(Divider());
   });
   return opciones;
}
