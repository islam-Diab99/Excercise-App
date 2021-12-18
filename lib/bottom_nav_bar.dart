import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.svgsrc, required this.title, required this.isActive}) : super(key: key);
  final String svgsrc;
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          SvgPicture.asset(svgsrc,color: isActive?kActiveIconColor:kTextColor,),
          Text(
            title,style: TextStyle(
            color: isActive?kActiveIconColor:kTextColor,
          ),
          ),
        ],
      ),
    );
  }
}
