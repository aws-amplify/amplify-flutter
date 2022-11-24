// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_resource_config_history_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourceConfigHistoryResponse
    extends GetResourceConfigHistoryResponse {
  @override
  final _i3.BuiltList<_i2.ConfigurationItem>? configurationItems;
  @override
  final String? nextToken;

  factory _$GetResourceConfigHistoryResponse(
          [void Function(GetResourceConfigHistoryResponseBuilder)? updates]) =>
      (new GetResourceConfigHistoryResponseBuilder()..update(updates))._build();

  _$GetResourceConfigHistoryResponse._(
      {this.configurationItems, this.nextToken})
      : super._();

  @override
  GetResourceConfigHistoryResponse rebuild(
          void Function(GetResourceConfigHistoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourceConfigHistoryResponseBuilder toBuilder() =>
      new GetResourceConfigHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourceConfigHistoryResponse &&
        configurationItems == other.configurationItems &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, configurationItems.hashCode), nextToken.hashCode));
  }
}

class GetResourceConfigHistoryResponseBuilder
    implements
        Builder<GetResourceConfigHistoryResponse,
            GetResourceConfigHistoryResponseBuilder> {
  _$GetResourceConfigHistoryResponse? _$v;

  _i3.ListBuilder<_i2.ConfigurationItem>? _configurationItems;
  _i3.ListBuilder<_i2.ConfigurationItem> get configurationItems =>
      _$this._configurationItems ??=
          new _i3.ListBuilder<_i2.ConfigurationItem>();
  set configurationItems(
          _i3.ListBuilder<_i2.ConfigurationItem>? configurationItems) =>
      _$this._configurationItems = configurationItems;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetResourceConfigHistoryResponseBuilder() {
    GetResourceConfigHistoryResponse._init(this);
  }

  GetResourceConfigHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationItems = $v.configurationItems?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetResourceConfigHistoryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourceConfigHistoryResponse;
  }

  @override
  void update(void Function(GetResourceConfigHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourceConfigHistoryResponse build() => _build();

  _$GetResourceConfigHistoryResponse _build() {
    _$GetResourceConfigHistoryResponse _$result;
    try {
      _$result = _$v ??
          new _$GetResourceConfigHistoryResponse._(
              configurationItems: _configurationItems?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationItems';
        _configurationItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetResourceConfigHistoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
