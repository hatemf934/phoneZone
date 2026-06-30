part of 'phone_cubit.dart';

@immutable
sealed class PhoneState {}

final class PhoneInitial extends PhoneState {}

final class PhoneLoading extends PhoneState {}

final class PhoneSeccess extends PhoneState {
  final List<PhoneModel> phoneList;

  PhoneSeccess({required this.phoneList});
}

final class PhoneFailure extends PhoneState {
  final Failure failure;

  PhoneFailure({required this.failure});
}
