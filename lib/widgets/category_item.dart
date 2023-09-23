import 'package:flutter/material.dart';
import 'package:purva/models/category_asset.dart';

class CategoryItem extends StatelessWidget {
  CategoryAsset item;
  CategoryItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Image.asset(
          item.image,
          fit: BoxFit.contain,
          height: 60,
          width: 70,
        ),
        const SizedBox(height: 10,),
        Text(item.title, style: const TextStyle(fontSize: 13))
      ]),
    );
  }
}