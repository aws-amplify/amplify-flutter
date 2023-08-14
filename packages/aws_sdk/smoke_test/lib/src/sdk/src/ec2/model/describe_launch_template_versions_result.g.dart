// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_launch_template_versions_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLaunchTemplateVersionsResult
    extends DescribeLaunchTemplateVersionsResult {
  @override
  final _i2.BuiltList<LaunchTemplateVersion>? launchTemplateVersions;
  @override
  final String? nextToken;

  factory _$DescribeLaunchTemplateVersionsResult(
          [void Function(DescribeLaunchTemplateVersionsResultBuilder)?
              updates]) =>
      (new DescribeLaunchTemplateVersionsResultBuilder()..update(updates))
          ._build();

  _$DescribeLaunchTemplateVersionsResult._(
      {this.launchTemplateVersions, this.nextToken})
      : super._();

  @override
  DescribeLaunchTemplateVersionsResult rebuild(
          void Function(DescribeLaunchTemplateVersionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLaunchTemplateVersionsResultBuilder toBuilder() =>
      new DescribeLaunchTemplateVersionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLaunchTemplateVersionsResult &&
        launchTemplateVersions == other.launchTemplateVersions &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateVersions.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLaunchTemplateVersionsResultBuilder
    implements
        Builder<DescribeLaunchTemplateVersionsResult,
            DescribeLaunchTemplateVersionsResultBuilder> {
  _$DescribeLaunchTemplateVersionsResult? _$v;

  _i2.ListBuilder<LaunchTemplateVersion>? _launchTemplateVersions;
  _i2.ListBuilder<LaunchTemplateVersion> get launchTemplateVersions =>
      _$this._launchTemplateVersions ??=
          new _i2.ListBuilder<LaunchTemplateVersion>();
  set launchTemplateVersions(
          _i2.ListBuilder<LaunchTemplateVersion>? launchTemplateVersions) =>
      _$this._launchTemplateVersions = launchTemplateVersions;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLaunchTemplateVersionsResultBuilder();

  DescribeLaunchTemplateVersionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateVersions = $v.launchTemplateVersions?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLaunchTemplateVersionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLaunchTemplateVersionsResult;
  }

  @override
  void update(
      void Function(DescribeLaunchTemplateVersionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLaunchTemplateVersionsResult build() => _build();

  _$DescribeLaunchTemplateVersionsResult _build() {
    _$DescribeLaunchTemplateVersionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeLaunchTemplateVersionsResult._(
              launchTemplateVersions: _launchTemplateVersions?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateVersions';
        _launchTemplateVersions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLaunchTemplateVersionsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
