import 'package:flutter/material.dart';
import 'package:gartha/screens/products.dart';
import 'package:gartha/widgets/product_grid.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNav();
}

class _HomeNav extends State<HomeNav> {
  int currentIndex = 0;

  Widget Home() {
    return Container(child: const Text("Home"));
  }

  Widget Gallery() {
    return Container(
      child: const Text("Gallery"),
    );
  }

  void onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[Home(), Products(), Gallery()];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTap,
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_filter_sharp), label: "Gallery"),
        ],
      ),
      body: widgets[currentIndex],
      appBar: AppBar(
        actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.person))],
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
