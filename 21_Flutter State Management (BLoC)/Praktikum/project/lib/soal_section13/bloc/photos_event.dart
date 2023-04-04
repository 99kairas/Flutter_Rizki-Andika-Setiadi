part of 'photos_bloc.dart';

abstract class PhotosEvent extends Equatable {
  const PhotosEvent();
}

class FetchPhotosEvent extends PhotosEvent {
  @override
  List<Object?> get props => [];
}

class DeletePhotosEvent extends PhotosEvent {
  final ImageModel imageModel;

   const DeletePhotosEvent({
    required this.imageModel,
  });
  @override
  List<Object?> get props => [imageModel];
}
