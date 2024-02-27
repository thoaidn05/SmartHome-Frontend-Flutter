class Device {
  final String name;
  final String image;
  final int hasDimmer;
  final int hasSwitch;
  final int hasDsensor;
  final int hasAsensor;

  Device(
      {required this.name,
      required this.image,
      required this.hasDimmer,
      required this.hasSwitch,
      required this.hasDsensor,
      required this.hasAsensor});

  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
      name: json['name'],
      image: json['image'],
      hasDimmer: json['hasDimmer'],
      hasSwitch: json['hasSwitch'],
      hasDsensor: json['hasDsensor'],
      hasAsensor: json['hasAsensor'],
    );
  }
}
