import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vocavoca/src/bloc/bloc.dart';
import 'package:vocavoca/src/models/models.dart';

class ElementaryBloc extends Bloc<ElementaryEvent, ElementaryState> {
  final SupabaseClient _supabaseService;

  ElementaryBloc(this._supabaseService) : super(ElementaryLoadingState()) {
    on<ElementaryLoadEvent>((event, emit) async {
      emit(ElementaryLoadingState());

      try {
        final response = await _supabaseService.from('elementary').select();

        final data = response.map((theme) {
          return VocaTheme.fromJson(theme);
        }).toList();

        emit(
          ElementaryLoadedState(
            data: data,
          ),
        );
      } catch (e) {
        emit(ElementaryLoadingErrorState());
      }
    });
  }
}
