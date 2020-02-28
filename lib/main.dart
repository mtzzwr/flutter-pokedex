import 'package:flutter/material.dart';
import 'package:pokedex/pages/homepage/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

import 'consts/consts_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}

Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 5,
        gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xffED213A), Color(0xff93291E)],
        ),
        navigateAfterSeconds: HomePage(),
        loaderColor: Colors.transparent,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(ConstsApp.whitePokeball),
              height: 240,
              width: 240,
            ),
          ],
        ),
      ),
    ],
  );
}
