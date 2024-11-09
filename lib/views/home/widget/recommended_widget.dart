import 'package:cleaningapp/config/routes/routes_name.dart';
import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/config/theme/text_theme_style.dart';
import 'package:cleaningapp/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecommendedCardWidget extends StatelessWidget {
  final String text;
  final String name;
  final String price;
  final double rating;
  final String imageUrl;

  const RecommendedCardWidget(
      this.text, this.imageUrl, this.name, this.price, this.rating,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 15),
      child: GestureDetector(
        onTap: () {
          context.pushNamed(RouteName.serviceBookRoute);
        },
        child: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.5),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(.15)),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  color: AppColors.grey1.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Gaps.horizontalGapOf(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text.rich(
                    TextSpan(
                        text: '\$$price',
                        style: AppTextStyles.textLabel(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: '/Day',
                              style: AppTextStyles.textCaption(
                                color: AppColors.grey1,
                              ))
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                        size: 20,
                      ),
                      Text(
                        '$rating',
                        style: TextStyle(
                          color: AppColors.grey1,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
