// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_config_rules_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigRulesRequest extends DescribeConfigRulesRequest {
  @override
  final _i4.BuiltList<String>? configRuleNames;
  @override
  final String? nextToken;
  @override
  final _i3.DescribeConfigRulesFilters? filters;

  factory _$DescribeConfigRulesRequest(
          [void Function(DescribeConfigRulesRequestBuilder)? updates]) =>
      (new DescribeConfigRulesRequestBuilder()..update(updates))._build();

  _$DescribeConfigRulesRequest._(
      {this.configRuleNames, this.nextToken, this.filters})
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
        nextToken == other.nextToken &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConfigRulesRequestBuilder
    implements
        Builder<DescribeConfigRulesRequest, DescribeConfigRulesRequestBuilder> {
  _$DescribeConfigRulesRequest? _$v;

  _i4.ListBuilder<String>? _configRuleNames;
  _i4.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i4.ListBuilder<String>();
  set configRuleNames(_i4.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.DescribeConfigRulesFiltersBuilder? _filters;
  _i3.DescribeConfigRulesFiltersBuilder get filters =>
      _$this._filters ??= new _i3.DescribeConfigRulesFiltersBuilder();
  set filters(_i3.DescribeConfigRulesFiltersBuilder? filters) =>
      _$this._filters = filters;

  DescribeConfigRulesRequestBuilder() {
    DescribeConfigRulesRequest._init(this);
  }

  DescribeConfigRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
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
              configRuleNames: _configRuleNames?.build(),
              nextToken: nextToken,
              filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRuleNames';
        _configRuleNames?.build();

        _$failedField = 'filters';
        _filters?.build();
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
