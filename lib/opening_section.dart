import 'package:flutter/material.dart';

class OpeningSection extends StatelessWidget {
  const OpeningSection({super.key, required this.onSignupPressed});
  final VoidCallback onSignupPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
      decoration: BoxDecoration(
        color: Colors.white, // Warna latar belakang
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 3), // Posisi bayangan
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .center, // Mengubah crossAxisAlignment menjadi center
        children: [
          const Text(
            "Apakah Anda Siap Mengubah Cara Anda Berbisnis?",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEF233C), // Warna teks
            ),
            textAlign:
                TextAlign.center, // Menambahkan textAlign: TextAlign.center
          ),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return const Text(
                  "Dapatkan lebih banyak waktu untuk fokus pada hal-hal yang benar-benar penting. Dengan aplikasi kasir kami, Anda dapat mengelola semua transaksi dengan mudah, menganalisis penjualan dengan akurat, dan mengoptimalkan stok barang Anda.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.left,
                );
              } else {
                return const Text(
                  "Dapatkan lebih banyak waktu untuk fokus pada hal-hal yang benar-benar penting. Dengan aplikasi kasir kami, Anda dapat mengelola semua transaksi dengan mudah, menganalisis penjualan dengan akurat, dan mengoptimalkan stok barang Anda.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                );
              }
            },
          ),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return const Text(
                  "Kami memahami tantangan yang Anda hadapi dalam mengelola bisnis. Itulah sebabnya kami menciptakan solusi yang sederhana namun efektif. Tidak perlu lagi khawatir tentang kesalahan dalam transaksi atau kehilangan data penting. Aplikasi kami siap membantu Anda, kapan saja dan di mana saja.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.left,
                );
              } else {
                return const Text(
                  "Kami memahami tantangan yang Anda hadapi dalam mengelola bisnis. Itulah sebabnya kami menciptakan solusi yang sederhana namun efektif. Tidak perlu lagi khawatir tentang kesalahan dalam transaksi atau kehilangan data penting. Aplikasi kami siap membantu Anda, kapan saja dan di mana saja.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                );
              }
            },
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: onSignupPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEF233C), // Warna tombol
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              textStyle: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            child: const Text("Mulai Sekarang",
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
