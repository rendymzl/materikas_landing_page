import 'package:flutter/material.dart';

class TestimonialSection extends StatelessWidget {
  const TestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        children: [
          // Judul Testimoni
          const Text(
            "Apa Kata Pengguna Kami",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 40),

          // Grid Testimoni
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildTestimonialItem(
                imageUrl:
                    "https://via.placeholder.com/150", // Gambar profil placeholder
                name: "Budi Santoso",
                feedback:
                    "Aplikasi ini sangat memudahkan saya dalam mengelola stok barang dan memantau penjualan harian. Penggunaan mudah dan laporan langsung terlihat!",
              ),
              buildTestimonialItem(
                imageUrl: "https://via.placeholder.com/150",
                name: "Siti Fatimah",
                feedback:
                    "Dengan aplikasi ini, semua transaksi di toko saya lebih rapi dan tertata. Laporan bisa diakses dari mana saja, sangat membantu!",
              ),
              buildTestimonialItem(
                imageUrl: "https://via.placeholder.com/150",
                name: "Andi Pratama",
                feedback:
                    "Saya suka fitur multi-cabangnya! Bisa mengontrol semua cabang toko hanya dari satu dashboard. Sangat praktis.",
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat item testimoni
  Widget buildTestimonialItem(
      {String? imageUrl, String? name, String? feedback}) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          // Gambar profil pelanggan
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl ?? ''),
            radius: 40,
          ),
          const SizedBox(height: 20),

          // Nama pelanggan
          Text(
            name ?? '',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),

          // Feedback pelanggan
          Text(
            feedback ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
