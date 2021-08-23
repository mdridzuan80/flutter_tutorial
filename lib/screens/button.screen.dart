import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: Text('Task'),
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
