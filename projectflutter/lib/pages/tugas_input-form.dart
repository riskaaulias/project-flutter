import 'package:flutter/material.dart';
import 'package:projectflutter/helpers/size_helper.dart';
import 'package:projectflutter/pages/tugas_output-form.dart';
import 'package:intl/intl.dart';

class TugasBelajarForm extends StatefulWidget {
  const TugasBelajarForm({super.key});

  @override
  State<TugasBelajarForm> createState() => _TugasBelajarFormState();
}

class _TugasBelajarFormState extends State<TugasBelajarForm> {
  final _formKey = GlobalKey<FormState>();

  // Controller untuk input teks
  TextEditingController namaController = TextEditingController();
  TextEditingController teleponController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController tglPendaftaranController = TextEditingController();

  // Variabel untuk Dropdown Kelas
  String? _pilihKelas;
  final List<String> daftarKelas = [
    "X RPL 1",
    "X RPL 2",
    "XI RPL 1",
    "XI RPL 2",
    "XII RPL",
  ];

  // Variabel untuk Checkbox Eskul (Map untuk melacak status centang)
  final Map<String, bool> _daftarEskul = {
    "Musik Kolaborasi": false,
    "Paskibra": false,
    "Futsal": false,
    "Tari": false,
    "Sains": false,
    "English Club": false,
  };
  String? _eskulError;

  @override
  void initState() {
    tglPendaftaranController.text = "";
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    teleponController.dispose();
    emailController.dispose();
    tglPendaftaranController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.blueGrey,
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 4,
                margin: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Formulir Pendaftaran Eskul",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 18),
                        
                        // 1. Nama Lengkap
                        TextFormField(
                          controller: namaController,
                          decoration: const InputDecoration(
                            hintText: "Nama Lengkap",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Input Nama Lengkap';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 18),
                        
                        // 2. No Telepon (Keyboard Handphone)
                        TextFormField(
                          controller: teleponController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: "No Telepon",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Input No Telepon';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 18),
                        
                        // 3. Email (Keyboard Email)
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Input Email';
                            }
                            if (!value.contains('@')) {
                              return 'Format email tidak valid';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 18),
                        
                        // 4. Kelas (Dropdown 5 Pilihan)
                        DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: "Pilih Kelas",
                            border: OutlineInputBorder(),
                          ),
                          value: _pilihKelas,
                          items: daftarKelas
                              .map(
                                (item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _pilihKelas = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Pilih kelas terlebih dahulu';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 18),
                        
                        // 5. Eskul (Checkbox - Min 1, Maks 2)
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Pilih Eskul (Minimal 1, Maksimal 2)",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        ..._daftarEskul.keys.map((String key) {
                          return CheckboxListTile(
                            title: Text(key),
                            value: _daftarEskul[key],
                            controlAffinity: ListTileControlAffinity.leading,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (bool? value) {
                              setState(() {
                                // Hitung berapa yang sudah dicentang saat ini
                                int selectedCount = _daftarEskul.values.where((e) => e).length;
                                
                                // Jika mencoba mencentang baru tapi sudah 2, cegah atau berikan peringatan
                                if (value == true && selectedCount >= 2) {
                                  _eskulError = 'Maksimal hanya bisa memilih 2 eskul';
                                  return;
                                }
                                
                                _daftarEskul[key] = value ?? false;
                                // Reset error jika jumlah pilihan sudah valid (1 atau 2)
                                int newCount = _daftarEskul.values.where((e) => e).length;
                                if (newCount >= 1 && newCount <= 2) {
                                  _eskulError = null;
                                }
                              });
                            },
                          );
                        }).toList(),
                        
                        if (_eskulError != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                            child: Text(
                              _eskulError!,
                              style: const TextStyle(color: Colors.red, fontSize: 12),
                            ),
                          ),
                        const SizedBox(height: 18),
                        
                        // 6. Tanggal Pendaftaran (DatePicker)
                        TextFormField(
                          controller: tglPendaftaranController,
                          decoration: const InputDecoration(
                            hintText: "Tanggal Pendaftaran",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Input Tanggal Pendaftaran';
                            }
                            return null;
                          },
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              setState(() {
                                tglPendaftaranController.text = DateFormat(
                                  'yyyy-MM-dd',
                                ).format(pickedDate);
                              });
                            }
                          },
                        ),
                        const SizedBox(height: 24),
                        
                        // Tombol Simpan
                        SizedBox(
                          width: displayWidth(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                                side: const BorderSide(color: Colors.black),
                              ),
                            ),
                            child: const Text(
                              "Simpan",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: _submit,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    
    // Validasi jumlah eskul yang dipilih (minimal 1, maksimal 2)
    int selectedEskulCount = _daftarEskul.values.where((e) => e).length;
    if (selectedEskulCount < 1) {
      setState(() {
        _eskulError = 'Pilih minimal 1 eskul';
      });
    } else if (selectedEskulCount > 2) {
      setState(() {
        _eskulError = 'Maksimal hanya bisa memilih 2 eskul';
      });
    } else {
      setState(() {
        _eskulError = null;
      });
    }

    if (!isValid || selectedEskulCount < 1 || selectedEskulCount > 2) return;

    // Ambil list nama eskul yang dipilih
    List<String> eskulTerpilih = _daftarEskul.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();

    // Navigasi ke halaman Output
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OutputFormScreen(
          nama: namaController.text,
          telepon: teleponController.text,
          email: emailController.text,
          kelas: _pilihKelas ?? "",
          eskul: eskulTerpilih.join(", "),
          tglPendaftaran: tglPendaftaranController.text,
        ),
      ),
    );
  }
}