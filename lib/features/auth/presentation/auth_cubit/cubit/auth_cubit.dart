import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  GlobalKey<FormState> signUpKey = GlobalKey();
  GlobalKey<FormState> signInKey = GlobalKey();
  GlobalKey<FormState> resetPasswordKey = GlobalKey();
  bool? isTermsAndConditionCheckBoxValue = false;
  bool? isObscurePasswordText = true;

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
    await  addUserProfile();
    await  verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      _signUpHandleException(e);
    } catch (e) {
      emit(SignUpFailureState(errorMessage: e.toString()));
    }
  }

  void _signUpHandleException(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(
        SignUpFailureState(
          errorMessage: 'An error occurredThe password provided is too weak.',
        ),
      );
    } else if (e.code == 'email-already-in-use') {
      emit(
        SignUpFailureState(
          errorMessage:
              'An error occurredThe account already exists for that email.',
        ),
      );
    } else {
      emit(SignUpFailureState(errorMessage: e.code));
    }
  }

  Future<void> addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add({
      'first_name': firstName, // John Doe
      'last_name': lastName, // Stokes and Sons
      'email': email,
    });
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

void  updateTermsAndConditionCheckBox({required bool value}) {
    isTermsAndConditionCheckBoxValue = value;
    emit(UpdateTermsAndConditionCheckBoxState());
  }

  void obscurePasswordTextValue(bool value) {
    isObscurePasswordText = value;
    emit(ObscurePasswordTextValueState());
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errorMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(
          SignInFailureState(
            errorMessage: 'Wrong password provided for that user.',
          ),
        );
      } else {
        emit(
          SignInFailureState(
            errorMessage: e.message ?? 'Authentication failed.',
          ),
        );
      }
    } catch (e) {
      emit(SignInFailureState(errorMessage: e.toString()));
    }
  }

  Future<void> resetPasswordLink() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
      emit(ResetPasswordSuccessState());
    } on Exception catch (e) {
      emit(ResetPasswordFailureState(errorMessage: e.toString()));
    }
  }
}
