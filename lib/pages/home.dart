import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  const HomeNav ({super.key});

  @override
  State<HomeNav> createState() => _HomeNav();
}

class _HomeNav extends State<HomeNav> {
  int currentIndex = 0;

  var products = <Map<String, String>>[
    {
      "name": "Shea & Moringa Butter",
      "description":
          "Shea&Moringa Butter is infused with moringa and other blends of herbs that softeness and nourishes hair and mositures your body",
      "image": "assets/images/butter_outside.jpg",
      "price": "15 000Rwf"
    },
    {
      "name": "Gartha Deep Cleansing Shampoo",
      "description":
          "Our shampoo remove products residue and impurities from your scalp.",
      "price": "13 000Rwf",
      "image": "assets/images/shampoo.jpg"
    },
    {
      "name": "Gartha Moisturizing Deep Conditioner",
      "description":
          "Our moisturizing deep conditioner adds moisture back to your hair,repair damage and leaves your hair sofy",
      "price": "13 000Rwf",
      "image": "assets/images/conditioner.jpg"
    },
  ];

  List<Widget> gridItems() {
    var cards = <Widget>[];

    for (var product in products) {
      cards.add(Card(
        child: Column(
          children: [
            const Expanded(
                child: Image(image: AssetImage('assets/background.png'))),
            Text(product["name"]!),
            Column(
              children: [
                Text(product["price"]!),
                IconButton(
                    onPressed: () => {}, icon: const Icon(Icons.shopping_cart))
              ],
            )
          ],
        ),
      ));
    }
    return cards;
  }

  static final home = Container(
    child: const Text("Home"),
  );

  static final shop = Container(
      child: GridView.count(
    crossAxisCount: 2,
    children: [],
  )
  );
  
  static final gallery = Container(
    child: const Text("Gallery"),
  );

  static final widgets = <Widget>[
    home, shop, gallery
  ];

  void onItemTap(int index) {
    setState((){
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTap,
        currentIndex: currentIndex,
        items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "Shop"),
        BottomNavigationBarItem(icon: Icon(Icons.photo_filter_sharp), label: "Gallery"),
      ],),
      body: widgets[currentIndex],
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.person))
        ],
        leading: IconButton(onPressed: () => {}, icon: Icon(Icons.menu)),
        title: const Text("GARTHA"),
        centerTitle: true,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
    );
  }
}