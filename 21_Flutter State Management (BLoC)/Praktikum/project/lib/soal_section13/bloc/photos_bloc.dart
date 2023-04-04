import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/soal_section13/home_section13.dart';
import 'package:project/soal_section13/model/foto_model.dart';

part 'photos_event.dart';
part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  PhotosBloc() : super(PhotosInitial()) {
    on<PhotosEvent>((event, emit) {
      if (event is FetchPhotosEvent) {
        emit(PhotosSuccessLoaded(images: imageItem));
      }
      if (event is DeletePhotosEvent) {
        imageItem.remove(event.imageModel);
        emit(PhotosRemoveSuccessLoaded(images: imageItem));
      }
    });
  }
}
