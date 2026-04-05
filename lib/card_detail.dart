import 'package:flutter/material.dart';
// import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardDetail(),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Warna latar belakang aplikasi
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // --- KOTAK UTAMA PUTIH ---
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header: Tombol Back & Keranjang
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Dashboard(),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),

                        Stack(
                          children: [
                            const Icon(Icons.shopping_bag_outlined, size: 30),
                            Positioned(
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 247, 209, 105),
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  '2',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Nama Produk
                    Text(
                      "Iphone 16",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Pro Max",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Gambar Produk
                    Center(
                      child: Image.asset(
                        'assets/icons/hp_iphone16.webp',
                        height: 250,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              // --- TOMBOL AR CHECKOUT ---
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.thumb_up, color: const Color.fromARGB(255, 0, 0, 0)),
                      SizedBox(width: 15),
                      Text(
                        "Tambahkan ke Favorit",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              ),

              // --- BAGIAN RATING & DESKRIPSI ---
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xFFFFD700),
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xFFFFD700),
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xFFFFD700),
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xFFFFD700),
                          size: 20,
                        ),
                        const Icon(
                          Icons.star_border,
                          color: Color(0xFFFFD700),
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "(4.0/5.0)",
                          style: GoogleFonts.poppins(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    buildBulletPoint(
                      "Performa super cepat dengan chip terbaru",
                    ),
                    buildBulletPoint(
                      "Kamera canggih untuk hasil foto dan video profesional",
                    ),
                    buildBulletPoint(
                      "Desain elegan dan premium khas Apple"
                    ),
                    buildBulletPoint(
                      "Daya tahan baterai lebih lama untuk aktivitas seharian",
                    ),
                    buildBulletPoint(
                      "Layar jernih dengan warna yang tajam dan responsif",
                    ),
                  ],
                ),
              ),

              // --- BOTTOM BAR: HARGA & TOMBOL ---
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 42, 40, 41),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Harga :",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Rp 100,00",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          247,
                          209,
                          105,
                        ),
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(Icons.shopping_bag_outlined),
                      label: Text(
                        "Pesan Sekarang",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi pembantu untuk membuat poin-poin deskripsi
  Widget buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Text(text, style: GoogleFonts.poppins(fontSize: 14)),
        ],
      ),
    );
  }
}
