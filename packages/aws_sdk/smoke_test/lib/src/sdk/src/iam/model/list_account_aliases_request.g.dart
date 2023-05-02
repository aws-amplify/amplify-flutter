// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_account_aliases_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAccountAliasesRequest extends ListAccountAliasesRequest {
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListAccountAliasesRequest(
          [void Function(ListAccountAliasesRequestBuilder)? updates]) =>
      (new ListAccountAliasesRequestBuilder()..update(updates))._build();

  _$ListAccountAliasesRequest._({this.marker, this.maxItems}) : super._();

  @override
  ListAccountAliasesRequest rebuild(
          void Function(ListAccountAliasesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAccountAliasesRequestBuilder toBuilder() =>
      new ListAccountAliasesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAccountAliasesRequest &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListAccountAliasesRequestBuilder
    implements
        Builder<ListAccountAliasesRequest, ListAccountAliasesRequestBuilder> {
  _$ListAccountAliasesRequest? _$v;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListAccountAliasesRequestBuilder() {
    ListAccountAliasesRequest._init(this);
  }

  ListAccountAliasesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAccountAliasesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAccountAliasesRequest;
  }

  @override
  void update(void Function(ListAccountAliasesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAccountAliasesRequest build() => _build();

  _$ListAccountAliasesRequest _build() {
    final _$result = _$v ??
        new _$ListAccountAliasesRequest._(marker: marker, maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
