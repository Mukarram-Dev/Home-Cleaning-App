import 'package:cleaningapp/config/assets/image_assets.dart';
import 'package:cleaningapp/config/routes/routes_name.dart';
import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/config/theme/text_theme_style.dart';
import 'package:cleaningapp/utils/gaps.dart';
import 'package:cleaningapp/views/home/widget/card_service_widget.dart';
import 'package:cleaningapp/views/home/widget/promo_widget.dart';
import 'package:cleaningapp/views/home/widget/recommended_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TopBar(),
                Gaps.verticalGapOf(20),
                SearchInput(),
                PromoCard(),
                Gaps.verticalGapOf(20),
                Headline(),
                ServiceListView(),
                SHeadline(),
                RecommendedListView(),
              ],
            ),
          ),
        ));
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Which service\ndo you need?",
          style: AppTextStyles.textTitle(color: AppColors.black),
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.25)),
          ]),
          child: const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Badge(
              isLabelVisible: true,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.notifications,
                size: 25,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 30,
              spreadRadius: 10,
              color: Colors.grey.withOpacity(.1)),
        ]),
        child: TextField(
          onChanged: (value) {
            //Do something wi
          },
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        ),
      ),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Our Services",
          style: AppTextStyles.textNormal(),
        ),
        GestureDetector(
          onTap: () => context.pushNamed(RouteName.servicesRoute),
          child: Text(
            "View More",
            style: AppTextStyles.textLabel(
                color: AppColors.primaryColor, fontSize: 14),
          ),
        ),
      ],
    );
  }
}

class SHeadline extends StatelessWidget {
  const SHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recommended",
              style: AppTextStyles.textNormal(),
            ),
          ],
        ),
      ],
    );
  }
}

class ServiceListView extends StatelessWidget {
  const ServiceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            ServicesCardWidget(
                "Home Cleaning", ImageAssets.services1, "8 min away"),
            ServicesCardWidget(
                "Handymen ", ImageAssets.services2, "12 min away"),
            ServicesCardWidget(
                "Plumbing", ImageAssets.services3, "15 min away"),
          ],
        ),
      ),
    );
  }
}

class RecommendedListView extends StatelessWidget {
  const RecommendedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0, bottom: 15.0),
        child: ListView(
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: const [
            RecommendedCardWidget(
              "Home Cleaning",
              ImageAssets.services1,
              "Marco Loppo",
              '35',
              4.0,
            ),
            RecommendedCardWidget(
              "Handymen ",
              ImageAssets.services2,
              "Julie Iskander",
              '40',
              4.5,
            ),
            RecommendedCardWidget(
              "Plumbing",
              ImageAssets.services3,
              "Mark Larisso",
              '75',
              4.3,
            ),
          ],
        ),
      ),
    );
  }
}
