import 'package:flutter/material.dart';
import '../routes/app_routes.dart'; // Sesuaikan path import app_routes jika perlu

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  int ticketCount = 1;
  String paymentMethod = 'Cash';
  final TextEditingController cashController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    int totalPrice = (movie['price'] as int) * ticketCount;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie['title']),
        backgroundColor: const Color(0xFF0A192F),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(movie['genre'], style: const TextStyle(color: Colors.black54, fontSize: 16)),
            const SizedBox(height: 4),
            Text('Durasi: ${movie['duration']}', style: const TextStyle(color: Colors.black54, fontSize: 14)),
            const Divider(height: 30),

            // Pengaturan Jumlah Tiket
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Jumlah Tiket:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF0A192F)),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove_circle, color: Color(0xFF0A192F)),
                      onPressed: ticketCount > 1 ? () => setState(() => ticketCount--) : null,
                    ),
                    Text('$ticketCount', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: const Icon(Icons.add_circle, color: Color(0xFF0A192F)),
                      onPressed: () => setState(() => ticketCount++),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(height: 30),

            // Pilihan Metode Pembayaran
            const Text(
              'Metode Pembayaran:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF0A192F)),
            ),
            ListTile(
              title: const Text('Cash (Tunai)'),
              leading: Radio<String>(
                value: 'Cash',
                groupValue: paymentMethod,
                activeColor: const Color(0xFF0A192F),
                onChanged: (val) => setState(() => paymentMethod = val!),
              ),
            ),
            ListTile(
              title: const Text('QRIS'),
              leading: Radio<String>(
                value: 'QRIS',
                groupValue: paymentMethod,
                activeColor: const Color(0xFF0A192F),
                onChanged: (val) => setState(() => paymentMethod = val!),
              ),
            ),

            const SizedBox(height: 10),
            if (paymentMethod == 'Cash') ...[
              TextField(
                controller: cashController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Nominal Uang Tunai (Rp)',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF0A192F), width: 2),
                  ),
                ),
              ),
            ] else ...[
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  '[ Simulasi Gambar QRIS ]\nScan untuk membayar',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF0A192F), fontWeight: FontWeight.bold),
                ),
              ),
            ],

            const SizedBox(height: 30),
            Text(
              'Total Harga: Rp $totalPrice',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0A192F)),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A192F),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(14),
                ),
                onPressed: () {
                  if (paymentMethod == 'Cash') {
                    int cashGiven = int.tryParse(cashController.text) ?? 0;
                    if (cashGiven < totalPrice) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Uang tunai kurang!')),
                      );
                      return;
                    }
                  }

                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.receiptScreen,
                    arguments: {
                      'title': movie['title'],
                      'tickets': ticketCount,
                      'total': totalPrice,
                      'payment': paymentMethod,
                    },
                  );
                },
                child: const Text('Konfirmasi Pembayaran', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}