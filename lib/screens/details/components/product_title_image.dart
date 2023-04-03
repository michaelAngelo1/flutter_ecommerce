import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/product.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white)
          ),
          const Text(
            "Office Code",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            )
          ),
          const SizedBox(width: kDefaultPadding * 1.2),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30.0, 
                      )
                    ),
                  ]
                )
              ),
              const SizedBox(width: kDefaultPadding * 1.2),
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              )
            ]
          )
        ]
      ),
    );
  }
}