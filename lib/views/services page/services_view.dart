import 'package:cleaningapp/utils/gaps.dart';
import 'package:cleaningapp/views/services%20page/widget/horizontal_category_list.dart';
import 'package:cleaningapp/views/services%20page/widget/services_listview.dart';
import 'package:cleaningapp/views/services%20page/widget/topbar_widget.dart';
import 'package:flutter/material.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TopbarWidget(),
                Gaps.verticalGapOf(20),
                HorizontalCategoriesView(),
                Gaps.verticalGapOf(20),
                ServicesListview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
