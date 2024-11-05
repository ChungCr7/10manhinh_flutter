import 'package:flutter/material.dart';

class Manhinh1 extends StatelessWidget {
  const Manhinh1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Sign In",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                const Text("Welcome back, Tuan Tran",
                    style: TextStyle(color: Colors.green)),
                const SizedBox(height: 15),
                const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                const TextField(),
                const SizedBox(height: 15),
                const Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
                const TextField(obscureText: true),
                const SizedBox(height: 15),
                const Text("Forgot Password"),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child: const Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Center(child: Text('Or Sign in With')),
                const SizedBox(height: 15),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/iconFacebook.png'),
                      const SizedBox(width: 20),
                      Image.asset('images/iconKakao.png'),
                      const SizedBox(width: 20),
                      Image.asset('images/iconLine.png'),
                    ],
                  ),
                ),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account?"),
                      Text("Sign up", style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
