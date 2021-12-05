import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:ui_prac/logic/drawer_animation_logic/bloc/drawer_animation_bloc.dart';
import 'package:ui_prac/presentation/Screens/homepage.dart';
import 'package:ui_prac/repository/models/drwer_animation_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DrawerAnimationBloc>(
          create: (context)=>DrawerAnimationBloc(),
        )
      ],
      child: MaterialApp(home: Homepage()),
    );
  }
}
