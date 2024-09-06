//handlers

import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

final counterHandler = Handler(handlerFunc: (context, params) {
  print(params['base']
      ?[0]); // asi se accederia a la var definida en la ruta de tipo arreglo

  return CounterView(base: params['base']?[0] ?? '5'); //si es nulo que mande 5
});

final counterProviderHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return CounterProviderView(base: params['q']?[0] ?? '10');
});

final dashboardUserHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return const View404();
});

final pageNotFound = Handler(handlerFunc: (_, __) => View404());
