import 'package:flutter/material.dart';
import 'sign_in_page.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar di bagian atas
            Image.asset(
              'assets/Shopping bag.png', // Ganti dengan path gambar Anda
              width: 550,
              height: 550,
            ),
            SizedBox(height: 10), // Jarak tambahan antara gambar dan teks
            // Teks "Get Your Order" dengan ukuran lebih besar dan bold
            Text(
              'Get Your Order',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height: 10), // Jarak tambahan antara teks dan teks lorem ipsum
            // Teks lorem ipsum dengan ukuran lebih kecil
            Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
              'Velit officia consequat duis enim velit mollit.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            // Teks link "Get Started" di pojok kanan berwarna merah
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman login saat teks link ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
