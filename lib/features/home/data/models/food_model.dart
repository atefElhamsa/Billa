import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_texts.dart';

class FoodModel {
  final String image;
  final String textImage;
  final String price;
  bool fav;
  FoodModel({
    required this.image,
    required this.textImage,
    required this.price,
    this.fav = false,
  });
}

List<FoodModel> foods = [
  FoodModel(
    image: AppImages.beafBurger,
    textImage: AppTexts.beafBurger,
    price: "7.5 \$",
  ),
  FoodModel(
    image: AppImages.spicyShrimp,
    textImage: AppTexts.spicyShrimp,
    price: "9.5 \$",
  ),
  FoodModel(
    image: AppImages.crispyZinger,
    textImage: AppTexts.crispyZinger,
    price: "5.5 \$",
  ),
  FoodModel(
    image: AppImages.meatShawerma,
    textImage: AppTexts.meatShawerma,
    price: "6.5 \$",
  ),
  FoodModel(
    image: AppImages.pizza,
    textImage: AppTexts.pizza,
    price: "4.5 \$",
  ),
];
