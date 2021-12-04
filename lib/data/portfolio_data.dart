import 'package:json_annotation/json_annotation.dart';
import 'package:mainul_dev/data/education.dart';
import 'package:mainul_dev/data/project.dart';
import 'package:mainul_dev/data/skills.dart';
import 'package:mainul_dev/data/work.dart';

part 'portfolio_data.g.dart';

@JsonSerializable()
class PortfolioData {
  PortfolioData({
    this.profileName,
    this.designation,
    this.works,
    this.educations,
    this.skills,
    this.projects,
  });

  @JsonKey(name: 'profile_name')
  String? profileName;
  @JsonKey(name: 'designation')
  String? designation;
  @JsonKey(name: 'works')
  List<Work>? works;
  @JsonKey(name: 'educations')
  List<Education>? educations;
  @JsonKey(name: 'skills')
  Skills? skills;
  @JsonKey(name: 'projects')
  List<Project>? projects;

  factory PortfolioData.fromJson(Map<String, dynamic> json) => _$PortfolioDataFromJson(json);

  Map<String, dynamic> toJson() => _$PortfolioDataToJson(this);
}
