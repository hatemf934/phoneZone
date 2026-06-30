import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo_implement.dart';

part 'phone_state.dart';

class PhoneCubit extends Cubit<PhoneState> {
  PhoneCubit(this.phoneRepoImplement) : super(PhoneInitial());
  final PhoneRepoImplement phoneRepoImplement;
  Future<void> getPhones() async {
    emit(PhoneLoading());
    final result = await phoneRepoImplement.getAllPhones();
    result.fold(
      (failure) {
        emit(PhoneFailure(failure: failure));
      },
      ((phoneList) {
        emit(PhoneSeccess(phoneList: phoneList));
      }),
    );
  }
}
