import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({
    super.key,
  });

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int itemCount = 1;

  void addItems() {
    setState(() {
      itemCount++;
    });
  }

  void subtractItems() {
    setState(() {
      itemCount--;
      if(itemCount <= 1) {
        itemCount = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(icon: Icons.remove, press: subtractItems),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            itemCount.toString(),
            style: const TextStyle(
              fontSize: 20,
            )
          ),
        ),
        buildOutlinedButton(icon: Icons.add, press: addItems),
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
      onPressed: () => press(),
      child: Icon(
        icon,
      ),
    )
  );
}
