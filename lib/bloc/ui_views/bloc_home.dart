/* State Management Bloc:
* 1. Use  flutter_bloc package
* 2. Rebuild only the state widget (the widget which use the changing variable)
* 3. Can access the state value from any place
* 4. Does follow MVVM "Model View ViewModel " code architecture
* */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:state_management/bloc/bloc_logic/counter_bloc_cubit.dart';


class BlocHome extends StatelessWidget {
  const BlocHome({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text('State Management Provider')),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text('You have pushed the button this many times:'),
              BlocBuilder<CounterCubit,CounterState>(
                  builder: (_,count) {
                return Text(count.counter.toString(),
                    style: Theme.of(context).textTheme.headline4);
              })
            ])),
        floatingActionButton: FloatingActionButton(
            onPressed: context.read<CounterCubit>().incrementCounter, //Method 02
            tooltip: 'Increment',
            child: const Icon(Icons
                .add)) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
