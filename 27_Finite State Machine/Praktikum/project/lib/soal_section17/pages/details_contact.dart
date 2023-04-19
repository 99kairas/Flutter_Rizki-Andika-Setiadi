import 'package:flutter/material.dart';
import 'package:project/soal_section17/services/contact_service.dart';

class DetailsContactWithApiPage extends StatefulWidget {
  final String idContact;
  const DetailsContactWithApiPage({
    super.key,
    required this.idContact,
  });

  @override
  State<DetailsContactWithApiPage> createState() => _DetailsContactPageState();
}

class _DetailsContactPageState extends State<DetailsContactWithApiPage> {
  bool isLoading = false;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details Page With API',
        ),
      ),
      body: FutureBuilder(
        future: ContactService().getDetailContact(widget.idContact),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return dataContact(
              name: snapshot.data?.name,
              phone: snapshot.data?.phone,
            );
          } else if (snapshot.hasError) {
            return const Text('Error');
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget dataContact({
    String? name,
    String? phone,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            initialValue: name ?? "",
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
            initialValue: phone ?? "",
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
                    await ContactService().putContact(
                      context,
                      name: _username,
                      phone: _phone,
                      idContact: widget.idContact,
                    );
                    Future.delayed(const Duration(milliseconds: 300), () {
                      isLoading = false;
                      setState(() {});
                    });
                  },
                  child: const Text('Update Contact'),
                ),
        ],
      ),
    );
  }
}
