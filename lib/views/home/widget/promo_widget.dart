import 'package:cleaningapp/config/assets/image_assets.dart';
import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/config/theme/text_theme_style.dart';
import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.primaryColor,
          image: DecorationImage(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB-Nw1TaE-S_ORmaN8PvdBuuf6jU5lVndlRQ&s',
            ),
            opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Image.asset(
              ImageAssets.promobg,
              fit: BoxFit.cover,
            ),
            Positioned(
              right: 10,
              top: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get 30% Off",
                    style: AppTextStyles.textTitle(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    "Today is special day",
                    style: AppTextStyles.textBody(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
