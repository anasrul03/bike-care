import 'package:bikecare/src/domain/enums/vehicle_type.dart';
import 'package:bikecare/src/domain/models/insurance_model.dart';

class Vehicle {
  Vehicle({
    required this.model,
    required this.color,
    required this.type,
    required this.mileage,
    required this.insurance,
  });

  final String model;
  final String color;
  final VehicleType type;
  final int mileage;
  final Insurance insurance;
}
