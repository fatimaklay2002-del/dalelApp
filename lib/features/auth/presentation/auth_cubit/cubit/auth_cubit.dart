import 'package:bloc/bloc.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
late String firstName;
  late String lastName;
  late String email;
  late String password; 


  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(errorMessage:'An error occurredThe password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(errorMessage:'An error occurredThe account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailureState(errorMessage:e.toString()));
    }
  }
}
