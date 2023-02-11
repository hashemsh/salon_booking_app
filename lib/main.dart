import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon_booking_app/config/constants.dart';
import 'package:salon_booking_app/screens/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
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
      title: 'Salon Booking App',
      theme: ThemeData(
        fontFamily: 'Gilroy',
        scaffoldBackgroundColor: myPrimaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: myPrimaryColor,
          elevation: 0,
        ),
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: myTextColor, fontFamily: 'Gilroy'),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

//pixle 4 Api 31 Flutter 3.7.1 Dart 2.19
