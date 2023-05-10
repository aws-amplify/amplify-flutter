// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_type_versions_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTypeVersionsInput extends ListTypeVersionsInput {
  @override
  final _i3.RegistryType? type;
  @override
  final String? typeName;
  @override
  final String? arn;
  @override
  final int? maxResults;
  @override
  final String? nextToken;
  @override
  final _i4.DeprecatedStatus? deprecatedStatus;
  @override
  final String? publisherId;

  factory _$ListTypeVersionsInput(
          [void Function(ListTypeVersionsInputBuilder)? updates]) =>
      (new ListTypeVersionsInputBuilder()..update(updates))._build();

  _$ListTypeVersionsInput._(
      {this.type,
      this.typeName,
      this.arn,
      this.maxResults,
      this.nextToken,
      this.deprecatedStatus,
      this.publisherId})
      : super._();

  @override
  ListTypeVersionsInput rebuild(
          void Function(ListTypeVersionsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTypeVersionsInputBuilder toBuilder() =>
      new ListTypeVersionsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTypeVersionsInput &&
        type == other.type &&
        typeName == other.typeName &&
        arn == other.arn &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        deprecatedStatus == other.deprecatedStatus &&
        publisherId == other.publisherId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, deprecatedStatus.hashCode);
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTypeVersionsInputBuilder
    implements Builder<ListTypeVersionsInput, ListTypeVersionsInputBuilder> {
  _$ListTypeVersionsInput? _$v;

  _i3.RegistryType? _type;
  _i3.RegistryType? get type => _$this._type;
  set type(_i3.RegistryType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.DeprecatedStatus? _deprecatedStatus;
  _i4.DeprecatedStatus? get deprecatedStatus => _$this._deprecatedStatus;
  set deprecatedStatus(_i4.DeprecatedStatus? deprecatedStatus) =>
      _$this._deprecatedStatus = deprecatedStatus;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  ListTypeVersionsInputBuilder() {
    ListTypeVersionsInput._init(this);
  }

  ListTypeVersionsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeName = $v.typeName;
      _arn = $v.arn;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _deprecatedStatus = $v.deprecatedStatus;
      _publisherId = $v.publisherId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTypeVersionsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTypeVersionsInput;
  }

  @override
  void update(void Function(ListTypeVersionsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTypeVersionsInput build() => _build();

  _$ListTypeVersionsInput _build() {
    final _$result = _$v ??
        new _$ListTypeVersionsInput._(
            type: type,
            typeName: typeName,
            arn: arn,
            maxResults: maxResults,
            nextToken: nextToken,
            deprecatedStatus: deprecatedStatus,
            publisherId: publisherId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
