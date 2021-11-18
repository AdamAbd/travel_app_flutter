import 'package:flutter/material.dart';
import 'package:travel_app_flutter/constants.dart';

AppBar buildAppBar({bool isTransparent = false, String? title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    title: Text(
      title ?? '',
      style: const TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: kIconColor,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: ClipOval(child: Image.asset('assets/images/profile.png')),
      ),
    ],
  );
}
