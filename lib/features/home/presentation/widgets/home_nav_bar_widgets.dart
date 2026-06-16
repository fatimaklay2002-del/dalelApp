import 'package:dalel_project/core/constants/app_assets.dart';
import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/features/cart/presentation/view/cart_view.dart';
import 'package:dalel_project/features/home/presentation/views/home_viwe.dart';
import 'package:dalel_project/features/profile/presentation/view/profile_view.dart';
import 'package:dalel_project/features/search/presentation/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:svg_flutter/svg.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

// ignore: use_key_in_widget_constructors
class HomeNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        colorBehindNavBar: Colors.transparent,
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [HomeView(), CartView(), SearchView(), ProfileView()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home, size: 24, color: AppColors.deepBrown),
      inactiveIcon: Icon(
        Icons.home_outlined,
        size: 24,
        color: Color(0xff9B6C59),
      ),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(
        Assets.assetsShoppingCart,
        height: 24,
        width: 24,
      ),
      icon: SvgPicture.asset(
        Assets.assetsActiveShoppingCart,
        height: 24,
        width: 24,
      ),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(Icons.search, color: Color(0xff9B6C59)),
      icon: Icon(Icons.search, color: AppColors.deepBrown),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.person, color: AppColors.deepBrown),
      inactiveIcon: Icon(Icons.person_2_outlined, color: Color(0xff9B6C59)),
    ),
  ];
}
