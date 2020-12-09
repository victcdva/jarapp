class WeightValuesModel {
  int idweight;
  String value;
  String description;
  DateTime created_date;

  WeightValuesModel(
      {this.idweight, this.value, this.description, this.created_date});

  factory WeightValuesModel.fromJson(Map<String, dynamic> json) {
    return WeightValuesModel(
        idweight: json["idweight"],
        value: json["value"],
        description: json["description"],
        created_date: DateTime.parse(json["created_date"]));
  }
}
