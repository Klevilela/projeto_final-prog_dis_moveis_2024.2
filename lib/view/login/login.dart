/*classe para criar a tela de login(tela inicial). Ela é um formulário composto por um nome, senha, botão 
e um link que chama para a tela de registro caso o usuário não seja cadastrado. Usar tabbarviewer por questões de
intuitividade*/

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}