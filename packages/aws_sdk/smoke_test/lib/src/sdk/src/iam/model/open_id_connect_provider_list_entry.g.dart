// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.open_id_connect_provider_list_entry;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OpenIdConnectProviderListEntry extends OpenIdConnectProviderListEntry {
  @override
  final String? arn;

  factory _$OpenIdConnectProviderListEntry(
          [void Function(OpenIdConnectProviderListEntryBuilder)? updates]) =>
      (new OpenIdConnectProviderListEntryBuilder()..update(updates))._build();

  _$OpenIdConnectProviderListEntry._({this.arn}) : super._();

  @override
  OpenIdConnectProviderListEntry rebuild(
          void Function(OpenIdConnectProviderListEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OpenIdConnectProviderListEntryBuilder toBuilder() =>
      new OpenIdConnectProviderListEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpenIdConnectProviderListEntry && arn == other.arn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OpenIdConnectProviderListEntryBuilder
    implements
        Builder<OpenIdConnectProviderListEntry,
            OpenIdConnectProviderListEntryBuilder> {
  _$OpenIdConnectProviderListEntry? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  OpenIdConnectProviderListEntryBuilder() {
    OpenIdConnectProviderListEntry._init(this);
  }

  OpenIdConnectProviderListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OpenIdConnectProviderListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OpenIdConnectProviderListEntry;
  }

  @override
  void update(void Function(OpenIdConnectProviderListEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OpenIdConnectProviderListEntry build() => _build();

  _$OpenIdConnectProviderListEntry _build() {
    final _$result = _$v ?? new _$OpenIdConnectProviderListEntry._(arn: arn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
