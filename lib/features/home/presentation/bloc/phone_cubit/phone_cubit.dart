import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo_implement.dart';

part 'phone_state.dart';

class PhoneCubit extends Cubit<PhoneState> {
  PhoneCubit(this.phoneRepoImplement) : super(PhoneInitial());
  final PhoneRepoImplement phoneRepoImplement;

  List<PhoneModel> originalPhoneList = [];
  Future<void> getPhones({required String baseUrl}) async {
    emit(PhoneLoading());
    final result = await phoneRepoImplement.getAllPhones(baseUrl: baseUrl);
    result.fold(
      (failure) {
        emit(PhoneFailure(failure: failure));
      },
      ((phoneList) {
        originalPhoneList = phoneList;
        emit(PhoneSeccess(phoneList: phoneList));
      }),
    );
  }

  void searchPhones(String query) {
    if (query.trim().isEmpty) {
      emit(PhoneSeccess(phoneList: originalPhoneList));
    }

    final filteredList = originalPhoneList
        .where(
          (phone) => phone.title.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    if (filteredList.isEmpty) {
      emit(NoResult());
    } else {
      emit(PhoneSeccess(phoneList: filteredList));
    }
  }
}
