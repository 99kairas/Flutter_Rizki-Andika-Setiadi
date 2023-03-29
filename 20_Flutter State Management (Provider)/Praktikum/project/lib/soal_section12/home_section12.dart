import 'package:flutter/material.dart';
import 'package:project/soal_section12/details_page.dart';
import 'package:project/soal_section12/provider/image_provider.dart';
import 'package:provider/provider.dart';

class HomeSection12 extends StatefulWidget {
  const HomeSection12({
    super.key,
  });

  @override
  State<HomeSection12> createState() => _HomeSection12State();
}

class _HomeSection12State extends State<HomeSection12> {
  @override
  Widget build(BuildContext context) {
    final photosProvider = Provider.of<PhotoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Widget'),
        centerTitle: true,
      ),
      body: Container(
        child: GridView.builder(
          itemCount: photosProvider.items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                bottomSheet(
                  context: context,
                  index: index,
                  photosProvider: photosProvider,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(photosProvider.items[index].image),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> bottomSheet({
    required BuildContext context,
    required int index,
    required PhotoProvider photosProvider,
  }) {
    return showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
            dialogSheet(
              context: context,
              index: index,
              photosProvider: photosProvider,
            );
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 30, left: 30),
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(photosProvider.items[index].image),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 50, top: 10, bottom: 20),
                  child: Text(photosProvider.items[index].name),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Future<dynamic> dialogSheet({
  required BuildContext context,
  required int index,
  required PhotoProvider photosProvider,
}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: AlertDialog(
          actions: [
            Center(
              child: Image(
                image: NetworkImage(photosProvider.items[index].image),
              ),
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
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      '/details-page',
                      arguments: DetailsArgument(
                        image: photosProvider.items[index].image,
                        name: photosProvider.items[index].name,
                      ),
                    );
                  },
                  child: const Text('SHOW DETAILS'),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
