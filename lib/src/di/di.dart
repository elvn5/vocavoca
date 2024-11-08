import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final getIt = GetIt.instance;


void setupDi(){
  final supabase = getIt.registerSingleton(Supabase.instance.client);

}

