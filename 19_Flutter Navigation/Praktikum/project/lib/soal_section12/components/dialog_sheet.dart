import 'package:flutter/material.dart';
import 'package:project/soal_section12/details_page.dart';

class DialogSheet extends StatelessWidget {
  final String image;
  final String name;

  const DialogSheet({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Image(
          image: NetworkImage(image),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('GO BACK'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      image: image,
                      name: name,
                    ),
                  ),
                );
              },
              child: const Text('SHOW DETAILS'),
            ),
          ],
        )
      ],
    );
  }
}
