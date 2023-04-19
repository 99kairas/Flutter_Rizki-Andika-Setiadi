import 'package:flutter/material.dart';
import 'package:project/soal_section19/screen/list_food_view_model.dart';
import 'package:provider/provider.dart';

class ListFoodScreen extends StatefulWidget {
  const ListFoodScreen({super.key});

  @override
  State<ListFoodScreen> createState() => _ListFoodScreenState();
}

class _ListFoodScreenState extends State<ListFoodScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ListFoodViewModel>(context, listen: false).getNewListFood();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<ListFoodViewModel>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text('List Food'),
      ),
      body: ListView.builder(
        itemCount: modelView.listFood.length,
        itemBuilder: (context, index) {
          final contact = modelView.listFood[index];
          return Column(
            children: [
              ListTile(
                title: Text(contact.name),
              ),
              Divider(thickness: 2),
            ],
          );
        },
      ),
    );
  }
}
