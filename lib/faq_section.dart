import 'package:flutter/material.dart';

class FAQSection extends StatelessWidget {
  final List<FAQItem> faqList = [
    FAQItem(
      question: "Apa itu Materikas?",
      answer:
          "Materikas adalah perangkat lunak yang membantu Anda dalam mengelola transaksi penjualan dan stok barang.",
    ),
    FAQItem(
      question: "Apakah aplikasi ini bisa digunakan offline?",
      answer:
          "Ya, aplikasi kasir ini dapat digunakan secara offline. Anda dapat mengakses sebagian besar fitur, seperti mengelola stok dan membuat laporan, tanpa koneksi internet.",
    ),
    FAQItem(
      question: "Apakah aplikasi ini bisa scan barcode?",
      answer:
          "Ya, aplikasi ini mendukung pemindaian barcode. Anda dapat menggunakan perangkat scan barcode untuk memindai barcode produk.",
    ),
    FAQItem(
      question: "Apakah ada dukungan pelanggan?",
      answer:
          "Ya, kami menyediakan dukungan pelanggan 24/7 melalui Email: support@materikas, atau WhatsApp: 0812 8025 3313.",
    ),
    FAQItem(
      question: "Apakah saya bisa mencoba Materikas sebelum berlangganan?",
      answer: "Ya, Anda bisa mencoba Materikas secara gratis selama 7 hari.",
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Judul FAQ
          const Text(
            "FAQ (Pertanyaan yang Sering Diajukan)",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEF233C),
            ),
            textAlign: TextAlign.center,
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
