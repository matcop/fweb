import 'package:bases_web/router/route_hadlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: counterHandler,
        transitionDuration: const Duration(microseconds: 3000),
        transitionType: TransitionType.fadeIn);

//stateful routes
    router.define('/stateful',
        transitionDuration: const Duration(microseconds: 3000),
        handler: counterHandler,
        transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        transitionDuration: const Duration(microseconds: 3000),
        handler: counterHandler,
        transitionType: TransitionType.fadeIn);

//Providers routes
    router.define('/provider',
        handler: counterProviderHandler,
        transitionDuration: const Duration(microseconds: 3000),
        transitionType: TransitionType.fadeIn);
    router.define('/dashboard/users/:userid/:rolesid',
        handler: dashboardUserHandler,
        transitionDuration: const Duration(microseconds: 3000),
        transitionType: TransitionType.fadeIn);

//404 no page found
    router.notFoundHandler = pageNotFound;
  }
}
