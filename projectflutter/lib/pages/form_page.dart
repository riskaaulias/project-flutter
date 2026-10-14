import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // kunci global form
  final _formKey =GlobalKey<FormState>();

  //variabel textbox
  final TextEditingController  _nameController = TextEditingController();
  final TextEditingController  _tgllahirController = TextEditingController();

  var _outputName = ''; 
  var _outputTgllahir = '';

  @override
  void dispose() {
    // menghapus inputan yang sudah diisi
    _nameController.dispose();
    _tgllahirController.dispose();
    //mengeksekusi method dispose dari class induk
    super.dispose();
  }
  
  void _submitForm (){ 
    setState(() {
    _outputName = _nameController.text;
    _outputTgllahir = _tgllahirController.text;
    });

    print(" Nama Lengkap : ${_nameController.text }");
    print(" Tanggal Lahir : ${_tgllahirController.text }");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(" Nama Lengkap : ${_nameController.text }")),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(" Tanggal Lahir : ${_tgllahirController.text }")),
    );
    // memanggil method clear
    _clearInput();  
  }
  
  void _clearInput() { 
    //membersihkan isi textbox
    _nameController.clear(); 
    _tgllahirController.clear();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Form App')),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Nama Tidak Boleh Kosong" ;                  
                    }
                    return null;
                  },
                ),
                ),
                SizedBox(height: 20.0,),
                OutlinedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    _submitForm();                      
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.green, width: 1),
                  ),
                  child: Text('Simpan'),
                ),
                Text('Nama: ${_outputName.isEmpty ? "" : _outputName}',
                style: const TextStyle(fontSize: 16),),
              ],
            )
          ),
        ),
      ),
      
    );
  }
}