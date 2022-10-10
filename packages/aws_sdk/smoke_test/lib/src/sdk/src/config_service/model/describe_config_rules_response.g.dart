// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_config_rules_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigRulesResponse extends DescribeConfigRulesResponse {
  @override
  final _i3.BuiltList<_i2.ConfigRule>? configRules;
  @override
  final String? nextToken;

  factory _$DescribeConfigRulesResponse(
          [void Function(DescribeConfigRulesResponseBuilder)? updates]) =>
      (new DescribeConfigRulesResponseBuilder()..update(updates))._build();

  _$DescribeConfigRulesResponse._({this.configRules, this.nextToken})
      : super._();

  @override
  DescribeConfigRulesResponse rebuild(
          void Function(DescribeConfigRulesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigRulesResponseBuilder toBuilder() =>
      new DescribeConfigRulesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigRulesResponse &&
        configRules == other.configRules &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, configRules.hashCode), nextToken.hashCode));
  }
}

class DescribeConfigRulesResponseBuilder
    implements
        Builder<DescribeConfigRulesResponse,
            DescribeConfigRulesResponseBuilder> {
  _$DescribeConfigRulesResponse? _$v;

  _i3.ListBuilder<_i2.ConfigRule>? _configRules;
  _i3.ListBuilder<_i2.ConfigRule> get configRules =>
      _$this._configRules ??= new _i3.ListBuilder<_i2.ConfigRule>();
  set configRules(_i3.ListBuilder<_i2.ConfigRule>? configRules) =>
      _$this._configRules = configRules;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConfigRulesResponseBuilder() {
    DescribeConfigRulesResponse._init(this);
  }

  DescribeConfigRulesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRules = $v.configRules?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigRulesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigRulesResponse;
  }

  @override
  void update(void Function(DescribeConfigRulesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigRulesResponse build() => _build();

  _$DescribeConfigRulesResponse _build() {
    _$DescribeConfigRulesResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigRulesResponse._(
              configRules: _configRules?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRules';
        _configRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigRulesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
