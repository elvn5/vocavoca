import "package:equatable/equatable.dart";
import "package:vocavoca/src/models/voca_theme/voca_theme.dart";

abstract class ElementaryState extends Equatable {
  List<Object?> get props => [];
}

class ElementaryLoadingState extends ElementaryState {
  List<Object?> get props => [];
}

class ElementaryLoadedState extends ElementaryState {
  ElementaryLoadedState({required this.data});

  final List<VocaTheme> data;

  List<Object?> get props => [data];
}

class ElementaryLoadingErrorState extends ElementaryState {
  List<Object?> get props => [];
}
