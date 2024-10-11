import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Package untuk ikon

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        children: [
          // Judul Fitur Utama
          const Text(
            "Fitur Utama",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEF233C),
            ),
          ),
          const SizedBox(height: 40),

          // Grid fitur dengan ikon dan deskripsi
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 5 / 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              buildFeatureItem(
                icon: FontAwesomeIcons.chartLine,
                title: "Laporan Penjualan Real-Time",
                description:
                    "Akses laporan penjualan Anda kapan saja dengan pembaruan langsung.",
              ),
              buildFeatureItem(
                icon: FontAwesomeIcons.boxesStacked,
                title: "Manajemen Stok Otomatis",
                description:
                    "Pantau stok barang Anda dengan sistem otomatis dan dapatkan notifikasi stok menipis.",
              ),
              buildFeatureItem(
                icon: FontAwesomeIcons.cashRegister,
                title: "Integrasi Pembayaran Digital",
                description:
                    "Terima pembayaran dari berbagai metode, termasuk e-wallet dan kartu kredit.",
              ),
              buildFeatureItem(
                icon: FontAwesomeIcons.shop,
                title: "Multi-Outlet Support",
                description:
                    "Kelola beberapa cabang toko dengan mudah dari satu dashboard.",
              ),
              buildFeatureItem(
                icon: FontAwesomeIcons.cloud,
                title: "Data Tersimpan di Cloud",
                description:
                    "Akses semua data transaksi Anda kapan saja dan di mana saja dengan aman.",
              ),
              buildFeatureItem(
                icon: FontAwesomeIcons.users,
                title: "Akses Multi-Pengguna",
                description:
                    "Berikan akses kepada pegawai dengan hak akses yang bisa diatur.",
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat item fitur
  Widget buildFeatureItem(
      {IconData? icon, String? title, String? description}) {
    return Column(
      children: [
        // Ikon fitur
        Icon(
          icon,
          size: 50,
          color: Colors.orangeAccent,
        ),
        const SizedBox(height: 20),

        // Judul fitur
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),

        // Deskripsi fitur
        Text(
          description ?? '',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
