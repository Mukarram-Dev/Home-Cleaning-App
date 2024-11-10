import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/model/category.dart';
import 'package:cleaningapp/providers/service_provider.dart';
import 'package:cleaningapp/utils/app_constants.dart';
import 'package:cleaningapp/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HorizontalCategoriesView extends StatelessWidget {
  const HorizontalCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Consumer<ServiceProvider>(
        builder: (context, provider, child) => ListView.separated(
          separatorBuilder: (context, index) => Gaps.horizontalGapOf(10),
          scrollDirection: Axis.horizontal,
          itemCount: provider.categoryList.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: provider.categoryList[index],
              onPressed: (b) {
                for (var category in AppConstants.categoryList) {
                  category.isSelected = false;
                }
                provider.updateCatergory(
                    provider.categoryList[index].title, true, index);
              },
            );
          },
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  final Function(bool) onPressed;

  const CategoryCard(
      {required this.category, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(true);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: category.isSelected
              ? AppColors.primaryColor
              : AppColors.lightGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(category.title,
              style: TextStyle(
                  color: category.isSelected ? AppColors.white : Colors.grey)),
        ),
      ),
    );
  }
}
