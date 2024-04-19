import 'package:billa/core/utils/app_colors.dart';
import 'package:billa/core/utils/app_images.dart';
import 'package:billa/features/home/views/widgets/favorite_screen.dart';
import 'package:billa/features/home/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeBody(),
    FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor,
        title: Image.asset(
          AppImages.billaLogo,
          fit: BoxFit.contain,
          height: MediaQuery.sizeOf(context).height * 0.03,
          width: MediaQuery.sizeOf(context).width * 0.2,
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
        ],
      ),
    );
  }
}
