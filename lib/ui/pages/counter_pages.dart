import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:bases_web/ui/shared/n_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAppMenu(),
        Spacer(),
        FittedBox(
            fit: BoxFit.contain,
            child:
                NButton(onPressed: () {}, text: 'Contador Statefull', type: 2)),
        // Text('Contador StateFull'),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Super Mega Mundo Contador: $counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Incremental',
                onPressed: () => setState(() => counter++)),
            NButton(
                onPressed: () => setState(() => counter++), text: '+', type: 3),
            NButton(
                onPressed: () => setState(() => counter--), text: '-', type: 3)
          ],
        ),
        Spacer(),
      ],
    ));
  }
}
