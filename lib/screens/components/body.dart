import "package:flutter/material.dart";
import "package:flutter_ecommerce/constants.dart";
import 'package:flutter_ecommerce/screens/components/categories.dart';
import 'package:flutter_ecommerce/models/product.dart';

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
              itemBuilder: (context, index) => ItemCard(),
            ),
          )
        )
      ]
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          // height: 180,
          // width: 160,
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(products[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            products[0].title,
            style: const TextStyle(
              color: kTextLightColor,
            )
          ),
        ),
        const Text(
          "\$234",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )
        ),
      ],
    );
  }
}


