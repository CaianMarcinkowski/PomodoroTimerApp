import 'package:flutter/material.dart';
import 'package:pomodoro/components/time_in.dart';
import 'package:pomodoro/components/timer.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Pomodoro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Timer()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TimeIn(
                    value: store.timeWork,
                    title: 'Work',
                    add: store.initialized && store.areWorking()
                        ? null
                        : store.addTimeWork,
                    remove: store.initialized && store.areWorking()
                        ? null
                        : store.removeTimeWork,
                  ),
                  TimeIn(
                    value: store.timeRest,
                    title: 'Rest',
                    add: store.initialized && store.areResting()
                        ? null
                        : store.addTimeRest,
                    remove: store.initialized && store.areResting()
                        ? null
                        : store.removeTimeRest,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
