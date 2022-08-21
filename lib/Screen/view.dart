import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:instgram/Profile/View.dart';
import 'package:instgram/Explore/pro.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 500,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppBar(
                    backgroundColor: Colors.white,
                    title: Row(
                      children: const [
                        Text("Instagram", style: TextStyle(color: Colors.black, fontSize: 30)),
                        Icon(Icons.keyboard_arrow_down, color: Colors.black),
                      ],
                    ),
                    actions: [
                      const Icon(Icons.add_box_outlined, color: Colors.black, size: 30),
                      Container(
                        margin: const EdgeInsets.only(right: 20, left: 40),
                        width: 30, height: 30,
                        child: Image.asset("images/chat (1).png"))
                    ],
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            storyinst("images/mine/m4.jpg"),
                            storyinst("images/story.jpg"),
                            storyinst("images/mine/m2.jpg"),
                            storyinst("images/dad.jpg"),
                            storyinst("images/mine/m1.jpg"),
                            storyinst("images/mine/m3.jpg"),
                            storyinst("images/story.jpg"),
                          ])
                      ])),
                  post("images/mine/m4.jpg", "l3xvlli", "images/mine/m2.jpg",
                      24, "Always Love your self", 10),
                  post("images/mine/m1.jpg", "7nolll", "images/story.jpg", 70,
                      "Live your life in peace", 36),
                  post("images/mine/m3.jpg", "aeshahl", "images/dad.jpg", 55,
                      "Foreven in my heart", 56),
                ])
            ]),
        )),
      bottomNavigationBar: CircleBottomNavigationBar(
        circleColor: Colors.purple,
        activeIconColor: Colors.black,
        inactiveIconColor: Colors.black87,
        barBackgroundColor: Colors.white, barHeight: 50, iconYAxisSpace: 30,
        tabs: [
          TabData(icon: Icons.home_outlined, iconSize: 35,
            onClick: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
               }),
          TabData(icon: Icons.search_rounded, iconSize: 35),
          TabData(icon: Icons.video_library_outlined, iconSize: 35,
            onClick: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Explore()));
              }),
          TabData(icon: Icons.favorite_border_rounded, iconSize: 35),
          TabData(icon: Icons.account_circle_outlined, iconSize: 35,
            onClick: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            }),
        ],
        onTabChangedListener: (int position) {},
      ));
  }

  Container storyinst(String img) {
    return Container(
      width: 60, height: 60,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purpleAccent, width: 2),
        borderRadius: BorderRadius.circular(60),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Container post(String img, String username, String imgPost, int like, String description, int publishTime) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Card(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
                  Container(
                    width: 40, height: 40,
                    margin: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purpleAccent, width: 2),
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.fill))),
                Text(username),
                const SizedBox(width: 340),
                const Icon(Icons.more_vert_rounded)
              ]),
            Center(child: Image.asset(imgPost, width: 210, height: 210)),
            Row(
              children: [
                Container(
                    width: 20, height: 20,
                    margin: const EdgeInsets.only(top: 10, right: 10, left: 20, bottom: 5),
                    child: Image.asset("images/heart.png")),
                Container(
                    width: 20, height: 20,
                    margin: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 5),
                    child: Image.asset("images/chat (1).png")),
                Container(
                    width: 20, height: 20,
                    margin: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 5),
                    child: Image.asset("images/send.png")),
                Container(
                    width: 20, height: 20,
                    margin: const EdgeInsets.only(top: 10, right: 10, left: 320, bottom: 5),
                    child: Image.asset("images/save.png")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("$like likes",
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 23, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    Text(description,
                        style: const TextStyle(color: Colors.black)),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(left: 23, bottom: 5),
                child: Text("$publishTime minutes ago",
                    style: const TextStyle(color: Colors.black, fontSize: 10))),
          ],
        )));
  }
}
