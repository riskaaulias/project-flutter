import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, telepon, email, kelas, eskul, tglPendaftaran;

  const OutputFormScreen({
    Key? key,
    required this.nama,
    required this.telepon,
    required this.email,
    required this.kelas,
    required this.eskul,
    required this.tglPendaftaran,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Data Pendaftaran Eskul",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Divider(height: 24, thickness: 1),
                    _textWidget("Nama Lengkap", nama),
                    _textWidget("No Telepon", telepon),
                    _textWidget("Email", email),
                    _textWidget("Kelas", kelas),
                    _textWidget("Eskul", eskul),
                    _textWidget("Tgl Pendaftaran", tglPendaftaran),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textWidget(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(": $value")),
        ],
      ),
    );
  }
}