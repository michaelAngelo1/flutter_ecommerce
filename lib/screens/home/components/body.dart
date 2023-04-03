import "package:flutter/material.dart";
import "package:flutter_ecommerce/constants.dart";
import 'package:flutter_ecommerce/screens/home/components/categories.dart';
import 'package:flutter_ecommerce/models/product.dart';

import '../../details/detail_item.dart';
import 'item_cards.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            )
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) => 
                ItemCard(product: products[index], press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailItem(product: products[index])))),
            ),
          )
        )
      ]
    );
  }
}