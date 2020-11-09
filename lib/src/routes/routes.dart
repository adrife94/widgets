import 'package:flutter/material.dart';

import 'package:widgets/src/pages/alert_page.dart';
import 'package:widgets/src/pages/animated_container.dart';
import 'package:widgets/src/pages/avatar_page.dart';
import 'package:widgets/src/pages/card_page.dart';
import 'package:widgets/src/pages/home_page.dart';
import 'package:widgets/src/pages/input_page.dart';
import 'package:widgets/src/pages/listview_page.dart';
import 'package:widgets/src/pages/slider_page.dart';

Map<String, WidgetBuilder>getAplicationRoutes() {
  return <String, WidgetBuilder>  {
   'home' : (BuildContext) => HomePage(),
    'alert' : (BuildContext) => AlertPage(),
    'avatar' : (BuildContext) => AvatarPage(),
    'card' : (BuildContext) => CardPage(),
    'animatedContainer' : (BuildContext) => AnimatedContainerPage(),
    'inputs' : (BuildContext) => InputPage(),
    'slider' : (BuildContext) => SliderPage(),
    'list' : (BuildContext) => ListaPage()


  };
}