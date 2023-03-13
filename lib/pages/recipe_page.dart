import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: _appBar(),
  body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: ListView(
  children: [
  _title("Recipes"),
  _menus(),
  _listItem(imageName: "coffee", title: "Made Coffee"),
  _listItem(imageName: "burger", title: "Made Burger"),
  _listItem(imageName: "pizza", title: "Made Pizza"),
  ],
  ),
  ),
  );
  }

  Widget _title(String text, {double tp = 20.0}) {
    return Padding(
      padding: EdgeInsets.only(top: tp),
      child: Text(
        text,
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Widget _menus() {
  return Padding(
  padding: const EdgeInsets.only(top: 20.0),
  child: Row(
  children: [
  _menu(mIcon: Icons.food_bank, text: "ALL"),
  SizedBox(width: 25),
  _menu(mIcon: Icons.emoji_food_beverage, text: "Coffee"),
  SizedBox(width: 25),
  _menu(mIcon: Icons.fastfood, text: "Burger"),
  SizedBox(width: 25),
  _menu(mIcon: Icons.local_pizza, text: "Pizza"),
  SizedBox(width: 25),
  ],
  ),
  );
  }

  Widget _menu({required IconData mIcon, required String text}) {
  return Container(
  width: 60,
    height: 80,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: Colors.black87)),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(mIcon, color: Colors.redAccent, size: 30),
    Text(text),
    ],
    ),
    );
  }

  Widget _listItem({required String imageName, required String title}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: AspectRatio(
            aspectRatio: 2 / 1,
            child: Image.asset(
              "assets/images/${imageName}.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    ),
  );
  }

  AppBar _appBar() {
    return AppBar(
        backgroundColor: Colors.white,
    actions: [
    IconButton(
        onPressed: () {
      print("클릭됨");
    },
    icon: Icon(CupertinoIcons.search),
    color: Colors.black,
    ),
    SizedBox(width: 15),
    Icon(CupertinoIcons.heart, color: Colors.redAccent),
    SizedBox(width: 15),
    ],
    );
  }
}