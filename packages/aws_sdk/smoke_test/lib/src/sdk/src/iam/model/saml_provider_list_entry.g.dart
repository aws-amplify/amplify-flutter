// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.saml_provider_list_entry;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SamlProviderListEntry extends SamlProviderListEntry {
  @override
  final String? arn;
  @override
  final DateTime? validUntil;
  @override
  final DateTime? createDate;

  factory _$SamlProviderListEntry(
          [void Function(SamlProviderListEntryBuilder)? updates]) =>
      (new SamlProviderListEntryBuilder()..update(updates))._build();

  _$SamlProviderListEntry._({this.arn, this.validUntil, this.createDate})
      : super._();

  @override
  SamlProviderListEntry rebuild(
          void Function(SamlProviderListEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SamlProviderListEntryBuilder toBuilder() =>
      new SamlProviderListEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SamlProviderListEntry &&
        arn == other.arn &&
        validUntil == other.validUntil &&
        createDate == other.createDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SamlProviderListEntryBuilder
    implements Builder<SamlProviderListEntry, SamlProviderListEntryBuilder> {
  _$SamlProviderListEntry? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  SamlProviderListEntryBuilder() {
    SamlProviderListEntry._init(this);
  }

  SamlProviderListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _validUntil = $v.validUntil;
      _createDate = $v.createDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SamlProviderListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SamlProviderListEntry;
  }

  @override
  void update(void Function(SamlProviderListEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SamlProviderListEntry build() => _build();

  _$SamlProviderListEntry _build() {
    final _$result = _$v ??
        new _$SamlProviderListEntry._(
            arn: arn, validUntil: validUntil, createDate: createDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
