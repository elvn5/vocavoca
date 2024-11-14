import 'package:get_it/get_it.dart';
import 'package:vocavoca/src/bloc/bloc.dart';
import 'package:vocavoca/src/services/services.dart';

final getIt = GetIt.instance;

void setupDi() {
  getIt.registerSingleton<ElementaryBloc>(ElementaryBloc(supabaseService));
}
