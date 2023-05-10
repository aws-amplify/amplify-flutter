// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_attributes_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAttributesOutput extends GetObjectAttributesOutput {
  @override
  final bool? deleteMarker;
  @override
  final DateTime? lastModified;
  @override
  final String? versionId;
  @override
  final _i3.RequestCharged? requestCharged;
  @override
  final String? eTag;
  @override
  final _i4.Checksum? checksum;
  @override
  final _i5.GetObjectAttributesParts? objectParts;
  @override
  final _i6.StorageClass? storageClass;
  @override
  final _i7.Int64? objectSize;

  factory _$GetObjectAttributesOutput(
          [void Function(GetObjectAttributesOutputBuilder)? updates]) =>
      (new GetObjectAttributesOutputBuilder()..update(updates))._build();

  _$GetObjectAttributesOutput._(
      {this.deleteMarker,
      this.lastModified,
      this.versionId,
      this.requestCharged,
      this.eTag,
      this.checksum,
      this.objectParts,
      this.storageClass,
      this.objectSize})
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
        deleteMarker == other.deleteMarker &&
        lastModified == other.lastModified &&
        versionId == other.versionId &&
        requestCharged == other.requestCharged &&
        eTag == other.eTag &&
        checksum == other.checksum &&
        objectParts == other.objectParts &&
        storageClass == other.storageClass &&
        objectSize == other.objectSize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteMarker.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, objectParts.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, objectSize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectAttributesOutputBuilder
    implements
        Builder<GetObjectAttributesOutput, GetObjectAttributesOutputBuilder> {
  _$GetObjectAttributesOutput? _$v;

  bool? _deleteMarker;
  bool? get deleteMarker => _$this._deleteMarker;
  set deleteMarker(bool? deleteMarker) => _$this._deleteMarker = deleteMarker;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  _i4.ChecksumBuilder? _checksum;
  _i4.ChecksumBuilder get checksum =>
      _$this._checksum ??= new _i4.ChecksumBuilder();
  set checksum(_i4.ChecksumBuilder? checksum) => _$this._checksum = checksum;

  _i5.GetObjectAttributesPartsBuilder? _objectParts;
  _i5.GetObjectAttributesPartsBuilder get objectParts =>
      _$this._objectParts ??= new _i5.GetObjectAttributesPartsBuilder();
  set objectParts(_i5.GetObjectAttributesPartsBuilder? objectParts) =>
      _$this._objectParts = objectParts;

  _i6.StorageClass? _storageClass;
  _i6.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i6.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  _i7.Int64? _objectSize;
  _i7.Int64? get objectSize => _$this._objectSize;
  set objectSize(_i7.Int64? objectSize) => _$this._objectSize = objectSize;

  GetObjectAttributesOutputBuilder() {
    GetObjectAttributesOutput._init(this);
  }

  GetObjectAttributesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteMarker = $v.deleteMarker;
      _lastModified = $v.lastModified;
      _versionId = $v.versionId;
      _requestCharged = $v.requestCharged;
      _eTag = $v.eTag;
      _checksum = $v.checksum?.toBuilder();
      _objectParts = $v.objectParts?.toBuilder();
      _storageClass = $v.storageClass;
      _objectSize = $v.objectSize;
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
              deleteMarker: deleteMarker,
              lastModified: lastModified,
              versionId: versionId,
              requestCharged: requestCharged,
              eTag: eTag,
              checksum: _checksum?.build(),
              objectParts: _objectParts?.build(),
              storageClass: storageClass,
              objectSize: objectSize);
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
  final _i4.Checksum? checksum;
  @override
  final String? eTag;
  @override
  final _i5.GetObjectAttributesParts? objectParts;
  @override
  final _i7.Int64? objectSize;
  @override
  final _i6.StorageClass? storageClass;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, objectParts.hashCode);
    _$hash = $jc(_$hash, objectSize.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectAttributesOutputPayloadBuilder
    implements
        Builder<GetObjectAttributesOutputPayload,
            GetObjectAttributesOutputPayloadBuilder> {
  _$GetObjectAttributesOutputPayload? _$v;

  _i4.ChecksumBuilder? _checksum;
  _i4.ChecksumBuilder get checksum =>
      _$this._checksum ??= new _i4.ChecksumBuilder();
  set checksum(_i4.ChecksumBuilder? checksum) => _$this._checksum = checksum;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  _i5.GetObjectAttributesPartsBuilder? _objectParts;
  _i5.GetObjectAttributesPartsBuilder get objectParts =>
      _$this._objectParts ??= new _i5.GetObjectAttributesPartsBuilder();
  set objectParts(_i5.GetObjectAttributesPartsBuilder? objectParts) =>
      _$this._objectParts = objectParts;

  _i7.Int64? _objectSize;
  _i7.Int64? get objectSize => _$this._objectSize;
  set objectSize(_i7.Int64? objectSize) => _$this._objectSize = objectSize;

  _i6.StorageClass? _storageClass;
  _i6.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i6.StorageClass? storageClass) =>
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
