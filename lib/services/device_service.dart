import 'dart:convert';

import 'package:smart_home/models/device.dart';
import 'package:http/http.dart' as http;

class DeviceService {
  static const BASE_URL = 'http://172.16.88.224:8088/v1/api/device';

  Future<List<Device>> getAllDevice() async {
    List<Device> allDevice = [];
    final response = await http.get(Uri.parse(BASE_URL));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      for (var eachDevice in jsonData) {
        allDevice.add(Device.fromJson(eachDevice));
      }
      return allDevice;
    } else {
      throw Exception("Fail to load device data");
    }
  }
}
