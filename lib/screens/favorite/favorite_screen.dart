import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import '../details/details_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Favorites",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Determine the number of columns based on the screen width
                  int crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
                  double childAspectRatio = constraints.maxWidth > 600 ? 0.8 : 0.7;

                  return GridView.builder(
                    itemCount: demoProducts.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: childAspectRatio,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) => ProductCard(
                      product: demoProducts[index],
                      onPress: () => Navigator.pushNamed(
                        context,
                        DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(product: demoProducts[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
