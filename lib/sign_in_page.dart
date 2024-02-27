import 'package:flutter/material.dart';
import 'forgot_password_page.dart';
import 'sign_up_page.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome back!',
              style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person), // Icon profil di kiri
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility), // Icon mata di kanan
                prefixIcon: Icon(Icons.lock), // Icon gembok di kiri
              ),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman forgot password saat teks "Forgot Password?" ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.red, // Warna teks menjadi merah
                    fontWeight: FontWeight.bold // Tambahkan garis bawah
                    ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol Login ditekan
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Atur warna latar belakang
                minimumSize:
                    Size(double.infinity, 60), // Atur lebar dan tinggi tombol
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Atur sudut tombol
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.white, fontSize: 18.0), // Atur gaya teks
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/Goodle_&_Fb_Sign_in.png',
                    width: 150, height: 150),
              ],
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman sign up saat teks "Sign Up" ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create An Account '),
                  Text('Sign Up', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
