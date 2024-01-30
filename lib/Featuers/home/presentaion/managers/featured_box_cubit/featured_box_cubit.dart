import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_box_state.dart';

class FeaturedBoxCubit extends Cubit<FeaturedBoxState> {
  FeaturedBoxCubit(this.homeRepo) : super(FeaturedBoxInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeauturdBooks() async {
    emit(FeaturedBoxLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBoxFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(FeaturedBoxSuccess(books: books));
    });
  }
}
