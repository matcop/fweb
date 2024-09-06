import 'package:bases_web/providers/counter_provider.dart';
import 'package:provider/provider.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:bases_web/ui/shared/n_button.dart';
import 'package:flutter/material.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider('5'), child: _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
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
                NButton(onPressed: () {}, text: 'Contador PROVIDER', type: 2)),
        // Text('Contador StateFull'),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Super Mega Mundo Contador: ${counterProvider.counter}',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(text: 'Incremental', onPressed: () {}),
            NButton(
                onPressed: () => counterProvider.increment(),
                text: '+',
                type: 3),
            NButton(
                onPressed: () => counterProvider.decrement(),
                text: '-',
                type: 3)
          ],
        ),
        Spacer(),
      ],
    ));
  }
}
