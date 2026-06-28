import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/core/error/server_failure.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/auth/data/model/sign_in_model.dart';
import 'package:phone_zone/features/auth/data/repos/user_repo_imlpement.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepoImlpement) : super(UserInitial());

  final UserRepoImlpement userRepoImlpement;
  final List<String> registeredEmails = [];
  GlobalKey<FormState> formSignInKey = GlobalKey();
  GlobalKey<FormState> formSignUpKey = GlobalKey();
  XFile? profilePic;

  TextEditingController emailSignIn = TextEditingController();
  TextEditingController passwordSignIn = TextEditingController();

  TextEditingController emailSignUp = TextEditingController();
  TextEditingController passwordSignUp = TextEditingController();
  TextEditingController usernameSignUp = TextEditingController();
  TextEditingController phoneSignUp = TextEditingController();

  void upLoadProfilePic(XFile image) {
    profilePic = image;
    emit(UpLoadProfilePic());
  }

  Future<void> signUp() async {
    emit(SignUpLoading());
    if (registeredEmails.contains(emailSignUp.text.trim().toLowerCase())) {
      emit(
        SignUpFailure(
          failure: ServerFailure(
            message: "",
            userMessage: TextManager.emailAlreadyExists,
          ),
        ),
      );
      return;
    }
    final result = await userRepoImlpement.signUp(
      email: emailSignUp.text,
      password: passwordSignUp.text,
      username: usernameSignUp.text,
      avatar: profilePic,
    );
    result.fold((failure) => emit(SignUpFailure(failure: failure)), (
      signUpModel,
    ) {
      registeredEmails.add(emailSignUp.text.trim().toLowerCase());
      clearSignUpFields();
      emit(SignUpSuccess());
    });
  }

  Future<void> signIn() async {
    emit(SignInLoading());
    final result = await userRepoImlpement.signIn(
      password: passwordSignIn.text,
      email: emailSignIn.text,
    );
    result.fold(
      (failure) => emit(SignInFaiure(failure: failure)),
      (signInModel) => emit(SignInSuccess(signInModel: signInModel)),
    );
  }

  void clearSignUpFields() {
    emailSignUp.clear();
    passwordSignUp.clear();
    usernameSignUp.clear();
  }

  void clearSignInFields() {
    emailSignIn.clear();
    passwordSignIn.clear();
  }
}
