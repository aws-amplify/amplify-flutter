// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_attributes_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAttributesOutput extends GetObjectAttributesOutput {
  @override
  final _i3.Checksum? checksum;
  @override
  final bool? deleteMarker;
  @override
  final String? eTag;
  @override
  final DateTime? lastModified;
  @override
  final _i4.GetObjectAttributesParts? objectParts;
  @override
  final _i5.Int64? objectSize;
  @override
  final _i6.RequestCharged? requestCharged;
  @override
  final _i7.StorageClass? storageClass;
  @override
  final String? versionId;

  factory _$GetObjectAttributesOutput(
          [void Function(GetObjectAttributesOutputBuilder)? updates]) =>
      (new GetObjectAttributesOutputBuilder()..update(updates))._build();

  _$GetObjectAttributesOutput._(
      {this.checksum,
      this.deleteMarker,
      this.eTag,
      this.lastModified,
      this.objectParts,
      this.objectSize,
      this.requestCharged,
      this.storageClass,
      this.versionId})
      : super._();

  @override
  GetObjectAttributesOutput rebuild(
          void Function(GetObjectAttributesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAttributesOutputBuilder toBuilder() =>
      new GetObjectAttributesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAttributesOutput &&
        checksum == other.checksum &&
        deleteMarker == other.deleteMarker &&
        eTag == other.eTag &&
        lastModified == other.lastModified &&
        objectParts == other.objectParts &&
        objectSize == other.objectSize &&
        requestCharged == other.requestCharged &&
        storageClass == other.storageClass &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, checksum.hashCode),
                                    deleteMarker.hashCode),
                                eTag.hashCode),
                            lastModified.hashCode),
                        objectParts.hashCode),
                    objectSize.hashCode),
                requestCharged.hashCode),
            storageClass.hashCode),
        versionId.hashCode));
  }
}

class GetObjectAttributesOutputBuilder
    implements
        Builder<GetObjectAttributesOutput, GetObjectAttributesOutputBuilder> {
  _$GetObjectAttributesOutput? _$v;

  _i3.ChecksumBuilder? _checksum;
  _i3.ChecksumBuilder get checksum =>
      _$this._checksum ??= new _i3.ChecksumBuilder();
  set checksum(_i3.ChecksumBuilder? checksum) => _$this._checksum = checksum;

  bool? _deleteMarker;
  bool? get deleteMarker => _$this._deleteMarker;
  set deleteMarker(bool? deleteMarker) => _$this._deleteMarker = deleteMarker;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  _i4.GetObjectAttributesPartsBuilder? _objectParts;
  _i4.GetObjectAttributesPartsBuilder get objectParts =>
      _$this._objectParts ??= new _i4.GetObjectAttributesPartsBuilder();
  set objectParts(_i4.GetObjectAttributesPartsBuilder? objectParts) =>
      _$this._objectParts = objectParts;

  _i5.Int64? _objectSize;
  _i5.Int64? get objectSize => _$this._objectSize;
  set objectSize(_i5.Int64? objectSize) => _$this._objectSize = objectSize;

  _i6.RequestCharged? _requestCharged;
  _i6.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i6.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i7.StorageClass? _storageClass;
  _i7.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i7.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  GetObjectAttributesOutputBuilder() {
    GetObjectAttributesOutput._init(this);
  }

  GetObjectAttributesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksum = $v.checksum?.toBuilder();
      _deleteMarker = $v.deleteMarker;
      _eTag = $v.eTag;
      _lastModified = $v.lastModified;
      _objectParts = $v.objectParts?.toBuilder();
      _objectSize = $v.objectSize;
      _requestCharged = $v.requestCharged;
      _storageClass = $v.storageClass;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectAttributesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAttributesOutput;
  }

  @override
  void update(void Function(GetObjectAttributesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAttributesOutput build() => _build();

  _$GetObjectAttributesOutput _build() {
    _$GetObjectAttributesOutput _$result;
    try {
      _$result = _$v ??
          new _$GetObjectAttributesOutput._(
              checksum: _checksum?.build(),
              deleteMarker: deleteMarker,
              eTag: eTag,
              lastModified: lastModified,
              objectParts: _objectParts?.build(),
              objectSize: objectSize,
              requestCharged: requestCharged,
              storageClass: storageClass,
              versionId: versionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checksum';
        _checksum?.build();

        _$failedField = 'objectParts';
        _objectParts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectAttributesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectAttributesOutputPayload
    extends GetObjectAttributesOutputPayload {
  @override
  final _i3.Checksum? checksum;
  @override
  final String? eTag;
  @override
  final _i4.GetObjectAttributesParts? objectParts;
  @override
  final _i5.Int64? objectSize;
  @override
  final _i7.StorageClass? storageClass;

  factory _$GetObjectAttributesOutputPayload(
          [void Function(GetObjectAttributesOutputPayloadBuilder)? updates]) =>
      (new GetObjectAttributesOutputPayloadBuilder()..update(updates))._build();

  _$GetObjectAttributesOutputPayload._(
      {this.checksum,
      this.eTag,
      this.objectParts,
      this.objectSize,
      this.storageClass})
      : super._();

  @override
  GetObjectAttributesOutputPayload rebuild(
          void Function(GetObjectAttributesOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAttributesOutputPayloadBuilder toBuilder() =>
      new GetObjectAttributesOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAttributesOutputPayload &&
        checksum == other.checksum &&
        eTag == other.eTag &&
        objectParts == other.objectParts &&
        objectSize == other.objectSize &&
        storageClass == other.storageClass;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, checksum.hashCode), eTag.hashCode),
                objectParts.hashCode),
            objectSize.hashCode),
        storageClass.hashCode));
  }
}

class GetObjectAttributesOutputPayloadBuilder
    implements
        Builder<GetObjectAttributesOutputPayload,
            GetObjectAttributesOutputPayloadBuilder> {
  _$GetObjectAttributesOutputPayload? _$v;

  _i3.ChecksumBuilder? _checksum;
  _i3.ChecksumBuilder get checksum =>
      _$this._checksum ??= new _i3.ChecksumBuilder();
  set checksum(_i3.ChecksumBuilder? checksum) => _$this._checksum = checksum;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  _i4.GetObjectAttributesPartsBuilder? _objectParts;
  _i4.GetObjectAttributesPartsBuilder get objectParts =>
      _$this._objectParts ??= new _i4.GetObjectAttributesPartsBuilder();
  set objectParts(_i4.GetObjectAttributesPartsBuilder? objectParts) =>
      _$this._objectParts = objectParts;

  _i5.Int64? _objectSize;
  _i5.Int64? get objectSize => _$this._objectSize;
  set objectSize(_i5.Int64? objectSize) => _$this._objectSize = objectSize;

  _i7.StorageClass? _storageClass;
  _i7.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i7.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  GetObjectAttributesOutputPayloadBuilder() {
    GetObjectAttributesOutputPayload._init(this);
  }

  GetObjectAttributesOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksum = $v.checksum?.toBuilder();
      _eTag = $v.eTag;
      _objectParts = $v.objectParts?.toBuilder();
      _objectSize = $v.objectSize;
      _storageClass = $v.storageClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectAttributesOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAttributesOutputPayload;
  }

  @override
  void update(void Function(GetObjectAttributesOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAttributesOutputPayload build() => _build();

  _$GetObjectAttributesOutputPayload _build() {
    _$GetObjectAttributesOutputPayload _$result;
    try {
      _$result = _$v ??
          new _$GetObjectAttributesOutputPayload._(
              checksum: _checksum?.build(),
              eTag: eTag,
              objectParts: _objectParts?.build(),
              objectSize: objectSize,
              storageClass: storageClass);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checksum';
        _checksum?.build();

        _$failedField = 'objectParts';
        _objectParts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectAttributesOutputPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
