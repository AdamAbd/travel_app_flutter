import 'package:flutter/material.dart';

import 'package:travel_app_flutter/components/app_bar.dart';
import 'package:travel_app_flutter/components/custom_nav_bar.dart';
import 'package:travel_app_flutter/screens/home/components/body.dart';
import 'package:travel_app_flutter/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true),
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
