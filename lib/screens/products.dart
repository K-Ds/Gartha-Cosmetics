import "package:flutter/material.dart";
import "package:gartha/widgets/product_grid.dart";

class Products extends StatelessWidget {
  final products = <Map<String, String>>[
    {
      "name": "Shea & Moringa Butter",
      "description":
          "Shea&Moringa Butter is infused with moringa and other blends of herbs that softeness and nourishes hair and mositures your body",
      "image": "assets/images/butter_outside.jpg",
      "price": "RWF 15000"
    },
    {
      "name": "Gartha Deep Cleansing Shampoo",
      "description":
          "Our shampoo remove products residue and impurities from your scalp.",
      "price": "RWF 13000",
      "image": "assets/images/shampoo.jpg"
    },
    {
      "name": "Gartha Moisturizing Deep Conditioner",
      "description":
          "Our moisturizing deep conditioner adds moisture back to your hair,repair damage and leaves your hair sofy",
      "price": "RWF 13000",
      "image": "assets/images/conditioner.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: ProductGrid(products: products),
    );
  }
}
