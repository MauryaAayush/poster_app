import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poster_app/views/splash_Screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
     initialRoute: '/',

      routes: {
          '/' : (context) => Splash_Screen(),
      },
    );
  }
}


