import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart'; // Package untuk video YouTube

class DemoSection extends StatelessWidget {
  const DemoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul Demo Produk
          const Text(
            "Demo Produk / Video Tutorial",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 40),

          // Deskripsi
          Text(
            "Tonton video di bawah ini untuk melihat bagaimana aplikasi kasir kami bekerja dan bagaimana Anda dapat menggunakannya untuk meningkatkan efisiensi bisnis Anda.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 20),

          // Video Player
          Center(
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId:
                    'YOUR_VIDEO_ID', // Ganti dengan ID video YouTube Anda
                flags: const YoutubePlayerFlags(
                  autoPlay: false,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
            ),
          ),
        ],
      ),
    );
  }
}
