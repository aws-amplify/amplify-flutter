// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_launch_templates_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLaunchTemplatesResult extends DescribeLaunchTemplatesResult {
  @override
  final _i2.BuiltList<LaunchTemplate>? launchTemplates;
  @override
  final String? nextToken;

  factory _$DescribeLaunchTemplatesResult(
          [void Function(DescribeLaunchTemplatesResultBuilder)? updates]) =>
      (new DescribeLaunchTemplatesResultBuilder()..update(updates))._build();

  _$DescribeLaunchTemplatesResult._({this.launchTemplates, this.nextToken})
      : super._();

  @override
  DescribeLaunchTemplatesResult rebuild(
          void Function(DescribeLaunchTemplatesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLaunchTemplatesResultBuilder toBuilder() =>
      new DescribeLaunchTemplatesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLaunchTemplatesResult &&
        launchTemplates == other.launchTemplates &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplates.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLaunchTemplatesResultBuilder
    implements
        Builder<DescribeLaunchTemplatesResult,
            DescribeLaunchTemplatesResultBuilder> {
  _$DescribeLaunchTemplatesResult? _$v;

  _i2.ListBuilder<LaunchTemplate>? _launchTemplates;
  _i2.ListBuilder<LaunchTemplate> get launchTemplates =>
      _$this._launchTemplates ??= new _i2.ListBuilder<LaunchTemplate>();
  set launchTemplates(_i2.ListBuilder<LaunchTemplate>? launchTemplates) =>
      _$this._launchTemplates = launchTemplates;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLaunchTemplatesResultBuilder();

  DescribeLaunchTemplatesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplates = $v.launchTemplates?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLaunchTemplatesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLaunchTemplatesResult;
  }

  @override
  void update(void Function(DescribeLaunchTemplatesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLaunchTemplatesResult build() => _build();

  _$DescribeLaunchTemplatesResult _build() {
    _$DescribeLaunchTemplatesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeLaunchTemplatesResult._(
              launchTemplates: _launchTemplates?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplates';
        _launchTemplates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLaunchTemplatesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
