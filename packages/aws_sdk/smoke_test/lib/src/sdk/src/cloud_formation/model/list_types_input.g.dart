// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_types_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTypesInput extends ListTypesInput {
  @override
  final _i3.Visibility? visibility;
  @override
  final _i4.ProvisioningType? provisioningType;
  @override
  final _i5.DeprecatedStatus? deprecatedStatus;
  @override
  final _i6.RegistryType? type;
  @override
  final _i7.TypeFilters? filters;
  @override
  final int? maxResults;
  @override
  final String? nextToken;

  factory _$ListTypesInput([void Function(ListTypesInputBuilder)? updates]) =>
      (new ListTypesInputBuilder()..update(updates))._build();

  _$ListTypesInput._(
      {this.visibility,
      this.provisioningType,
      this.deprecatedStatus,
      this.type,
      this.filters,
      this.maxResults,
      this.nextToken})
      : super._();

  @override
  ListTypesInput rebuild(void Function(ListTypesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTypesInputBuilder toBuilder() =>
      new ListTypesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTypesInput &&
        visibility == other.visibility &&
        provisioningType == other.provisioningType &&
        deprecatedStatus == other.deprecatedStatus &&
        type == other.type &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, provisioningType.hashCode);
    _$hash = $jc(_$hash, deprecatedStatus.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTypesInputBuilder
    implements Builder<ListTypesInput, ListTypesInputBuilder> {
  _$ListTypesInput? _$v;

  _i3.Visibility? _visibility;
  _i3.Visibility? get visibility => _$this._visibility;
  set visibility(_i3.Visibility? visibility) => _$this._visibility = visibility;

  _i4.ProvisioningType? _provisioningType;
  _i4.ProvisioningType? get provisioningType => _$this._provisioningType;
  set provisioningType(_i4.ProvisioningType? provisioningType) =>
      _$this._provisioningType = provisioningType;

  _i5.DeprecatedStatus? _deprecatedStatus;
  _i5.DeprecatedStatus? get deprecatedStatus => _$this._deprecatedStatus;
  set deprecatedStatus(_i5.DeprecatedStatus? deprecatedStatus) =>
      _$this._deprecatedStatus = deprecatedStatus;

  _i6.RegistryType? _type;
  _i6.RegistryType? get type => _$this._type;
  set type(_i6.RegistryType? type) => _$this._type = type;

  _i7.TypeFiltersBuilder? _filters;
  _i7.TypeFiltersBuilder get filters =>
      _$this._filters ??= new _i7.TypeFiltersBuilder();
  set filters(_i7.TypeFiltersBuilder? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTypesInputBuilder() {
    ListTypesInput._init(this);
  }

  ListTypesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _visibility = $v.visibility;
      _provisioningType = $v.provisioningType;
      _deprecatedStatus = $v.deprecatedStatus;
      _type = $v.type;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTypesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTypesInput;
  }

  @override
  void update(void Function(ListTypesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTypesInput build() => _build();

  _$ListTypesInput _build() {
    _$ListTypesInput _$result;
    try {
      _$result = _$v ??
          new _$ListTypesInput._(
              visibility: visibility,
              provisioningType: provisioningType,
              deprecatedStatus: deprecatedStatus,
              type: type,
              filters: _filters?.build(),
              maxResults: maxResults,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTypesInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
