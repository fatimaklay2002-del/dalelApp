sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errorMessage;

  SignUpFailureState({required this.errorMessage});
}
final class UpdateTermsAndConditionCheckBoxState extends AuthState {}
final class ObscurePasswordTextValueState extends AuthState {}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInFailureState extends AuthState {
  final String errorMessage;

  SignInFailureState({required this.errorMessage});
}