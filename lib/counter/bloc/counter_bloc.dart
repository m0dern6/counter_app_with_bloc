import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0)) {
    on<IncrementCounter>((event, emit) {
      emit(CounterState(state.count + 1));
    });

    on<DecrementCounter>((event, emit) {
      emit(CounterState(state.count - 1));
      if (state.count <= 0) {
        emit(const CounterState(0));
      }
    });
  }
}
