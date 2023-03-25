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

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Username',
              hintText: 'Masukan Username',
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Email',
              hintText: 'Masukan Email',
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 4,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Message',
              hintText: 'Masukan Message',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
