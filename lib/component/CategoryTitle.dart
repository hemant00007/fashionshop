import 'package:fashionshop/app/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({Key? key,required this.title, required this.trailingTitle ,  this.onPressMore}) : super(key: key);

  final String title;
  final String trailingTitle;
  final VoidCallback? onPressMore;


  @override
  Widget build(BuildContext context) {
    return SliverPadding(padding: EdgeInsets.symmetric(horizontal: 10),

    sliver: SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),

          ),
          TextButton(onPressed: onPressMore, child: Text(trailingTitle,style: TextStyle(
            fontSize: 14,
            color: AppColors.lightGrey
          ),))
        ],
      ),
    ),);
  }
}
