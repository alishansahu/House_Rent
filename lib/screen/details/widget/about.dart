import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About',
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10),
          Text(('House is very peaceful & wide.B.You will be pleased to live here & best for any family.'),
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14))
        ],
      ),
    );
  }
}
