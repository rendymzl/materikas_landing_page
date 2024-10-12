import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'download_page.dart';

class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    var nameC = TextEditingController();
    var emailC = TextEditingController();
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Judul Ajakan Bertindak
            const Text(
              "Bergabunglah Sekarang!",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEF233C),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Deskripsi
            Text(
              "Daftar untuk download dan dapatkan trial 7 hari aplikasi kasir kami dan nikmati kemudahan dalam mengelola bisnis Anda.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),

            // Formulir Pendaftaran
            SizedBox(
              width: 400,
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameC,
                      decoration: InputDecoration(
                        labelText: "Nama Lengkap",
                        labelStyle: TextStyle(
                          color: Color(0xFFEF233C), // Warna label saat aktif
                        ),
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFEF233C), // Warna border saat aktif
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama lengkap tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: emailC,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Color(0xFFEF233C), // Warna label saat aktif
                        ),
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFEF233C), // Warna border saat aktif
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email tidak boleh kosong';
                        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                            .hasMatch(value)) {
                          return 'Format email tidak valid';
                        }
                        return null;
                      },
                    ),
                    // const SizedBox(height: 20),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     labelText: "Kata Sandi",
                    //     labelStyle: TextStyle(
                    //       color: Color(0xFFEF233C), // Warna label saat aktif
                    //     ),
                    //     border: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.grey[200]!, // Warna border default
                    //       ),
                    //       borderRadius: BorderRadius.circular(5),
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Color(0xFFEF233C), // Warna border saat aktif
                    //       ),
                    //       borderRadius: BorderRadius.circular(5),
                    //     ),
                    //     filled: true,
                    //     fillColor: Colors.grey[200],
                    //   ),
                    //   obscureText: true,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Kata sandi tidak boleh kosong';
                    //     } else if (value.length < 6) {
                    //       return 'Kata sandi harus terdiri dari minimal 6 karakter';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        sendMessage('081802127920', nameC.text, emailC.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DownloadPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEF233C),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        textStyle:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      child: const Text("Daftar Sekarang",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> sendMessage(String chatId, String nama, String email) async {
  chatId = chatId.startsWith('0') ? chatId.replaceFirst('0', '62') : chatId;
  const String endpoint = 'https://rendywardana.site/client/sendMessage/ABCD';
  try {
    print('object');
    final response = await http.post(
      Uri.parse(endpoint),
      headers: {
        'accept': '*/*',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'chatId': '$chatId@c.us',
        'contentType': 'string',
        'content': '$nama $email',
      }),
    );

    if (response.statusCode == 200) {
      debugPrint(response.body);
      // startResendCountdown();
    } else {
      debugPrint(response.body);
      // Get.defaultDialog(
      //   title: 'Info',
      //   content: const Text('Gagal mengirim OTP'),
      // );
    }
  } catch (e) {
    debugPrint(e.toString());
  }
}
