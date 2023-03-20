import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/screen/home/widget/circle_icon_button.dart';


class BestOffer extends StatelessWidget {
  final ListOfOffers =House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),

      child: Column(
        children: [
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Best Offers',style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16,fontWeight: FontWeight.bold),),

              Text('See All',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 10),
          ...ListOfOffers
              .map((el)=>
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),

                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                           height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(el.imageurl),
                              fit: BoxFit.cover,

                            ),

                            borderRadius: BorderRadius.circular(8),
                          ),

                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(el.name,
                              style:Theme.of(context).textTheme.headline1!.copyWith(
                                fontSize: 16,fontWeight: FontWeight.bold
                              )),
                            SizedBox(height: 10),
                            Text(el.address,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12,fontWeight: FontWeight.bold),),
                          ],
                        )
                      ],

                    ),
                    Positioned(
                      right: 0,
                        child:
                    CircleIconButton(iconUrl: "assets/icons/heart.svg", color: CupertinoColors.systemGrey))
                  ],
                ),
              )

          ).toList()
        ],
      ),
    );
  }
}
