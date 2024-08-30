import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_game_mvvm/src/presentation/pages/auth/login/widgets/login_textfield_description.dart';

import '../../../../utils/base_color.dart';
import '../../../../widgets/default_button.dart';
import '../../../../widgets/default_textfield.dart';
import '../login_viewmodel.dart';

class LoginContent extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginViewModel vm;
  LoginContent({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.32,
            color: BASE_COLOR,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/img/gamepad.png',
                  height: 100,
                  width: 150,
                ),
                const Text(
                  'Games MVVM',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const LoginTextfieldDescription(),
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: const Text(
            'Login',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: DefaultTextfield(
            label: 'Correo electronico',
            icon: Icons.mail_outline,
            onChanged: (String text) {
              vm.changeEmail(text);
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: DefaultTextfield(
            label: 'Contraseña',
            icon: Icons.lock_outline,
            onChanged: (String text) {
              vm.changePassword(text);
            },
          ),
        ),
        Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: DefaultButton(
              text: 'Iniciar sesion',
              onPressed: () {
                vm.login();
              },
            )),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 40),
          child: const Text(
            'No tienes cuenta?',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        )
      ],
    );
  }
}
