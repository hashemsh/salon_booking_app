import 'package:flutter/material.dart';
import 'package:salon_booking_app/config/constants.dart';
import 'package:salon_booking_app/models/models.dart';
import 'package:salon_booking_app/screens/details_screen.dart';

class StylistContainer extends StatelessWidget {
  final HairStylist hairStylist;

  const StylistContainer({super.key, required this.hairStylist});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: size.width,
      height: size.height / 4 + 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: hairStylist.color,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset(hairStylist.imageUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hairStylist.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  hairStylist.salonName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: mySecondryTextColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: starColor,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      hairStylist.star.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: starColor,
                          fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  color: myPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          hairStylist: hairStylist,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'View Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
