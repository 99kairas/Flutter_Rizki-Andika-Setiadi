import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/soal_section15/provider/contact_provider.dart';
import 'package:project/soal_section15/widget/textfield_widget.dart';
import 'package:provider/provider.dart';

class CreateContactPage extends StatelessWidget {
  const CreateContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    String _name = "";
    String _phone = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(
              hintText: 'Masukkan Nama',
              labelText: 'Nama',
              onChanged: (value) {
                _name = value;
              },
            ),
            SizedBox(height: 10),
            TextFieldWidget(
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.phone,
              hintText: 'Masukkan Nomor Telepon',
              labelText: 'Nomor Telepon',
              onChanged: (value) {
                _phone = value;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Provider.of<ContactProvider>(context, listen: false)
                    .addContact(_name, _phone);
                Navigator.pop(context);
              },
              child: const Text('SUBMIT'),
            ),
          ],
        ),
      ),
    );
  }
}
