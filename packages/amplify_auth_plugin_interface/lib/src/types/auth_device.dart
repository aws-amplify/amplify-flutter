/// @{template auth_device}
/// Common interface for devices tracked by an authentication provider.
/// @{end_template}
abstract class AuthDevice {
  /// {@macro auth_device}
  const AuthDevice();

  /// Device unique identifier.
  String get id;

  /// Device name.
  String? get name;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'AuthDevice{id=$id, name=$name}';
  }
}
