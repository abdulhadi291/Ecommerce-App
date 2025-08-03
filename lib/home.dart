import 'package:ecommerce_app/widgets/custom_card.dart';
import 'package:ecommerce_app/widgets/popular_card.dart';
import 'package:ecommerce_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Row(
                  children: [CustomCard(), CustomCard(), CustomCard()],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  sectionHeader("New Arrivals"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: ProductCard(
                          title: "Adidas",
                          subtitle: "Traveler Tote",
                          price: "1950.00PKR",
                          imageUrl:
                              "https://cdn-icons-png.flaticon.com/512/590/590685.png",
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ProductCard(
                          title: "Puma",
                          subtitle: "Clean 90 Triple Sneakers",
                          price: "\2450.00 PKR",
                          imageUrl:
                              "https://cdn-icons-png.flaticon.com/512/8765/8765738.png",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  sectionHeader("Popular"),
                  const SizedBox(height: 10),
                  PopularCard(
                    brand: "Hush Puppies",
                    name: " 1 Sandals",
                    price: "\2740.00 PKR",
                    rating: 4.5,
                    imageUrl:
                        "https://cdn-icons-png.flaticon.com/512/2331/2331970.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget sectionHeader(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      Text("View All", style: TextStyle(color: Colors.grey[600])),
    ],
  );
}
