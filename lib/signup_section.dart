import 'package:flutter/material.dart';

class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul Ajakan Bertindak
          const Text(
            "Bergabunglah Sekarang!",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEF233C),
            ),
          ),
          const SizedBox(height: 20),

          // Deskripsi
          Text(
            "Daftar untuk download dan dapatkan trial 7 hari aplikasi kasir kami dan nikmati kemudahan dalam mengelola bisnis Anda.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 40),

          // Formulir Pendaftaran
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nama Lengkap",
                    labelStyle: TextStyle(
                      color: Color(0xFFEF233C), // Warna label saat aktif
                    ),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[200],
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
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Color(0xFFEF233C), // Warna label saat aktif
                    ),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[200],
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
                    // Aksi untuk tombol pendaftaran
                    // Anda bisa menambahkan logika pendaftaran di sini
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEF233C),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    textStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  child: const Text("Daftar Sekarang",
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
