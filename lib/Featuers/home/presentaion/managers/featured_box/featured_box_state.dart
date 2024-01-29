part of 'featured_box_cubit.dart';

abstract class FeaturedBoxState extends Equatable {
  const FeaturedBoxState();

  @override
  List<Object> get props => [];
}

class FeaturedBoxInitial extends FeaturedBoxState {}

class FeaturedBoxLoading extends FeaturedBoxState {}

class FeaturedBoxSuccess extends FeaturedBoxState {
  final List<BookModel> books;

  const FeaturedBoxSuccess({required this.books});
}

class FeaturedBoxFailure extends FeaturedBoxState {
  final String errorMessage;

  const FeaturedBoxFailure({required this.errorMessage});
}
