import 'package:flutter/material.dart';

import 'package:widgets/src/pages/alert_page.dart';
import 'package:widgets/src/pages/home.temp.dart';
import 'package:widgets/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {       // Si la ruta no esta definida en routes se dispara el onGenerateRoute
        return MaterialPageRoute(
            builder: (context) => AlertPage()
        );
      },
    );
  }
}
