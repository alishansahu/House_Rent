import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      
      child: Column(
           children: [
             Row(
               children: [
                 MenuInfo(imageUrl: 'assets/icons/bedroom.svg',
                     Content: '5 bedrooms\n3 Master bdrooms'),
                 MenuInfo(imageUrl: 'assets/icons/bathroom.svg',
                     Content: '5 bethrooms\n3 toilets'),
               ],
             ),
             SizedBox(height: 10),
             Row(
               children: [
                 MenuInfo(imageUrl: 'assets/icons/kitchen.svg',
                     Content: '2 kitchen\n120 sqft'),
                 MenuInfo(imageUrl: 'assets/icons/parking.svg',
                     Content: '2 parking\n120 sqft'),
               ],
             )

           ],
      ),
    );
  }
}
class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String Content;
  const MenuInfo({Key? key, required this.imageUrl, required this.Content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            SizedBox(width: 20),
            Text(Content,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12))
          ],
        ),
      ),
    );
  }
}


