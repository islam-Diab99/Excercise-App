import 'package:exerciseapp/screans/details_screans.dart';
import 'package:exerciseapp/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:exerciseapp/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),




      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavBar(
                svgsrc: 'icons/calendar.svg',
                title: 'Today',
              isActive: false,
            ),
            BottomNavBar(svgsrc: 'icons/gym.svg',
                title: 'All Exercises',
              isActive: true,
            ),
            BottomNavBar(svgsrc: 'icons/Settings.svg',
              title: 'Settings',
              isActive: false,
            ),

          ],

        ),
      ),
      
      body: Stack(
        children: [
          Container(
            height: size.height*.45,
           decoration: BoxDecoration(
             color: Color(0XFFF5CE88),
             image: DecorationImage(
               image: AssetImage('images/undraw_pilates_gpdb.png'),
               alignment: Alignment.centerLeft,
             ),
           ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Align(

                    child: Container(height: 52,
                      width: 52,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0XFFF2BEA),
                        shape: BoxShape.circle,

                      ),
                      child: SvgPicture.asset('icons/menu.svg')
                    ),
                    alignment: Alignment.topRight,
                  ),
                  Text(
                      'Good Morning\nShirshir',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w900,
                    ),

                  ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: TextField(
                        decoration: InputDecoration(
                          icon: SvgPicture.asset('icons/search.svg',
                          ),
                          hintText: 'search',
                          border: InputBorder.none,

                        ),


                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        childAspectRatio: .85,
                          crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        children: [
                          CategoyCard(
                            title: 'Diet Recommendation',
                            svgsrc: 'icons/Hamburger.svg',
                            press: (){},
                          ),
                          CategoyCard(
                            title: 'Kegel Exercise',
                            svgsrc: 'icons/Excrecises.svg',
                            press: (){},
                          ),
                          CategoyCard(
                            title: 'Mediations',
                            svgsrc: 'icons/Meditation.svg',
                            press: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Details_screan();
                              }));
                            },
                          ),
                          CategoyCard(
                            title: 'Yoga',
                            svgsrc: 'icons/yoga.svg',
                            press: (){},
                          ),


                        ],
                      ),
                    ),

                ],
                ),
              ),
            ),
          )


        ],
      ),

    );
  }
}
