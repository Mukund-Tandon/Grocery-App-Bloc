import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:ui_prac/constants/enums.dart';
import 'package:ui_prac/logic/drawer_animation_logic/bloc/drawer_animation_bloc.dart';
import 'package:ui_prac/presentation/widget_list/offers_list.dart';
import 'package:ui_prac/presentation/widget_list/recomended_categories_list.dart';
import 'package:ui_prac/repository/models/drwer_animation_data.dart';
import 'package:ui_prac/presentation/widgets/category_container.dart';

import 'package:ui_prac/presentation/widgets//list_info_container.dart';

class home_screen extends StatefulWidget {
  

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  double xOffset = 0;
  double yoffset = 0;
  double scalefactor = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<DrawerAnimationBloc, DrawerAnimationState>(
      builder: (context, state) {
        if(state is DrawerOpenState){
          xOffset= state.xOffset;
          yoffset= state.yoffset;
          scalefactor = state.scalefactor;
        }
        else if(state is DrawerCloseState){
          xOffset= state.xOffset;
          yoffset= state.yoffset;
          scalefactor = state.scalefactor;
        }
      
      return AnimatedContainer(
        transform: Matrix4.translationValues(
            xOffset,
            yoffset,
            0)
          ..scale(scalefactor),
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Color(0xffF4F5F7),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 20.0,
              )
            ]),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              height: size.height * .3,
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  height: size.height * .3 - 20,
                  decoration: BoxDecoration(
                    color: Color(0xff00A267),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                        topLeft: Radius.circular(20.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            
                              BlocProvider.of<DrawerAnimationBloc>(context).add(DrawerOpenCloseEvent(openClose: OpenClose.open));
                            
                          },
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            margin: EdgeInsets.only(left: 10.0, top: 20.0),
                            child: SvgPicture.asset(
                              'assets/icons/menu.svg',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40.0, left: 30.0),
                        child: Row(
                          children: [
                            Text(
                              'Hi Mukund!',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 35.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    margin: EdgeInsets.only(left: 25.0, right: 25.0),
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            color: Color(0xff00A267).withOpacity(.23),
                            blurRadius: 50.0,
                          )
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Color(0xff00A267).withOpacity(.5)),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        SvgPicture.asset('assets/icons/search.svg'),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      height: 250,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.green.withOpacity(0.1),
                        //     spreadRadius: 15,
                        //     blurRadius: 12,
                        //   )],
                          borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          list_info_container(
                            info: 'Categories',
                            space: 160.0,
                          ),
                          Container(
                            width: 300,
                            child: Divider(height: 20,)),
                          Container(
                            margin: EdgeInsets.only(left: 12.0,top: 30),
                            height: 150.0,
                            child: ListView(children: RecommendedCategoriesList,scrollDirection: Axis.horizontal,)),
                          
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 200.0,
                      child: ListView(
                        children: offerscontainerlist,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );},
    );
  }
}
