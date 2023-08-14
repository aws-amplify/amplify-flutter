// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_launch_template_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetLaunchTemplateSpecificationRequest
    extends FleetLaunchTemplateSpecificationRequest {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final String? version;

  factory _$FleetLaunchTemplateSpecificationRequest(
          [void Function(FleetLaunchTemplateSpecificationRequestBuilder)?
              updates]) =>
      (new FleetLaunchTemplateSpecificationRequestBuilder()..update(updates))
          ._build();

  _$FleetLaunchTemplateSpecificationRequest._(
      {this.launchTemplateId, this.launchTemplateName, this.version})
      : super._();

  @override
  FleetLaunchTemplateSpecificationRequest rebuild(
          void Function(FleetLaunchTemplateSpecificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetLaunchTemplateSpecificationRequestBuilder toBuilder() =>
      new FleetLaunchTemplateSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetLaunchTemplateSpecificationRequest &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetLaunchTemplateSpecificationRequestBuilder
    implements
        Builder<FleetLaunchTemplateSpecificationRequest,
            FleetLaunchTemplateSpecificationRequestBuilder> {
  _$FleetLaunchTemplateSpecificationRequest? _$v;

  String? _launchTemplateId;
  String? get launchTemplateId => _$this._launchTemplateId;
  set launchTemplateId(String? launchTemplateId) =>
      _$this._launchTemplateId = launchTemplateId;

  String? _launchTemplateName;
  String? get launchTemplateName => _$this._launchTemplateName;
  set launchTemplateName(String? launchTemplateName) =>
      _$this._launchTemplateName = launchTemplateName;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  FleetLaunchTemplateSpecificationRequestBuilder();

  FleetLaunchTemplateSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetLaunchTemplateSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetLaunchTemplateSpecificationRequest;
  }

  @override
  void update(
      void Function(FleetLaunchTemplateSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetLaunchTemplateSpecificationRequest build() => _build();

  _$FleetLaunchTemplateSpecificationRequest _build() {
    final _$result = _$v ??
        new _$FleetLaunchTemplateSpecificationRequest._(
            launchTemplateId: launchTemplateId,
            launchTemplateName: launchTemplateName,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
