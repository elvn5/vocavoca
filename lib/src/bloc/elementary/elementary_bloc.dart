import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vocavoca/src/bloc/bloc.dart';
import 'package:vocavoca/src/models/models.dart';

class ElementaryBloc extends Bloc<ElementaryEvent, ElementaryState> {
  final SupabaseClient _supabaseService;

  ElementaryBloc(this._supabaseService) : super(ElementaryLoadingState()) {
    on<ElementaryLoadEvent>((event, emit) async {
      emit(
        ElementaryLoadingState(),
      );

      try {
        final response = await _supabaseService.from('Quiz').select(
            'id,description, imageUrl, Question (id, desc, Option(id, is_correct, desc))');

        final data = response.map((el) => VocaQuiz.fromJson(el)).toList();

        emit(
          ElementaryLoadedState(data: data),
        );
      } catch (e) {
        emit(
          ElementaryLoadingErrorState(),
        );
      }
    });
  }
}
