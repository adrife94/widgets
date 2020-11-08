import 'package:flutter/material.dart';
import 'package:widgets/src/pages/avatar_page.dart';
import 'package:widgets/src/providers/menu_provider.dart';
import 'package:widgets/src/utils/icono.string.dart';

import 'alert_page.dart';

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
      future: menuProvider.cargarData(),  //es lo que esperamos
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {  // el async usa como parametro lo que recibe del future
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context) {
   final List<Widget> opciones = [];

   data.forEach((element) {
     final widgetTemp = ListTile(
       title: Text(element['texto']),
       leading: getIcon(element['icon']),
         trailing: Icon(Icons.add, color: Colors.blue,),
       onTap: () {

 /*        final route = MaterialPageRoute(builder: (context) {
           if (element['texto'] == 'Alertas') {
             return AlertPage();
           } else {
             return AvatarPage();
           }
         }
         );
       
         Navigator.push(context, route);*/
 
      Navigator.pushNamed(context, element['ruta']);
       },
     );
     opciones..add(widgetTemp)
             ..add(Divider());
   });
   return opciones;
}
