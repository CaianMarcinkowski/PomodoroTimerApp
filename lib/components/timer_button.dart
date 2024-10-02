import 'package:flutter/material.dart';

class TimerButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const TimerButton(
      {super.key, required this.text, required this.icon, this.click});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              color: Colors.black,
              size: 35,
            ),
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
