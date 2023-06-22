// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_remediation_exceptions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRemediationExceptionsRequest
    extends DescribeRemediationExceptionsRequest {
  @override
  final String configRuleName;
  @override
  final _i4.BuiltList<_i3.RemediationExceptionResourceKey>? resourceKeys;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeRemediationExceptionsRequest(
          [void Function(DescribeRemediationExceptionsRequestBuilder)?
              updates]) =>
      (new DescribeRemediationExceptionsRequestBuilder()..update(updates))
          ._build();

  _$DescribeRemediationExceptionsRequest._(
      {required this.configRuleName,
      this.resourceKeys,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'DescribeRemediationExceptionsRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeRemediationExceptionsRequest', 'limit');
  }

  @override
  DescribeRemediationExceptionsRequest rebuild(
          void Function(DescribeRemediationExceptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRemediationExceptionsRequestBuilder toBuilder() =>
      new DescribeRemediationExceptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRemediationExceptionsRequest &&
        configRuleName == other.configRuleName &&
        resourceKeys == other.resourceKeys &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, resourceKeys.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRemediationExceptionsRequestBuilder
    implements
        Builder<DescribeRemediationExceptionsRequest,
            DescribeRemediationExceptionsRequestBuilder> {
  _$DescribeRemediationExceptionsRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i4.ListBuilder<_i3.RemediationExceptionResourceKey>? _resourceKeys;
  _i4.ListBuilder<_i3.RemediationExceptionResourceKey> get resourceKeys =>
      _$this._resourceKeys ??=
          new _i4.ListBuilder<_i3.RemediationExceptionResourceKey>();
  set resourceKeys(
          _i4.ListBuilder<_i3.RemediationExceptionResourceKey>? resourceKeys) =>
      _$this._resourceKeys = resourceKeys;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeRemediationExceptionsRequestBuilder() {
    DescribeRemediationExceptionsRequest._init(this);
  }

  DescribeRemediationExceptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _resourceKeys = $v.resourceKeys?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRemediationExceptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRemediationExceptionsRequest;
  }

  @override
  void update(
      void Function(DescribeRemediationExceptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRemediationExceptionsRequest build() => _build();

  _$DescribeRemediationExceptionsRequest _build() {
    _$DescribeRemediationExceptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeRemediationExceptionsRequest._(
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'DescribeRemediationExceptionsRequest',
                  'configRuleName'),
              resourceKeys: _resourceKeys?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'DescribeRemediationExceptionsRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceKeys';
        _resourceKeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRemediationExceptionsRequest',
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
