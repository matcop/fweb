import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

import '../ui/views/counter_provider_view.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: _counterHandler,
        transitionDuration: const Duration(microseconds: 3000),
        transitionType: TransitionType.fadeIn);

    router.define('/stateful',
        transitionDuration: const Duration(microseconds: 3000),
        handler: _counterHandler,
        transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        transitionDuration: const Duration(microseconds: 3000),
        handler: _counterHandler,
        transitionType: TransitionType.fadeIn);

    router.define('/provider',
        handler: _counterProviderHandler,
        transitionDuration: const Duration(microseconds: 3000),
        transitionType: TransitionType.fadeIn);

    router.define('/dashboard/users/:userid/:rolesid',
        handler: _dashboardUserHandler,
        transitionDuration: const Duration(microseconds: 3000),
        transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFound;
  }

  //handlers

  static Handler _counterHandler = Handler(handlerFunc: (context, params) {
    print(params['base']
        ?[0]); // asi se accederia a la var definida en la ruta de tipo arreglo

    return CounterView(
        base: params['base']?[0] ?? '5'); //si es nulo que mande 5
  });

  static Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) {
    print(params);
    return CounterProviderView(base: params['q']?[0] ?? '10');
  });

  static Handler _dashboardUserHandler =
      Handler(handlerFunc: (context, params) {
    print(params);
    return const View404();
  });

  static Handler _pageNotFound = Handler(handlerFunc: (_, __) => View404());
}
