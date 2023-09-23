import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('My Profile', style: TextStyle(fontSize: 35, color: Colors.blueGrey, fontStyle: FontStyle.italic),),);
  }
}