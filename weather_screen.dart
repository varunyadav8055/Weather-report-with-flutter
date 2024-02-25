import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const temp = Color.fromARGB(201, 255, 251, 251);

    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 238, 234, 234),
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Weather Report",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Color.fromARGB(255, 224, 215, 215),
          ),
        )),
        // can use with inkwell,gesture detector,iconbutton
        actions: [
          InkWell(
              // ignore: avoid_print
              onTap: () => print("refresh"),
              child: const Icon(Icons.refresh))
        ],
        iconTheme: const IconThemeData(color: temp),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // main card
            // ignore: sized_box_for_whitespace
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromARGB(184, 19, 18, 18),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "300°F",
                              style: TextStyle(
                                color: temp,
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                // backgroundColor: Color.fromARGB(31, 6, 5, 5)
                              ),
                            ),
                            Icon(Icons.cloud, size: 60, color: temp),
                            Text(
                              "Rain",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 230, 225, 225)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text(
              "Weather Forecast",
              style: TextStyle(
                  color: temp, fontSize: 23, fontWeight: FontWeight.w900),
            ),
            //weather forecast
            const SizedBox(
              height: 17,
            ),
          const Row(
              children: [Card(
                child: Column(
                  children: [Text("300.12",style: TextStyle(fontSize: 20),)],
                ),
              )],
          ),
            const Placeholder(
              fallbackHeight: 150,
            ),

            // additional info
            const SizedBox(
              height: 20,
            ),

            const Placeholder(
              fallbackHeight: 150,
            ),
          ]),
        ),
      ),
    );
  }
}
