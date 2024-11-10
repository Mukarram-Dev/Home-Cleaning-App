import 'package:cleaningapp/config/assets/image_assets.dart';
import 'package:cleaningapp/config/components/custom_button.dart';
import 'package:cleaningapp/config/routes/routes_name.dart';
import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/config/theme/text_theme_style.dart';
import 'package:cleaningapp/providers/home_provider.dart';
import 'package:cleaningapp/utils/gaps.dart';

import 'package:cleaningapp/views/service%20booking/widgets/extra_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ServiceBookingView extends StatelessWidget {
  const ServiceBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      bottomSheet: BottomSheet(
        backgroundColor: AppColors.white,
        elevation: 10,
        shadowColor: AppColors.grey,
        constraints: BoxConstraints(
          maxHeight: 120,
          minHeight: 100,
        ),
        onClosing: () {},
        builder: (context) => _buildBottomSheet(context),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildImageHeader(context),
              _buildDetailsSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageHeader(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        image: DecorationImage(
          image: AssetImage(ImageAssets.services1),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 20,
            child: _buildIconButton(context),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }

  Widget _buildDetailsSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle('Selected Cleaning'),
          _buildCleaningOptions(context),
          _buildTitle('Selected Frequency'),
          _buildFrequencyOptions(context),
          _buildTitle('Selected Extras'),
          _buildExtras(),
          Gaps.verticalGapOf(50),
        ],
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildCleaningOptions(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCleaningOption(
            context,
            title: 'Initial Cleaning',
            imagePath: 'asset/image/img1.png',
            isSelected: provider.selectedCleaning == 'initial',
            onTap: () => provider.changeSelecteedCleaning('initial'),
          ),
          _buildCleaningOption(
            context,
            title: 'Upkeep Cleaning',
            imagePath: 'asset/image/img2.png',
            isSelected: provider.selectedCleaning == 'upkeep',
            onTap: () => provider.changeSelecteedCleaning('upkeep'),
          ),
        ],
      ),
    );
  }

  Widget _buildCleaningOption(BuildContext context,
      {required String title,
      required String imagePath,
      required bool isSelected,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.3),
              image: DecorationImage(image: AssetImage(imagePath)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          CircleAvatar(
            radius: 15,
            backgroundColor: const Color(0xffededed),
            child: isSelected
                ? Icon(Icons.check_circle,
                    color: AppColors.primaryColor, size: 30)
                : null,
          ),
        ],
      ),
    );
  }

  Widget _buildFrequencyOptions(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFrequencyButton(context, 'Weekly', 'weekly', provider),
          _buildFrequencyButton(context, 'Bi-Weekly', 'biweekly', provider),
          _buildFrequencyButton(context, 'Monthly', 'monthly', provider),
        ],
      ),
    );
  }

  Widget _buildFrequencyButton(BuildContext context, String label,
      String frequency, HomeProvider provider) {
    final isSelected = provider.selectedFrequency == frequency;
    return InkWell(
      onTap: () => provider.changeSelecteedFrequency(frequency),
      child: Container(
        height: 50,
        width: 110,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Colors.transparent,
          border: isSelected
              ? null
              : Border.all(color: Colors.black.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExtras() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ExtraWidget('fridge', 'Inside Fridge', true),
            ExtraWidget('organise', 'Organise', false),
            ExtraWidget('blind', 'Small Blinds', false),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ExtraWidget('garden', 'Patio', false),
            ExtraWidget('organise', 'Grocery', true),
            ExtraWidget('blind', 'Curtains', false),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
                text: '\$60',
                style: AppTextStyles.textHeading(
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
          CustomButtonWidget(
            width: 200,
            title: 'Book Now',
            onPress: () => context.pushNamed(RouteName.calenderRoute),
          ),
        ],
      ),
    );
  }
}
