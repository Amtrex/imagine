import 'package:flutter/material.dart';
import 'package:imagine_apps/config/const_colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: 'Explorar',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.map),
        label: 'Cerca a mí',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        label: 'Carrito',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: 'Perfil',
      ),
    ],
    currentIndex: 3,
    selectedItemColor: kMainColor,
    onTap: null,
    unselectedItemColor: Colors.grey,
    showUnselectedLabels: true);
  }
}

