import 'package:flutter/material.dart';

import 'package:travel_app_flutter/screens/home/components/home_header.dart';
import 'package:travel_app_flutter/screens/home/components/popular_places.dart';
import 'package:travel_app_flutter/screens/home/components/top_travelers.dart';
import 'package:travel_app_flutter/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          const HomeHeader(),
          const VerticalSpacing(),
          SizedBox(height: getProportionateScreenHeight(25)),
          const PopularPlaces(),
          const VerticalSpacing(),
          const TopTravelers(),
          const VerticalSpacing(),
        ],
      ),
    );
  }
}
