import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_box_state.dart';

class FeaturedBoxCubit extends Cubit<FeaturedBoxState> {
  FeaturedBoxCubit() : super(FeaturedBoxInitial());
}