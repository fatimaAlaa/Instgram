import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:instgram/Explore/pro.dart';
import 'package:instgram/Screen/view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 500,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white10, width: 1)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView(
                children: [
                  const SizedBox(height: 10),
                  AppBar(
                      backgroundColor: Colors.black,
                      title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Icon(Icons.lock_outline_rounded,
                                color: Colors.white, size: 20),
                            SizedBox(width: 5),
                            UserName("l3xvlli"),
                            SizedBox(width: 5),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                            )
                          ]),
                      actions: const [
                        Icon(Icons.add_box_outlined,
                            color: Colors.white, size: 30),
                        SizedBox(width: 20),
                        Icon(Icons.menu, color: Colors.white, size: 30),
                        SizedBox(width: 20),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20, right: 80),
                          child: ProfileImage_Name("images/dad.jpg", "Zombie")),
                      ProfileInfo("Posts", 4),
                      SizedBox(width: 20),
                      ProfileInfo("Followers", 71),
                      SizedBox(width: 20),
                      ProfileInfo("Following", 610),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Padding(
                      padding: EdgeInsets.only(left: 30),
                      child:
                          Bio("World Changers aren't born! \n They are made.")),
                  const SizedBox(height: 50),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                            width: 400,
                            height: 30,
                            decoration: BoxDecoration(
                                color: const Color(0xff2c2b2b),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text("Edit profile",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))))),
                    Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: const Color(0xff2c2b2b),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: const Color(0xff2c2b2b), width: 5)),
                            child: Image.asset("images/add.png")))
                  ]),
                  const SizedBox(height: 20),
                  Row(children: [
                    Memory("images/pic.png", "Shop"),
                    Memory("images/story.jpg", "Friends"),
                    Column(children: [
                      Container(
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(60)),
                          child: const Center(
                              child: Text("+",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35)))),
                      const Text("New",
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ]),
                  ]),
                  const SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("images/posts.png", width: 30, height: 30),
                        Image.asset("images/tag.png", width: 30, height: 30)
                      ]),
                  const SizedBox(height: 20),
                  Container(
                      width: 400,
                      height: 400,
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        children: [
                          Post("images/mine/m4.jpg"),
                          Post("images/mine/m3.jpg"),
                          Post("images/mine/m2.jpg"),
                          Post("images/mine/m1.jpg")
                        ],
                      )),
                  /*BottomAppBar(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, top: 10, bottom: 10),
                          width: 20,
                          height: 20,
                          child: Image.asset("images/home.png"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          width: 20,
                          height: 20,
                          child: Image.asset("images/search.png"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          width: 20,
                          height: 20,
                          child: Image.asset("images/video.png"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          width: 20,
                          height: 20,
                          child: Image.asset("images/love.png"),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: const EdgeInsets.only(
                              right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.purpleAccent, width: 2),
                            borderRadius: BorderRadius.circular(60),
                            image: const DecorationImage(
                              image: AssetImage("images/dad.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),*/
                ],
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: CircleBottomNavigationBar(
        circleColor: Colors.purple,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        barBackgroundColor: Colors.black,
        barHeight: 50,
        iconYAxisSpace: 30,
        tabs: [
          TabData(
            icon: Icons.home_outlined,
            iconSize: 35,
            onClick: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          TabData(icon: Icons.search_rounded, iconSize: 35),
          TabData(
            icon: Icons.video_library_outlined,
            iconSize: 35,
            onClick: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Explore()));
            },
          ),
          TabData(icon: Icons.favorite_border_rounded, iconSize: 35),
          TabData(
            icon: Icons.account_circle_outlined,
            iconSize: 35,
            onClick: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
          ),
        ],
        onTabChangedListener: (int position) {},
      ),
    );
  }

  Text UserName(String user) {
    return Text(user,
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold));
  }

  Column ProfileImage_Name(String img, String name) {
    return Column(children: [
      Container(
          width: 80,
          height: 80,
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purpleAccent, width: 2),
              borderRadius: BorderRadius.circular(60),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.fill,
              ))),
      Text(
        name,
        style: TextStyle(color: Colors.white, fontSize: 12),
      )
    ]);
  }

  Column ProfileInfo(String name, int count) {
    return Column(children: [
      Text(
        "$count",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Text(name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ))
    ]);
  }

  Text Bio(String bio) {
    return Text(bio, style: TextStyle(color: Colors.white, fontSize: 15));
  }

  Column Memory(String img, String memoName) {
    return Column(children: [
      Container(
          width: 60,
          height: 60,
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.circular(60),
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.fill))),
      Text(memoName, style: TextStyle(color: Colors.white, fontSize: 12)) //Text
    ]);
  }

  Image Post(String img) {
    return Image.asset(img);
  }
}
