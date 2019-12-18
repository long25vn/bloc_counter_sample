import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
      if (event is Tangbienso) {
        yield currentState + event.number;
      }
  }

  void tangso(int number) {
    this.dispatch(Tangbienso(number));
  }
}
