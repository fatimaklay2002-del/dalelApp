import 'package:bloc/bloc.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:meta/meta.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
