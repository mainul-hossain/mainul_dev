// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      appName: json['app_name'] as String?,
      appDesc: json['app_desc'] as String?,
      appLink: json['app_link'] as String?,
      platform: json['platform'] as String?,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'app_name': instance.appName,
      'app_desc': instance.appDesc,
      'app_link': instance.appLink,
      'platform': instance.platform,
    };
