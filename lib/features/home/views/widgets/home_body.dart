import 'package:billa/core/utils/app_colors.dart';
import 'package:billa/core/utils/app_images.dart';
import 'package:billa/core/utils/app_texts.dart';
import 'package:billa/features/home/views/data/models/food_model.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List<FoodModel> foods = [
    FoodModel(
      image: AppImages.beafBurger,
      textImage: AppTexts.beafBurger,
      price: "7.5 \$",
      fav: false,
    ),
    FoodModel(
      image: AppImages.spicyShrimp,
      textImage: AppTexts.spicyShrimp,
      price: "9.5 \$",
      fav: false,
    ),
    FoodModel(
      image: AppImages.crispyZinger,
      textImage: AppTexts.crispyZinger,
      price: "5.5 \$",
      fav: false,
    ),
    FoodModel(
      image: AppImages.meatShawerma,
      textImage: AppTexts.meatShawerma,
      price: "6.5 \$",
      fav: false,
    ),
    FoodModel(
      image: AppImages.pizza,
      textImage: AppTexts.pizza,
      price: "4.5 \$",
      fav: false,
    ),
    FoodModel(
      image: AppImages.beafBurger,
      textImage: AppTexts.beafBurger,
      price: "7.5 \$",
      fav: false,
    ),
  ];
  List<FoodModel> favoriteFoods = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02,
        ),
        Expanded(
          child: GridView.builder(
            itemCount: foods.length,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.03,
                  vertical: MediaQuery.sizeOf(context).height * 0.009,
                ),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  width: MediaQuery.sizeOf(context).width * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.sizeOf(context).width * 0.1,
                    ),
                    color: AppColors.white,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: MediaQuery.sizeOf(context).width * 0.02,
                            top: MediaQuery.sizeOf(context).height * 0.01,
                          ),
                          child: CircleAvatar(
                            backgroundColor: AppColors.orange.withOpacity(0.1),
                            radius: MediaQuery.sizeOf(context).height * 0.019,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  foods[index].fav = !foods[index].fav;
                                  if (foods[index].fav == true) {
                                    favoriteFoods.add(foods[index]);
                                  } else {
                                    favoriteFoods.remove(foods[index]);
                                  }
                                });
                              },
                              icon: Icon(
                                foods[index].fav == false
                                    ? Icons.favorite_border_outlined
                                    : Icons.favorite_outlined,
                                color: AppColors.orange,
                                size: MediaQuery.sizeOf(context).height * 0.02,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        foods[index].image,
                        fit: BoxFit.fitHeight,
                        height: MediaQuery.sizeOf(context).height * 0.11,
                      ),
                      Text(
                        foods[index].textImage,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                          fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        ),
                      ),
                      Text(
                        foods[index].price,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.orange,
                          fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
