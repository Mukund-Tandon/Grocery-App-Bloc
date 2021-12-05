import 'package:flutter/material.dart';
import 'package:ui_prac/presentation/widgets/categories_bottomsheet_container.dart';

class list_info_container extends StatelessWidget {
  final String info;
  final double space;

  list_info_container({required this.info, required this.space});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0, left: 20.0),
      height: 25.0,
      child: Row(
        children: [
          Text(
            info,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                builder: (BuildContext context) {
                  return CategoryBottomSheet();
                },
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: space),
              padding:
                  EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0, bottom: 4.0),
              // decoration: BoxDecoration(
              //   color: Color(0xff00A267),
              //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
              // ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
