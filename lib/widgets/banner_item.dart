import 'package:flutter/material.dart';
import 'package:purva/models/category_asset.dart';

class BannerItem extends StatelessWidget {
  CategoryAsset item;
  BannerItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //navigate to the toolkit section
      },
      child: Card(
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Image.asset(
            item.image,
            fit: BoxFit.cover,
          )),
    );
  }
}
