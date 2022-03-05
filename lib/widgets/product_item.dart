import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        color: Colors.amber,
      ),
    );
  }
}
