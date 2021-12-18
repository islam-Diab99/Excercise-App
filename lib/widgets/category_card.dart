
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoyCard extends StatelessWidget {
  const CategoyCard({Key? key, required this.svgsrc, required this.title, required this.press}) : super(key: key);
  final String svgsrc;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(


        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0,17),
                blurRadius: 17,
                spreadRadius: -23,
                color: Colors.black26,



              ),
            ]
        ),


        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: ()=>press(),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(

                children: [
                  Spacer(),
                  SvgPicture.asset(svgsrc),
                  Spacer(),
                  Text(title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 17,

                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
