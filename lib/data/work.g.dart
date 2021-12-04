// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Work _$WorkFromJson(Map<String, dynamic> json) => Work(
      companyName: json['company_name'] as String?,
      position: json['position'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$WorkToJson(Work instance) => <String, dynamic>{
      'company_name': instance.companyName,
      'position': instance.position,
      'duration': instance.duration,
    };
