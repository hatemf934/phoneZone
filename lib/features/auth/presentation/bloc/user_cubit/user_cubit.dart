import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/features/auth/data/model/sign_in_model.dart';
import 'package:phone_zone/features/auth/data/repos/user_repo_imlpement.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepoImlpement) : super(UserInitial());

  final UserRepoImlpement userRepoImlpement;
  GlobalKey<FormState> formSignInKey = GlobalKey();
  GlobalKey<FormState> formSignUpKey = GlobalKey();

  TextEditingController usernameSignIn = TextEditingController();
  TextEditingController passwordSignIn = TextEditingController();

  TextEditingController emailSignUp = TextEditingController();
  TextEditingController passwordSignUp = TextEditingController();
  TextEditingController usernameSignUp = TextEditingController();
  TextEditingController phoneSignUp = TextEditingController();

  Future<void> signUp() async {
    emit(SignUpLoading());
    final result = await userRepoImlpement.signUp(
      email: emailSignUp.text,
      password: passwordSignUp.text,
      phone: passwordSignUp.text,
      username: usernameSignUp.text,
    );
    result.fold(
      (failure) => emit(SignUpFailure(failure: failure)),
      (signUpModel) => emit(SignUpSuccess()),
    );
  }

  Future<void> signIn() async {
    emit(SignInLoading());
    final result = await userRepoImlpement.signIn(
      password: passwordSignIn.text,
      username: usernameSignIn.text,
    );
    result.fold(
      (failure) => emit(SignInFaiure(failure: failure)),
      (signInModel) => emit(SignInSuccess(signInModel: signInModel)),
    );
  }
}
