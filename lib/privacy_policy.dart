import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kebijakan Privasi',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFEF233C), // Sesuaikan dengan warna tema
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Kebijakan Privasi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Terakhir diperbarui: 11 Oktober 2024',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Pendahuluan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kami menghargai privasi Anda dan berkomitmen untuk melindungi data pribadi Anda. '
              'Halaman kebijakan privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, '
              'dan melindungi informasi pribadi yang Anda berikan saat menggunakan aplikasi kasir kami.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Data yang Kami Kumpulkan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kami dapat mengumpulkan berbagai jenis data, termasuk namun tidak terbatas pada:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            const Text(
              '1. Informasi identitas: Nama, alamat email, dan nomor telepon.\n'
              '2. Data transaksi: Informasi pembelian, transaksi, dan pengelolaan stok.\n'
              '3. Data perangkat: Informasi perangkat, sistem operasi, dan penggunaan aplikasi.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Bagaimana Kami Menggunakan Data Anda',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Data pribadi yang kami kumpulkan digunakan untuk:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            const Text(
              '1. Menyediakan layanan aplikasi kasir.\n'
              '2. Meningkatkan dan mengoptimalkan kinerja aplikasi.\n'
              '3. Menghubungi Anda mengenai pembaruan atau promosi layanan kami.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Keamanan Data Anda',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kami berkomitmen untuk melindungi data pribadi Anda. Kami menggunakan langkah-langkah keamanan '
              'teknis dan organisasi yang sesuai untuk mencegah akses yang tidak sah, penggunaan yang tidak sah, '
              'atau pengungkapan data pribadi Anda.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Perubahan Kebijakan Privasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kami dapat memperbarui kebijakan privasi ini dari waktu ke waktu. Jika ada perubahan signifikan, '
              'kami akan memberi tahu Anda melalui email atau melalui pemberitahuan di aplikasi kami.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Hubungi Kami',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Jika Anda memiliki pertanyaan mengenai kebijakan privasi ini atau bagaimana kami menangani data pribadi Anda, '
              'silakan hubungi kami melalui email di support@tokokasir.com.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
