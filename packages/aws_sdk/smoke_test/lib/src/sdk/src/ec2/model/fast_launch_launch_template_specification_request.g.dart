// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fast_launch_launch_template_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FastLaunchLaunchTemplateSpecificationRequest
    extends FastLaunchLaunchTemplateSpecificationRequest {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final String? version;

  factory _$FastLaunchLaunchTemplateSpecificationRequest(
          [void Function(FastLaunchLaunchTemplateSpecificationRequestBuilder)?
              updates]) =>
      (new FastLaunchLaunchTemplateSpecificationRequestBuilder()
            ..update(updates))
          ._build();

  _$FastLaunchLaunchTemplateSpecificationRequest._(
      {this.launchTemplateId, this.launchTemplateName, this.version})
      : super._();

  @override
  FastLaunchLaunchTemplateSpecificationRequest rebuild(
          void Function(FastLaunchLaunchTemplateSpecificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FastLaunchLaunchTemplateSpecificationRequestBuilder toBuilder() =>
      new FastLaunchLaunchTemplateSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FastLaunchLaunchTemplateSpecificationRequest &&
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

class FastLaunchLaunchTemplateSpecificationRequestBuilder
    implements
        Builder<FastLaunchLaunchTemplateSpecificationRequest,
            FastLaunchLaunchTemplateSpecificationRequestBuilder> {
  _$FastLaunchLaunchTemplateSpecificationRequest? _$v;

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

  FastLaunchLaunchTemplateSpecificationRequestBuilder();

  FastLaunchLaunchTemplateSpecificationRequestBuilder get _$this {
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
  void replace(FastLaunchLaunchTemplateSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FastLaunchLaunchTemplateSpecificationRequest;
  }

  @override
  void update(
      void Function(FastLaunchLaunchTemplateSpecificationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FastLaunchLaunchTemplateSpecificationRequest build() => _build();

  _$FastLaunchLaunchTemplateSpecificationRequest _build() {
    final _$result = _$v ??
        new _$FastLaunchLaunchTemplateSpecificationRequest._(
            launchTemplateId: launchTemplateId,
            launchTemplateName: launchTemplateName,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
