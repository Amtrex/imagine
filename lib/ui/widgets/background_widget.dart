
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imagine_apps/config/const_colors.dart';

class BackApp extends StatelessWidget {
  const BackApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SingleChildScrollView(
      child: Column(
        children: const <Widget>[],
      ),
    );
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [Colors.white, Color.fromRGBO(200, 200, 200, 1)]),
      ),
    );

    final orangeBox = Transform.rotate(
      angle: -pi / 2,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: kMainColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(400.0),
                bottomLeft: Radius.circular(400.0),
                )),
      ),
    );

    return Stack(
      children: <Widget>[gradiente, Positioned(top: -400.0, child: orangeBox)],
    );
  }
}
