import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

@JsonSerializable()
class Education {
  Education({
    this.institution,
    this.degree,
    this.duration,
  });

  @JsonKey(name: 'institution')
  String? institution;
  @JsonKey(name: 'degree')
  String? degree;
  @JsonKey(name: 'duration')
  String? duration;

  factory Education.fromJson(Map<String, dynamic> json) => _$EducationFromJson(json);

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}
