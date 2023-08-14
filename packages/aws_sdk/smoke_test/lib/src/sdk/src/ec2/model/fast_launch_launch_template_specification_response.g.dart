// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fast_launch_launch_template_specification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FastLaunchLaunchTemplateSpecificationResponse
    extends FastLaunchLaunchTemplateSpecificationResponse {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final String? version;

  factory _$FastLaunchLaunchTemplateSpecificationResponse(
          [void Function(FastLaunchLaunchTemplateSpecificationResponseBuilder)?
              updates]) =>
      (new FastLaunchLaunchTemplateSpecificationResponseBuilder()
            ..update(updates))
          ._build();

  _$FastLaunchLaunchTemplateSpecificationResponse._(
      {this.launchTemplateId, this.launchTemplateName, this.version})
      : super._();

  @override
  FastLaunchLaunchTemplateSpecificationResponse rebuild(
          void Function(FastLaunchLaunchTemplateSpecificationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FastLaunchLaunchTemplateSpecificationResponseBuilder toBuilder() =>
      new FastLaunchLaunchTemplateSpecificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FastLaunchLaunchTemplateSpecificationResponse &&
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

class FastLaunchLaunchTemplateSpecificationResponseBuilder
    implements
        Builder<FastLaunchLaunchTemplateSpecificationResponse,
            FastLaunchLaunchTemplateSpecificationResponseBuilder> {
  _$FastLaunchLaunchTemplateSpecificationResponse? _$v;

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

  FastLaunchLaunchTemplateSpecificationResponseBuilder();

  FastLaunchLaunchTemplateSpecificationResponseBuilder get _$this {
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
  void replace(FastLaunchLaunchTemplateSpecificationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FastLaunchLaunchTemplateSpecificationResponse;
  }

  @override
  void update(
      void Function(FastLaunchLaunchTemplateSpecificationResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FastLaunchLaunchTemplateSpecificationResponse build() => _build();

  _$FastLaunchLaunchTemplateSpecificationResponse _build() {
    final _$result = _$v ??
        new _$FastLaunchLaunchTemplateSpecificationResponse._(
            launchTemplateId: launchTemplateId,
            launchTemplateName: launchTemplateName,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
