import 'package:ardemo/screens/splash_screen.dart';
import 'package:ardemo/utills/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AR Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: colorPrimary,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: false,
        iconTheme: const IconThemeData(color: Colors.white),
        unselectedWidgetColor: colorPrimary,
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(systemOverlayStyle: SystemUiOverlayStyle.dark),
        fontFamily: 'calibri',
      ),
      home: const SplashScreen(),
    );
  }
}