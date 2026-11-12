import 'package:flutter/material.dart';
import '../routes/app_routes.dart'; // Pastikan path import app_routes sudah benar

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final receiptData = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Struk Pembayaran'),
        backgroundColor: const Color(0xFF0A192F),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            elevation: 3,
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Icon(Icons.check_circle, color: Colors.green, size: 60)),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      'PEMBAYARAN BERHASIL',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF0A192F)),
                    ),
                  ),
                  const Divider(height: 30),
                  Text('Film: ${receiptData['title']}'),
                  const SizedBox(height: 8),
                  Text('Jumlah Tiket: ${receiptData['tickets']}'),
                  const SizedBox(height: 8),
                  Text('Metode Bayar: ${receiptData['payment']}'),
                  const SizedBox(height: 8),
                  Text(
                    'Total Bayar: Rp ${receiptData['total']}',
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0A192F)),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0A192F),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.listScreen,
                          (route) => false,
                        );
                      },
                      child: const Text('Kembali ke Menu Bioskop'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}