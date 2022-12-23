import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  List l1 = [
    "    America\nWoshington D.C",
    "China\nBeijing",
    "Russia\nMoscow",
    "Canada\nOttawa",
    "Australia\nCanberra",
    "India\nNew Delhi",
    "Brazil\nBrasilia",
    "Singapore",
    "Maldives\nMale",
    "Hong kong",
    "Garmany\nBerlin",
    "France\nParis",
    "Italy\nRome",
    "Japan\nTokyo"
  ];
  List l2 = [
    "🇦🇸",
    "🇹🇩",
    "🇭🇹",
    "🇮🇨",
    "🇦🇺",
    "🇮🇳",
    "🇧🇷",
    "🇸🇬",
    "🇲🇻",
    "🇭🇰",
    "🇬🇩",
    "🇫🇷",
    "🇮🇹",
    "🇯🇵"
  ];

  List color = [
    Colors.pinkAccent.shade100,
    Colors.pink.shade100,
    Colors.pink.shade200,
    Colors.brown.shade200,
    Colors.brown.shade100,
    Colors.lightBlueAccent.shade200,
    Colors.lightBlueAccent.shade100,
    Colors.yellow.shade200,
    Colors.yellow.shade100,
    Colors.lightGreen.shade200,
    Colors.lightGreen.shade100,
    Colors.redAccent.shade200,
    Colors.redAccent.shade100,
    Colors.blueGrey.shade200
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Country List",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: l1
        .asMap()
        .entries
        .map((e) => sampleUI(l2[e.key],l1[e.key], color[e.key],))
        .toList(),
    ),


    ),

    ),
    );
  }

  Widget sampleUI(String flage, String name, Color c1) {
    return Container(

      child: Column(
        children: [
          Container(

            height: 60,
            color: c1,
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("$flage"),
                Row(
                  children: [
                    Center(
                      child: Text(
                        "$name",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),

                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
