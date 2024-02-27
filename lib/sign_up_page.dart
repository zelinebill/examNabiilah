import 'package:flutter/material.dart';
import 'sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create an Account',
              style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username or Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person), // Icon profil di sebelah kiri
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
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility), // Icon mata di kanan
                prefixIcon: Icon(Icons.lock), // Icon gembok di kiri
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'By clicking the Register button, you agree to the public offer',
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol Register ditekan
              },
              child: Container(
                width: double.infinity, // Lebar maksimum
                height: 50.0, // Tinggi yang diinginkan
                child: Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Mengatur sudut tombol
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // Gambar
            Image.asset(
              'assets/Goodle_&_Fb_Sign_in.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman sign in saat teks "Login" ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('I Already Have an Account '),
                  Text('Login', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
