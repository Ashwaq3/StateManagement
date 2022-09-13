part of 'counter_bloc_cubit.dart';


class CounterState {
  const CounterState({this.counter = 0});
  final int counter;

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(counter: counter??this.counter);
  }

}
