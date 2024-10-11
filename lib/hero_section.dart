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
            Color(0xFFFF6A13).withOpacity(0.8),
            Color(0xFFEF233C).withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20.0 : 40.0, // Padding responsif
              vertical: 100.0,
            ),
            child: isMobile
                ? SizedBox(
                    height: screenSize.height / 1.7,
                    width: screenSize.width,
                    child: Column(
                      // Menggunakan Column untuk mobile
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Memusatkan elemen secara vertikal
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Memusatkan elemen secara horizontal
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            'assets/mockup_desktop.png', // Ganti dengan nama file gambar Anda
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(
                            height: 20), // Jarak antara gambar dan teks
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Memusatkan teks secara vertikal
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // Memusatkan teks secara horizontal
                          children: [
                            const Text(
                              "Kelola Bisnis Anda dengan Mudah dan Cepat!",
                              style: TextStyle(
                                fontSize:
                                    28, // Ukuran font responsif untuk mobile
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center, // Memusatkan teks
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "Aplikasi kasir yang memudahkan Anda mengelola transaksi, stok barang, dan laporan penjualan dalam satu platform.",
                              style: TextStyle(
                                fontSize:
                                    14, // Ukuran font responsif untuk mobile
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.center, // Memusatkan teks
                            ),
                            const SizedBox(height: 40),
                            ElevatedButton(
                              onPressed: onSignupPressed,
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color(0xFFEF233C), // Warna tombol
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                                textStyle: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              child: const Text("Coba Gratis Sekarang",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(height: 8),
                            const Text(
                              "Coba versi gratis kami selama 7 hari!",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Row(
                    // Menggunakan Row untuk desktop
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Kelola Bisnis Anda dengan Mudah dan Cepat!",
                              style: TextStyle(
                                fontSize: 48,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "Aplikasi kasir yang memudahkan Anda mengelola transaksi, stok barang, dan laporan penjualan dalam satu platform.",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                              ),
                            ),
                            const SizedBox(height: 40),
                            ElevatedButton(
                              onPressed: () {
                                // Aksi untuk tombol
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color(0xFFEF233C), // Warna tombol
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                                textStyle: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              child: const Text("Coba Gratis Sekarang",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(height: 8),
                            const Text(
                              "Coba versi gratis kami selama 7 hari!",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          'assets/mockup_desktop.png', // Ganti dengan nama file gambar Anda
                          fit: BoxFit.cover,
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
