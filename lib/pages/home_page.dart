import 'package:academia/components/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import '../components/menu_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          color: Colors.white,
          activeColor: Colors.amber[800],
          tabBackgroundColor: Colors.grey.shade800,
          padding: const EdgeInsets.all(16),
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Atividades',
            ),
            GButton(
              icon: Icons.search,
              text: 'Procurar',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Config',
            ),
          ],
        ),
      ),
      //App Bar
      body: SafeArea(
        child: Column(
          children: [
            //App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olá,',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Henrique Rodrigues',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  //profile picture
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      Icons.person,
                      color: Colors.amber[800],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 25),

            //Card

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.amber[800],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    // animation
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/halteres.png'),
                    ),

                    SizedBox(width: 20),

                    // texto + botao
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Não montou sua ficha?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Monte a sua ficha e organize seu treino da semana.',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Planejar Rotina',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.amber[800],
                      ),
                      border: InputBorder.none,
                      hintText: 'Procurar...',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
            ),

            SizedBox(height: 25),

            // horizontal lisview
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                      iconImagePath: 'assets/fita.png', categoryName: 'Teste'),
                  CategoryCard(
                      iconImagePath: 'assets/haltere.png',
                      categoryName: 'Teste'),
                  CategoryCard(
                      iconImagePath: 'assets/fruta.png', categoryName: 'Teste'),
                  CategoryCard(
                      iconImagePath: 'assets/calendario.png',
                      categoryName: 'Teste'),
                ],
              ),
            ),

            SizedBox(height: 20),

            //Lista Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lista de Modalidades',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Text(
                    'Ver mais',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800]),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),

            MenuCard()
          ],
        ),
      ),
    );
  }
}
