import 'package:flutter/material.dart';
import 'main.dart';
import 'register.dart'; // Import halaman register

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo
              Text(
                'Sekend',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              // Phone Number Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16),
              // Password Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 8),
              // Forgot Password Button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke DashboardScreen di main.dart
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Login', style: TextStyle(fontSize: 16)),
              ),
              SizedBox(height: 16),
              // Signup Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('or', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman register
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(color: Colors.purple),
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
