import 'package:flutter/material.dart';

class ClosingSection extends StatelessWidget {
  const ClosingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFFEF233C),
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Pernyataan Penutupan
          const Text(
            "Siap untuk Meningkatkan Bisnis Anda?",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          // Deskripsi Penutupan
          const Text(
            "Daftar sekarang untuk mendapatkan akses penuh ke aplikasi kasir kami dan nikmati semua fitur hebat yang ditawarkan.",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          // Tombol Pendaftaran
          ElevatedButton(
            onPressed: () {
              // Aksi untuk tombol pendaftaran
              // Anda bisa menambahkan logika pendaftaran di sini
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blueAccent,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text("Daftar Sekarang",
                style: TextStyle(color: Color(0xFFEF233C))),
          ),
          const SizedBox(height: 20),

          // CTA Tambahan
          const Text(
            "Coba versi gratis kami selama 7 hari!",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
