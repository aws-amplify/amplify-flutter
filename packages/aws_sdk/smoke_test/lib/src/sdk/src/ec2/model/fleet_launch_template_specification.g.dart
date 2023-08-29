// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_launch_template_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetLaunchTemplateSpecification
    extends FleetLaunchTemplateSpecification {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final String? version;

  factory _$FleetLaunchTemplateSpecification(
          [void Function(FleetLaunchTemplateSpecificationBuilder)? updates]) =>
      (new FleetLaunchTemplateSpecificationBuilder()..update(updates))._build();

  _$FleetLaunchTemplateSpecification._(
      {this.launchTemplateId, this.launchTemplateName, this.version})
      : super._();

  @override
  FleetLaunchTemplateSpecification rebuild(
          void Function(FleetLaunchTemplateSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetLaunchTemplateSpecificationBuilder toBuilder() =>
      new FleetLaunchTemplateSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetLaunchTemplateSpecification &&
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

class FleetLaunchTemplateSpecificationBuilder
    implements
        Builder<FleetLaunchTemplateSpecification,
            FleetLaunchTemplateSpecificationBuilder> {
  _$FleetLaunchTemplateSpecification? _$v;

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

  FleetLaunchTemplateSpecificationBuilder();

  FleetLaunchTemplateSpecificationBuilder get _$this {
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
  void replace(FleetLaunchTemplateSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetLaunchTemplateSpecification;
  }

  @override
  void update(void Function(FleetLaunchTemplateSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetLaunchTemplateSpecification build() => _build();

  _$FleetLaunchTemplateSpecification _build() {
    final _$result = _$v ??
        new _$FleetLaunchTemplateSpecification._(
            launchTemplateId: launchTemplateId,
            launchTemplateName: launchTemplateName,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
