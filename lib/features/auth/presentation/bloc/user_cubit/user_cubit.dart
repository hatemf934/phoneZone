import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/features/auth/data/model/sign_in_model.dart';
import 'package:phone_zone/features/auth/data/model/sign_up_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  GlobalKey? formSignInKey;
  GlobalKey? formSignUpKey;

  TextEditingController? usernameSignIn;
  TextEditingController? passwordSignIn;

  TextEditingController? emailSignUp;
  TextEditingController? passwordSignUp;
  TextEditingController? usernameSignUp;
  TextEditingController? phoneSignUp;
}
