import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../details/details_screen.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  static String routeName = "/products";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: SafeArea(
        child: LayoutBuilder( // Esto permite obtener las dimensiones actuales de la pantalla y ajustar el diseño en consecuencia
          builder: (context, constraints) {
            int crossAxisCount;
            double aspectRatio;

            if (constraints.maxWidth < 600) {
              crossAxisCount = 2;
              aspectRatio = 0.7;
            } else if (constraints.maxWidth < 900) {
              crossAxisCount = 3;
              aspectRatio = 0.8;
            } else {
              crossAxisCount = 4;
              aspectRatio = 1.0;
            }

            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth * 0.05,
              ),
              child: GridView.builder(
                itemCount: demoProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: aspectRatio,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) => ProductCard(
                  product: demoProducts[index],
                  onPress: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments:
                        ProductDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
