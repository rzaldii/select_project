import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'card_detail.dart';


void main() {
  runApp(const MyApp());
  ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 245, 245),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('User pindah ke page Login');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 42, 40, 41),
                                size: 30,
                              ),
                            ),
                          ),

                          const SizedBox(width: 8),
                          Text(
                            'Hello User',
                            style: GoogleFonts.poppins(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 42, 40, 41),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('User pindah ke prak 5');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.notifications,
                              color: Color.fromARGB(255, 42, 40, 41),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.search, color: Colors.grey),
                              hintText: 'Mau sewa apa hari ini?',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        alignment: Alignment.center,
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 247, 209, 105),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            print('User pindah ke page Coba');
                            Navigator.push(
                              context,

                              MaterialPageRoute(builder: (context) => CardDetail()),

                            );
                          },
                          child: Icon(
                            Icons.sort,
                            color: Color.fromARGB(255, 42, 40, 41),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/icons/iphone_iklan.gif',
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Categories',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See All',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 140,
                      child: TabBar(
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        dividerColor: Colors.transparent,
                        indicatorColor: Colors.transparent,
                        labelPadding: EdgeInsets.zero,
                        tabs: [
                          Tab(
                            height: 120,
                            child: _buildCategoriesCard(
                              'assets/icons/kategori_hp.jpg',
                              'Handphone',
                            ),
                          ),
                          Tab(
                            height: 120,
                            child: _buildCategoriesCard(
                              'assets/icons/kategori_kamera.png',
                              'Camera',
                            ),
                          ),
                          Tab(
                            height: 120,
                            child: _buildCategoriesCard(
                              'assets/icons/kategori_proyektor.avif',
                              'Proyektor',
                            ),
                          ),
                          Tab(
                            height: 120,
                            child: _buildCategoriesCard(
                              'assets/icons/kategori_mixer.jpeg',
                              'Mixer',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildMenuGrid('HP'),
                          Center(child: Text("Menu Camera belum tersedia")),
                          Center(child: Text("Menu Proyektor belum tersedia")),
                          Center(child: Text("Menu Mixer belum tersedia")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesCard(String image, String title) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 120,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 60,
              height: 60,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
            ),
            const SizedBox(height: 12),
            Text(title, style: GoogleFonts.poppins(color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    String image,
    String title,
    double rating,
    double price,
  ) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                image,
                width: 100,
                height: 100,
                errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 3),
                    Text(
                      '$rating',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rp $price,00', style: GoogleFonts.poppins(fontSize: 16)),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 42, 40, 41),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuGrid(String category) {
    return GridView.count(
      childAspectRatio: 0.8,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 20,
      padding: const EdgeInsets.only(bottom: 20),
      children: [
        _buildMenuCard(
          'assets/icons/hp_iphone16.webp',
          '$category 1',
          4.7,
          100,
        ),
        _buildMenuCard(
          'assets/icons/hp_samsungS24.jpg.jpeg',
          '$category 2',
          4.5,
          80,
        ),
        _buildMenuCard('assets/icons/rog.jpg', '$category 3', 4.5, 120),
      ],
    );
  }
}
