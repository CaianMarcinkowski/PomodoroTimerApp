// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$initializedAtom =
      Atom(name: '_PomodoroStore.initialized', context: context);

  @override
  bool get initialized {
    _$initializedAtom.reportRead();
    return super.initialized;
  }

  @override
  set initialized(bool value) {
    _$initializedAtom.reportWrite(value, super.initialized, () {
      super.initialized = value;
    });
  }

  late final _$minutesAtom =
      Atom(name: '_PomodoroStore.minutes', context: context);

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: '_PomodoroStore.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$timeWorkAtom =
      Atom(name: '_PomodoroStore.timeWork', context: context);

  @override
  int get timeWork {
    _$timeWorkAtom.reportRead();
    return super.timeWork;
  }

  @override
  set timeWork(int value) {
    _$timeWorkAtom.reportWrite(value, super.timeWork, () {
      super.timeWork = value;
    });
  }

  late final _$timeRestAtom =
      Atom(name: '_PomodoroStore.timeRest', context: context);

  @override
  int get timeRest {
    _$timeRestAtom.reportRead();
    return super.timeRest;
  }

  @override
  set timeRest(int value) {
    _$timeRestAtom.reportWrite(value, super.timeRest, () {
      super.timeRest = value;
    });
  }

  late final _$typeIntervalAtom =
      Atom(name: '_PomodoroStore.typeInterval', context: context);

  @override
  TypeInterval get typeInterval {
    _$typeIntervalAtom.reportRead();
    return super.typeInterval;
  }

  @override
  set typeInterval(TypeInterval value) {
    _$typeIntervalAtom.reportWrite(value, super.typeInterval, () {
      super.typeInterval = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void reset() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.reset');
    try {
      return super.reset();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void init() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.init');
    try {
      return super.init();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.addTimeWork');
    try {
      return super.addTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.removeTimeWork');
    try {
      return super.removeTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.addTimeRest');
    try {
      return super.addTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.removeTimeRest');
    try {
      return super.removeTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
initialized: ${initialized},
minutes: ${minutes},
seconds: ${seconds},
timeWork: ${timeWork},
timeRest: ${timeRest},
typeInterval: ${typeInterval}
    ''';
  }
}
