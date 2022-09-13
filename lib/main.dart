import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';
import 'package:state_management/getX/views/getx_home.dart';
import 'package:state_management/provider/counter_provider.dart';
import 'package:state_management/provider/provider_home.dart';
import 'package:state_management/riverpod/riverpod_home.dart';
import 'package:state_management/setState/set_state_home.dart';
import 'package:get/get.dart';

import 'bloc/bloc_logic/counter_bloc_cubit.dart';
import 'bloc/ui_views/bloc_home.dart';
import 'getX/controllers/counter_controller.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CounterControllerMethod01()); //Method 01
    Get.put(CounterControllerMethod02()); //Method 02
    return MaterialApp(
      title: 'State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      // home: const SetStateHome()
      // home:ChangeNotifierProvider(
      //       create: (_) => CounterProvider(),
      //       child:const ProviderHome()
      //   )
      //   home: GetXHome()
        home: BlocProvider(
          create: (_)=>CounterCubit(),
          child: const BlocHome(),
        )
      //   home: const ProviderScope(
      //     child: RiverpodHome()
      //   )
    );
  }
}


