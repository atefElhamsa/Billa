import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.03,
        vertical: MediaQuery.sizeOf(context).height * 0.025,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          MediaQuery.sizeOf(context).width * 0.01,
        ),
        child: Image.asset(
          width: double.infinity,
          AppImages.banner,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
