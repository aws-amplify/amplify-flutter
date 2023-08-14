// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_instance_logging_configurations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult
    extends DescribeVerifiedAccessInstanceLoggingConfigurationsResult {
  @override
  final _i2.BuiltList<VerifiedAccessInstanceLoggingConfiguration>?
      loggingConfigurations;
  @override
  final String? nextToken;

  factory _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult(
          [void Function(
                  DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult._(
      {this.loggingConfigurations, this.nextToken})
      : super._();

  @override
  DescribeVerifiedAccessInstanceLoggingConfigurationsResult rebuild(
          void Function(
                  DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder
      toBuilder() =>
          new DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessInstanceLoggingConfigurationsResult &&
        loggingConfigurations == other.loggingConfigurations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loggingConfigurations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder
    implements
        Builder<DescribeVerifiedAccessInstanceLoggingConfigurationsResult,
            DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder> {
  _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult? _$v;

  _i2.ListBuilder<VerifiedAccessInstanceLoggingConfiguration>?
      _loggingConfigurations;
  _i2.ListBuilder<VerifiedAccessInstanceLoggingConfiguration>
      get loggingConfigurations => _$this._loggingConfigurations ??=
          new _i2.ListBuilder<VerifiedAccessInstanceLoggingConfiguration>();
  set loggingConfigurations(
          _i2.ListBuilder<VerifiedAccessInstanceLoggingConfiguration>?
              loggingConfigurations) =>
      _$this._loggingConfigurations = loggingConfigurations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder();

  DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loggingConfigurations = $v.loggingConfigurations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      DescribeVerifiedAccessInstanceLoggingConfigurationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult;
  }

  @override
  void update(
      void Function(
              DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessInstanceLoggingConfigurationsResult build() => _build();

  _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult _build() {
    _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult._(
              loggingConfigurations: _loggingConfigurations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loggingConfigurations';
        _loggingConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessInstanceLoggingConfigurationsResult',
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
