import 'dart:core';

import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  String image;
  String categoryName;
  CategoryContainer({ Key? key,required this.image , required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 110,
      // color: Colors.red,
      child: Column(
        children: [
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              color: Color(0xffE9F7EF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(child: Image.asset(image,height: 65,)),
          ),
          Expanded(
            child: Container(
              child: Center(child: Text(categoryName),),
            ),
          )
        ],
      ),
    );
  }
}