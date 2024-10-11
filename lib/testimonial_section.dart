import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TestimonialSection extends StatelessWidget {
  const TestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        children: [
          // Judul Testimoni
          const Text(
            "Apa Kata Pengguna Kami",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEF233C),
            ),
          ),
          const SizedBox(height: 40),

          // Slider Testimoni menggunakan carousel_slider
          CarouselSlider(
            options: CarouselOptions(
              height: 300,
              autoPlay: true, // Otomatis bergulir
              enlargeCenterPage: true, // Memperbesar slide di tengah
              viewportFraction: 0.7, // Lebar relatif dari setiap item slide
              aspectRatio: 2.0,
            ),
            items: [
              buildTestimonialItem(
                // imageUrl: "https://via.placeholder.com/150",
                name: "Budi Santoso",
                feedback:
                    "Aplikasi ini sangat memudahkan saya dalam mengelola stok barang dan memantau penjualan harian. Penggunaan mudah dan laporan langsung terlihat!",
              ),
              buildTestimonialItem(
                // imageUrl: "https://via.placeholder.com/150",
                name: "Siti Aminah",
                feedback:
                    "Saya sangat puas dengan aplikasi ini, sangat membantu untuk usaha kecil saya. Laporan bisa dilihat langsung, sangat praktis!",
              ),
              buildTestimonialItem(
                // imageUrl: "https://via.placeholder.com/150",
                name: "Ahmad Fadli",
                feedback:
                    "Fitur-fitur yang disediakan sangat lengkap. Sekarang saya bisa lebih mudah mengatur bisnis toko saya!",
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat item testimoni
  Widget buildTestimonialItem(
      {String? imageUrl, String? name, String? feedback}) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
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
          // Gambar profil pelanggan
          // CircleAvatar(
          //   backgroundImage: NetworkImage(imageUrl ?? ''),
          //   radius: 40,
          // ),
          // const SizedBox(height: 20),

          // Nama pelanggan
          Text(
            name ?? '',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),

          // Feedback pelanggan
          Text(
            feedback ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
