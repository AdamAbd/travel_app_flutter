import 'package:flutter/material.dart';

import 'package:travel_app_flutter/models/TravelSpot.dart';
import 'package:travel_app_flutter/models/User.dart';
import 'package:travel_app_flutter/size_config.dart';

class Travelers extends StatelessWidget {
  final List<User> user;

  const Travelers({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: [
          ...List.generate(users.length, (index) {
            totalUser++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildTravelerImage(index),
            );
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: ClipOval(
              child: Container(
                width: getProportionateScreenWidth(28),
                height: getProportionateScreenWidth(28),
                color: const Color(0xFF3E4067),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelerImage(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        width: getProportionateScreenWidth(28),
        height: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
