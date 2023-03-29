import 'package:flutter/material.dart';
import 'package:project/soal_section12/components/dialog_sheet.dart';


class BottomSheetComponent extends StatelessWidget {
  final String image;
  final String name;
  const BottomSheetComponent({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => DialogSheet(
                  image: image,
                  name: name,
                ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, right: 30, left: 30),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
