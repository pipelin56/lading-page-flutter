


import 'package:fluro/fluro.dart';
import 'package:landing_page_flutter/router/router_handlers.dart';

class CustomFluroRouter {

  static final FluroRouter router = new FluroRouter();

  static void configureRoutes(){

    router.define("/:page", handler: homeHandler);

    router.notFoundHandler = homeHandler;

  }

}