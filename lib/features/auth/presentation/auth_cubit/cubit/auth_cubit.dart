import 'package:bloc/bloc.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
   String? firstName;
   String? lastName;
   String? email;
   String? password; 
   GlobalKey<FormState> signUpKey = GlobalKey();
   bool? isTermsAndConditionCheckBoxValue=false;


  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance
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


updateTermsAndConditionCheckBox({ required bool value}) {
  isTermsAndConditionCheckBoxValue = value;
  emit(UpdateTermsAndConditionCheckBoxState());
    
  }

}
