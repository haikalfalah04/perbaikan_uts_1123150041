 import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),

              // 🔹 Logo atau Icon
              Center(
                child: Image.asset(
                  "assets/images/imagelogin.png",
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 30),

              // 🔹 Title dan Subtitle
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Silakan login untuk melanjutkan",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // 🔹 Input Email
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Masukkan email Anda',
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blue[700]!,
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Input Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan password Anda',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blue[700]!,
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // 🔹 Lupa Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lupa Password?',
                    style: TextStyle(color: Colors.blue[700], fontSize: 14),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Tombol Login
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // 🔹 Divider dengan teks "atau"
              Row(
                children: const [
                  Expanded(
                    child: Divider(thickness: 1, color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "atau",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Expanded(
                    child: Divider(thickness: 1, color: Colors.grey),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // 🔹 Tombol Login Google
              SizedBox(
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/google.png",
                    width: 24,
                    height: 24,
                  ),
                  label: const Text(
                    "Login dengan Google",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // 🔹 Teks "Belum punya akun?"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Belum punya akun?",
                    style: TextStyle(color: Colors.black54),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Daftar sekarang",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}