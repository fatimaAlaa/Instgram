import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:instgram/Profile/View.dart';
import 'package:instgram/Screen/view.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 500,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 500,
                    height: 40,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff656565),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 800,
                    width: 500,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      children: [
                        Image.asset("images/mine/m4.jpg"),
                        Image.asset("images/mine/m3.jpg"),
                        Image.asset("images/dad.jpg"),
                        Image.asset("images/mine/m2.jpg"),
                        Image.asset("images/mine/m1.jpg"),
                        Image.asset("images/mine/m4.jpg"),
                        Image.asset("images/mine/m3.jpg"),
                        Image.asset("images/dad.jpg"),
                        Image.asset("images/mine/m2.jpg"),
                        Image.asset("images/mine/m1.jpg"),
                        Image.asset("images/mine/m4.jpg"),
                      ],
                    ),
                  ),
                ],
              )
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
          TabData(icon: Icons.home_outlined, iconSize: 35,onClick: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          },),
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
}
