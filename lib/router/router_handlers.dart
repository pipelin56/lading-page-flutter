

import 'dart:js';

import 'package:fluro/fluro.dart';
import 'package:landing_page_flutter/ui/page/home_page.dart';

final homeHandler = Handler(handlerFunc: (context, params){

  return HomePage();
});