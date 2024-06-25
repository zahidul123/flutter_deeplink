import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage(
      {super.key, required this.product, required this.ontTaps});

  final Function() ontTaps;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Aristocratic product",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 60),
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      color: Colors.blue, // Set your desired background color
                      width: 250, // Match image width
                      height: 145, // Match image height
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ontTaps();
                    },
                    child: Expanded(
                      child: Hero(
                        tag: "${product.id}",
                        child: Image.asset(
                          product.image,
                          fit: BoxFit.fill,
                          height: 250,
                          width: 250,
                        ),
                      ),
                    ),
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
