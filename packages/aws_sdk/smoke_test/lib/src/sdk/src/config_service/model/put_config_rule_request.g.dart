// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_config_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConfigRuleRequest extends PutConfigRuleRequest {
  @override
  final _i3.ConfigRule configRule;
  @override
  final _i5.BuiltList<_i4.Tag>? tags;

  factory _$PutConfigRuleRequest(
          [void Function(PutConfigRuleRequestBuilder)? updates]) =>
      (new PutConfigRuleRequestBuilder()..update(updates))._build();

  _$PutConfigRuleRequest._({required this.configRule, this.tags}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRule, r'PutConfigRuleRequest', 'configRule');
  }

  @override
  PutConfigRuleRequest rebuild(
          void Function(PutConfigRuleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutConfigRuleRequestBuilder toBuilder() =>
      new PutConfigRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutConfigRuleRequest &&
        configRule == other.configRule &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, configRule.hashCode), tags.hashCode));
  }
}

class PutConfigRuleRequestBuilder
    implements Builder<PutConfigRuleRequest, PutConfigRuleRequestBuilder> {
  _$PutConfigRuleRequest? _$v;

  _i3.ConfigRuleBuilder? _configRule;
  _i3.ConfigRuleBuilder get configRule =>
      _$this._configRule ??= new _i3.ConfigRuleBuilder();
  set configRule(_i3.ConfigRuleBuilder? configRule) =>
      _$this._configRule = configRule;

  _i5.ListBuilder<_i4.Tag>? _tags;
  _i5.ListBuilder<_i4.Tag> get tags =>
      _$this._tags ??= new _i5.ListBuilder<_i4.Tag>();
  set tags(_i5.ListBuilder<_i4.Tag>? tags) => _$this._tags = tags;

  PutConfigRuleRequestBuilder() {
    PutConfigRuleRequest._init(this);
  }

  PutConfigRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRule = $v.configRule.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutConfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutConfigRuleRequest;
  }

  @override
  void update(void Function(PutConfigRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutConfigRuleRequest build() => _build();

  _$PutConfigRuleRequest _build() {
    _$PutConfigRuleRequest _$result;
    try {
      _$result = _$v ??
          new _$PutConfigRuleRequest._(
              configRule: configRule.build(), tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRule';
        configRule.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutConfigRuleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
