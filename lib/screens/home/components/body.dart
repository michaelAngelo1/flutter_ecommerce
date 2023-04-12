import "package:flutter/material.dart";
import "package:flutter_ecommerce/constants.dart";
import 'package:flutter_ecommerce/screens/home/components/categories.dart';
import 'package:flutter_ecommerce/models/products/women/handbags.dart';

import '../../details/detail_item.dart';
import 'item_cards.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Column(
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
    
              // Gridview for displaying as grids of cards
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                ),
                itemBuilder: (context, index) => 
                  // Each item card is called by the index, this class passes index as passing parameter to item_cards.dart
                  ItemCard(product: products[index], press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailItem(product: products[index])))),
              ),
            )
          )
        ]
      ),
    );
  }
}