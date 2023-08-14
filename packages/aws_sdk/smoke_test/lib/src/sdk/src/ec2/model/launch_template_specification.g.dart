// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateSpecification extends LaunchTemplateSpecification {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final String? version;

  factory _$LaunchTemplateSpecification(
          [void Function(LaunchTemplateSpecificationBuilder)? updates]) =>
      (new LaunchTemplateSpecificationBuilder()..update(updates))._build();

  _$LaunchTemplateSpecification._(
      {this.launchTemplateId, this.launchTemplateName, this.version})
      : super._();

  @override
  LaunchTemplateSpecification rebuild(
          void Function(LaunchTemplateSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateSpecificationBuilder toBuilder() =>
      new LaunchTemplateSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateSpecification &&
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

class LaunchTemplateSpecificationBuilder
    implements
        Builder<LaunchTemplateSpecification,
            LaunchTemplateSpecificationBuilder> {
  _$LaunchTemplateSpecification? _$v;

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

  LaunchTemplateSpecificationBuilder();

  LaunchTemplateSpecificationBuilder get _$this {
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
  void replace(LaunchTemplateSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateSpecification;
  }

  @override
  void update(void Function(LaunchTemplateSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateSpecification build() => _build();

  _$LaunchTemplateSpecification _build() {
    final _$result = _$v ??
        new _$LaunchTemplateSpecification._(
            launchTemplateId: launchTemplateId,
            launchTemplateName: launchTemplateName,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
