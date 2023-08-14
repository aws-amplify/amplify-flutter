// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_types_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTypesInput extends ListTypesInput {
  @override
  final Visibility? visibility;
  @override
  final ProvisioningType? provisioningType;
  @override
  final DeprecatedStatus? deprecatedStatus;
  @override
  final RegistryType? type;
  @override
  final TypeFilters? filters;
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

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  ProvisioningType? _provisioningType;
  ProvisioningType? get provisioningType => _$this._provisioningType;
  set provisioningType(ProvisioningType? provisioningType) =>
      _$this._provisioningType = provisioningType;

  DeprecatedStatus? _deprecatedStatus;
  DeprecatedStatus? get deprecatedStatus => _$this._deprecatedStatus;
  set deprecatedStatus(DeprecatedStatus? deprecatedStatus) =>
      _$this._deprecatedStatus = deprecatedStatus;

  RegistryType? _type;
  RegistryType? get type => _$this._type;
  set type(RegistryType? type) => _$this._type = type;

  TypeFiltersBuilder? _filters;
  TypeFiltersBuilder get filters =>
      _$this._filters ??= new TypeFiltersBuilder();
  set filters(TypeFiltersBuilder? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTypesInputBuilder();

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
