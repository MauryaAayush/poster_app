import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poster_app/views/Edit_Post/Edit_Post_Screen.dart';
import 'package:poster_app/views/Edit_Template_Screen/Edit_Template_Screen.dart';
import 'package:poster_app/views/History/History_Screen.dart';
import 'package:poster_app/views/Home/Home_Screen.dart';
import 'package:poster_app/views/splash_Screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff1d243b),
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
          '/' : (context) => const Splash_Screen(),
          '/second' : (context) => const Home_Screen(),
          '/third' : (context) => const Edit_POst_Screen(),
          '/four' : (context) => const edit_template_screen(),
          '/five' : (context) => const History_Page(),
      },
    );
  }
}


