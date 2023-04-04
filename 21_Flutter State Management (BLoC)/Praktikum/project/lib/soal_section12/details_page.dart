import 'package:flutter/material.dart';

class DetailsArgument {
  final String image;
  final String name;

  DetailsArgument({
    required this.image,
    required this.name,
  });
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final details =
        ModalRoute.of(context)!.settings.arguments as DetailsArgument;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(details.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(details.name),
            ),
          ],
        ),
      ),
    );
  }
}
