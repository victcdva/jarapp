import 'package:jarapp/models/weightvalues.dart';

class DeviceJarModel {
  int idjardevice;
  String name;
  double value;
  DateTime created_date;
  bool status;
  WeightValuesModel idweight;

  DeviceJarModel(
      {this.idjardevice,
      this.name,
      this.value,
      this.created_date,
      this.status,
      this.idweight});

  factory DeviceJarModel.fromJson(Map<String, dynamic> json) {
    return DeviceJarModel(
        idjardevice: json["idjardevice"],
        name: json["name"],
        value: json["value"],
        created_date: DateTime.parse(json["created_date"]),
        status: json["status"],
        idweight: WeightValuesModel.fromJson(json["idweight"]));
  }
}
