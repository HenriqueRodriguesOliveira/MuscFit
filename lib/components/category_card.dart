import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;

  CategoryCard({required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(214, 211, 239, 26),
                Color.fromARGB(255, 208, 255, 0)
              ]),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 40,
            ),
            const SizedBox(width: 10),
            Text(
              categoryName,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans'),
            ),
          ],
        ),
      ),
    );
  }
}
