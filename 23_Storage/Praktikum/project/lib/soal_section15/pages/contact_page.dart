import 'package:flutter/material.dart';
import 'package:project/soal_section15/model/contact_model.dart';
import 'package:project/soal_section15/provider/contact_provider.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile-page-section16');
            },
            icon: const Icon(Icons.account_box),
          ),
          const SizedBox(width: 10),
        ],
        title: const Text(
          'Contacts',
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/create-contact-page');
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<ContactProvider>(
          builder: (context, ContactProvider contactProvider, child) {
        return ListView.builder(
          itemCount: contactProvider.getContact.length,
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: ContactCard(
                contactModel: contactProvider.getContact[index],
              ),
            );
          },
        );
      }),
    );
  }
}

class ContactCard extends StatelessWidget {
  ContactModel contactModel;
  ContactCard({
    super.key,
    required this.contactModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 15, left: 15),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contactModel.nama,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 5),
            Text(
              contactModel.phone,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
