import 'package:bikecare/src/domain/models/service_model.dart';

import 'dart:math';

List<Service> generateRandomServices(int count) {
  final random = Random();
  final serviceNames = ['Oil Change', 'Tire Rotation', 'Battery Checkup'];
  final locations = ['Main Street Garage', 'AutoZone', 'QuickFix'];
  const maxMileage = 100000;
  const maxCost = 200;

  final createdDate =
      DateTime.now().subtract(Duration(days: random.nextInt(365)));

  int randomIntInRange(int min, int max) {
    if (min > max) {
      throw ArgumentError("min must be less than or equal to max");
    }

    return min + random.nextInt(max - min + 1);
  }

  int randomCurrentMileage() => random.nextInt(maxMileage);

  int randomNextMileage() =>
      random.nextInt(maxMileage) + (random.nextInt(10000) + 5000);

  return List.generate(count, (index) {
    return Service(
      id: "${index + 1}",
      name: serviceNames[randomIntInRange(0, 2)],
      location: locations[randomIntInRange(0, 2)],
      currentMileage: randomCurrentMileage(),
      mileagePerService: random.nextInt(10000) + 5000,
      nextMileageService: randomNextMileage(),
      cost: random.nextDouble() * maxCost,
      createdDate: DateTime.now().subtract(Duration(days: random.nextInt(365))),
      serviceDate: createdDate.add(Duration(days: random.nextInt(30))),
    );
  });
}

final List<Service> listOfService = <Service>[
  Service(
      id: '001',
      name: 'das',
      location: 'dsdsde',
      currentMileage: 12233,
      mileagePerService: 231213,
      nextMileageService: 232,
      cost: 233.00,
      createdDate:
          DateTime.now().subtract(Duration(days: Random().nextInt(365))),
      serviceDate: DateTime.now()
          .subtract(Duration(days: Random().nextInt(365)))
          .add(Duration(days: Random().nextInt(30)))), Service(
      id: '001',
      name: 'das',
      location: 'dsdsde',
      currentMileage: 12233,
      mileagePerService: 231213,
      nextMileageService: 232,
      cost: 233.00,
      createdDate:
          DateTime.now().subtract(Duration(days: Random().nextInt(365))),
      serviceDate: DateTime.now()
          .subtract(Duration(days: Random().nextInt(365)))
          .add(Duration(days: Random().nextInt(30)))), Service(
      id: '001',
      name: 'das',
      location: 'dsdsde',
      currentMileage: 12233,
      mileagePerService: 231213,
      nextMileageService: 232,
      cost: 233.00,
      createdDate:
          DateTime.now().subtract(Duration(days: Random().nextInt(365))),
      serviceDate: DateTime.now()
          .subtract(Duration(days: Random().nextInt(365)))
          .add(Duration(days: Random().nextInt(30)))),
];
