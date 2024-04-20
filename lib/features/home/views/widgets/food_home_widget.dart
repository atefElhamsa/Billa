import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/models/food_model.dart';

class HomeFoodWidget extends StatefulWidget {
  const HomeFoodWidget({super.key, required this.index});

  final int index;

  @override
  State<HomeFoodWidget> createState() => _HomeFoodWidgetState();
}

class _HomeFoodWidgetState extends State<HomeFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Center(
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.sizeOf(context).height * 0.22,
            width: MediaQuery.sizeOf(context).width * 0.45,
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.01,
              vertical: MediaQuery.sizeOf(context).height * 0.01,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                MediaQuery.sizeOf(context).width * 0.1,
              ),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  foods[widget.index].image,
                  fit: BoxFit.fitHeight,
                  height: MediaQuery.sizeOf(context).height * 0.14,
                ),
                Text(
                  foods[widget.index].textImage,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    fontSize: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                ),
                Text(
                  foods[widget.index].price,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.orange,
                    fontSize: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.04,
            vertical: MediaQuery.sizeOf(context).height * 0.025,
          ),
          child: CircleAvatar(
            backgroundColor: AppColors.orange.withOpacity(0.1),
            radius: MediaQuery.sizeOf(context).height * 0.019,
            child: IconButton(
              onPressed: () {
                setState(() {
                  foods[widget.index].fav = !foods[widget.index].fav;
                });
              },
              icon: Icon(
                foods[widget.index].fav == false
                    ? Icons.favorite_border_outlined
                    : Icons.favorite_outlined,
                color: AppColors.orange,
                size: MediaQuery.sizeOf(context).height * 0.02,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
