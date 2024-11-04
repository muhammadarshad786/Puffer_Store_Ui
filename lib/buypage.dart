import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:puffer/storevisting.dart';

class BuyItemPage extends StatefulWidget {
  final String image;
  const BuyItemPage({super.key, required this.image});

  @override
  State<BuyItemPage> createState() => _BuyItemPageState();
}

class _BuyItemPageState extends State<BuyItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            height: 710,
            width: double.infinity,
            color: Colors.grey,
            child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Hero(
                  tag: widget.image, // Same unique tag as in MyHomePage
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fill,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 7),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_outlined,
                      color: Colors.white),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_rounded,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Luxerious Puff',
                            style: TextStyle(
                                fontFamily: 'AntipastoPro',
                                fontSize: 23,
                                color: Colors.white),
                          ),
                        ),
                        const Text('Urban Collection',
                            style: TextStyle(
                                fontFamily: 'AntipastoPro',
                                fontSize: 14,
                                color: Colors.grey)),
                        Text('\$ 660.00',
                            style: TextStyle(
                                fontFamily: 'wood_family',
                                fontSize: 25,
                                color: Colors.lightGreen[200])),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 63,
                                height: 63,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Text(
                                    'XS',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontFamily: 'wood_family'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 63,
                                height: 63,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Text(
                                    'S',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontFamily: 'wood_family'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 63,
                                height: 63,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontFamily: 'wood_family'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 63,
                                height: 63,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Text(
                                    'L',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontFamily: 'wood_family'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: MaterialButton(
                              height: 70,
                              minWidth: 385,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: const Text(
                                'Buy Now',
                                style: TextStyle(
                                    fontSize: 20, fontFamily: 'AntipastoPro'),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AccessOfStore(
                                              image: widget.image,
                                            )));
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
