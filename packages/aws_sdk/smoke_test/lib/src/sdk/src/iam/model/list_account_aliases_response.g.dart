// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_account_aliases_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAccountAliasesResponse extends ListAccountAliasesResponse {
  @override
  final _i2.BuiltList<String> accountAliases;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListAccountAliasesResponse(
          [void Function(ListAccountAliasesResponseBuilder)? updates]) =>
      (new ListAccountAliasesResponseBuilder()..update(updates))._build();

  _$ListAccountAliasesResponse._(
      {required this.accountAliases, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountAliases, r'ListAccountAliasesResponse', 'accountAliases');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListAccountAliasesResponse', 'isTruncated');
  }

  @override
  ListAccountAliasesResponse rebuild(
          void Function(ListAccountAliasesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAccountAliasesResponseBuilder toBuilder() =>
      new ListAccountAliasesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAccountAliasesResponse &&
        accountAliases == other.accountAliases &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountAliases.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListAccountAliasesResponseBuilder
    implements
        Builder<ListAccountAliasesResponse, ListAccountAliasesResponseBuilder> {
  _$ListAccountAliasesResponse? _$v;

  _i2.ListBuilder<String>? _accountAliases;
  _i2.ListBuilder<String> get accountAliases =>
      _$this._accountAliases ??= new _i2.ListBuilder<String>();
  set accountAliases(_i2.ListBuilder<String>? accountAliases) =>
      _$this._accountAliases = accountAliases;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListAccountAliasesResponseBuilder() {
    ListAccountAliasesResponse._init(this);
  }

  ListAccountAliasesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountAliases = $v.accountAliases.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAccountAliasesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAccountAliasesResponse;
  }

  @override
  void update(void Function(ListAccountAliasesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAccountAliasesResponse build() => _build();

  _$ListAccountAliasesResponse _build() {
    _$ListAccountAliasesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListAccountAliasesResponse._(
              accountAliases: accountAliases.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListAccountAliasesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountAliases';
        accountAliases.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListAccountAliasesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
