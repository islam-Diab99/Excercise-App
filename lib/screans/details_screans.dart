import 'package:exerciseapp/bottom_nav_bar.dart';
import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/screans/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details_screan extends StatelessWidget {
  const Details_screan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
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
            BottomNavBar(
              svgsrc: 'icons/gym.svg',
              title: 'All Exercises',
              isActive: true,
            ),
            BottomNavBar(
              svgsrc: 'icons/Settings.svg',
              title: 'Settings',
              isActive: false,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('images/meditation_bg.png'),
              ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .07,
                ),
                Text(
                  'Mediation',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '3-10 min course',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: size.width * .6,
                    child: Text(
                      'Live happier and healthier by learning thr fundamentals of mediations,and mind unless',
                      style: TextStyle(
                        height: 2,
                      ),
                    )),
                SizedBox(width: size.width * .5, child: SearchBar()),
                Wrap(
                  spacing: 20,
                  runSpacing: 10,
                  children: [
                    SessionCard(
                      sessionNum: 1,
                      isDone: true,
                    ),
                    SessionCard(
                      sessionNum: 2,
                    ),
                    SessionCard(
                      sessionNum: 3,
                    ),
                    SessionCard(
                      sessionNum: 4,
                    ),
                    SessionCard(
                      sessionNum: 5,
                    ),
                    SessionCard(
                      sessionNum: 6,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Mediation',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 20,
                        spreadRadius: -20,
                        color: kShadowColor,
                      )
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        "icons/Meditation_women_small.svg",
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Basic 2",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text("Start your deepen you practice")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset("icons/Lock.svg"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  const SessionCard({Key? key, required this.sessionNum, this.isDone = false})
      : super(key: key);
  final int sessionNum;
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constrains.maxWidth / 2 - 10,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  spreadRadius: -13,
                  blurRadius: 30,
                  color: kShadowColor,
                )
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                          color: isDone ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueColor)),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Session $sessionNum',
                      style: Theme.of(context).textTheme.subtitle2,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
