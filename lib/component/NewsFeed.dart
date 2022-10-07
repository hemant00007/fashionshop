import 'package:fashionshop/app/AppColors.dart';
import 'package:fashionshop/component/app_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedNews extends StatefulWidget {
  const FeedNews({Key? key}) : super(key: key);

  @override
  State<FeedNews> createState() => _FeedNewsState();
}

class _FeedNewsState extends State<FeedNews> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [

          SizedBox(
            height: 180,
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              onPageChanged: (i){
                setState(() {
                  currentIndex=i;
                });
              },
              itemCount: 5,
                itemBuilder: (context,i){
               return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/pictures/clothes_shop.jpg'),
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.darken)
                    )
                  ),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       width: 130,
                         height: 35,
                       alignment: Alignment.center,
                       decoration: const BoxDecoration(
                         borderRadius: BorderRadius.only(
                           bottomRight: Radius.circular(15),
                           topRight: Radius.circular(15),

                         ),
                         color: Colors.white24
                       ),
                       child: Text('Special Promo',style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 14
                       ),),
                     ),

                     SizedBox(height: 15,),

                     Row(

                       children: [
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text('All menwear',style: TextStyle(color: Colors.white),),
                               const Text('50% Discount',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                               SizedBox(height: 20,),
                               AppButton.normalButton(title: "Buy Now",
                               height: 35,
                               width: 100,
                                   onPress: (){
                                     print('hello hemant');
                                   },
                               backgroundColor: Colors.white,
                                 titleColor: Colors.black87,
                                 shadow: false
                               )
                             ],
                           ),
                         )
                       ],
                     )
                   ],
                 ),
                );
                },
            ),
          ),
          Positioned(
            bottom: 10,
            right: 30,
            child: SizedBox(
              height: 16,
              child: Row(
                children:
                  List.generate(5, (index) => AnimatedContainer(duration: Duration(milliseconds: 300),margin: EdgeInsets.only(right: 3),
                  height: index == currentIndex ? 16:8,
                    width: 5,
                    decoration: BoxDecoration(
                      color: index== currentIndex ? Colors.white : AppColors.grey,
                      borderRadius: BorderRadius.circular(2)
                    ),
                  ))
                ,
              ),
            ),
          )
        ],
      ),
    );
  }
}
