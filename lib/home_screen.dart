// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(189, 37, 68, 38),
        centerTitle: true,
        title: Text(
          "فَاذْكُرُونِي أَذْكُرْكُمْ",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 55, 32),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا",style: TextStyle(fontSize: 30),),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.width / 1.50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 26, 38, 26),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 9),
                            color: Colors.white.withOpacity(.5),
                            spreadRadius: 8,
                            blurRadius: 20)
                      ]),
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Transform.translate(
                  offset: Offset(0, -0),
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 26, 38, 26),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              color: Colors.white.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => counter(),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 32, 45, 33),
                                shape: BoxShape.circle),
                          ),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(80, 80)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => reset(),
                              child: Icon(
                                Icons.wifi_protected_setup_sharp,
                                size: 33,
                              ),
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.red, elevation: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
