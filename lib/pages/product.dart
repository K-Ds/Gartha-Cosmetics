import "package:flutter/material.dart";

class Product extends StatefulWidget {
  const Product({super.key});

  State<Product> createState() => _Product();
}

class _Product extends State<Product> {
  bool inCart = false;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Column(
        children: [
          const Text("Gartha Oil"),
          const Text("descrition"),
          const Text("Image"),
          ElevatedButton(onPressed: () => {}, child: const Row(children: [Icon(Icons.shopping_cart),Text("Add to cart")])),
        ]
          )
      );
  }
}