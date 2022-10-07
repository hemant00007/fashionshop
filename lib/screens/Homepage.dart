import 'package:fashionshop/component/CategoryTitle.dart';
import 'package:fashionshop/component/NewsFeed.dart';
import 'package:fashionshop/component/appbar.dart';
import 'package:fashionshop/component/homebuttonMenuicon.dart';
import 'package:fashionshop/component/homepopularlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app/AppColors.dart';
import '../component/categorylist.dart';
import '../component/searchBar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomNavBarSelectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),

          ),
          SearchBar(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          FeedNews(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          CategoryTitle(title: 'Category', trailingTitle: 'View All',),
        // HomeCategoryList(),
          HomeCategoryList(),
          CategoryTitle(title: 'Popular', trailingTitle: "View All"),
          HomePopularList(),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      currentIndex: bottomNavBarSelectedIndex,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.darkGrey,
      onTap: (index){
      setState(() {
        bottomNavBarSelectedIndex=index;
      });
      },
  items: [
    homeBottomMenuIcon(itemIndex: 0, currentIndex: bottomNavBarSelectedIndex, title: 'home', svgPic: 'assets/svg/home.svg'),
  homeBottomMenuIcon(itemIndex: 1, currentIndex: bottomNavBarSelectedIndex, title: 'Product', svgPic: 'assets/svg/category.svg'),
  homeBottomMenuIcon(itemIndex: 2, currentIndex: bottomNavBarSelectedIndex, title: 'Notification', svgPic: 'assets/svg/notification.svg'),
  homeBottomMenuIcon(itemIndex: 3, currentIndex: bottomNavBarSelectedIndex, title: 'Profile', svgPic: 'assets/svg/profile.svg')
  ],

    );
  }
}
