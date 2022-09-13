/* State Management Provider:
* 1. Use Provider package
* 2. Rebuild only the state widget (the widget which use the changing variable)
* 3. Can access the state value from any place
* 4. Does not follow any code architecture
* */
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/counter_provider.dart';

class ProviderHome extends StatelessWidget {
  const ProviderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("REBUILD 1");
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
                  Consumer<CounterProvider>(
                    builder: (_, val,__) {
                      print("REBUILD 2");
                      return Text(
                          val.counter.toString(),
                          style: Theme.of(context).textTheme.headline4
                      );
                    }
                  )
                ]
            )
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: Provider.of<CounterProvider>(context, listen: false).incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add)
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}