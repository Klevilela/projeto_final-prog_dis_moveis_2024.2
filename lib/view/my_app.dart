import 'package:flutter/material.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login':(context) => const MyHomePage(title: 'asdasd'),
        //'/registrar-se':(context) => const RegisterLogin(),
        //'/':(context) => MyHomePage(title: 'asdasd'),
        //'/home/':(context),
        //'/cadastro/':(context) => Cadastro(),
        //'/home/bairro/local_estabelecimento/:(context) => Local()
      },//rotas(telas) do projeto
    );
  }
}
