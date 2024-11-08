import 'package:cleaningapp/config/routes/routes_name.dart';
import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/config/theme/text_theme_style.dart';
import 'package:cleaningapp/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Gaps.verticalGapOf(30),
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('asset/image/logo.png'))),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Clean Home\nClean Life",
            style: AppTextStyles.textHeading(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Book Cleans At The Comfort \nOf Your Home",
            style: AppTextStyles.textLabel(color: AppColors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/image/splash.png'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  GoRouter.of(context).pushNamed(RouteName.homeRoute);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20)),
                      color: Colors.white),
                  child: Text(
                    'Get Started',
                    style:
                        AppTextStyles.textLabel(color: AppColors.primaryColor),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
