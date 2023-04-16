import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/soal_section17/services/contact_service.dart';
import 'package:project/soal_section17/services/image_service.dart';

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

  // IMAGE PROPERTY
  String image = '';
  // END OF IMAGE PROPERTY

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                image.isNotEmpty
                    ? SvgPicture.string(
                        image,
                        height: 200,
                        width: 200,
                      )
                    : Text('Image belum ada'),
                const SizedBox(height: 10),
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

                      _errorUsernameMessage =
                          "Username harus lebih dari 4 Huruf";
                    } else {
                      _isButtonNameValid = true;
                      _isUsernameValid = true;
                    }
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    hintText: 'Masukkan Nama',
                    errorText: _isUsernameValid ? null : _errorUsernameMessage,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onChanged: (value) {
                    _phone = value;
                    if (_phone.isEmpty) {
                      _isPhoneValid = false;
                      _isButtonPhoneValid = false;
                      _errorPhoneMessage = 'Nomor tidak boleh kosong!';
                    } else if(_phone.length < 5){
                       _isPhoneValid = false;
                      _isButtonPhoneValid = false;
                      _errorPhoneMessage = 'Nomor harus lebih dari 5 angka!';
                    }
                    else {
                      _isPhoneValid = true;
                      _isButtonPhoneValid = true;
                    }
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Nomor Handphone',
                    hintText: 'Masukkan Nomor Handphone',
                    errorText: _isPhoneValid ? null : _errorPhoneMessage,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                isLoading
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: _isButtonNameValid && _isButtonPhoneValid
                            ? () async {
                                isLoading = true;
                                setState(() {});
                                await ContactService().postContact(
                                  context,
                                  name: _username,
                                  phone: _phone,
                                );
                                Future.delayed(
                                    const Duration(milliseconds: 300), () {
                                  isLoading = false;
                                  setState(() {});
                                });
                                if (_username.isNotEmpty) {
                                  image = await ImageService()
                                      .generateImage(_username);
                                  setState(() {});
                                }
                              }
                            : null,
                        child: const Text('Create Contact and Generate Image'),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
