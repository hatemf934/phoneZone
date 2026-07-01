part of 'phone_details_cubit.dart';

@immutable
sealed class PhoneDetailsState {}

final class PhoneDetailsInitial extends PhoneDetailsState {}

final class PhoneDetailLoading extends PhoneDetailsState {}

final class PhoneDetailSeccess extends PhoneDetailsState {
  final PhoneModel phoneModel;

  PhoneDetailSeccess({required this.phoneModel});
}

final class PhoneDetailFailure extends PhoneDetailsState {
  final Failure failure;

  PhoneDetailFailure({required this.failure});
}
