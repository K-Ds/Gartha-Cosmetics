import "package:flutter/material.dart";

class Product extends StatefulWidget {
  const Product({super.key, required this.product});
  final product;

  @override
  State<Product> createState() => _Product();
}

class _Product extends State<Product> {
  bool inCart = false;

  @override
  Widget build(BuildContext context) {
    var product = widget.product;
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.shopping_basket))
          ],
          title: const Text("GARTHA"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage(product["image"]!),
                  fit: BoxFit.cover,
                )),
            Text(product["name"]),
            Text(product["description"]),
            Text(product["price"]),
            ElevatedButton(
                onPressed: () => {},
                child: const Row(children: [
                  Icon(Icons.shopping_cart),
                  Text("Add to cart")
                ])),
          ]),
        ));
  }
}
