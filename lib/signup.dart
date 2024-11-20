import 'package:flutter/material.dart';
import 'login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  
                  Color.fromARGB(255, 73, 74, 134),
             
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),

          // Centered Content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo with Opacity
                Opacity(
                  opacity: 0.8, // Set the desired opacity
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                      'data:image/jpeg;base64,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', // Replace with your network logo URL
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space below the logo

                // Signup Form
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Signup',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),

                          // Name Field
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15),

                          // Email Field
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                  .hasMatch(value)) {
                                return 'Enter a valid email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15),

                          // Password Field
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: const Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              } else if (value.length < 8) {
                                return 'Password must be at least 8 characters long.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),

                          // Signup Button
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                        'Account created successfully!'),
                                    backgroundColor: Colors.green,
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 80),
                            ),
                            child: const Text('Signup'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
