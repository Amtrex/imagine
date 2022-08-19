import 'package:flutter/material.dart';
import 'package:imagine_apps/config/assets.dart';
import 'package:imagine_apps/config/const_colors.dart';
import 'package:imagine_apps/config/const_strings.dart';
import 'package:imagine_apps/config/const_text_style.dart';
import 'package:imagine_apps/models/user_model.dart';
import 'package:imagine_apps/ui/widgets/bottomBar_widget.dart';
import '../widgets/background_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      double _screenHeight =   MediaQuery.of(context).size.height;
      double _screenWidth =   MediaQuery.of(context).size.width;
    return SizedBox(
      height: double.maxFinite,
      // decoration: buildBoxDecoration(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kMainColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              topApp(icon: Icons.exit_to_app, text: kLogout),
              topApp(icon: Icons.edit, text: kEdit),
            ],
          ),
        ),
        body: body(_screenHeight,_screenWidth),
        bottomNavigationBar: const BottomBar(),
      ),
      );
  }

  body(height, width) {
    return Stack(
      children: [
        const BackApp(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                    SizedBox(
          height:height*0.1,
        ),
            imageUser(),
        // * Esto lo intenté hacer de una forma más dinamica con el modelo de usuario, pero no me dio el tiempo.
            contentApp(title: 'Nombre Completo', desc: 'Nicolas Rojas Niño'),
            contentApp(title: 'Correo Electrónico', desc: 'nicolas@imagineapps.co'),
            contentApp(title: 'Celular', desc: '3114797257'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Términos y condiciones'),
            ),
            Expanded(
              child: ListView(
                  children: [cards(title: 'Lista de Pedidos',image: kOrder, height: height, width: width),
               cards(title: 'Mis métodos de pago',image: kMethods, height: height, width: width),],
           
              ),
            )

          ],
        ),
      ],
    );
  }

  topApp({required icon, required text}) {
    return Row(
      children: [Icon(icon), Text(text)],
    );
  }



  contentApp({required String title, required String desc}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:  kTitle),
          Text(desc, style: const TextStyle(fontSize: 20))
        ],
      ),
    );
  }

  cards({required height,required  width, title, image}) {
    return Container(
            margin: const EdgeInsets.all(10),
            height: height * 0.15,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kMainColorOpacity,
                ),
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title, style: const TextStyle(fontSize: 25, color: kMainColor),),
                  Image.asset(image)
                ],
              )
            ),
          );
  }

  imageUser() {
    return Center(
        child: Image.asset(
      kUserImage,
      height: 100,
    ));
  }
  
  userInfo() {

  }
  
}


