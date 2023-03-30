// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_config_rules_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigRulesRequest extends DescribeConfigRulesRequest {
  @override
  final _i3.BuiltList<String>? configRuleNames;
  @override
  final String? nextToken;

  factory _$DescribeConfigRulesRequest(
          [void Function(DescribeConfigRulesRequestBuilder)? updates]) =>
      (new DescribeConfigRulesRequestBuilder()..update(updates))._build();

  _$DescribeConfigRulesRequest._({this.configRuleNames, this.nextToken})
      : super._();

  @override
  DescribeConfigRulesRequest rebuild(
          void Function(DescribeConfigRulesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigRulesRequestBuilder toBuilder() =>
      new DescribeConfigRulesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigRulesRequest &&
        configRuleNames == other.configRuleNames &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConfigRulesRequestBuilder
    implements
        Builder<DescribeConfigRulesRequest, DescribeConfigRulesRequestBuilder> {
  _$DescribeConfigRulesRequest? _$v;

  _i3.ListBuilder<String>? _configRuleNames;
  _i3.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i3.ListBuilder<String>();
  set configRuleNames(_i3.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConfigRulesRequestBuilder() {
    DescribeConfigRulesRequest._init(this);
  }

  DescribeConfigRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigRulesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigRulesRequest;
  }

  @override
  void update(void Function(DescribeConfigRulesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigRulesRequest build() => _build();

  _$DescribeConfigRulesRequest _build() {
    _$DescribeConfigRulesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigRulesRequest._(
              configRuleNames: _configRuleNames?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRuleNames';
        _configRuleNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigRulesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
