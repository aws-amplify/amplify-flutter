import 'dart:async';

class StoppableTimer {
  late Timer _timer;

  final Duration _duration;
  final Function _function;

  StoppableTimer(this._duration, this._function) {
    _timer = Timer.periodic(_duration, (Timer t) => _function);
  }

  void start() {
    if (_timer.isActive) return;
    _timer = Timer.periodic(_duration, (Timer t) => _function);
  }

  void stop() {
    _timer.cancel();
  }
}
