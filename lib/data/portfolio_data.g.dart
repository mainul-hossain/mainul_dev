// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PortfolioData _$PortfolioDataFromJson(Map<String, dynamic> json) =>
    PortfolioData(
      profileName: json['profile_name'] as String?,
      designation: json['designation'] as String?,
      works: (json['works'] as List<dynamic>?)
          ?.map((e) => Work.fromJson(e as Map<String, dynamic>))
          .toList(),
      educations: (json['educations'] as List<dynamic>?)
          ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: json['skills'] == null
          ? null
          : Skills.fromJson(json['skills'] as Map<String, dynamic>),
      projects: (json['projects'] as List<dynamic>?)
          ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PortfolioDataToJson(PortfolioData instance) =>
    <String, dynamic>{
      'profile_name': instance.profileName,
      'designation': instance.designation,
      'works': instance.works,
      'educations': instance.educations,
      'skills': instance.skills,
      'projects': instance.projects,
    };
