// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_remediation_execution_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRemediationExecutionStatusRequest
    extends DescribeRemediationExecutionStatusRequest {
  @override
  final String configRuleName;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<_i3.ResourceKey>? resourceKeys;

  factory _$DescribeRemediationExecutionStatusRequest(
          [void Function(DescribeRemediationExecutionStatusRequestBuilder)?
              updates]) =>
      (new DescribeRemediationExecutionStatusRequestBuilder()..update(updates))
          ._build();

  _$DescribeRemediationExecutionStatusRequest._(
      {required this.configRuleName,
      this.limit,
      this.nextToken,
      this.resourceKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'DescribeRemediationExecutionStatusRequest', 'configRuleName');
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
        limit == other.limit &&
        nextToken == other.nextToken &&
        resourceKeys == other.resourceKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, resourceKeys.hashCode);
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

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ListBuilder<_i3.ResourceKey>? _resourceKeys;
  _i4.ListBuilder<_i3.ResourceKey> get resourceKeys =>
      _$this._resourceKeys ??= new _i4.ListBuilder<_i3.ResourceKey>();
  set resourceKeys(_i4.ListBuilder<_i3.ResourceKey>? resourceKeys) =>
      _$this._resourceKeys = resourceKeys;

  DescribeRemediationExecutionStatusRequestBuilder() {
    DescribeRemediationExecutionStatusRequest._init(this);
  }

  DescribeRemediationExecutionStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _resourceKeys = $v.resourceKeys?.toBuilder();
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
              limit: limit,
              nextToken: nextToken,
              resourceKeys: _resourceKeys?.build());
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
