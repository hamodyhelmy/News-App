import 'package:flutter/material.dart';
import 'package:news_app/Models/cardmodel.dart';
import 'package:news_app/Screens/categoryview.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.card});
  Cardmodel card;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Categoryviews(
                category: card.category,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 7),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(card.image),
                fit: BoxFit.fill,
              )),
          height: 100,
          width: 160,
          child: Center(
              child: Text(
            card.category,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
