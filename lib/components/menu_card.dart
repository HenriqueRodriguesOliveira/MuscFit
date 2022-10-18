import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final imageCard;
  final String nomeCard;

  MenuCard({required this.imageCard, required this.nomeCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(214, 211, 239, 26),
                Color.fromARGB(255, 208, 255, 0)
              ]),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                imageCard,
                height: 80,
                width: 70,
              ),
            ),
            Text(
              nomeCard,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  height: 1.5),
            )
          ],
        ),
      ),
    );
  }
}
