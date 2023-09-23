import 'package:flutter/material.dart';

import 'package:purva/models/category_asset.dart';
import 'package:purva/models/top_pick.dart';
import 'package:purva/widgets/banner_item.dart';
import 'package:purva/widgets/category_item.dart';
import 'package:purva/widgets/top_picks_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<CategoryAsset> _categories = [
    CategoryAsset(image: 'assets/powerToolKit.jpg', title: 'Power Tools kit'),
    CategoryAsset(image: 'assets/timingPully.jpg', title: 'Timing Pully'),
    CategoryAsset(image: 'assets/nutBolt.jpg', title: 'Nut Bolt'),
    CategoryAsset(image: 'assets/timingBelt.jpg', title: 'Timing Belt'),
    CategoryAsset(image: 'assets/aliquamQuaerat.jpg', title: 'Aliquam Quaerat'),
  ];

  final List<CategoryAsset> _banners = [
    CategoryAsset(image: 'assets/topBanner1.jpg', title: 'Tools Collection'),
    CategoryAsset(
        image: 'assets/topBanner2.jpg', title: 'Drilling Machine Collection')
  ];

  final List<TopPick> _topPicks = [
    TopPick(
        image: 'assets/drillMachine.jpg',
        title: 'Drill Machine',
        oldPrice: 950,
        newPrice: 840,
        discount: 12,
        rating: 4.0),
    TopPick(
        image: 'assets/drillMachineToolKit.jpg',
        title: 'Drill Machine Tool Kit',
        oldPrice: 1550,
        newPrice: 1470,
        discount: 5,
        rating: 0.0),
    TopPick(
        image: 'assets/pliers.jpg',
        title: 'Pliers',
        oldPrice: 950,
        newPrice: 840,
        discount: 12,
        rating: 4.0),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          // const Divider(thickness: 0.15, color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.212, //180,
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return BannerItem(item: _banners[index]);
                      },
                      itemCount: _banners.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text('Categories',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                      height: 120,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return CategoryItem(item: _categories[index]);
                        },
                        itemCount: _categories.length,
                        scrollDirection: Axis.horizontal,
                      )),
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Top Picks',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 2 / 2.64,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: _topPicks.length,
                          itemBuilder: (context, index) {
                            return TopPicksItem(
                              item: _topPicks[index],
                            );
                          }),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
