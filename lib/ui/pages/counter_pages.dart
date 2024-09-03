import 'package:flutter/material.dart';

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
        Text(
          'Contador: $counter',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                counter++;
              });
              // showDialog(
              //   context: context,
              //   builder: (BuildContext context) {
              //     return const AlertDialog(
              //       title: Text('En desarrollo'),
              //       content: Text('Esta funcionalidad está en construcción.'),
              //     );
              //   },
              // );
            },
            child: const Text('incremental'))
      ],
    ));
  }
}
