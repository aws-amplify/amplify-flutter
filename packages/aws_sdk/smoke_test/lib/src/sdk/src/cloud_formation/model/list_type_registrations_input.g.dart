// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_type_registrations_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTypeRegistrationsInput extends ListTypeRegistrationsInput {
  @override
  final _i3.RegistryType? type;
  @override
  final String? typeName;
  @override
  final String? typeArn;
  @override
  final _i4.RegistrationStatus? registrationStatusFilter;
  @override
  final int? maxResults;
  @override
  final String? nextToken;

  factory _$ListTypeRegistrationsInput(
          [void Function(ListTypeRegistrationsInputBuilder)? updates]) =>
      (new ListTypeRegistrationsInputBuilder()..update(updates))._build();

  _$ListTypeRegistrationsInput._(
      {this.type,
      this.typeName,
      this.typeArn,
      this.registrationStatusFilter,
      this.maxResults,
      this.nextToken})
      : super._();

  @override
  ListTypeRegistrationsInput rebuild(
          void Function(ListTypeRegistrationsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTypeRegistrationsInputBuilder toBuilder() =>
      new ListTypeRegistrationsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTypeRegistrationsInput &&
        type == other.type &&
        typeName == other.typeName &&
        typeArn == other.typeArn &&
        registrationStatusFilter == other.registrationStatusFilter &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, typeArn.hashCode);
    _$hash = $jc(_$hash, registrationStatusFilter.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTypeRegistrationsInputBuilder
    implements
        Builder<ListTypeRegistrationsInput, ListTypeRegistrationsInputBuilder> {
  _$ListTypeRegistrationsInput? _$v;

  _i3.RegistryType? _type;
  _i3.RegistryType? get type => _$this._type;
  set type(_i3.RegistryType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _typeArn;
  String? get typeArn => _$this._typeArn;
  set typeArn(String? typeArn) => _$this._typeArn = typeArn;

  _i4.RegistrationStatus? _registrationStatusFilter;
  _i4.RegistrationStatus? get registrationStatusFilter =>
      _$this._registrationStatusFilter;
  set registrationStatusFilter(
          _i4.RegistrationStatus? registrationStatusFilter) =>
      _$this._registrationStatusFilter = registrationStatusFilter;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTypeRegistrationsInputBuilder() {
    ListTypeRegistrationsInput._init(this);
  }

  ListTypeRegistrationsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeName = $v.typeName;
      _typeArn = $v.typeArn;
      _registrationStatusFilter = $v.registrationStatusFilter;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTypeRegistrationsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTypeRegistrationsInput;
  }

  @override
  void update(void Function(ListTypeRegistrationsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTypeRegistrationsInput build() => _build();

  _$ListTypeRegistrationsInput _build() {
    final _$result = _$v ??
        new _$ListTypeRegistrationsInput._(
            type: type,
            typeName: typeName,
            typeArn: typeArn,
            registrationStatusFilter: registrationStatusFilter,
            maxResults: maxResults,
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
