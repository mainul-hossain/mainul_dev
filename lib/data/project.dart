import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  Project({
    this.appName,
    this.appDesc,
    this.appLink,
    this.platform,
  });

  @JsonKey(name: 'app_name')
  String? appName;
  @JsonKey(name: 'app_desc')
  String? appDesc;
  @JsonKey(name: 'app_link')
  String? appLink;
  @JsonKey(name: 'platform')
  String? platform;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
