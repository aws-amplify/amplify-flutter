// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_config_rule_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConfigRuleRequest extends PutConfigRuleRequest {
  @override
  final ConfigRule configRule;
  @override
  final _i3.BuiltList<Tag>? tags;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, configRule.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutConfigRuleRequestBuilder
    implements Builder<PutConfigRuleRequest, PutConfigRuleRequestBuilder> {
  _$PutConfigRuleRequest? _$v;

  ConfigRuleBuilder? _configRule;
  ConfigRuleBuilder get configRule =>
      _$this._configRule ??= new ConfigRuleBuilder();
  set configRule(ConfigRuleBuilder? configRule) =>
      _$this._configRule = configRule;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  PutConfigRuleRequestBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
