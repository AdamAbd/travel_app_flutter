import 'package:flutter/material.dart';
import 'package:travel_app_flutter/components/app_bar.dart';
import 'package:travel_app_flutter/components/custom_nav_bar.dart';
import 'package:travel_app_flutter/screens/event/components/body.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'New Events'),
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
