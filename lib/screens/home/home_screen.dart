import 'package:flutter/material.dart';

import 'package:travel_app_flutter/components/custom_nav_bar.dart';
import 'package:travel_app_flutter/constants.dart';
import 'package:travel_app_flutter/screens/home/components/body.dart';
import 'package:travel_app_flutter/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
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
}
