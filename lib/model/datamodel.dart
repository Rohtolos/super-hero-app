class DataModel {
  final String url;
  final String universe;

  // final String fullName;
  // final String name;
  // final String allignment;
  final PowerStats powerStats;

  DataModel(
      {required this.url, required this.universe, required this.powerStats});

  factory DataModel.fromJson(Map<String, dynamic> response) {
    String url = (response['results'] as List).elementAt(0)['image']['url'];
    String universe =
        (response['results'] as List).elementAt(0)['biography']['publisher'];
    String fullName =
        (response['results'] as List).elementAt(0)['biography']['publisher'];
    Map<String, dynamic> pwMap =
        (response['results'] as List).elementAt(0)['powerStats'];
    PowerStats powerStats = PowerStats.fromJson(pwMap);
    return DataModel(url: url, universe: universe, powerStats: powerStats);
  }
}

class PowerStats {
  final String intelligence;
  final String strength;
  final String speed;
  final String durability;
  final String power;
  final String combat;

  PowerStats(
      {required this.intelligence,
      required this.strength,
      required this.speed,
      required this.durability,
      required this.power,
      required this.combat});

  factory PowerStats.fromJson(Map<String, dynamic> pw) {
    return PowerStats(
        intelligence: pw['intelligence'],
        strength: pw['strength'],
        speed: pw['speed'],
        durability: pw['durability'],
        power: pw['power'],
        combat: pw['combat']);
  }
}
