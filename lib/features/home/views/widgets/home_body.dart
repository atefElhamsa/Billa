import 'package:billa/features/home/data/models/food_model.dart';
import 'package:billa/features/home/views/widgets/banner_widget.dart';
import 'package:billa/features/home/views/widgets/food_home_widget.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CustomBanner(),
        ),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return HomeFoodWidget(index: index);
          },
          itemCount: foods.length,
        ),
      ],
    );
  }
}
