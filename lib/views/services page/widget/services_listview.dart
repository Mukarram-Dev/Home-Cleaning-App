import 'package:cleaningapp/utils/app_constants.dart';
import 'package:cleaningapp/utils/gaps.dart';
import 'package:cleaningapp/views/home/widget/recommended_widget.dart';
import 'package:flutter/material.dart';

class ServicesListview extends StatelessWidget {
  const ServicesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Gaps.verticalGapOf(10),
      itemBuilder: (context, index) => RecommendedCardWidget(
        AppConstants.serviceList[index].title,
        AppConstants.serviceList[index].image,
        AppConstants.serviceList[index].servicemen,
        AppConstants.serviceList[index].price,
        AppConstants.serviceList[index].rating,
      ),
      shrinkWrap: true,
      primary: false,
      itemCount: AppConstants.serviceList.length,
    );
  }
}
