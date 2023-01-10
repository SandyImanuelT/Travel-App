import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// class Feedback extends StatefulWidget {
//   const Feedback({Key? key}) : super(key: key);

//   @override
//     State<Feedback> createState() => _Feedback();
// }

// class _Feedback extends State<Feedback> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.indigo,
//       body: SafeArea(
//         child: Column(
//           children: [
//             _top(),
//             // _body(),
//           ],
//         ),
//       ),
//     );
//   }

// Widget _top() {
//   return Container(
//     padding: EdgeInsets.only(top: 30, left: 30),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Container(
//               padding: EdgeInsets.all(14),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.black12,
//               ),
//               child: Icon(
//                 Icons.search,
//                 size: 30,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(
//               width: 15,
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }

Widget _itemChats({String avatar = '', name = '', chat = '', time = '00.00'}) {
  return GestureDetector(
    // onTap: () {
    //   Navigator.of(context).push(
    //     MaterialPageRoute(
    //       builder: (context) => ChatPage(),
    //     ),
    //   );
    // },
    child: Card(
      margin: EdgeInsets.symmetric(vertical: 20),
      elevation: 0,
      child: Row(
        children: [
          Avatar(
            margin: EdgeInsets.only(right: 20),
            size: 60,
            image: avatar,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$name',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$time',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$chat',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _topChat(),
                _bodyChat(),
                SizedBox(
                  height: 120,
                )
              ],
            ),
            _formChat(),
          ],
        ),
      ),
    );
  }

  _topChat() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                'Give Us Your Feedback',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bodyChat() {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 25, right: 25, top: 25),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Colors.white,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            //   _itemChat(
            //   chat: 0,
            //   message:
            //     [

            StreamBuilder<QuerySnapshot>(
              stream: users.snapshots(),
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data!.docs.map((e) {
                      return Center(
                        child: ListTile(
                          title: Text(e['name']),
                        ),
                      );
                    }).toList(),
                  );
                } else {
                  return Text('Loading');
                }
              },
            ),
            SizedBox(
              height: 150,
            )
            // ]
            // ,
            //   time: '18.00',
            // ),
          ],
        ),
      ),
    );
  }

  // 0 = Send
  // 1 = Recieved
  _itemChat({int? chat, String? avatar, message, time}) {
    return Row(
      mainAxisAlignment:
          chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        avatar != null
            ? Avatar(
                image: avatar,
                size: 50,
              )
            : Text(
                '$time',
                style: TextStyle(color: Colors.grey.shade400),
              ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: chat == 0 ? Colors.indigo.shade100 : Colors.indigo.shade50,
              borderRadius: chat == 0
                  ? BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
            ),
            child: Text('$message'),
          ),
        ),
        chat == 1
            ? Text(
                '$time',
                style: TextStyle(color: Colors.grey.shade400),
              )
            : SizedBox(),
      ],
    );
  }

  Widget _formChat() {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    final TextEditingController nameController = TextEditingController();

    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          color: Color.fromARGB(255, 255, 255, 255),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: 'Type ur Message',
              suffixIcon: Container(
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(250),
                //     color: Colors.blue),
                padding: EdgeInsets.only(right: 15),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(700),
                    ),
                    color: Colors.blue,
                    child: Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                      size: 28,
                    ),

                    // padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                    onPressed: () {
                      //// ADD DATA HERE
                      users.add({
                        'name': nameController.text,
                        // 'price' : int.tryParse(ageController.text) ?? 0
                      });
                      nameController.text = '';
                      // ageController.text = '';
                    }),
              ),
              filled: true,
              fillColor: Colors.blueGrey[50],
              labelStyle: TextStyle(fontSize: 12),
              contentPadding: EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  Avatar({this.image, this.size = 50, this.margin = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
