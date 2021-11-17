import 'package:flutter/material.dart';

import 'package:travel_app_flutter/constants.dart';
import 'package:travel_app_flutter/size_config.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final GestureTapCallback press;

  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: press,
            child: const Text('See All'),
          ),
        ],
      ),
    );
  }
}
