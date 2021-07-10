import 'package:flutter/material.dart';
import 'package:landing_page_flutter/provider/page_provider.dart';
import 'package:landing_page_flutter/router/custom_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppState());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider())
      ],
      child: MyApp(),
    );
  }

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
