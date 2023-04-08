import 'package:flutter/material.dart';
import 'package:project/soal_section17/services/contact_service.dart';

class CreateContactWithApiPage extends StatefulWidget {
  const CreateContactWithApiPage({super.key});

  @override
  State<CreateContactWithApiPage> createState() =>
      _CreateContactWithApiPageState();
}

class _CreateContactWithApiPageState extends State<CreateContactWithApiPage> {
  // USERNAME PROPERTY
  String _username = '';
  bool _isUsernameValid = true;
  String _errorUsernameMessage = '';
  bool _isButtonNameValid = false;
  // END OF USERNAME PROPERTY

  // PHONE PROPERTY
  String _phone = '';
  bool _isPhoneValid = true;
  String _errorPhoneMessage = '';
  bool _isButtonPhoneValid = false;
  // END OF PHONE PROPERTY
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  _username = value;
                  if (_username.isEmpty) {
                    _isUsernameValid = false;
                    _isButtonNameValid = false;
                    _errorUsernameMessage = 'Username tidak boleh kosong!';
                  } else if (_username.length < 4) {
                    _isUsernameValid = false;
                    _isButtonNameValid = false;

                    _errorUsernameMessage = "Username harus lebih dari 4 Huruf";
                  } else {
                    _isButtonNameValid = true;
                    _isUsernameValid = true;
                  }
                  setState(() {});
                },
                decoration: const InputDecoration(
                  labelText: 'Nama',
                  hintText: 'Masukkan Nama',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  _phone = value;
                  if (_phone.isEmpty) {
                    _isPhoneValid = false;
                    _isButtonPhoneValid = false;
                    _errorPhoneMessage = 'Nomor tidak boleh kosong!';
                  }
                },
                decoration: const InputDecoration(
                  labelText: 'Nomor Handphone',
                  hintText: 'Masukkan Nomor Handphone',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () async {
                        isLoading = true;
                        setState(() {});
                        await ContactService().postContact(
                          context,
                          name: _username,
                          phone: _phone,
                        );
                        Future.delayed(const Duration(milliseconds: 300), () {
                          isLoading = false;
                          setState(() {});
                        });
                      },
                      child: const Text('Create Contact'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
