import 'package:flutter/material.dart';
import 'package:landing_page_flutter/router/custom_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
    CustomFluroRouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing page',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      onGenerateRoute: CustomFluroRouter.router.generator,
    );
  }
}
