import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_bloc_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(const CounterState());

  void incrementCounter() {
   emit(state.copyWith(counter: state.counter+1));
  }

}
