import 'package:dalel_project/core/constants/app_strings.dart';

class HistoricalPeriodsModel {
  final String name;
  final String imageUrl;
  final String description;
  final Map<String, dynamic> wars;

  HistoricalPeriodsModel({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.wars,
  });
  factory HistoricalPeriodsModel.formjson(jsonData) {
    return HistoricalPeriodsModel(
      name: jsonData[FireBaseStrings.name],
      imageUrl: jsonData[FireBaseStrings.image],
      description: jsonData[FireBaseStrings.description],
      wars: jsonData[FireBaseStrings.wars],
    );
  }
}
