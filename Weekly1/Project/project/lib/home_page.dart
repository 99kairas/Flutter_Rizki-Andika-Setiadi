import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Talk to Our Contact Sales',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
                const Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                ),
                const SizedBox(height: 15),
                Text(
                  'Mempunyai pertanyaan seputar harga, rencana atau perkembangan dalam pembelajaran Flutter? Isi form dibawah ini dan Contact Support kami akan melayani dengan sepenuh hati',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white54,
                  ),
                ),
                const SizedBox(height: 30),
                const ContactUs(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Us',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _usernameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Username',
              hintText: 'Masukan Username',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Username tidak boleh kosong!";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            // autovalidateMode: AutovalidateMode.always,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Email',
              hintText: 'Masukan Email',
            ),
            validator: (value) => EmailValidator.validate(value ?? "")
                ? null
                : "Kamu harus masukkan email",
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _messageController,
            keyboardType: TextInputType.text,
            maxLines: 4,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Message',
              hintText: 'Masukan Message',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Message tidak boleh kosong!";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  String message = _messageController.text.trim();
                  String username = _usernameController.text.trim();
                  String email = _emailController.text.trim();

                  showDialog(
                    context: context,
                    builder: (context) => DialogSheet(
                      email: email,
                      username: username,
                      message: message,
                    ),
                  );
                  setState(() {
                    _messageController.clear();
                    _usernameController.clear();
                    _emailController.clear();
                  });
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class DialogSheet extends StatelessWidget {
  final String message;
  final String username;
  final String email;
  const DialogSheet({
    super.key,
    required this.message,
    required this.username,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text('Contact Us'),
      actions: [
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Username : \n$username'),
              const SizedBox(height: 10),
              Text('Email : \n$email'),
              const SizedBox(height: 10),
              Text('Message : \n$message'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ],
    );
  }
}
