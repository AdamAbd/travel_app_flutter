import 'package:flutter/material.dart';

import 'package:travel_app_flutter/components/place_card.dart';
import 'package:travel_app_flutter/components/section_title.dart';
import 'package:travel_app_flutter/models/TravelSpot.dart';
import 'package:travel_app_flutter/size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Right Now At Spark',
          press: () {},
        ),
        const VerticalSpacing(of: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  child: PlaceCard(
                    travelSpots: travelSpots[index],
                    press: () {},
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
