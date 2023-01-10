import 'package:flutter/material.dart';
import 'package:flutter_authentication/model/place2_model.dart';

import '../../../utilities/colors.dart';

class Recomended2Card extends StatelessWidget {
  final Place2Info place2Info;
  final VoidCallback press;
  const Recomended2Card({
    Key? key,
    required this.place2Info,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 200,
          width: 370,
          decoration: BoxDecoration(
              color: kWhiteClr, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(place2Info.image))),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  place2Info.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: kPrimaryClr,
                    ),
                    Text(
                      place2Info.location,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
