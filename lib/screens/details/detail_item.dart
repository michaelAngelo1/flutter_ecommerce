import 'package:flutter_ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'components/body.dart';

class DetailItem extends StatelessWidget {
  final Product product;
  const DetailItem({super.key, required this.product});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      const SizedBox(height: kDefaultPadding / 2),
    ]
    );
  }
}