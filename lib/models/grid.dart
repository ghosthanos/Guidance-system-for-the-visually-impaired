import 'package:flutter/material.dart';

class GridItem {
  final String title;
  final String path;

//to initialise them
  GridItem({required this.title, required this.path});
}

GridList allGrid = GridList(grid: [
  GridItem(title: 'Where To?', path: 'gridimages/profile1.png'),
  GridItem(title: 'title2', path: 'gridimages/profile2.png'),
  GridItem(title: 'Ambulance', path: 'gridimages/profile3.png'),
  GridItem(title: 'title4', path: 'gridimages/profile4.png'),
  GridItem(title: 'profile', path: 'gridimages/profile6.png'),
]);

class GridList {
  late List<GridItem> grid;

  GridList({required this.grid});
}
