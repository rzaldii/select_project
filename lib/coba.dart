import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      home: Dashboard(),
    );
  }
}

class Coba extends StatelessWidget {
  const Coba({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:
          4, // Menentukan jumlah kategori (Beranda, Kategori, Favorit, Transaksi)
      initialIndex: 0, // Memulai aplikasi pada indeks pertama (Beranda)
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Marketplace UI'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "BERANDA"),
              Tab(icon: Icon(Icons.category), text: "KATEGORI"),
              Tab(icon: Icon(Icons.favorite), text: "FAVORIT"),
              Tab(icon: Icon(Icons.receipt_long), text: "TRANSAKSI"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Konten untuk Tab Beranda
            Center(child: Text("Halaman Utama & Rekomendasi")),
            // Konten untuk Tab Kategori
            Center(child: Text("Daftar Kategori Produk")),
            // Konten untuk Tab Favorit
            Center(child: Text("Produk yang Anda Sukai")),
            // Konten untuk Tab Transaksi
            Center(child: Text("Riwayat Belanja Anda")),
          ],
        ),
      ),
    );
  }
}
