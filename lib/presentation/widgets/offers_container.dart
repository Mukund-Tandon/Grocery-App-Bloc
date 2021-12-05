import 'package:flutter/material.dart';

class OfferContainer extends StatelessWidget {
  Color color;
  String image;
  String couponDescription;
  OfferContainer({ Key? key, required this.color ,required this.image ,required this.couponDescription}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 270,
      margin: EdgeInsets.symmetric(horizontal: 7,vertical: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Image.asset(image),
            )),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Text('CODE-SAVE20',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                    width: 150,
                    color: Colors.red,
                    child: Center(child: Text(couponDescription)),
                  )
                ],
              ),
            ))
        ],
      ),
    );
  }
}