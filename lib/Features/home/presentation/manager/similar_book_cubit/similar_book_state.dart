part of 'similar_book_cubit.dart';

abstract class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

class SimilarBookInitial extends SimilarBookState {}

class SimilarBookFailure extends SimilarBookState {
  final String errMessage;

  const SimilarBookFailure(this.errMessage);
}

class SimilarBookSuccsess extends SimilarBookState {
  final List<BookModel> books;

  const SimilarBookSuccsess(this.books);
}

class SimilarBookLoading extends SimilarBookState {}
