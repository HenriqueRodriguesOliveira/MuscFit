import 'package:academia/auth/main_page.dart';
import 'package:academia/pages/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black12,
              Colors.black87,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 400),
                  child: Text(
                    'Eleve o seu Corpo ao Limite!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 174, 1),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                      fontSize: 27,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.0, 0.0),
                          blurRadius: 8.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Monte o seu treino, organize o seu dia a dia e muito mais...',
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: 'QuickSand',
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[700],
                  fixedSize: const Size(275, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextButton(
                    onPressed: null,
                    child: Text(
                      'Não possui uma conta?',
                      style: TextStyle(
                        color: Colors.white54,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: const Text(
                      'Cadastre-se',
                      style: TextStyle(
                        color: Colors.amber,
                        fontFamily: 'QuickSand',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
