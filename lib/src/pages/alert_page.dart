import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: () {
          Navigator.pop(context);
        },
      ),

      body: Center(
        child: RaisedButton(
          child: Text("Mostrar alertas"),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()  {
            _mostrarAlert(context);
          },

        ),
      ),
    );
  }
  void _mostrarAlert(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
          title: Text('title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('dialogBody'
              ),
              FlutterLogo(
                size: 100.0
              )
            ],
          ),

          actions: <Widget>[
            FlatButton(
              child: Text('ok'),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Dismiss alert dialog
              },
            ),
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(dialogContext).pop() // Dismiss alert dialog
            )
          ],
        );
      },
    );
  }
}
