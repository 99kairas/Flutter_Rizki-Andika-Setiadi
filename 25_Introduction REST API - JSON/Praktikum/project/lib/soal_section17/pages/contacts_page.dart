import 'package:flutter/material.dart';
import 'package:project/soal_section15/pages/create_contact_page.dart';
import 'package:project/soal_section17/pages/create_page.dart';
import 'package:project/soal_section17/pages/details_contact.dart';
import 'package:project/soal_section17/services/contact_service.dart';

class ContactsWithApiPage extends StatelessWidget {
  const ContactsWithApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts From API'),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateContactWithApiPage(),
              ));
        },
        child: CircleAvatar(
          radius: 30,
          child: Icon(Icons.add),
        ),
      ),
      body: FutureBuilder(
        future: ContactService().getContact(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final contacts = snapshot.data;

            return ListView.builder(
              itemCount: contacts?.length,
              itemBuilder: (context, index) {
                var data = contacts?[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsContactWithApiPage(
                        idContact: data?.id.toString() ?? "",
                      ),
                    ),
                  ),
                  child: ListTile(
                    leading: Text(data?.id.toString() ?? "-"),
                    title: Text(data?.name ?? "-"),
                    subtitle: Text(data?.phone ?? "-"),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () {
                        ContactService().deleteContact(
                          context,
                          idContact: data?.id.toString() ?? "",
                          name: data?.name ?? "",
                        );
                      },
                    ),
                  ),
                );
              },
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
}
