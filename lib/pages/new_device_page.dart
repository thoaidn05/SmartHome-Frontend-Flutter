import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/models/device.dart';
import 'package:smart_home/services/device_service.dart';

class NewDevicePage extends StatefulWidget {
  const NewDevicePage({super.key});

  @override
  State<NewDevicePage> createState() => _NewDevicePageState();
}

class _NewDevicePageState extends State<NewDevicePage> {
  final _deviceService = DeviceService();
  List<Device> _devices = [];

  _fetchDevice() async {
    try {
      final devices = await _deviceService.getAllDevice();
      setState(() {
        _devices = devices;
      });
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchDevice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose new device".toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  wordSpacing: 3,
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _devices
                        .map((device) => GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 20),
                                  decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          "http://192.168.101.3:8088/v1/api/device/file/${device.image}",
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Container(
                                            width: 100,
                                            height: 100,
                                            child: Icon(Icons.error, size: 40),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Flexible(
                                        child: Text(
                                          device.name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
