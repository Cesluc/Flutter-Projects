

import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {

  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({ // Se usan {} para que no iporte el orden en el que lo envien y el required para que el envio sea obligatorio
    required this.route, 
    required this.icon,
    required this.name,
    required this.screen
    });
}