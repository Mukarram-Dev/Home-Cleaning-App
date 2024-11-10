import 'package:cleaningapp/providers/service_provider.dart';
import 'package:cleaningapp/utils/gaps.dart';
import 'package:cleaningapp/views/home/widget/recommended_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ServicesListview extends StatelessWidget {
  const ServicesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ServiceProvider>(
      builder: (context, provider, child) => ListView.separated(
        separatorBuilder: (context, index) => Gaps.verticalGapOf(10),
        itemBuilder: (context, index) {
          return provider.serviceList.isEmpty
              ? Center(
                  child: Text('No service found'),
                )
              : RecommendedCardWidget(
                  provider.filteredList[index].title,
                  provider.filteredList[index].image,
                  provider.filteredList[index].servicemen,
                  provider.filteredList[index].price,
                  provider.filteredList[index].rating,
                );
        },
        shrinkWrap: true,
        primary: false,
        itemCount: provider.filteredList.length,
      ),
    );
  }
}
