import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_prac/constants/enums.dart';
import 'package:ui_prac/logic/drawer_animation_logic/bloc/drawer_animation_bloc.dart';
import 'package:ui_prac/presentation/Screens/home_scrreen.dart';
import 'package:provider/provider.dart';
import 'package:ui_prac/repository/models/drwer_animation_data.dart';
class drawer_screen extends StatefulWidget {
  @override
  _drawer_screenState createState() => _drawer_screenState();
}

class _drawer_screenState extends State<drawer_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Color(0xff00A267),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.0,left: 15.0),
            height: 100.0,
            width: double.infinity,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: Image.asset('assets/images/applee.png').image,
                ),
                SizedBox(width: 10.0,),
                Text('Mukund Tandon',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0,
                  ),
                )

              ],
            ),


          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 180.0,left: 20.0),

                height: 350.0,
                width: 170.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(child: Row(
                      children: [
                        Icon(Icons.person_rounded,color: Colors.white,size: 35.0,),
                        SizedBox(width: 5.0,),
                        Text('Profile',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
                      ],
                    )),
                    SizedBox(height: 35.0,),
                    Container(child: Row(
                      children: [
                        Icon(Icons.shopping_cart,color: Colors.white,size: 35.0,),
                        SizedBox(width: 5.0,),
                        Text('Orders',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
                      ],
                    )),
                    SizedBox(height: 35.0,),
                    Container(child: Row(
                      children: [
                        Icon(Icons.message,color: Colors.white,size: 35.0,),
                        SizedBox(width: 5.0,),
                        Text('Messages',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
                      ],
                    )),
                    SizedBox(height: 35.0,),
                    Container(child: Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.white,size: 35.0,),
                        SizedBox(width: 5.0,),
                        Text('Favorites',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
                      ],
                    )),
                    SizedBox(height: 35.0,),
                    Container(child: Row(
                      children: [
                        Icon(Icons.settings,color: Colors.white,size: 35.0,),
                        SizedBox(width: 5.0,),
                        Text('Setting',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
                      ],
                    )),

                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    BlocProvider.of<DrawerAnimationBloc>(context).add(DrawerOpenCloseEvent(openClose: OpenClose.close));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 120.0,),

                  height: 100.0,
                  width: 100.0,
                  child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 35.0,),
                ),
              ),
            ],
          ),
          Container(

            height: 40.0,
            width: 200.0,
            margin: EdgeInsets.only(top: 150.0,left: 20.0),
            child: Row(
              children: [
                Icon(Icons.phone,color: Colors.white,size: 25.0,),
                SizedBox(width: 5.0,),
                Text('Contact',style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.w300),),
                VerticalDivider(width: 30.0,color: Colors.white,thickness: 1.0,indent: 10.0,endIndent: 5.0,),
                SizedBox(width: 6.0,),
                Text('Log Out',style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.w300),),
              ],
            ),
          )
        ],
      ),

    );
  }
}
