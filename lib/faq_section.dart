import 'package:flutter/material.dart';

class FAQSection extends StatelessWidget {
  final List<FAQItem> faqList = [
    FAQItem(
      question: "Apa itu aplikasi kasir?",
      answer:
          "Aplikasi kasir adalah perangkat lunak yang membantu Anda dalam mengelola transaksi penjualan dan stok barang.",
    ),
    FAQItem(
      question: "Apakah aplikasi ini bisa digunakan offline?",
      answer:
          "Tidak, aplikasi kasir ini memerlukan koneksi internet untuk berfungsi dengan baik.",
    ),
    FAQItem(
      question: "Bagaimana cara menghapus data transaksi?",
      answer:
          "Anda bisa menghapus data transaksi dari menu laporan dengan memilih transaksi yang ingin dihapus.",
    ),
    FAQItem(
      question: "Apakah ada dukungan pelanggan?",
      answer:
          "Ya, kami menyediakan dukungan pelanggan 24/7 melalui email dan telepon.",
    ),
  ];

  FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul FAQ
          const Text(
            "FAQ (Pertanyaan yang Sering Diajukan)",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 40),

          // Daftar pertanyaan
          ListView.builder(
            itemCount: faqList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return buildFAQItem(faqList[index]);
            },
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat item FAQ
  Widget buildFAQItem(FAQItem faqItem) {
    return ExpansionTile(
      title: Text(
        faqItem.question,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            faqItem.answer,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }
}

// Kelas untuk item FAQ
class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
