import 'package:amplify_flutter/config/analytics/analytics_config.dart';
import 'package:amplify_flutter/config/api/api_config.dart';
import 'package:amplify_flutter/config/auth/auth_config.dart';
import 'package:amplify_flutter/config/storage/storage_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'amplify_config.g.dart';

@JsonSerializable()
class AmplifyConfig {
  @JsonKey(name: 'UserAgent')
  String? userAgent;

  @JsonKey(name: 'Version')
  String? version;

  AnalyticsConfig? analytics;
  ApiConfig? api;
  AuthConfig? auth;
  StorageConfig? storage;

  /// Standard Constructor for AmplifyConfig class
  AmplifyConfig(
      {this.userAgent,
      this.version,
      this.analytics,
      this.api,
      this.auth,
      this.storage});

  /// AmplifyConfig factory constructor for reading json data
  factory AmplifyConfig.fromJson(Map<String, dynamic> json) =>
      _$AmplifyConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AmplifyConfigToJson(this);
}
