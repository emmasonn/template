import 'dart:convert';
import 'package:peniremit/features/home/domain/entities/beneficiary.dart';

class BeneficiaryModel extends Beneficiary {
  const BeneficiaryModel({
    required super.number,
    super.name,
    required super.date,
  });

  factory BeneficiaryModel.fromMap(Map<String, dynamic> data) {
    return BeneficiaryModel(
      name: data['name'],
      number: data['number'],
      date: DateTime.now().toString(),
    );
  }

  factory BeneficiaryModel.fromJson(String source) {
    final data = json.decode(source);
    return BeneficiaryModel(
        name: data['name'], number: data['number'], date: data['date']);
  }

  String get toJson {
    final data = {
      'name': name,
      'number': number,
      'date': date,
    };
    return json.encode(data);
  }
}
