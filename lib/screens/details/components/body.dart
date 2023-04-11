import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/models/products/women/handbags.dart';
import 'package:flutter_ecommerce/screens/details/components/color_and_size.dart';
import 'package:flutter_ecommerce/screens/details/components/product_title_image.dart';
import 'package:flutter_ecommerce/screens/details/components/product_description.dart';
import 'package:flutter_svg/svg.dart';
import 'counter_with_wish_btn.dart';

class Body extends StatelessWidget {
  final HandBags product;
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
                      const CartCounterWishBtn(),
                      AddToCart(product: product)
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

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final HandBags product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            height: 50, 
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg"),
              color: product.color,
              onPressed: () {},
            )
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: product.color,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                ),
                onPressed: () {},
                child: const Text(
                  "BUY NOW",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                )
              )
            ),
          )
        ]
      ),
    );
  }
}