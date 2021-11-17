import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:travel_app_flutter/constants.dart';
import 'package:travel_app_flutter/size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavItem(
                icon: 'assets/icons/calendar.svg',
                title: 'Events',
                press: () {},
              ),
              NavItem(
                icon: 'assets/icons/chat.svg',
                title: 'Chat',
                isActive: true,
                press: () {},
              ),
              NavItem(
                icon: 'assets/icons/friendship.svg',
                title: 'Friends',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String icon, title;
  final bool isActive;
  final GestureTapCallback press;

  const NavItem({
    Key? key,
    required this.icon,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: getProportionateScreenWidth(60),
        height: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefualtShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 28,
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
