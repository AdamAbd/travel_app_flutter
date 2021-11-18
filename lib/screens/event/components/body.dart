import 'package:flutter/material.dart';

import 'package:travel_app_flutter/components/place_card.dart';
import 'package:travel_app_flutter/constants.dart';
import 'package:travel_app_flutter/models/TravelSpot.dart';
import 'package:travel_app_flutter/models/User.dart';
import 'package:travel_app_flutter/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
                ...List.generate(
                  travelSpots.length,
                  (index) => PlaceCard(
                    travelSpots: travelSpots[index],
                    press: () {},
                    isFullCard: true,
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(158),
                  height: getProportionateScreenWidth(350),
                  decoration: BoxDecoration(
                    color: Color(0xFF6A6C93).withOpacity(0.09),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Color(0xFFEBE8F6)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(53),
                        height: getProportionateScreenWidth(53),
                        child: ClipOval(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: kPrimaryColor,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: getProportionateScreenWidth(35),
                            ),
                            // onPressed: () {},
                          ),
                        ),
                      ),
                      const VerticalSpacing(of: 10),
                      const Text(
                        'Add New Place',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
