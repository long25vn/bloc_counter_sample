import 'package:meta/meta.dart';

@immutable
abstract class CounterState {
  final int soBandau;
  final bool redOrGreen;
  CounterState({this.soBandau, this.redOrGreen});
}

class InitialCounterState extends CounterState {
  InitialCounterState() : super(soBandau: 55, redOrGreen: true);
}

class CounterChange extends CounterState {
  CounterChange(CounterState oldState, {int soBandau, bool redOrGreen})
      : super(
          soBandau: soBandau ?? oldState.soBandau,
          redOrGreen: redOrGreen ?? oldState.redOrGreen,
        );
}
