import 'package:flutter/material.dart';
import 'package:shopping/pages/tabs_page.dart';
import 'package:shopping/themes/dark_theme.dart';
import 'package:shopping/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),

      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(); // o scaffold nada mais é que uma criação de um container 'seguro', que sabe delimitar bem os espaçamentos e a posiçao de cada item da nossa tela
  }
}

