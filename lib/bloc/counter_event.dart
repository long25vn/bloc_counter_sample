import 'package:meta/meta.dart';

// @immutable
abstract class CounterEvent {}


class Tangbienso extends CounterEvent {
  int number;
  Tangbienso(this.number);
}
