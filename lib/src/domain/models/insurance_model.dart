import 'package:bikecare/src/domain/enums/insurance_type.dart';

class Insurance {
  Insurance({
    required this.effectiveDate,
    required this.expirationDate,
    required this.insuranceName,
    required this.policyNumber,
    required this.type,
  });

  final String insuranceName;
  final String policyNumber;
  final InsuranceType type;
  final DateTime effectiveDate;
  final DateTime expirationDate;
}
