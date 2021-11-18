import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:travel_app_flutter/constants.dart';
import 'package:travel_app_flutter/models/TravelSpot.dart';
import 'package:travel_app_flutter/screens/home/components/travelers.dart';
import 'package:travel_app_flutter/size_config.dart';

class PlaceCard extends StatelessWidget {
  final TravelSpot travelSpots;
  final GestureTapCallback press;
  final bool isFullCard;

  const PlaceCard({
    Key? key,
    required this.travelSpots,
    required this.press,
    this.isFullCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 150 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
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
            width: getProportionateScreenWidth(isFullCard ? 150 : 137),
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
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isFullCard ? 17 : 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (isFullCard)
                  Text(
                    travelSpots.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard)
                  Text(
                    DateFormat.MMMM().format(travelSpots.date).toString() +
                        ' ' +
                        travelSpots.date.year.toString(),
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
