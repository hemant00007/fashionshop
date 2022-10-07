import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app/AppColors.dart';

class SearchBar extends StatelessWidget {

  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: 45,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)
              ),
              fillColor: AppColors.darkWhite,
              filled: true,
              contentPadding: EdgeInsets.all(10),
              hintText: 'Search',
              prefixIcon: Padding(
                padding: EdgeInsets.all(15),
                child: SvgPicture.asset('assets/svg/search.svg',width: 20,height: 20,color: Colors.grey,),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(12),
                child: SvgPicture.asset('assets/svg/filter.svg',width: 20,height: 20,color: Colors.grey,),
              )
            ),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
