class Service {
  Service({
    required this.id,
    required this.name,
    required this.location,
    required this.currentMileage,
    required this.mileagePerService,
    required this.nextMileageService,
    required this.cost,
    required this.createdDate,
    required this.serviceDate,
  });
  final String id;
  final String name;
  final String location;
  final int currentMileage;
  final int mileagePerService;
  final int nextMileageService;
  final num cost;
  final DateTime createdDate;
  final DateTime serviceDate;
}
