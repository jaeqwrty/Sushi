import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.grey[900]),
        title: Text('Tokyo', style: TextStyle(color: Colors.grey[900])),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 116, 42, 37),
            ),
            child: Row(
              children: [
                Text('Get 20% Discount'),
                MyButton(text: "Redeem", onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
