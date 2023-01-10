import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_authentication/model/place2_model.dart';
import 'package:flutter_authentication/model/place_model.dart';
import 'package:flutter_authentication/screens/Home/detailscreen/detail.screen.dart';
import 'package:flutter_authentication/screens/Home/detailscreen/detail2.screen.dart';
import 'package:flutter_authentication/screens/Home/profile/profile_page.dart';
import 'package:flutter_authentication/screens/Home/widget/inbox.dart';
import 'package:flutter_authentication/screens/Home/widget/recomended2_card.dart';
import 'package:flutter_authentication/screens/Home/widget/recomended_card.dart';
import 'package:flutter_authentication/screens/signin_screen.dart';
import 'package:flutter_authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter_authentication/utilities/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'widget/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteClr,
      bottomNavigationBar: GNav(
        tabs: [
          GButton(
            icon: Icons.chat_bubble,
            iconSize: 30,
            iconColor: Colors.grey,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(),
                  ));
            },
          ),
          GButton(
            icon: Icons.home,
            iconSize: 34,
            iconColor: Colors.black,
          ),
          GButton(
            icon: Icons.logout,
            iconSize: 31,
            iconColor: Colors.grey,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                  ));
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            // app bar
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ));
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/sandy.jpeg"),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "Hello",
                          style: TextStyle(
                            color: kBlackClr,
                            fontSize: 18,
                          ),
                          children: [
                        TextSpan(
                            text: ", Sandy",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ))
                      ]))
                ],
              ),
            ),

            //search section
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Explore New Destinations",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(100),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    color: kWhiteClr, borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Search you destination",
                            prefixIcon: Icon(Icons.search),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundColor: kPrimaryClr,
                        child: Icon(
                          Icons.sort_by_alpha_sharp,
                          color: kWhiteClr,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // category
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 75,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CategoryCard(
                        press: () {},
                        image: "assets/images/gunung.jpg",
                        title: "Mountains",
                      ),
                      CategoryCard(
                        press: () {},
                        image: "assets/images/pantai.jpeg",
                        title: "Beach",
                      ),
                      CategoryCard(
                        press: () {},
                        image: "assets/images/foods.jpg",
                        title: "Foods",
                      ),
                      CategoryCard(
                        press: () {},
                        image: "assets/images/forest.jpg",
                        title: "Forests",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // recomended
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  "Recomended",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),

            Container(
                height: 280,
                child: ListView.builder(
                    itemCount: places.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            RecomendedCard(
                              placeInfo: places[index],
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                              placeInfo: places[index],
                                            )));
                              },
                            )
                          ],
                        ),
                      );
                    })),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: const SizedBox(
                width: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: RichText(
                  text: const TextSpan(
                      text: "Cultural",
                      style: TextStyle(
                        color: kBlackClr,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                      children: [
                    TextSpan(
                        text: " Festival",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kBlackClr,
                          fontSize: 26,
                        ))
                  ])),
            ),

            const SizedBox(
              height: 15,
            ),

            Container(
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: places2.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 15),
                        child: Row(
                          children: [
                            Recomended2Card(
                              place2Info: places2[index],
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail2Screen(
                                              place2Info: places2[index],
                                            )));
                              },
                            )
                          ],
                        ),
                      );
                    }))
          ]),
        ),
      )),
    );
  }
}
