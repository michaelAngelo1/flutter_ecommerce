import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/models/product.dart';
import 'package:flutter_ecommerce/screens/details/components/color_and_size.dart';
import 'package:flutter_ecommerce/screens/details/components/product_title_image.dart';
import 'package:flutter_ecommerce/screens/details/components/product_description.dart';

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
                      CartCounter(),
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

class CartCounter extends StatefulWidget {
  const CartCounter({
    super.key,
  });

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(icon: Icons.remove, press: () {}),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            "1",
            style: TextStyle(
              fontSize: 20,
            )
          ),
        ),
        buildOutlinedButton(icon: Icons.add, press: () {}),
      ]
    );
  }
}

SizedBox buildOutlinedButton({required IconData icon, required Function press}) {
  return SizedBox(
    width: 40,
    height: 32,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
      onPressed: () {
        press;
      },
      child: Icon(
        icon,
      ),
    )
  );
}
