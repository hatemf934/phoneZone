import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/catogery_chip.dart';

class ListCategoryChip extends StatefulWidget {
  const ListCategoryChip({super.key});

  @override
  State<ListCategoryChip> createState() => _ListCategoryChipState();
}

class _ListCategoryChipState extends State<ListCategoryChip> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h45,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            child: CategoryChip(
              label: "Samsung",
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: WidthManager.w10);
        },
        itemCount: 10,
      ),
    );
  }
}
