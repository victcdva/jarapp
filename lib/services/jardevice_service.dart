import 'package:http/http.dart' as http;
import 'package:jarapp/models/devicejar.dart';
import 'dart:convert';

import 'package:jarapp/models/weightvalues.dart';

class JarDeviceService {
  Future<List<WeightValuesModel>> getWeightDataList() async {
    final data = await http.Client().get("");

    if (data.statusCode != 200) throw Exception();

    List<WeightValuesModel> weightdata = (json.decode(data.body) as List)
        .map((item) => new WeightValuesModel.fromJson(item))
        .toList();

    return weightdata;
  }

  Future<List<DeviceJarModel>> getDeviceJarList() async {
    final data = await http.Client().get("");

    if (data.statusCode != 200) throw Exception();

    List<DeviceJarModel> devicedata = (json.decode(data.body) as List)
        .map((item) => new DeviceJarModel.fromJson(item))
        .toList();

    return devicedata;
  }
}
