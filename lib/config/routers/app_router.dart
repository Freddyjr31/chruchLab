import 'package:churchlab/common/common.dart';
import 'package:churchlab/config/routers/routers_name.dart';
import 'package:churchlab/homepage/homepage.dart';
import 'package:churchlab/stages/stages.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){

      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePageScreen());

      case stageDetail:
        return MaterialPageRoute(builder: (context) => const StageDetail());

      default:
          return MaterialPageRoute(builder: (context) => CmmText(title: 'Error en ruta', isBool: true,));
    }
  }
}