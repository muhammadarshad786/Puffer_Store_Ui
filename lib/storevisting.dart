import 'package:flutter/material.dart';

class AccessOfStore extends StatefulWidget {
  final String image;

  AccessOfStore({super.key, required this.image});

  @override
  State<AccessOfStore> createState() => _AccessOfStoreState();
}

class _AccessOfStoreState extends State<AccessOfStore>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1), // Start from below the screen
      end: Offset.zero, // End at the original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 50),
              child: SlideTransition(
                position: _offsetAnimation,
                child: Text(
                  'Puff',
                  style: TextStyle(
                      fontFamily: 'wood_family',
                      color: Colors.lightGreen[100],
                      fontSize: 130),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 265, left: 240),
              child: SlideTransition(
                position: _offsetAnimation,
                child: Text(
                  'boutique',
                  style: TextStyle(
                      fontFamily: 'AntipastoPro',
                      color: Colors.lightGreen[200],
                      fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550, left: 350),
              child: RotatedBox(
                  quarterTurns: 3,
                  child: SlideTransition(
                    position: _offsetAnimation,
                    child: const Text(
                      'Puff',
                      style: TextStyle(
                          fontFamily: 'AntipastoPro',
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400, left: 350),
              child: RotatedBox(
                  quarterTurns: 3,
                  child: SlideTransition(
                    position: _offsetAnimation,
                    child: Text(
                      'boutique',
                      style: TextStyle(
                          fontFamily: 'AntipastoPro',
                          color: Colors.lightGreen[200],
                          fontSize: 30),
                    ),
                  )),
            ),
            SizedBox(
              height: 900,
              width: 360,
              child: Padding(
                  padding: const EdgeInsets.only(top: 230),
                  child: Transform.flip(
                      flipX: true,
                      child: SlideTransition(
                        position: _offsetAnimation,
                        child: Image.asset(
                          widget.image,
                          fit: BoxFit.fill,
                        ),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 700),
              child: SizedBox(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          SlideTransition(
                            position: _offsetAnimation,
                            child: const Text('Elevate your Style',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'AntipastoPro',
                                    fontSize: 27,
                                    fontWeight: FontWeight.w200)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SlideTransition(
                            position: _offsetAnimation,
                            child: Image.asset(
                              'assets/star.png',
                              height: 28,
                              width: 27,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    SlideTransition(
                      position: _offsetAnimation,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Discover innovation, padded leather jackets for \nultimate comfort and style.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'AntipastoPro',
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: MaterialButton(
                          height: 70,
                          minWidth: 385,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Text(
                            'Quick Shop Access',
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'AntipastoPro'),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
