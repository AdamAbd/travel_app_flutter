import 'package:flutter/material.dart';

import 'package:travel_app_flutter/components/section_title.dart';
import 'package:travel_app_flutter/constants.dart';
import 'package:travel_app_flutter/models/User.dart';
import 'package:travel_app_flutter/size_config.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Top Travels on Spark',
          press: () {},
        ),
        const VerticalSpacing(of: 20),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefualtShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                topTravelers.length,
                (index) => UserCard(user: topTravelers[index]),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            width: getProportionateScreenWidth(55),
            height: getProportionateScreenWidth(55),
            fit: BoxFit.cover,
          ),
        ),
        const VerticalSpacing(of: 10),
        Text(
          user.name,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
