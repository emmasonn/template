import 'package:peniremit/core/failures/failure.dart';

sealed class HomeState {}

class Initial extends HomeState {}

//* GetBeneficiaries States
class GetBeneficiariesLoaded<T> extends HomeState {
  final List<T> beneficiaries;
  GetBeneficiariesLoaded(this.beneficiaries);
}

class GetBeneficiariesLoading extends HomeState {}

class GetBeneficiariesError extends HomeState {
  final Failure failure;
  GetBeneficiariesError(this.failure);
}
 