// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_log_groups_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLogGroupsRequest extends DescribeLogGroupsRequest {
  @override
  final _i3.BuiltList<String>? accountIdentifiers;
  @override
  final String? logGroupNamePrefix;
  @override
  final String? logGroupNamePattern;
  @override
  final String? nextToken;
  @override
  final int? limit;
  @override
  final bool? includeLinkedAccounts;

  factory _$DescribeLogGroupsRequest(
          [void Function(DescribeLogGroupsRequestBuilder)? updates]) =>
      (new DescribeLogGroupsRequestBuilder()..update(updates))._build();

  _$DescribeLogGroupsRequest._(
      {this.accountIdentifiers,
      this.logGroupNamePrefix,
      this.logGroupNamePattern,
      this.nextToken,
      this.limit,
      this.includeLinkedAccounts})
      : super._();

  @override
  DescribeLogGroupsRequest rebuild(
          void Function(DescribeLogGroupsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLogGroupsRequestBuilder toBuilder() =>
      new DescribeLogGroupsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLogGroupsRequest &&
        accountIdentifiers == other.accountIdentifiers &&
        logGroupNamePrefix == other.logGroupNamePrefix &&
        logGroupNamePattern == other.logGroupNamePattern &&
        nextToken == other.nextToken &&
        limit == other.limit &&
        includeLinkedAccounts == other.includeLinkedAccounts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIdentifiers.hashCode);
    _$hash = $jc(_$hash, logGroupNamePrefix.hashCode);
    _$hash = $jc(_$hash, logGroupNamePattern.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, includeLinkedAccounts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLogGroupsRequestBuilder
    implements
        Builder<DescribeLogGroupsRequest, DescribeLogGroupsRequestBuilder> {
  _$DescribeLogGroupsRequest? _$v;

  _i3.ListBuilder<String>? _accountIdentifiers;
  _i3.ListBuilder<String> get accountIdentifiers =>
      _$this._accountIdentifiers ??= new _i3.ListBuilder<String>();
  set accountIdentifiers(_i3.ListBuilder<String>? accountIdentifiers) =>
      _$this._accountIdentifiers = accountIdentifiers;

  String? _logGroupNamePrefix;
  String? get logGroupNamePrefix => _$this._logGroupNamePrefix;
  set logGroupNamePrefix(String? logGroupNamePrefix) =>
      _$this._logGroupNamePrefix = logGroupNamePrefix;

  String? _logGroupNamePattern;
  String? get logGroupNamePattern => _$this._logGroupNamePattern;
  set logGroupNamePattern(String? logGroupNamePattern) =>
      _$this._logGroupNamePattern = logGroupNamePattern;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  bool? _includeLinkedAccounts;
  bool? get includeLinkedAccounts => _$this._includeLinkedAccounts;
  set includeLinkedAccounts(bool? includeLinkedAccounts) =>
      _$this._includeLinkedAccounts = includeLinkedAccounts;

  DescribeLogGroupsRequestBuilder() {
    DescribeLogGroupsRequest._init(this);
  }

  DescribeLogGroupsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIdentifiers = $v.accountIdentifiers?.toBuilder();
      _logGroupNamePrefix = $v.logGroupNamePrefix;
      _logGroupNamePattern = $v.logGroupNamePattern;
      _nextToken = $v.nextToken;
      _limit = $v.limit;
      _includeLinkedAccounts = $v.includeLinkedAccounts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLogGroupsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLogGroupsRequest;
  }

  @override
  void update(void Function(DescribeLogGroupsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLogGroupsRequest build() => _build();

  _$DescribeLogGroupsRequest _build() {
    _$DescribeLogGroupsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeLogGroupsRequest._(
              accountIdentifiers: _accountIdentifiers?.build(),
              logGroupNamePrefix: logGroupNamePrefix,
              logGroupNamePattern: logGroupNamePattern,
              nextToken: nextToken,
              limit: limit,
              includeLinkedAccounts: includeLinkedAccounts);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountIdentifiers';
        _accountIdentifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLogGroupsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
