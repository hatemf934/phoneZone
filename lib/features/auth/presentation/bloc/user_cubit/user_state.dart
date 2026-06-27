part of 'user_cubit.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

final class SignInLoading extends UserState {}

final class SignInSuccess extends UserState {
  final SignInModel signInModel;

  SignInSuccess({required this.signInModel});
}

final class SignInFaiure extends UserState {
  final Failure failure;

  SignInFaiure({required this.failure});
}

final class SignUpLoading extends UserState {}

final class SignUpSuccess extends UserState {
  final SignUpModel signUpModel;

  SignUpSuccess({required this.signUpModel});
}

final class SignUpFailure extends UserState {
  final Failure failure;

  SignUpFailure({required this.failure});
}
