import 'package:billa/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../data/models/food_model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<FoodModel> favFoods =
        foods.where((element) => element.fav == true).toList();
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.025),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.04,
          ),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(
                    favFoods[index].textImage,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                      fontSize: MediaQuery.sizeOf(context).height * 0.025,
                    ),
                  ),
                  subtitle: Text(
                    favFoods[index].price,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.orange,
                      fontSize: MediaQuery.sizeOf(context).height * 0.025,
                    ),
                  ),
                  leading: Image.asset(
                    favFoods[index].image,
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        favFoods[index].fav = false;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColors.orange.withOpacity(0.1),
                      radius: MediaQuery.sizeOf(context).height * 0.025,
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.orange,
                        size: MediaQuery.sizeOf(context).height * 0.04,
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              );
            },
            itemCount: favFoods.length,
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
