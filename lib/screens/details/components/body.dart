import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/models/product.dart';
import 'package:flutter_ecommerce/screens/details/components/color_and_size.dart';
import 'package:flutter_ecommerce/screens/details/components/product_title_image.dart';
import 'package:flutter_ecommerce/screens/details/components/product_description.dart';

import 'cart_counter.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      ProductDescription(product: product),
                      const CartCounter(),
                    ]
                  )
                ),
                ProductTitleWithImage(product: product)
              ]
            )
          )
        ]
      )
    );  
  }
}