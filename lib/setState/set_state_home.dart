/* State Management SetState:
* 1. The class must extend statefulWidget to be used "No need for any packages"
* 2. Every time it's called the whole context containing the state value rebuild "all items rebuild"
* 3. Can't access the state value if it's stored outside the class except with passing it into constructors
* 4. Does not follow any code architecture
* */
import 'package:flutter/material.dart';

class SetStateHome extends StatefulWidget {
  const SetStateHome({Key? key}) : super(key: key);

  @override
  State<SetStateHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SetStateHome> {
int _counter = 0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management -setState-')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:'
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4
            )
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add)
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _incrementCounter() {
    setState((){   _counter++;});


  }
}