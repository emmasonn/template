import 'package:equatable/equatable.dart';

class Beneficiary extends Equatable {
  final String? name;
  final String number;
  final String date;

  const Beneficiary({
    required this.name,
    required this.number,
    required this.date,
  });

  @override
  List<Object?> get props => [
        name,
        number,
      ];
}
