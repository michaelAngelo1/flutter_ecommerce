import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ecommerce/models/product.dart';

class DetailItem extends StatelessWidget {
  final Product product;
  const DetailItem({super.key, required this.product});  

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}