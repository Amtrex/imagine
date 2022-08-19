
import 'package:flutter/material.dart';
import 'package:imagine_apps/config/router/router_path.dart' as routes;
import 'package:imagine_apps/ui/pages/main_page.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case routes.kMainPage:
      return MaterialPageRoute(builder: (context) => const MainPage());
      break;
    default:  return MaterialPageRoute(builder: (context) => const MainPage());
  }
}