import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syarat dan Ketentuan',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFEF233C), // Sesuaikan dengan warna tema
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Syarat dan Ketentuan',
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
              'Dengan mengunduh atau menggunakan aplikasi Materikas, Anda setuju untuk terikat oleh Syarat dan Ketentuan yang dijelaskan di bawah ini. '
              'Jika Anda tidak menyetujui persyaratan ini, harap jangan menggunakan aplikasi kami.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Penggunaan Aplikasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Aplikasi ini hanya dapat digunakan untuk keperluan bisnis yang sah dalam mengelola transaksi, stok, dan laporan penjualan. Anda setuju untuk tidak menggunakan aplikasi ini untuk tujuan ilegal atau tidak sah.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Pembayaran dan Langganan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Aplikasi ini menawarkan paket langganan berbayar. Biaya berlangganan akan dibebankan sesuai dengan pilihan paket yang Anda pilih. Pembatalan langganan tidak akan mengembalikan biaya yang telah dibayarkan, kecuali diatur lain dalam kebijakan pengembalian kami.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Pembaharuan Aplikasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kami secara berkala memperbarui aplikasi untuk memperbaiki bug, meningkatkan kinerja, atau menambahkan fitur baru. Pengguna diharuskan untuk mengunduh pembaruan agar aplikasi tetap berfungsi dengan optimal.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Penghentian Layanan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kami berhak untuk menghentikan akses Anda ke aplikasi ini jika ditemukan pelanggaran terhadap syarat dan ketentuan ini atau jika Anda menggunakan aplikasi dengan cara yang merugikan pihak lain.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Batasan Tanggung Jawab',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kami tidak bertanggung jawab atas kerugian langsung atau tidak langsung yang timbul dari penggunaan atau ketidakmampuan menggunakan aplikasi ini. Kami tidak memberikan jaminan bahwa aplikasi akan selalu tersedia atau bebas dari gangguan.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Perubahan Syarat dan Ketentuan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kami dapat mengubah Syarat dan Ketentuan ini kapan saja. Jika kami membuat perubahan signifikan, kami akan memberi tahu Anda melalui pemberitahuan di aplikasi atau email. Penggunaan Anda yang berkelanjutan terhadap aplikasi setelah perubahan tersebut berarti Anda menyetujui Syarat dan Ketentuan yang telah diperbarui.',
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
              'Jika Anda memiliki pertanyaan mengenai Syarat dan Ketentuan ini, silakan hubungi kami melalui email di support@materikas.com.',
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
