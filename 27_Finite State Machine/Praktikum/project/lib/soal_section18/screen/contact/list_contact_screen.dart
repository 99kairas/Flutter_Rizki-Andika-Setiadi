import 'package:flutter/material.dart';
import 'package:project/soal_section18/model/api/contact_api.dart';
import 'package:project/soal_section18/screen/contact/list_contact_view_model.dart';
import 'package:provider/provider.dart';

class ListContactScreen extends StatefulWidget {
  const ListContactScreen({super.key});

  @override
  State<ListContactScreen> createState() => _ListContactScreenState();
}

class _ListContactScreenState extends State<ListContactScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ListContactViewModel>(context, listen: false)
          .getNewListContact();
    });
  }

  Widget build(BuildContext context) {
    final modelView = Provider.of<ListContactViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts From API'),
      ),
      body: ListView.builder(
        itemCount: modelView.listContact.length,
        itemBuilder: (context, index) {
          final contact = modelView.listContact[index];
          return Column(
            children: [
              ListTile(
                title: Text(contact.name!),
                subtitle: Text(contact.phone!),
              ),
              Divider(thickness: 2),
            ],
          );
        },
      ),
    );
  }
}
