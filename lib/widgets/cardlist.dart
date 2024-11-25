import 'package:flutter/material.dart';

import '../Models/cardmodel.dart';
import 'category_card.dart';

// ignore: must_be_immutable
class Cardlist extends StatelessWidget {
  Cardlist({super.key});
  List<Cardmodel> cards = [
    Cardmodel(image: 'assets/entertaiment.avif', category: 'Entertainment'),
    Cardmodel(image: 'assets/business.avif', category: 'Business'),
    Cardmodel(image: 'assets/health.avif', category: 'Health'),
    Cardmodel(image: 'assets/science.avif', category: 'science'),
    Cardmodel(image: 'assets/technology.jpeg', category: 'Technology'),
    Cardmodel(image: 'assets/sports.avif', category: 'Sports'),
    Cardmodel(image: 'assets/general.avif', category: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return CategoryCard(card: cards[index]);
        },
      ),
    );
  }
}
