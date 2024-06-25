import 'package:flutter/material.dart';
import 'package:flutter_deeplink/components/dash/item_card.dart';
import 'package:flutter_deeplink/constants.dart';
import 'package:go_router/go_router.dart';

import 'models/Product.dart';

class ProductListPage extends StatelessWidget {
  String productType;

  ProductListPage({required this.productType, super.key});

  @override
  Widget build(BuildContext context) {
    List products = [];
    switch (productType) {
      case "Cosmetics":
        products = cosmeticProduct;
        break;
      default:
        products = electricProduct;
        break;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              "All Products",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => context.go("/details/$productType/$index"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
