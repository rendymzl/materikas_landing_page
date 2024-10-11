import 'package:flutter/material.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul Keuntungan
          const Text(
            "Keuntungan Menggunakan Aplikasi Kasir Kami",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 40),

          // Daftar keuntungan
          Column(
            children: [
              buildBenefitItem(
                icon: Icons.timer,
                title: "Menghemat Waktu",
                description:
                    "Proses transaksi yang cepat dan efisien memungkinkan Anda lebih banyak waktu untuk fokus pada bisnis.",
              ),
              buildBenefitItem(
                icon: Icons.trending_up,
                title: "Meningkatkan Penjualan",
                description:
                    "Dengan laporan penjualan yang akurat, Anda bisa mengidentifikasi produk laris dan meningkatkan strategi pemasaran.",
              ),
              buildBenefitItem(
                icon: Icons.security,
                title: "Keamanan Data",
                description:
                    "Data transaksi dan informasi pelanggan Anda tersimpan dengan aman di cloud dengan backup otomatis.",
              ),
              buildBenefitItem(
                icon: Icons.support,
                title: "Dukungan Pelanggan 24/7",
                description:
                    "Tim dukungan kami siap membantu Anda kapan saja jika ada pertanyaan atau masalah.",
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat item keuntungan
  Widget buildBenefitItem(
      {IconData? icon, String? title, String? description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          // Ikon keuntungan
          Icon(
            icon,
            size: 40,
            color: Colors.orangeAccent,
          ),
          const SizedBox(width: 20),

          // Judul dan deskripsi keuntungan
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
