import 'package:flutter/material.dart';
import 'package:salon_booking_app/models/models.dart';

final List<HairStylist> hairStylist = [
  HairStylist(
    'Cameron Jones',
    'Super Cut Salon',
    4.8,
    'assets/images/1.png',
    const Color(0xFFFFF0EB),
  ),
  HairStylist(
    'Max Robertson',
    'Rossano Ferretti Salon',
    4.7,
    'assets/images/2.png',
    const Color(0xFFEBF6FF),
  ),
  HairStylist(
    'Beth Watson',
    'Neville Hair and Beauty',
    4.7,
    'assets/images/3.png',
    const Color(0xFFFFF3EB),
  ),
  HairStylist(
    'Steve Rogers',
    'Marvel Hair Salon',
    4.8,
    'assets/images/4.png',
    const Color(0xFFEBFFED),
  )
];

final List<ServiceList> servicesList = [
  ServiceList('Men\'s Hair Cut', 45, 30),
  ServiceList('Women\'s Hair Cut', 60, 50),
  ServiceList('Color & Blow Dry', 90, 75),
  ServiceList('Oil Treatment', 30, 20),
];

String comment =
    'Cameron is the best colorist and stylish I’ve ever met. He has an amazing talent! He is ver...';
