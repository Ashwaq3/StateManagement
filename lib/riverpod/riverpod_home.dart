/* State Management Riverpod:
* 1. Use riverpod & hooks_riverpod: ^1.0.4 package
* 2. Every time it's called the whole context containing the state value rebuild "all items rebuild"
* 3. Can access the state value from any place
* 4. Does not follow any code architecture
* */
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_management/riverpod/counter_riverpod.dart';

final counterProvider = StateNotifierProvider((_) {
  return CounterRiverpod();
});

class RiverpodHome extends HookConsumerWidget {
  const RiverpodHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final count = ref.watch(counterProvider);

    return Scaffold(
        appBar: AppBar(
            title: const Text('State Management Provider')
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                      'You have pushed the button this many times:'
                  ),
                 Text(
                          count.toString(),
                          style: Theme.of(context).textTheme.headline4
                      )
                ]
            )
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: ref.read(counterProvider.notifier).increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add)
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}