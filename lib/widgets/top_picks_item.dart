import 'package:flutter/material.dart';
import 'package:purva/models/top_pick.dart';

class TopPicksItem extends StatelessWidget {
  TopPick item;
  TopPicksItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: 0.25,
        ),
      ),
      child: Column(
        children: [
        Image.asset(
          item.image,
          height: height * 0.14,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(
            item.title,
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(height: 4,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "₹ ${item.oldPrice.toString()}",
                style: const TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 3,),
              Text(
                "₹${item.newPrice.toString()}",
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 8,),
              Text(
                "${item.discount.toString()}%Off",
                style: const TextStyle(color: Color.fromARGB(255, 244, 81, 41)),
              )
            ],
          ),
          // ),
          const SizedBox(
            height: 15,
          ),
          if (item.rating > 0)
            Container(
              width: width * 0.2,
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Row(children: [
                Text(
                  item.rating.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 3,),
                Icon(
                  Icons.star,
                  color: Colors.white,
                )
              ]),
            )
        ]),
      ]),
    );
  }
}
