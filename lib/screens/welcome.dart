import 'package:fashionshop/app/AppColors.dart';
import 'package:fashionshop/component/app_buttons.dart';
import 'package:fashionshop/screens/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myclipper.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int currentPage =0;

  List<Widget> pictureList= [
    Image.asset('assets/pictures/3.png',key: UniqueKey(),),
    Image.asset('assets/pictures/2.png',key: UniqueKey(),),
    Image.asset('assets/pictures/1.png',key: UniqueKey(),)

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: ClipPath(
              clipper: MyClipper(),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: AppColors.darkGrey,
                  ),
                  const Positioned(
                    top: 50,
                    right: -100,
                    child: CircleAvatar(
                      backgroundColor: AppColors.grey,
                      radius: 120,
                    ),
                  ),
                  const Positioned(
                    top: 130,
                      left: -40,
                      child: CircleAvatar(

                        backgroundColor: AppColors.grey,
                        radius: 70,                       )),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Opacity(
                      opacity: .1,
                      child: Image.asset(
                        'assets/pictures/background_vector.jpg',
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25,

                    bottom: 0,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child,animation){
                        return FadeTransition(opacity: animation,child: child);
                      },
                      child: pictureList[currentPage],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: PageView.builder(
              onPageChanged: (i){
                setState(() {
                  currentPage=i;
                });
              },
              itemCount: 3,
              itemBuilder: (context, i){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Find your best outfit\nand look great',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, standard dummy text ever since the 1500s.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => Padding(padding: EdgeInsets.symmetric(horizontal: 2),
            child: AnimatedContainer(
              height: 5,
              width: currentPage==index? 20:5,
              duration: const Duration(milliseconds: 800),
              decoration: BoxDecoration(
                color: currentPage ==index ? AppColors.darkGrey:AppColors.lightGrey,
              borderRadius: BorderRadius.circular(5)
              ),
            ),
            )),
          ),
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: AppButton.normalButton(title: 'Get Started',onPress: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: ((context)=>const HomePage())
            ));
          }),
          ),
          SizedBox(height: 10),

        ],
      ),
    );
  }
}
