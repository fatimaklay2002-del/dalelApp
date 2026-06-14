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
  GlobalKey<FormState> signInKey = GlobalKey();
  bool? isTermsAndConditionCheckBoxValue = false;
  bool? isObscurePasswordText = true;

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
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
      }
    } catch (e) {
      emit(SignUpFailureState(errorMessage: e.toString()));
    }
  }

  updateTermsAndConditionCheckBox({required bool value}) {
    isTermsAndConditionCheckBoxValue = value;
    emit(UpdateTermsAndConditionCheckBoxState());
  }

  obscurePasswordTextValue(bool value) {
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
      emit(SignInFailureState(errorMessage: 'Wrong password provided for that user.'));
    } else if (e.code == 'invalid-credential') {
      // 💡 هذا الكود الجديد المشهور جداً في فايربيس حالياً
      emit(SignInFailureState(errorMessage: 'Invalid email or password.'));
    } else {
      // ⚠️ هاد السطر السحري اللي بيمنع التعليق! 
      // إذا طلع أي خطأ تاني من فايربيس رح يبعته للـ UI والتحميل يوقف
      emit(SignInFailureState(errorMessage: e.message ?? 'Authentication failed.'));
    }
  } catch (e) {
    emit(SignInFailureState(errorMessage: e.toString()));
  }
}
}
