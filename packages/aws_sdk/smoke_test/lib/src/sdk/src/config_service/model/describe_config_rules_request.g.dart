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
    return $jf($jc($jc(0, configRuleNames.hashCode), nextToken.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
