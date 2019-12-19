import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => InitialCounterState();

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is Tangbienso){
      yield CounterChange(currentState, soBandau: event.payload);
    } else if (event is Doimau) {
      yield CounterChange(currentState, redOrGreen: event.payload);
    }
  }
}
