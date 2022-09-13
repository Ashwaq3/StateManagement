import 'package:riverpod/riverpod.dart';

class CounterRiverpod extends StateNotifier<int> {
  CounterRiverpod(): super(0);

  void increment() => state++;

}