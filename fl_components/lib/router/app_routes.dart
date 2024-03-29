import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/sliverList-page.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar Home
    // MenuOption(route: 'home',  name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(
        route: 'listview1',
        name: 'Listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'Listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Alertas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animated Avatar',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: 'input',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_outlined),
    MenuOption(
        route: 'listviewbuilder',
        name: 'Infinit Scroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
    MenuOption(
        route: 'purchase',
        name: 'Purchase Form',
        screen: const BuyScreen(),
        icon: Icons.shopping_cart_checkout_outlined),
    MenuOption(
        route: 'sales',
        name: 'Sales Form',
        screen: const SalesScreen(),
        icon: Icons.attach_money_outlined),
    MenuOption(
        route: 'sliver',
        name: 'Sliver Page',
        screen: const SliverListPage(),
        icon: Icons.attach_money_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  // 'home'      : (BuildContext context) => const HomeScreen(),
  //   'listview1' : (BuildContext context) => const Listview1Screen(),
  //   'listview2' : (BuildContext context) => const Listview2Screen(),
  //   'alert'     : (BuildContext context) => const AlertScreen(),
  //   'card'      : (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
