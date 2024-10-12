import 'package:flutter/material.dart';
import 'dart:html' as html;

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Download Materikas",
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFEF233C), // Warna sesuai tema aplikasi
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Download Aplikasi Kasir Anda",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEF233C),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              const Text(
                "Klik tombol di bawah ini untuk mengunduh aplikasi dan mulai mengelola bisnis Anda dengan lebih mudah!",
                style: TextStyle(fontSize: 18, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Tombol Download untuk Android
              // ElevatedButton.icon(
              //   onPressed: () {
              //     // Link untuk download Android
              //     launchURL(
              //         "https://play.google.com/store/apps/details?id=com.example.app");
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.green, // Warna tombol Android
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              //   ),
              //   icon: const Icon(Icons.android),
              //   label: const Text("Download untuk Android",
              //       style: TextStyle(fontSize: 18)),
              // ),
              // const SizedBox(height: 20),

              // // Tombol Download untuk iOS
              // ElevatedButton.icon(
              //   onPressed: () {
              //     // Link untuk download iOS
              //     launchURL("https://apps.apple.com/app/id1234567890");
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.blue, // Warna tombol iOS
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              //   ),
              //   icon: const Icon(Icons.apple),
              //   label: const Text("Download untuk iOS",
              //       style: TextStyle(fontSize: 18)),
              // ),
              // const SizedBox(height: 40),

              // Tombol untuk Windows
              ElevatedButton.icon(
                onPressed: () {
                  // Link untuk download Windows
                  downloadFile();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEF233C),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                icon: const Icon(Icons.desktop_windows, color: Colors.white),
                label: const Text("Download untuk Windows",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuka URL
  void downloadFile() {
    // URL file yang ingin didownload
    final url =
        'https://api.menantikan.com/releases/0.2.7/materikas-0.2.7+0.2.7-windows-setup.exe';

    // Membuat elemen anchor HTML untuk download
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download =
        "materikas-0.2.7+0.2.7-windows-setup.exe"; // Nama file saat didownload
    anchorElement.click(); // Men-trigger proses download
  }
}
