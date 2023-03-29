import 'package:flutter/material.dart';
import 'package:project/soal_section12/components/bottom_sheet.dart';
import 'package:project/soal_section12/model/foto_model.dart';


class HomeSection12 extends StatelessWidget {
  final List<FotoModel> items = [
    FotoModel(
      name: 'Texas',
      image:
          'https://images.unsplash.com/photo-1679674035211-1a9495befbb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
    ),
    FotoModel(
      name: 'Tibet, China',
      image:
          'https://images.unsplash.com/photo-1679650576883-e30edc7aff70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1125&q=80',
    ),
    FotoModel(
        name: 'Tibet, China',
        image:
            'https://images.unsplash.com/photo-1679650576883-e30edc7aff70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1125&q=80'),
    FotoModel(
      name: 'Texas',
      image:
          'https://images.unsplash.com/photo-1679674035211-1a9495befbb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
    ),
  ];

  HomeSection12({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Widget'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: items.length,
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                context: context,
                builder: (context) => BottomSheetComponent(
                    image: items[index].image, name: items[index].name),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(items[index].image),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
