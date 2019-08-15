import 'package:flutter/material.dart';

import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/products_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stripe',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyan[400],
        accentColor: Colors.deepOrange[200],
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 18.0),
        ),
      ),
      home: RegisterPage(),
      routes: {
        LoginPage.routeName: (BuildContext context) => LoginPage(),
        RegisterPage.routeName: (BuildContext context) => RegisterPage(),
        ProductsPage.routeName: (BuildContext context) => ProductsPage(),
      },
    );
  }
}
