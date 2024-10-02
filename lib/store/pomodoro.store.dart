import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TypeInterval { WORK, REST }

abstract class _PomodoroStore with Store {
  @observable
  bool initialized = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int timeWork = 2;

  @observable
  int timeRest = 1;

  @observable
  TypeInterval typeInterval = TypeInterval.WORK;

  Timer? timer;

  @action
  void reset() {
    stop();
    minutes = areWorking() ? timeWork : timeRest;
    seconds = 0;
  }

  @action
  void init() {
    initialized = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _toogleTypeInterval();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    initialized = false;
    timer?.cancel();
  }

  @action
  void addTimeWork() {
    timeWork++;
    if (areWorking()) {
      reset();
    }
  }

  @action
  void removeTimeWork() {
    if (timeWork > 1) {
      timeWork--;
      if (areWorking()) {
        reset();
      }
    }
  }

  @action
  void addTimeRest() {
    timeRest++;
    if (areResting()) {
      reset();
    }
  }

  @action
  void removeTimeRest() {
    if (timeRest > 1) {
      timeRest--;
      if (areResting()) {
        reset();
      }
    }
  }

  bool areWorking() {
    return typeInterval == TypeInterval.WORK;
  }

  bool areResting() {
    return typeInterval == TypeInterval.REST;
  }

  void _toogleTypeInterval() {
    if (typeInterval == TypeInterval.WORK) {
      typeInterval = TypeInterval.REST;
      minutes = timeRest;
    } else {
      typeInterval = TypeInterval.WORK;
      minutes = timeWork;
    }
    seconds = 0;
  }
}
