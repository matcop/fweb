import 'package:bases_web/providers/counter_provider.dart';
import 'package:provider/provider.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:bases_web/ui/shared/n_button.dart';
import 'package:flutter/material.dart';

class CounterProviderView extends StatelessWidget {
  final String base;

  const CounterProviderView({Key? key, required this.base}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(this.base),
        child: _CounterProviderPageView());
  }
}

class _CounterProviderPageView extends StatelessWidget {
  const _CounterProviderPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const CustomAppMenu(),
        // const Spacer(),
        const Text('Contador Provider', style: TextStyle(fontSize: 20)),
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
      ],
    );
  }
}
