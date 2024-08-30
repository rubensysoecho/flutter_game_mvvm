import 'package:flutter/material.dart';

class LoginTextfieldDescription extends StatelessWidget {
  const LoginTextfieldDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 15),
      child: const Text(
        'Continua con tu',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
