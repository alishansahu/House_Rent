import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories> {
  final categoriesList =[
    'Top Recomended',
    'Near You',
    'Agency Recomended',
    'Most Popular',
  ];
  int currentselect=0;
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 35,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,

          itemBuilder: (context,index)=>GestureDetector(
            onTap: (){
              setState(() {
                currentselect=index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:currentselect== index?
                        Theme.of(context).primaryColor:
                        Colors.transparent,
                    width: 3,
                  )
                )
              ),
        child: Text(

              categoriesList[index],
            style: TextStyle(
              color: currentselect == index ?
              Theme.of(context).primaryColor:
              Theme.of(context).textTheme.bodyText1!.color,
              fontSize: currentselect == index? 16:14,
              fontWeight: currentselect==index? FontWeight.bold:FontWeight.normal,



            ),

        ),
      ),
          ), separatorBuilder: (_, index)=>SizedBox(width: 15),
          itemCount: categoriesList.length),
    );
  }
}
