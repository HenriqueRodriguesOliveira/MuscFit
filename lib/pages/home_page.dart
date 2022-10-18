import 'package:academia/components/category_card.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import '../components/menu_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          color: Colors.white,
          activeColor: const Color.fromARGB(255, 218, 218, 217),
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
                    children: const [
                      Text(
                        'Bem vindo,',
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
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 206, 206, 206),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 25),

            //Card
            Card(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const NetworkImage(
                        'https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    height: 139,
                    width: 400,
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                  Positioned(
                    bottom: -1,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.transparent
                          ])),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            'O que treinar hoje?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Monte o seu plano de treino e alimentar!',
                            style: TextStyle(
                                color: Colors.white, fontSize: 16, height: 1.2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            // search bar
            /*
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
            ),*/
            const Padding(
              padding: EdgeInsets.only(right: 170),
              child: Text(
                'Lista de Modalidades',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),

            const SizedBox(height: 12),

            // horizontal lisview
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    iconImagePath: 'assets/fita.png',
                    categoryName: 'Evolução',
                  ),
                  CategoryCard(
                      iconImagePath: 'assets/haltere.png',
                      categoryName: 'Treino'),
                  CategoryCard(
                      iconImagePath: 'assets/fruta.png',
                      categoryName: 'Alimentação'),
                  CategoryCard(
                      iconImagePath: 'assets/calendario.png',
                      categoryName: 'Concluído'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            //Lista Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Categorias de treinos',
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
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MenuCard(
                  imageCard: 'assets/halteres.png',
                  nomeCard: 'Treino - A',
                ),
                MenuCard(
                  imageCard: 'assets/peso.png',
                  nomeCard: 'Treino - B',
                ),
                MenuCard(
                  imageCard: 'assets/roda.png',
                  nomeCard: 'Treino - C',
                ),
                MenuCard(
                  imageCard: 'assets/halteres.png',
                  nomeCard: 'Treino - D',
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
