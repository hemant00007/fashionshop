import 'package:fashionshop/dummy_data.dart';
import 'package:fashionshop/screens/myclipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/DetailScreen.dart';

class HomePopularList extends StatefulWidget {
  const HomePopularList({Key? key}) : super(key: key);

  @override
  State<HomePopularList> createState() => _HomePopularListState();
}

class _HomePopularListState extends State<HomePopularList> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(padding: EdgeInsets.symmetric(horizontal: 10),
    sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
    mainAxisSpacing: 3,
    crossAxisSpacing: 3,
    childAspectRatio: .7),
    delegate: SliverChildBuilderDelegate(
    (context,i){
      return GestureDetector(
      onTap: ()=> Navigator.of(context).push(
    MaterialPageRoute(
    builder: ((context) => DetailScreen(
   // popularModel: popularList[i],
    )),
    ),
    ),
    child: Card(
      elevation: .7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: ClipPath(
            clipper: MyClipper(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(popularList[i].image,),
                  fit: BoxFit.cover

                )
              ),
            ),
          ))
        ],
      ),
    ),
      );
    }
    ),
    ),
    );
  }
}
