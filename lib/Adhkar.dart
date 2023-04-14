// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Adhkar extends StatelessWidget {
  List<String> adhkar = [
    'Glory be to Allah',
    'All praise and thanks be to Allah',
    'Allah is the greatest',
    'There is no god but Allah',
    'I seek forgiveness from Allah',
    'O Allah, bless Muhammad',
    'What Allah wills',
    'May Allah reward you with goodness',
    'Praise be to Allah, Lord of the worlds.',
    'O Allah, I ask You for beneficial knowledge, good provision, and accepted deeds.',
    'O Allah, I ask You for the good of this night and the good that follows it, and I seek refuge in You from the evil of this night and the evil that follows it.',
    'O Allah, I ask You for the best of what Your slave and prophet asked You for, and I seek refuge in You from the evil of what Your slave and prophet sought refuge in You from.',
    'Glory and praise be to Allah, as much as the number of His creation, as much as pleases Him, as much as the weight of His throne, and as much as the ink of His words.',
    'Allah! There is no god but He - the Living, The Self-subsisting, Eternal. No slumber can seize Him Nor Sleep. His are all things.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adhkar',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: adhkar.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                adhkar[index],
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
