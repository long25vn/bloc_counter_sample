import 'package:meta/meta.dart';
import 'package:new_app/bloc/bloc.dart';

@immutable
abstract class CounterEvent {
  final dynamic payload;
  CounterEvent(this.payload);
}

class Tangbienso extends CounterEvent {
  Tangbienso(int number) : super(number);
}

class Doimau extends CounterEvent {
  Doimau(bool redOrGreen) : super(redOrGreen);
}