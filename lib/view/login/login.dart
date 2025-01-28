/*classe para criar a tela de login(tela inicial). Ela é um formulário composto por um nome, senha, botão 
e um link que chama para a tela de registro caso o usuário não seja cadastrado. Usar tabbarviewer por questões de
intuitividade*/

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Quanto Custa - THE'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          bottom: TabBar(
              controller: _tabController,
              tabs: const <Widget>[Text('Login'), Text('Registre-se')]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: _nomeController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                  TextField(
                    controller: _senhaController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        backgroundColor: Colors.blue),
                    child: const Text('Login'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const Center(child:  Text('oi'))
          ],
        ));
  }
}
