import 'package:flutter/material.dart';
import 'package:salon_booking_app/config/constants.dart';
import 'package:salon_booking_app/models/models.dart';

class ServiceListView extends StatelessWidget {
  final ServiceList serviceList;
  const ServiceListView({super.key, required this.serviceList});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width / 2 - 40,
                child: Text(
                  serviceList.serviceName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "${serviceList.time} Min",
                style: const TextStyle(color: mySecondryTextColor),
              ),
            ],
          ),
          Text(
            "\$${serviceList.price}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: myBtnColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text(
              'Book',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
