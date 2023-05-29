// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminData _$AdminDataFromJson(Map<String, dynamic> json) => AdminData(
      name: json['name'] as String,
      mobile: json['mobile'] as String,
      adminType: json['admin_type'] as String,
    );

Map<String, dynamic> _$AdminDataToJson(AdminData instance) => <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'admin_type': instance.adminType,
    };
