import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets/fita.png',
            height: 40,
          ),
          Text(
            'Medidas',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
