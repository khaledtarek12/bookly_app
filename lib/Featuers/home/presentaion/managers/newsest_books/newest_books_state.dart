part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}
class FeaturedBoxLoading extends NewestBooksState {}

class FeaturedBoxSuccess extends NewestBooksState {
  final List<BookModel> books;

  const FeaturedBoxSuccess({required this.books});
}

class FeaturedBoxFailure extends NewestBooksState {
  final String errorMessage;

  const FeaturedBoxFailure({required this.errorMessage});
}