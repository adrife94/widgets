import 'package:flutter/material.dart';
import 'package:widgets/src/providers/menu_provider.dart';

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
      //  initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print("builder");
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  }

  List<Widget> _listaItems( List<dynamic> data) {
   final List<Widget> opciones = [];
   data.forEach((element) {
     final widgetTemp = ListTile(
       title: Text(element['texto']),
       leading: Icon(Icons.add, color: Colors.blue,),
         trailing: Icon(Icons.add, color: Colors.blue,),
       onTap: () {

       },
     );
     opciones..add(widgetTemp)
             ..add(Divider());
   });
   return opciones;
}
