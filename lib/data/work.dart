import 'package:json_annotation/json_annotation.dart';

part 'work.g.dart';

@JsonSerializable()
class Work {
  Work({
    this.companyName,
    this.position,
    this.duration,
  });

  @JsonKey(name: 'company_name')
  String? companyName;
  @JsonKey(name: 'position')
  String? position;
  @JsonKey(name: 'duration')
  String? duration;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

  Map<String, dynamic> toJson() => _$WorkToJson(this);
}
