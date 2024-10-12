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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Judul Keuntungan
          const Text(
            "Keuntungan Menggunakan Materikas",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEF233C),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          // Daftar keuntungan
          GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 900,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 5 / 1,
            ),
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return buildBenefitItem(
                    icon: Icons.timer,
                    title: "Menghemat Waktu",
                    description:
                        "Proses transaksi yang cepat dan efisien memungkinkan Anda lebih banyak waktu untuk fokus pada bisnis.",
                  );
                case 1:
                  return buildBenefitItem(
                    icon: Icons.trending_up,
                    title: "Meningkatkan Penjualan",
                    description:
                        "Dengan laporan penjualan yang akurat, Anda bisa mengidentifikasi produk laris dan meningkatkan strategi pemasaran.",
                  );
                case 2:
                  return buildBenefitItem(
                    icon: Icons.security,
                    title: "Keamanan Data",
                    description:
                        "Data transaksi dan informasi pelanggan Anda tersimpan dengan aman di cloud dengan backup otomatis.",
                  );
                case 3:
                  return buildBenefitItem(
                    icon: Icons.support,
                    title: "Dukungan Pelanggan 24/7",
                    description:
                        "Tim dukungan kami siap membantu Anda kapan saja jika ada pertanyaan atau masalah.",
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

  // Fungsi untuk membuat item keuntungan
  Widget buildBenefitItem(
      {IconData? icon, String? title, String? description}) {
    return Container(
      padding: const EdgeInsets.all(20),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   border: Border.all(color: Colors.grey[300]!),
      // ),
      child: Row(
        children: [
          // Ikon keuntungan
          Icon(
            icon,
            size: 40,
            color: Color(0xFFEF233C),
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
                    fontSize: 18,
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
