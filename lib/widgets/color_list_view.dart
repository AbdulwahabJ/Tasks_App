import 'package:flutter/material.dart';

import 'add_task_color.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
  });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      const Color(0xFF7A63FF),
      const Color(0xFF51BEFF),
      const Color(0xFF51CBC3),
      const Color(0xFFFFA79B),
    ];
    int count = 0;
      int colorCounter = 0;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                colorCounter = index;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ColorItem(
                  isActive: colorCounter == index,
                  color: colors[count == colors.length ? count = 0 : count++],
                ),
              ),
            );
          }),
    );
  }
}
