import 'package:fashionshop/app/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: Padding(
      padding: EdgeInsets.all(12),
      child: SvgPicture.asset('assets/svg/drawer_menu.svg'),
    ),
    title: const Text(
      "New Market",
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    ),
    actions: [
      Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SvgPicture.asset('assets/svg/message.svg',
            width: 20,
            height: 20,
            color: Colors.black,

          ),
          const Positioned(
            bottom: 32,
            right: -3,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 3,

            ),
          )

        ],
      ),
      SizedBox(width: 15,),
      Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SvgPicture.asset('assets/svg/shop.svg',width: 20,height: 20,color: Colors.black),
          Positioned(
              bottom: 35,
              right: -5,
              child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 3,
          ))
        ],
      ),
      SizedBox(width: 15,)
    ],
  );
}
