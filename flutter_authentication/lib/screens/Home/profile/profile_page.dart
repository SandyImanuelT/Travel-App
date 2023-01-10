import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/edit_description.dart';
import 'package:flutter_authentication/edit/edit_email.dart';
import 'package:flutter_authentication/edit/edit_image.dart';
import 'package:flutter_authentication/edit/edit_name.dart';
import 'package:flutter_authentication/edit/edit_phone.dart';
import 'package:flutter_authentication/screens/Home/home_screen.dart';
import 'package:flutter_authentication/screens/Home/widget/display_image.dart';
import 'package:flutter_authentication/utilities/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../user/user_data.dart';

// This class handles the Page to dispaly the user's info on the "Edit Profile" Screen

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteClr,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 105),
          child: RichText(
              text: const TextSpan(
            text: "Profile",
            style: TextStyle(
              color: kBlackClr,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 100),
            )),
            InkWell(
                onTap: () {
                  navigateSecondPage(EditImagePage());
                },
                child: DisplayImage(
                  imagePath: user.image,
                  onPressed: () {},
                  child: null,
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: const SizedBox(
                width: 20,
              ),
            ),
            RichText(
                text: const TextSpan(
              text: "Sandy Imanuel T",
              style: TextStyle(
                color: Color.fromARGB(255, 57, 56, 56),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            )),
            Spacer(),
            RichText(
                text: const TextSpan(
              text: "sandyimanuel17@gmail.com",
              style: TextStyle(
                color: Color.fromARGB(255, 57, 56, 56),
                fontSize: 15,
              ),
            )),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.orange,
              minWidth: 100,
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(
                    color: kBlackClr,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 67),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 226, 232, 242)),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.orange,
                  ),
                ),
                title: RichText(
                    text: const TextSpan(
                  text: "Settings",
                  style: TextStyle(
                    color: kBlackClr,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                trailing: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: const Icon(
                    Icons.arrow_right_rounded,
                    color: Color.fromARGB(255, 153, 157, 160),
                    size: 55,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 226, 232, 242)),
                child: const Icon(
                  Icons.wallet,
                  color: Colors.orange,
                ),
              ),
              title: RichText(
                  text: const TextSpan(
                text: "Billing Details",
                style: TextStyle(
                  color: kBlackClr,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
              trailing: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: const Icon(
                  Icons.arrow_right_rounded,
                  color: Color.fromARGB(255, 153, 157, 160),
                  size: 55,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 226, 232, 242)),
                child: const Icon(
                  Icons.supervised_user_circle_rounded,
                  color: Colors.orange,
                ),
              ),
              title: RichText(
                  text: const TextSpan(
                text: "User Management",
                style: TextStyle(
                  color: kBlackClr,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
              trailing: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: const Icon(
                  Icons.arrow_right_rounded,
                  color: Color.fromARGB(255, 153, 157, 160),
                  size: 55,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 226, 232, 242)),
                child: const Icon(
                  Icons.info,
                  color: Colors.orange,
                ),
              ),
              title: RichText(
                  text: const TextSpan(
                text: "Information",
                style: TextStyle(
                  color: kBlackClr,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
              trailing: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: const Icon(
                  Icons.arrow_right_rounded,
                  color: Color.fromARGB(255, 153, 157, 160),
                  size: 55,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 226, 232, 242)),
                child: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
              ),
              title: RichText(
                  text: const TextSpan(
                text: "Delete Account",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            // buildUserInfoDisplay(user.name, 'Name', EditNameFormPage()),
            // buildUserInfoDisplay(user.phone, 'Phone', EditPhoneFormPage()),
            // buildUserInfoDisplay(user.email, 'Email', EditEmailFormPage()),
            // Expanded(
            //   child: buildAbout(user),
            //   flex: 4,
            // )
          ],
        ),
      ),
    );
  }

  // Widget builds the display item with the proper formatting to display the user's info
  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) =>
      Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ))),
                  child: Row(children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              navigateSecondPage(editPage);
                            },
                            child: Text(
                              getValue,
                              style: TextStyle(fontSize: 16, height: 1.4),
                            ))),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 40.0,
                    )
                  ])),
            ],
          ));

  // Widget builds the About Me Section
  // Widget buildAbout(User user) => Padding(
  //     padding: EdgeInsets.only(bottom: 10),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Tell Us About Yourself',
  //           style: TextStyle(
  //             fontSize: 15,
  //             fontWeight: FontWeight.w500,
  //             color: Colors.grey,
  //           ),
  //         ),
  //         const SizedBox(height: 1),
  //         Container(
  //             width: 350,
  //             height: 200,
  //             decoration: BoxDecoration(
  //                 border: Border(
  //                     bottom: BorderSide(
  //               color: Colors.grey,
  //               width: 1,
  //             ))),
  //             child: Row(children: [
  //               Expanded(
  //                   child: TextButton(
  //                       onPressed: () {
  //                         navigateSecondPage(EditDescriptionFormPage());
  //                       },
  //                       child: Padding(
  //                           padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
  //                           child: Align(
  //                               alignment: Alignment.topLeft,
  //                               child: Text(
  //                                 user.aboutMeDescription,
  //                                 style: TextStyle(
  //                                   fontSize: 16,
  //                                   height: 1.4,
  //                                 ),
  //                               ))))),
  //               Icon(
  //                 Icons.keyboard_arrow_right,
  //                 color: Colors.grey,
  //                 size: 40.0,
  //               )
  //             ]))
  //       ],
  //     ));

  // Refrshes the Page after updating user info.
  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  // Handles navigation and prompts refresh.
  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}
