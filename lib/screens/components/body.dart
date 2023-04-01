import "package:flutter/material.dart";
import "package:flutter_ecommerce/constants.dart";
import 'package:flutter_ecommerce/screens/components/categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            )
          ),
        ),
        Categories(),
      ]
    );
  }
}


