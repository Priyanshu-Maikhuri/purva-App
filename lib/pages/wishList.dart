import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Revisit your Wishlist', style: TextStyle(fontSize: 35, color: Colors.blueGrey, fontStyle: FontStyle.italic),),);
  }
}