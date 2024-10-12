import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, required this.onSignupPressed});
  final VoidCallback onSignupPressed;

  @override
  Widget build(BuildContext context) {
    // Menggunakan MediaQuery untuk mendapatkan ukuran layar
    var screenSize = MediaQuery.of(context).size;
    bool isMobile =
        screenSize.width < 800; // Ambang batas untuk perangkat mobile

    return Container(
      width: double.infinity,
      height: screenSize.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFF6A13).withOpacity(0.7),
            Color(0xFFEF233C).withOpacity(0.8),
            Color(0xFFF55A5A).withOpacity(0.9), // Warna merah muda
            Color(0xFFF7931E).withOpacity(0.9), // Warna kuning
          ],
          stops: [0.1, 0.5, 0.7, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: screenSize.width,
            height: 50,
            child: Center(
              child: Text(
                'Materikas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Memusatkan teks secara vertikal
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Memusatkan teks secara horizontal
                children: [
                  const Text(
                    "Kelola Bisnis Anda dengan Mudah dan Cepat!",
                    style: TextStyle(
                      fontSize: 28, // Ukuran font responsif untuk mobile
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Memusatkan teks
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Aplikasi kasir yang memudahkan Anda mengelola transaksi, stok barang, dan laporan penjualan dalam satu platform.",
                    style: TextStyle(
                      fontSize: 14, // Ukuran font responsif untuk mobile
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center, // Memusatkan teks
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: onSignupPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEF233C), // Warna tombol
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20), // Perbesar padding
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    child: const Text("Coba Gratis Sekarang",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18)), // Perbesar ukuran font
                  ),
                  // SizedBox(height: 8),
                  // const Text(
                  //   "Coba versi gratis selama 7 hari!",
                  //   style: TextStyle(
                  //     fontSize: 12,
                  //     color: Colors.white,
                  //     fontStyle: FontStyle.italic,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Expanded(
            // flex: 2,
            child: Image.asset(
              'assets/heroimg.png', // Ganti dengan nama file gambar Anda
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
