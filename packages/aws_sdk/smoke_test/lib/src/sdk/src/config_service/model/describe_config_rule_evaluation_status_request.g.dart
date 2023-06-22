// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_config_rule_evaluation_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigRuleEvaluationStatusRequest
    extends DescribeConfigRuleEvaluationStatusRequest {
  @override
  final _i3.BuiltList<String>? configRuleNames;
  @override
  final String? nextToken;
  @override
  final int limit;

  factory _$DescribeConfigRuleEvaluationStatusRequest(
          [void Function(DescribeConfigRuleEvaluationStatusRequestBuilder)?
              updates]) =>
      (new DescribeConfigRuleEvaluationStatusRequestBuilder()..update(updates))
          ._build();

  _$DescribeConfigRuleEvaluationStatusRequest._(
      {this.configRuleNames, this.nextToken, required this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeConfigRuleEvaluationStatusRequest', 'limit');
  }

  @override
  DescribeConfigRuleEvaluationStatusRequest rebuild(
          void Function(DescribeConfigRuleEvaluationStatusRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigRuleEvaluationStatusRequestBuilder toBuilder() =>
      new DescribeConfigRuleEvaluationStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigRuleEvaluationStatusRequest &&
        configRuleNames == other.configRuleNames &&
        nextToken == other.nextToken &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConfigRuleEvaluationStatusRequestBuilder
    implements
        Builder<DescribeConfigRuleEvaluationStatusRequest,
            DescribeConfigRuleEvaluationStatusRequestBuilder> {
  _$DescribeConfigRuleEvaluationStatusRequest? _$v;

  _i3.ListBuilder<String>? _configRuleNames;
  _i3.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i3.ListBuilder<String>();
  set configRuleNames(_i3.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  DescribeConfigRuleEvaluationStatusRequestBuilder() {
    DescribeConfigRuleEvaluationStatusRequest._init(this);
  }

  DescribeConfigRuleEvaluationStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _nextToken = $v.nextToken;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigRuleEvaluationStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigRuleEvaluationStatusRequest;
  }

  @override
  void update(
      void Function(DescribeConfigRuleEvaluationStatusRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigRuleEvaluationStatusRequest build() => _build();

  _$DescribeConfigRuleEvaluationStatusRequest _build() {
    _$DescribeConfigRuleEvaluationStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigRuleEvaluationStatusRequest._(
              configRuleNames: _configRuleNames?.build(),
              nextToken: nextToken,
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'DescribeConfigRuleEvaluationStatusRequest', 'limit'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRuleNames';
        _configRuleNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigRuleEvaluationStatusRequest',
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
