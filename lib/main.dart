import 'package:flutter/material.dart';

import 'package:widgets/src/pages/alert_page.dart';
import 'package:widgets/src/pages/home.temp.dart';
import 'package:widgets/src/pages/home_page.dart';
import 'package:widgets/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //  home: HomePage(),
      title: 'Componentes',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'Es'), // Hebrew, no country code
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      initialRoute: 'home',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings setting) {
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}