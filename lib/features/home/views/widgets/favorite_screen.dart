import 'package:billa/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text("data");
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 20,);
        },
        itemCount: 5,
      ),
    );
  }
}
