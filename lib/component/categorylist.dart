import 'package:fashionshop/app/AppColors.dart';
import 'package:fashionshop/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCategoryList extends StatefulWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  int currentSelected =0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context,index){
            return Padding(padding: EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  currentSelected= index;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      color: currentSelected == index ? AppColors.darkGrey :AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(15),
                      image:  DecorationImage(
                        image: AssetImage('assets/pictures/clothes_shop.jpg',),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          currentSelected == index
                              ? Colors.black.withOpacity(.5)
                              : Colors.black.withOpacity(.85),
                          BlendMode.darken,
                        ),
                      )
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(categoryList[index].icon,height: 24,width: 24,
                    color: currentSelected==index?Colors.white:AppColors.grey,),
                  ),
                  SizedBox(height: 5,),
                  Text(categoryList[index].name.toString(),style: TextStyle(
                    fontWeight: currentSelected==index ? FontWeight.bold :FontWeight.normal,
                    color: currentSelected == index ? Colors.green : Colors.black
                  ),)
                  
                ],
              ),
            ),);
          },
        ),
      ),
    );
  }
}
