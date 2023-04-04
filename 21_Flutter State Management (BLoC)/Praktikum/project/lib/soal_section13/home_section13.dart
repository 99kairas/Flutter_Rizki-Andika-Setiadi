import 'package:flutter/material.dart';
import 'package:project/soal_section12/details_page.dart';
import 'package:project/soal_section13/bloc/photos_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/soal_section13/model/foto_model.dart';

final List<ImageModel> imageItem = [
  ImageModel(
    name: 'Github',
    image:
        'https://play-lh.googleusercontent.com/PCpXdqvUWfCW1mXhH1Y_98yBpgsWxuTSTofy3NGMo9yBTATDyzVkqU580bfSln50bFU',
  ),
  ImageModel(
    name: 'Instagram',
    image:
        'https://play-lh.googleusercontent.com/VRMWkE5p3CkWhJs6nv-9ZsLAs1QOg5ob1_3qg-rckwYW7yp1fMrYZqnEFpk0IoVP4LM',
  ),
  ImageModel(
    name: 'Twitter',
    image:
        'https://pbs.twimg.com/profile_images/1488548719062654976/u6qfBBkF_400x400.jpg',
  ),
  ImageModel(
    name: 'Facebook',
    image:
        'https://cdn2.downdetector.com/static/uploads/logo/FB-f-Logo__blue_512.png',
  ),
  ImageModel(
    name: 'Gojek',
    image:
        'https://static.vecteezy.com/system/resources/previews/011/711/028/non_2x/gojek-element-symbol-gojek-logo-gojek-icon-free-vector.jpg',
  ),
  ImageModel(
    name: 'Linkedin',
    image:
        'https://play-lh.googleusercontent.com/kMofEFLjobZy_bCuaiDogzBcUT-dz3BBbOrIEjJ-hqOabjK8ieuevGe6wlTD15QzOqw',
  ),
];

class HomeSection13 extends StatefulWidget {
  const HomeSection13({super.key});

  @override
  State<HomeSection13> createState() => _HomeSection13State();
}

class _HomeSection13State extends State<HomeSection13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Widget'),
        centerTitle: true,
      ),
      body: BlocProvider<PhotosBloc>(
        create: (context) => PhotosBloc(),
        child: BlocBuilder<PhotosBloc, PhotosState>(
          builder: (context, state) {
            BlocProvider.of<PhotosBloc>(context).add(FetchPhotosEvent());
            if (state is PhotosSuccessLoaded) {
              return _contentWidget(state.images);
            }
            if (state is PhotosRemoveSuccessLoaded) {
              return _contentWidget(state.images);
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  Container _contentWidget(
    List<ImageModel> images,
  ) {
    return Container(
      child: GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<PhotosBloc>(context)
                  .add(DeletePhotosEvent(imageModel: images[index]));
              // bottomSheet(
              //   context: context,
              //   index: index,
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(images[index].image),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> bottomSheet({
    required BuildContext context,
    required int index,
    // required PhotoProvider photosProvider,
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
                      image: NetworkImage(imageItem[index].image),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 50, top: 10, bottom: 20),
                  child: Text(imageItem[index].name),
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
  // required PhotoProvider photosProvider,
}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: AlertDialog(
          actions: [
            Center(
              child: Image(
                image: NetworkImage(imageItem[index].image),
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
                        image: imageItem[index].image,
                        name: imageItem[index].name,
                      ),
                    );
                  },
                  child: const Text('DETAILS'),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
