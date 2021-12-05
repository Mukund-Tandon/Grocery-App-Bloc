import 'package:flutter/material.dart';
import 'package:ui_prac/presentation/widget_list/category_bottomsheet_list.dart';
import 'package:ui_prac/presentation/widgets/category_container.dart';
import 'package:ui_prac/presentation/widgets/offers_container.dart';

class CategoryBottomSheet extends StatelessWidget {
  const CategoryBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      decoration: BoxDecoration(
          color: Color(0xffF4F5F7),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25),),),
          child: Column(
            children: [
              Container(
                child: Center(child: Text('Categories'),),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  children: CategoryBottomsheetList,
                  ),
              )
            ],
          ),
    );
  }
}
