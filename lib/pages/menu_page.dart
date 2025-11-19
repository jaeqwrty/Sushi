import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/food_tile.dart';
import 'package:flutter_application_1/models/food.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
      name: 'Grilled Fish',
      imagePath: 'assets/image/fish.png',
      price: '\$12.00',
      rating: '4.5',
    ),
    Food(
      name: 'Lobster',
      imagePath: 'assets/image/lobster.png',
      price: '\$22.00',
      rating: '4.8',
    ),
    Food(
      name: 'Paella',
      imagePath: 'assets/image/paella.png',
      price: '\$18.00',
      rating: '4.1',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Text(
          'Umi Seafood House',
          style: GoogleFonts.dmSerifDisplay(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 20% Discount',
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 20),

                    MyButton(text: "Redeem", onTap: () {}),
                  ],
                ),
                Image.asset('assets/image/sushi.png', height: 100),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(22),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(22),
                ),
                hintText: 'Search here.....',
              ),
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 250,
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(food: foodMenu[index]),
            ),
          ),
          const SizedBox(height: 20),
          // ---- POPULAR FOOD ITEM -----
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.only(right: 25, left: 25, bottom: 20),
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/image/balls.png', height: 60),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Salmon Eggs',
                          style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '\$21.00',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ],
                ),
                // HEART ICON
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
