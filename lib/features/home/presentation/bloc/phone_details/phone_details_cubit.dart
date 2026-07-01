import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo_implement.dart';

part 'phone_details_state.dart';

class PhoneDetailsCubit extends Cubit<PhoneDetailsState> {
  PhoneDetailsCubit(this.phoneRepoImplement) : super(PhoneDetailsInitial());
  final PhoneRepoImplement phoneRepoImplement;

  Future<void> getPhoneByid(int id) async {
    emit(PhoneDetailLoading());
    final result = await phoneRepoImplement.getPhoneById(id);
    result.fold(
      (failure) {
        emit(PhoneDetailFailure(failure: failure));
      },
      ((phoneModel) {
        emit(PhoneDetailSeccess(phoneModel: phoneModel));
      }),
    );
  }
}
