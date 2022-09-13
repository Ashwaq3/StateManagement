/* State Management GetX:
* 1. Use Get package
* 2. Rebuild only the state widget (the widget which use the changing variable)
* 3. Can access the state value from any place
* 4. Does follow MVC"Model View Controller" code architecture
* 5. It's a context free
* */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class GetXHome extends StatelessWidget {
  GetXHome({Key? key}) : super(key: key);
  final CounterControllerMethod01 controller = Get.find(); //Method 01
  final CounterControllerMethod02 controller2 = Get.find(); //Method 02

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('State Management Provider')),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text('You have pushed the button this many times:'),
              //Method 01
              // GetBuilder<CounterControllerMethod01>(
              //   init: controller,
              //   builder: (_) {
              //     return Text(
              //         controller.counter.toString(),
              //         style: Theme.of(context).textTheme.headline4
              //     );
              //   }
              // )
              //Method 02A "No need for find() object"
              // GetX<CounterControllerMethod02>(
              //     builder: (cont02A) {
              //       return Text(
              //           cont02A.counter.value.toString(),
              //           style: Theme.of(context).textTheme.headline4
              //       );
              //     }
              // )
              //Method 02B
              Obx(() {
                return Text(controller2.counter.value.toString(),
                    style: Theme.of(context).textTheme.headline4);
              })
            ])),
        floatingActionButton: FloatingActionButton(
            // onPressed: controller.incrementCounter,   //Method 01
            onPressed: controller2.incrementCounter, //Method 02
            tooltip: 'Increment',
            child: const Icon(Icons
                .add)) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
