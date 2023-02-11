import 'package:flutter/material.dart';
import 'package:salon_booking_app/config/constants.dart';
import 'package:salon_booking_app/data/data.dart';
import 'package:salon_booking_app/models/models.dart';
import 'package:salon_booking_app/screens/widgets/widgets.dart';

bool isFavIconActive = false;

class DetailScreen extends StatefulWidget {
  final HairStylist hairStylist;
  const DetailScreen({super.key, required this.hairStylist});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: size.height + 50,
          width: size.width,
          child: Stack(
            children: [
              Container(
                height: size.height / 3 + 20,
                width: size.width,
                color: Colors.red,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/background_image.png',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: size.width,
                      height: size.height,
                      color: Colors.purple.withOpacity(0.1),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: size.height / 3 - 50,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 120,
                        ),
                        const Text(
                          'Service List',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: servicesList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ServiceListView(
                              serviceList: servicesList[index],
                            );
                          },
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(17),
                            color: myPrimaryColor,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Angel Howard  •  ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Mar 9, 2022',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    const StarDisplay(value: 5),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  comment,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // Hair Stylist image Container
                top: size.height / 3 - 110,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width / 3 - 15,
                        height: size.height / 6 + 25,
                        decoration: BoxDecoration(
                          color: widget.hairStylist.color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  widget.hairStylist.imageUrl,
                                  scale: 1.5,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.hairStylist.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.hairStylist.salonName,
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
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xFFFCA919),
                                size: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.hairStylist.star.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFCA919),
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '(56)',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: mySecondryTextColor,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: size.height / 3 - 70,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (isFavIconActive) {
                        isFavIconActive = false;
                      } else {
                        isFavIconActive = true;
                      }
                    });
                  },
                  padding: const EdgeInsets.all(10),
                  shape: const CircleBorder(),
                  color: Colors.white,
                  child: Icon(
                    (isFavIconActive)
                        ? Icons.favorite_sharp
                        : Icons.favorite_outline_sharp,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
