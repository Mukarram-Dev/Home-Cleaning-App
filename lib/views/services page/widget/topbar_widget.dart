import 'package:cleaningapp/config/theme/text_theme_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopbarWidget extends StatelessWidget {
  const TopbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: ButtonStyle(
              alignment: Alignment.centerLeft,
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
            ),
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
            )),
        Text(
          'Our Service',
          style: AppTextStyles.textNormal(),
        ),
        Icon(Icons.filter_alt),
      ],
    );
  }
}
