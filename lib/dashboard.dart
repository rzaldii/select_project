import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'card_detail.dart';
import 'prak_5.dart';

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
                color: const Color.fromARGB(255, 45, 136, 121),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
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
                                color: Colors.white,
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
                              color: Colors.white,
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
                                  builder: (context) => Prak5Page(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(width: 8),
                          Icon(Icons.notifications, color: Colors.white),
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
                              hintText: 'Mau pesan apa hari ini?',
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
                          color: Color.fromARGB(255, 190, 150, 95),
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
                          child: Icon(Icons.sort, color: Colors.white),
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
                    Text(
                      'Daftar Anu',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 190, 150, 95),
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
                              'assets/icons/coffee-cup.png',
                              'Coffee',
                            ),
                          ),
                          Tab(
                            height: 120,
                            child: _buildCategoriesCard(
                              'assets/icons/ice-tea.png',
                              'Tea',
                            ),
                          ),
                          Tab(
                            height: 120,
                            child: _buildCategoriesCard(
                              'assets/icons/milkshake.png',
                              'Milkshake',
                            ),
                          ),
                          Tab(
                            height: 120,
                            child: _buildCategoriesCard(
                              'assets/icons/orange-juice.png',
                              'Juice',
                            ),
                          ),
                          Tab(
                            height: 120,
                            child: _buildCategoriesCard(
                              'assets/icons/snacks.png',
                              'Snack',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildMenuGrid('Coffee'),
                          _buildMenuGrid('Tea'),
                          Center(child: Text("Menu Milkshake belum tersedia")),
                          Center(child: Text("Menu Juice belum tersedia")),
                          Center(child: Text("Menu Snack belum tersedia")),
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
                    color: const Color.fromARGB(255, 190, 150, 95),
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
      childAspectRatio: 0.8, // Sesuaikan angka ini agar tidak overflow
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 20,
      padding: const EdgeInsets.only(bottom: 20),
      children: [
        // Di sini kamu bisa memfilter menu berdasarkan kategori nanti
        _buildMenuCard(
          'assets/icons/coffee-cup.png',
          '$category 1',
          4.7,
          12000,
        ),
        _buildMenuCard(
          'assets/icons/coffee-cup.png',
          '$category 2',
          4.9,
          18000,
        ),
        _buildMenuCard(
          'assets/icons/coffee-cup.png',
          '$category 3',
          4.5,
          15000,
        ),
        _buildMenuCard(
          'assets/icons/coffee-cup.png',
          '$category 4',
          4.2,
          10000,
        ),
      ],
    );
  }
}
