part of 'photos_bloc.dart';

abstract class PhotosState extends Equatable {
  const PhotosState();
}

class PhotosInitial extends PhotosState {
  @override
  List<Object?> get props => [];
}

class PhotosSuccessLoaded extends PhotosState {
  final List<ImageModel> images;

  const PhotosSuccessLoaded({
    required this.images,
  });
  @override
  List<Object?> get props => [images];
}

class PhotosRemoveSuccessLoaded extends PhotosState {
  final List<ImageModel> images;

  const PhotosRemoveSuccessLoaded({
    required this.images,
  });
  @override
  List<Object?> get props => [images];
}
