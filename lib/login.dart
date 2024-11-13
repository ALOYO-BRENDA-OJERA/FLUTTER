import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo with opacity
                Opacity(
                  opacity: 0.6,
                  child: Image.network(
                    'data:image/png;base64,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', // Replace with your logo URL
                    height: 100.0,
                    width: 100.0,
                  ),
                ),

                // Login Text
                const SizedBox(height: 20),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                // Email TextFormField
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // Password TextFormField
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // Login Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Handle login
                    }
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 30),

                // Rich Text for Register
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Register here',
                        style: const TextStyle(color: Colors.green),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle registration navigation
                          },
                      ),
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
