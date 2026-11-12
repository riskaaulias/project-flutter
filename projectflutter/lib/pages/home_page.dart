import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // Latar belakang gradasi warna kuning butter
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 224, 121),
              Color.fromARGB(255, 255, 142, 176),
              Color.fromARGB(255, 142, 232, 255),
              Color.fromARGB(255, 215, 128, 255),
              Color.fromARGB(255, 142, 255, 151),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Center(
                child: Column(
                  children: [
                    
                    _buildButterButton(
                      context, 
                      'Bioskop List (Tugas)', 
                      () => Navigator.pushNamed(context, '/list-screen'),
                    ),
                    const SizedBox(height: 12),
                    // ---------------------------------------------------------
                    _buildButterButton(
                      context, 
                      'Masuk Profile', 
                      () => Navigator.pushNamed(context, '/about'),
                    ),
                    const SizedBox(height: 12), 
                    _buildButterButton(
                      context, 
                      'Container Satu', 
                      () => Navigator.pushNamed(context, '/container-satu'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Article List Screen', 
                      () => Navigator.pushNamed(context, '/article-list-screen'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Grid Product Page', 
                      () => Navigator.pushNamed(context, '/grid-product-page'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Column Widget', 
                      () => Navigator.pushNamed(context, '/column-widget'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Latihan Colukmn Widget', 
                      () => Navigator.pushNamed(context, '/latihan-column-widget1'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Row Column Widget', 
                      () => Navigator.pushNamed(context, '/row-column-widget'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Row Widget', 
                      () => Navigator.pushNamed(context, '/row-widget'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Expanded Widget', 
                      () => Navigator.pushNamed(context, '/expanded-widget'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Latihan Tiga', 
                      () => Navigator.pushNamed(context, '/latihan-tiga'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Latihan Empat', 
                      () => Navigator.pushNamed(context, '/latihan-empat'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Layout Satu', 
                      () => Navigator.pushNamed(context, '/layout-satu'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Layout Dua', 
                      () => Navigator.pushNamed(context, '/layout-dua'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Layout Tiga', 
                      () => Navigator.pushNamed(context, '/layout-tiga'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Layout Empat', 
                      () => Navigator.pushNamed(context, '/layout-empat'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Sized Box Widget', 
                      () => Navigator.pushNamed(context, '/sized-box-widget'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Container Satu', 
                      () => Navigator.pushNamed(context, '/container-satu'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Stack Widget', 
                      () => Navigator.pushNamed(context, '/stack-widget'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Form Page', 
                      () => Navigator.pushNamed(context, '/form'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Input Form', 
                      () => Navigator.pushNamed(context, '/input-form'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Tugas Input Form', 
                      () => Navigator.pushNamed(context, '/tugas-input-form'),
                    ),
                    const SizedBox(height: 12),
                    _buildButterButton(
                      context, 
                      'Post Page', 
                      () => Navigator.pushNamed(context, '/post-page'),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButterButton(BuildContext context, String title, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.9),
          foregroundColor: const Color(0xFF5A4D41),
          elevation: 2,
          shadowColor: Colors.brown.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFE6D59E), width: 1),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }
}