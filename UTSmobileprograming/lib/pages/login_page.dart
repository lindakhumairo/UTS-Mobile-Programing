import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icon shield gambar orang
              Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.account_circle_sharp, size: 90, color: Colors.black),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Jadwalku",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Font color set to black
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Selamat Datang\nLinda Khumairo Layali (4122021) - Kelas A",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Font color set to black
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.black), // Text color in TextField
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.black), // Text color in TextField
              ),
              SizedBox(height: 30),
              // Tombol login dengan ukuran penuh
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.black), // Font color set to black
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("or", style: TextStyle(fontSize: 16, color: Colors.black)), // Font color set to black
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.g_mobiledata, color: Colors.black),
                label: Text("Sign in with Google Account", style: TextStyle(color: Colors.black)), // Font color set to black
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.grey),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.apple, color: Colors.black),
                label: Text("Sign in with Apple ID", style: TextStyle(color: Colors.black)), // Font color set to black
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}