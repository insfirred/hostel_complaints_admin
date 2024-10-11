import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_data.g.dart';

@JsonSerializable()
class AdminData {
  final String name;
  final String mobile;
  @JsonKey(name: 'admin_type')
  final String adminType;

  const AdminData({
    required this.name,
    required this.mobile,
    required this.adminType,
  });

  factory AdminData.fromJson(Map<String, dynamic> json) =>
      _$AdminDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdminDataToJson(this);
}
