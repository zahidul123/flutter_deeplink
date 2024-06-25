import 'package:flutter/material.dart';
import 'package:flutter_deeplink/models/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product, required this.press});

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: product.color,
                  /*border: Border.all(
                    color: Colors.black, // Adjust color as needed
                    width: 1.0, // Set border width to 1 pixel
                  ),*/
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  color: Colors.white,
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPaddin / 4, horizontal: kDefaultPaddin / 4),
              child: Text(
                // products is out demo list
                product.title,
                style: const TextStyle(color: kTextLightColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: kDefaultPaddin / 4, bottom: kDefaultPaddin / 4),
              child: Text(
                "\$${product.price}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
