import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String pageName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Image.asset('assets/logo.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: RichText(
                      maxLines: 1, 
                      text: TextSpan(
                          text: 'FIB',
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: ' Agro Tech',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.blue[900]!,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  const Text(
                    'Seja bem vindo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.orange,
                      Colors.blue[200]!,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, bottom: 4),
                              child: Text('E-mail',
                                  style: TextStyle(color: Colors.black54)),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, bottom: 4),
                                child: Text(
                                  'Senha',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    FilledButton(
                      onPressed: () {},
                      child: const Text(
                        'Entrar',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Spacer(flex: 2)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
