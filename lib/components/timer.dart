import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/timer_button.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        return Container(
          color: store.areWorking() ? Colors.red : Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.areWorking() ? 'Work time' : 'Rest time',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                  '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
                  style: const TextStyle(fontSize: 120, color: Colors.white)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  !store.initialized
                      ? (Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TimerButton(
                            text: 'Start',
                            icon: Icons.play_arrow,
                            click: store.init,
                          ),
                        ))
                      : (Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TimerButton(
                            text: 'Stop',
                            icon: Icons.stop,
                            click: store.stop,
                          ),
                        )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TimerButton(
                      text: 'Reset',
                      icon: Icons.refresh,
                      click: store.reset,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
