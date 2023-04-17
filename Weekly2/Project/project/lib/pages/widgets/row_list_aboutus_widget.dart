import 'package:flutter/material.dart';

class RowListAboutUsWidget extends StatelessWidget {
  final String imageNetwork;
  final String imageText;
  const RowListAboutUsWidget({
    super.key,
    required this.imageNetwork,
    required this.imageText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageNetwork,
                  ),
                ),
              ),
              Text(imageText),
            ],
          ),
        ),
      ),
    );
  }
}
