import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomePage(),
        themeMode: ThemeMode.light,
        theme: MyThemes.lightTheme(context),
        darkTheme: MyThemes.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          MyRoutes.homeRoute: ((context) => HomePage()),
          MyRoutes.loginRoute: ((context) => LoginPage())
        });
  }
}
