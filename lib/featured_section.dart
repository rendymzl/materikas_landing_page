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
          GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 650,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 7 / 4,
            ),
            itemCount: 6,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return buildFeatureItem(
                    icon: FontAwesomeIcons.chartLine,
                    title: "Laporan Penjualan Real-Time",
                    description:
                        "Akses laporan penjualan Anda kapan saja dengan pembaruan langsung.",
                  );
                case 1:
                  return buildFeatureItem(
                    icon: FontAwesomeIcons.boxesStacked,
                    title: "Manajemen Stok Otomatis",
                    description:
                        "Pantau stok barang Anda dengan sistem otomatis dan dapatkan notifikasi stok menipis.",
                  );
                case 2:
                  return buildFeatureItem(
                    icon: FontAwesomeIcons.print,
                    title: "Cetak Struk",
                    description:
                        "Cetak struk transaksi dengan mudah dan cepat.",
                  );
                case 3:
                  return buildFeatureItem(
                    icon: FontAwesomeIcons.barcode,
                    title: "Scan Barcode Produk",
                    description:
                        "Scan barcode produk dengan mudah dan cepat untuk menambahkan produk ke keranjang.",
                  );
                case 4:
                  return buildFeatureItem(
                    icon: FontAwesomeIcons.cloud,
                    title: "Data Tersimpan di Cloud",
                    description:
                        "Akses semua data transaksi Anda kapan saja dan di mana saja dengan aman.",
                  );
                case 5:
                  return buildFeatureItem(
                    icon: FontAwesomeIcons.users,
                    title: "Akses Multi-Pengguna",
                    description:
                        "Berikan akses kepada pegawai dengan hak akses yang bisa diatur.",
                  );
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat item fitur
  Widget buildFeatureItem(
      {IconData? icon, String? title, String? description}) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ikon fitur
            Icon(
              icon,
              size: 50,
              color: Color(0xFFEF233C),
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
        ),
      ),
    );
  }
}
