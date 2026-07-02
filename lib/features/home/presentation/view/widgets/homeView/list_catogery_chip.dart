import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_cubit/phone_cubit.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/category_item.dart';
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
          final category = categories[index];
          return CategoryChip(
            label: category.label,
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.read<PhoneCubit>().getPhones(baseUrl: category.url);
            },
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: WidthManager.w10);
        },
        itemCount: categories.length,
      ),
    );
  }
}
