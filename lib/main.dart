import 'package:flutter/material.dart';
import 'package:salon_booking_app/config/constants.dart';

void main() {
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
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: myTextColor, fontFamily: 'Gilroy'),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(),
    );
  }
}
