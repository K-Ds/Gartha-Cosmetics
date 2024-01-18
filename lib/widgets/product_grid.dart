import "package:flutter/material.dart";
import "package:gartha/screens/product.dart";

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Product(product: product),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  flex: 3,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: AssetImage(product["image"]!),
                        fit: BoxFit.cover,
                      ))),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  product["name"]!,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product["price"]!,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.green[700]),
                  ),
                  IconButton(
                      iconSize: 25,
                      onPressed: () => {},
                      icon: Icon(Icons.shopping_cart))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key, required this.products});

  final List products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 30,
          crossAxisSpacing: 5,
          childAspectRatio: 0.8),
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
      itemCount: products.length,
    );
  }
}
