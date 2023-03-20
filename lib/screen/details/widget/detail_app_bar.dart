import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent/model/house.dart';

class DetailAppBar extends StatelessWidget {
  final House house;
  DetailAppBar(this.house);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(house.imageurl,
          fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,

                    ),
                    child: SvgPicture.asset("assets/icons/arrow.svg"),

                  ),
                  Container(
                    height: 20,
                    width: 20,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color:  Theme.of(context).accentColor,
                      shape: BoxShape.circle,

                    ),
                    child: SvgPicture.asset("assets/icons/mark.svg"),

                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
