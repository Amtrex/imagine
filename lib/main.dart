
import 'package:flutter/material.dart';
import 'package:imagine_apps/config/router/router.dart' as router;
import 'package:imagine_apps/config/router//router_path.dart' as routes;




 void main() async{
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  String inRoute = routes.kMainPage;
    return MaterialApp(
      title: 'Imagine Apps',
      initialRoute: inRoute,
      theme: ThemeData(
        // primarySwatch: Colors.blueAccent,
      ),
      onGenerateRoute: router.generateRoute,
    );
  }
}