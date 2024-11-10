import 'package:cleaningapp/config/theme/colors.dart';
import 'package:flutter/material.dart';

class ServicesCardWidget extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  const ServicesCardWidget(this.text, this.imageUrl, this.subtitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 15),
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
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  imageUrl,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
