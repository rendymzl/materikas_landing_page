import 'package:flutter/material.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Judul Harga & Paket
          const Text(
            "Harga & Paket Langganan",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEF233C),
            ),
          ),
          const SizedBox(height: 40),

          // Daftar Paket Langganan
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 850) {
                // Tampilan Desktop
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildPricingCard(
                      title: "Paket Dasar",
                      price: "\$10/bulan",
                      features: [
                        "Fitur dasar aplikasi kasir",
                        "Laporan penjualan dasar",
                        "Dukungan email",
                      ],
                    ),
                    const SizedBox(width: 20),
                    buildPricingCard(
                      title: "Paket Pro",
                      price: "\$25/bulan",
                      features: [
                        "Semua fitur Paket Dasar",
                        "Manajemen stok otomatis",
                        "Dukungan telepon",
                        "Integrasi pembayaran digital",
                      ],
                    ),
                    const SizedBox(width: 20),
                    buildPricingCard(
                      title: "Paket Premium",
                      price: "\$50/bulan",
                      features: [
                        "Semua fitur Paket Pro",
                        "Multi-outlet support",
                        "Dukungan pelanggan 24/7",
                        "Data tersimpan di cloud",
                      ],
                    ),
                  ],
                );
              } else {
                // Tampilan Mobile
                return Column(
                  children: [
                    buildPricingCard(
                      title: "Paket Dasar",
                      price: "\$10/bulan",
                      features: [
                        "Fitur dasar aplikasi kasir",
                        "Laporan penjualan dasar",
                        "Dukungan email",
                      ],
                    ),
                    const SizedBox(height: 20),
                    buildPricingCard(
                      title: "Paket Pro",
                      price: "\$25/bulan",
                      features: [
                        "Semua fitur Paket Dasar",
                        "Manajemen stok otomatis",
                        "Dukungan telepon",
                        "Integrasi pembayaran digital",
                      ],
                    ),
                    const SizedBox(height: 20),
                    buildPricingCard(
                      title: "Paket Premium",
                      price: "\$50/bulan",
                      features: [
                        "Semua fitur Paket Pro",
                        "Multi-outlet support",
                        "Dukungan pelanggan 24/7",
                        "Data tersimpan di cloud",
                      ],
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat kartu harga
  Widget buildPricingCard(
      {String? title, String? price, List<String>? features}) {
    return Container(
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
          // Judul Paket
          Text(
            title ?? '',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),

          // Harga Paket
          Text(
            price ?? '',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent,
            ),
          ),
          const SizedBox(height: 20),

          // Daftar Fitur
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: features?.map((feature) {
                  return Text(
                    "• $feature",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  );
                }).toList() ??
                [],
          ),
          const SizedBox(height: 30),

          // Tombol Langganan
          ElevatedButton(
            onPressed: () {
              // Aksi untuk tombol langganan
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEF233C),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            child: const Text("Langganan Sekarang",
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
