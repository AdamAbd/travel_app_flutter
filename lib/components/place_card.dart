import 'package:flutter/material.dart';

import 'package:travel_app_flutter/constants.dart';
import 'package:travel_app_flutter/models/TravelSpot.dart';
import 'package:travel_app_flutter/screens/home/components/travelers.dart';
import 'package:travel_app_flutter/size_config.dart';

class PlaceCard extends StatelessWidget {
  final TravelSpot travelSpots;
  final GestureTapCallback press;

  const PlaceCard({
    Key? key,
    required this.travelSpots,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(133),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(travelSpots.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              boxShadow: [kDefualtShadow],
            ),
            child: Column(
              children: [
                Text(
                  travelSpots.name,
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const VerticalSpacing(of: 10),
                Travelers(user: travelSpots.users),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
