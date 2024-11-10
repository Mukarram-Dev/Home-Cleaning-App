import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/model/category.dart';
import 'package:cleaningapp/utils/app_constants.dart';
import 'package:cleaningapp/utils/gaps.dart';
import 'package:flutter/material.dart';

class HorizontalCategoriesView extends StatefulWidget {
  const HorizontalCategoriesView({super.key});

  @override
  State<HorizontalCategoriesView> createState() =>
      _HorizontalCategoriesViewState();
}

class _HorizontalCategoriesViewState extends State<HorizontalCategoriesView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (context, index) => Gaps.horizontalGapOf(10),
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.categoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: AppConstants.categoryList[index],
            onPressed: (b) {
              for (var category in AppConstants.categoryList) {
                category.isSelected = false;
              }
              setState(() {
                AppConstants.categoryList[index].isSelected = true;
              });
            },
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatefulWidget {
  final Category category;
  final Function(bool) onPressed;

  const CategoryCard(
      {required this.category, required this.onPressed, super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed(true);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: widget.category.isSelected
              ? AppColors.primaryColor
              : AppColors.lightGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(widget.category.title,
              style: TextStyle(
                  color: widget.category.isSelected
                      ? AppColors.white
                      : Colors.grey)),
        ),
      ),
    );
  }
}
