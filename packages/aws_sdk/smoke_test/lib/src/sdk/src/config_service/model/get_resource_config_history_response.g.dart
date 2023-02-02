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
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationItems.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
