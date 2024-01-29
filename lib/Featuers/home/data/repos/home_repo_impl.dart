import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementaion extends HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplementaion({required this.apiServices});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoints:
              'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
