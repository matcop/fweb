import 'package:bases_web/ui/shared/n_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '404',
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Pagina no encontrada',
            style: TextStyle(fontSize: 40),
          ),
          NButton(
              text: 'volver',
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
              type: 1)
        ],
      ),
    );
  }
}
