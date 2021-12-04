import 'package:json_annotation/json_annotation.dart';

part 'skills.g.dart';

@JsonSerializable()
class Skills {
  Skills({
    this.developmentArea,
    this.languages,
    this.tools,
  });

  @JsonKey(name: 'development_area')
  String? developmentArea;
  @JsonKey(name: 'languages')
  String? languages;
  @JsonKey(name: 'tools')
  String? tools;

  factory Skills.fromJson(Map<String, dynamic> json) => _$SkillsFromJson(json);

  Map<String, dynamic> toJson() => _$SkillsToJson(this);
}
