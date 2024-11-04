import 'dart:ui';
import 'package:flutter/material.dart';

import 'buypage.dart';
import 'modeldata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'AntipastoPro')
        backgroundColor: Colors.black,
        title: const Text(
          'Browse Collection',
          style: TextStyle(
              color: Colors.white, fontFamily: 'AntipastoPro', fontSize: 23),
        ),
        // leading: Text('k'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_rounded,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: Center(
                            child: RichText(
                                text: const TextSpan(children: [
                          TextSpan(
                              text: 'Weekend\n',
                              style: TextStyle(
                                  fontFamily: 'wood_family', fontSize: 30)),
                          TextSpan(
                              text: 'Vibes',
                              style: TextStyle(
                                  fontFamily: 'wood_family', fontSize: 30)),
                        ]))),
                      ),
                    ),
                    SizedBox(
                      width: 212,
                      height: 250,
                      child: Image.asset(
                        'assets/3-removebg-preview.png',
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 4,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Center(
                  child: Container(
                    height: 4,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Center(
                  child: Container(
                    height: 4,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Center(
                  child: Container(
                    height: 4,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    'POPULAR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'AntipastoPro'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 239, top: 20),
                  child: Text(
                    'Show All',
                    style: TextStyle(
                        color: Colors.lightGreen[200],
                        fontSize: 20,
                        fontFamily: 'AntipastoPro'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 1100,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1 / 1.7),
                    itemCount: detailed.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = detailed[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BuyItemPage(
                                        image: item.image,
                                      )));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                //color: Colors.red,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(
                                  tag: item.image, // Unique tag for each item
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      item.image,
                                      height: 250,
                                      width: 192,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  item.name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'AntipastoPro'),
                                ),
                                const Text(
                                  'Urben Collection',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontFamily: 'AntipastoPro'),
                                ),
                                Text(
                                  '\$ ${item.price}',
                                  style: TextStyle(
                                      color: Colors.lightGreen[200],
                                      fontSize: 15,
                                      fontFamily: 'wood_family'),
                                )
                              ],
                            )),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const GlassEffectFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class GlassEffectFAB extends StatelessWidget {
  const GlassEffectFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 322,
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
              borderRadius: BorderRadius.circular(35),
              border: Border.all(color: Colors.white.withOpacity(0.2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: _buildIconButton(Icons.home, isSelected: true),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: _buildIconButton(
                    Icons.favorite_border,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: _buildIconButton(
                    Icons.search,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: _buildIconButton(
                    Icons.shopping_bag_outlined,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {bool isSelected = false}) {
    return Container(
      width: 63,
      height: 63,
      decoration: BoxDecoration(
        color: isSelected
            ? Colors.white.withOpacity(1)
            : Colors.white.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: isSelected ? Colors.black : Colors.white,
        size: 28,
      ),
    );
  }
}
