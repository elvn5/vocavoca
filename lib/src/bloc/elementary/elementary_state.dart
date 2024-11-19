import "package:equatable/equatable.dart";
import "package:vocavoca/src/models/models.dart";

abstract class ElementaryState extends Equatable {
  List<Object?> get props => [];
}

class ElementaryLoadingState extends ElementaryState {
  List<Object?> get props => [];
}

class ElementaryLoadedState extends ElementaryState {
  ElementaryLoadedState({required this.data});

  final List<VocaQuiz> data;

  List<Object?> get props => [data];
}

class ElementaryLoadingErrorState extends ElementaryState {
  List<Object?> get props => [];
}
