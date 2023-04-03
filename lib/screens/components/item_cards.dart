import 'package:flutter/material.dart';
import "package:flutter_ecommerce/constants.dart";
import 'package:flutter_ecommerce/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  // final Function press;
  const ItemCard({
    super.key,
    required this.product,
    // required this.press, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: const TextStyle(
              color: kTextLightColor,
            )
          ),
        ),
        Text(
          "\$${product.price}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          )
        ),
      ],
    );
  }
}


