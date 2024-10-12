import 'package:flutter/material.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key, required this.onSignupPressed});
  final VoidCallback onSignupPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
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
            textAlign: TextAlign.center,
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
                    Expanded(
                      child: buildPricingCard(
                        title: "Paket Bulanan",
                        price: "Rp 99.000/bulan",
                        oldPrice: "Rp 150.000",
                        features: [
                          'Fitur full akses',
                          'Support 24/7',
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: buildPricingCard(
                        title: "Paket Tahunan",
                        price: "Rp 990.000/tahun",
                        oldPrice: "Rp 1.800.000",
                        features: [
                          'Fitur full akses',
                          'Cukup bayar untuk 10 bulan',
                          'Support prioritas'
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: buildPricingCard(
                        title: "Paket Selamanya",
                        price: "Rp 2.990.000/sekali bayar",
                        oldPrice: "Rp 3.500.000",
                        features: [
                          'Fitur full akses selamanya',
                          'Sekali bayar akses selamanya',
                          'Support prioritas'
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                // Tampilan Mobile

                return Column(
                  children: [
                    buildPricingCard(
                      title: "Paket Bulanan",
                      price: "Rp 99.000/bulan",
                      oldPrice: "Rp 150.000",
                      features: [
                        'Fitur full akses',
                        'Support 24/7',
                      ],
                    ),
                    const SizedBox(height: 20),
                    buildPricingCard(
                      title: "Paket Tahunan",
                      price: "Rp 990.000/tahun",
                      oldPrice: "Rp 1.800.000",
                      features: [
                        'Fitur full akses',
                        'Cukup bayar untuk 10 bulan',
                        'Support prioritas'
                      ],
                    ),
                    const SizedBox(height: 20),
                    buildPricingCard(
                      title: "Paket Selamanya",
                      price: "Rp 2.990.000/sekali bayar",
                      oldPrice: "Rp 3.500.000",
                      features: [
                        'Fitur full akses selamanya',
                        'Sekali bayar akses selamanya',
                        'Support prioritas'
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
      {String? title,
      String? price,
      String? oldPrice,
      List<String>? features}) {
    return Container(
      height: 300,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Judul Paket
          Column(
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price ?? '',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEF233C),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    oldPrice ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
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
            ],
          ),

          const SizedBox(height: 30),

          // Tombol Langganan
          ElevatedButton(
            onPressed: onSignupPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEF233C),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
