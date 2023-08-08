// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_remediation_execution_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRemediationExecutionStatusRequest
    extends DescribeRemediationExecutionStatusRequest {
  @override
  final String configRuleName;
  @override
  final _i4.BuiltList<_i3.ResourceKey>? resourceKeys;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeRemediationExecutionStatusRequest(
          [void Function(DescribeRemediationExecutionStatusRequestBuilder)?
              updates]) =>
      (new DescribeRemediationExecutionStatusRequestBuilder()..update(updates))
          ._build();

  _$DescribeRemediationExecutionStatusRequest._(
      {required this.configRuleName,
      this.resourceKeys,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'DescribeRemediationExecutionStatusRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeRemediationExecutionStatusRequest', 'limit');
  }

  @override
  DescribeRemediationExecutionStatusRequest rebuild(
          void Function(DescribeRemediationExecutionStatusRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRemediationExecutionStatusRequestBuilder toBuilder() =>
      new DescribeRemediationExecutionStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRemediationExecutionStatusRequest &&
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

class DescribeRemediationExecutionStatusRequestBuilder
    implements
        Builder<DescribeRemediationExecutionStatusRequest,
            DescribeRemediationExecutionStatusRequestBuilder> {
  _$DescribeRemediationExecutionStatusRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i4.ListBuilder<_i3.ResourceKey>? _resourceKeys;
  _i4.ListBuilder<_i3.ResourceKey> get resourceKeys =>
      _$this._resourceKeys ??= new _i4.ListBuilder<_i3.ResourceKey>();
  set resourceKeys(_i4.ListBuilder<_i3.ResourceKey>? resourceKeys) =>
      _$this._resourceKeys = resourceKeys;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeRemediationExecutionStatusRequestBuilder() {
    DescribeRemediationExecutionStatusRequest._init(this);
  }

  DescribeRemediationExecutionStatusRequestBuilder get _$this {
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
  void replace(DescribeRemediationExecutionStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRemediationExecutionStatusRequest;
  }

  @override
  void update(
      void Function(DescribeRemediationExecutionStatusRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRemediationExecutionStatusRequest build() => _build();

  _$DescribeRemediationExecutionStatusRequest _build() {
    _$DescribeRemediationExecutionStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeRemediationExecutionStatusRequest._(
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'DescribeRemediationExecutionStatusRequest',
                  'configRuleName'),
              resourceKeys: _resourceKeys?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'DescribeRemediationExecutionStatusRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceKeys';
        _resourceKeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRemediationExecutionStatusRequest',
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
