import 'package:bases_web/ui/pages/counter_pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Rutas App',
      initialRoute: '/stateful',
      routes: {'/stateful': (_) => CounterPage()},
      //home: Container()
    );
  }
}
