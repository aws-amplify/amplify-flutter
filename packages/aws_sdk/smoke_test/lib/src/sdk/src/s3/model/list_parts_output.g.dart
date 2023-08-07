// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_parts_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPartsOutput extends ListPartsOutput {
  @override
  final DateTime? abortDate;
  @override
  final String? abortRuleId;
  @override
  final String? bucket;
  @override
  final String? key;
  @override
  final String? uploadId;
  @override
  final String? partNumberMarker;
  @override
  final String? nextPartNumberMarker;
  @override
  final int? maxParts;
  @override
  final bool? isTruncated;
  @override
  final _i3.BuiltList<Part>? parts;
  @override
  final Initiator? initiator;
  @override
  final Owner? owner;
  @override
  final StorageClass? storageClass;
  @override
  final RequestCharged? requestCharged;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;

  factory _$ListPartsOutput([void Function(ListPartsOutputBuilder)? updates]) =>
      (new ListPartsOutputBuilder()..update(updates))._build();

  _$ListPartsOutput._(
      {this.abortDate,
      this.abortRuleId,
      this.bucket,
      this.key,
      this.uploadId,
      this.partNumberMarker,
      this.nextPartNumberMarker,
      this.maxParts,
      this.isTruncated,
      this.parts,
      this.initiator,
      this.owner,
      this.storageClass,
      this.requestCharged,
      this.checksumAlgorithm})
      : super._();

  @override
  ListPartsOutput rebuild(void Function(ListPartsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPartsOutputBuilder toBuilder() =>
      new ListPartsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPartsOutput &&
        abortDate == other.abortDate &&
        abortRuleId == other.abortRuleId &&
        bucket == other.bucket &&
        key == other.key &&
        uploadId == other.uploadId &&
        partNumberMarker == other.partNumberMarker &&
        nextPartNumberMarker == other.nextPartNumberMarker &&
        maxParts == other.maxParts &&
        isTruncated == other.isTruncated &&
        parts == other.parts &&
        initiator == other.initiator &&
        owner == other.owner &&
        storageClass == other.storageClass &&
        requestCharged == other.requestCharged &&
        checksumAlgorithm == other.checksumAlgorithm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, abortDate.hashCode);
    _$hash = $jc(_$hash, abortRuleId.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, partNumberMarker.hashCode);
    _$hash = $jc(_$hash, nextPartNumberMarker.hashCode);
    _$hash = $jc(_$hash, maxParts.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, parts.hashCode);
    _$hash = $jc(_$hash, initiator.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPartsOutputBuilder
    implements Builder<ListPartsOutput, ListPartsOutputBuilder> {
  _$ListPartsOutput? _$v;

  DateTime? _abortDate;
  DateTime? get abortDate => _$this._abortDate;
  set abortDate(DateTime? abortDate) => _$this._abortDate = abortDate;

  String? _abortRuleId;
  String? get abortRuleId => _$this._abortRuleId;
  set abortRuleId(String? abortRuleId) => _$this._abortRuleId = abortRuleId;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  String? _partNumberMarker;
  String? get partNumberMarker => _$this._partNumberMarker;
  set partNumberMarker(String? partNumberMarker) =>
      _$this._partNumberMarker = partNumberMarker;

  String? _nextPartNumberMarker;
  String? get nextPartNumberMarker => _$this._nextPartNumberMarker;
  set nextPartNumberMarker(String? nextPartNumberMarker) =>
      _$this._nextPartNumberMarker = nextPartNumberMarker;

  int? _maxParts;
  int? get maxParts => _$this._maxParts;
  set maxParts(int? maxParts) => _$this._maxParts = maxParts;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  _i3.ListBuilder<Part>? _parts;
  _i3.ListBuilder<Part> get parts =>
      _$this._parts ??= new _i3.ListBuilder<Part>();
  set parts(_i3.ListBuilder<Part>? parts) => _$this._parts = parts;

  InitiatorBuilder? _initiator;
  InitiatorBuilder get initiator =>
      _$this._initiator ??= new InitiatorBuilder();
  set initiator(InitiatorBuilder? initiator) => _$this._initiator = initiator;

  OwnerBuilder? _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder? owner) => _$this._owner = owner;

  StorageClass? _storageClass;
  StorageClass? get storageClass => _$this._storageClass;
  set storageClass(StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  ListPartsOutputBuilder();

  ListPartsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _abortDate = $v.abortDate;
      _abortRuleId = $v.abortRuleId;
      _bucket = $v.bucket;
      _key = $v.key;
      _uploadId = $v.uploadId;
      _partNumberMarker = $v.partNumberMarker;
      _nextPartNumberMarker = $v.nextPartNumberMarker;
      _maxParts = $v.maxParts;
      _isTruncated = $v.isTruncated;
      _parts = $v.parts?.toBuilder();
      _initiator = $v.initiator?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _storageClass = $v.storageClass;
      _requestCharged = $v.requestCharged;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPartsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPartsOutput;
  }

  @override
  void update(void Function(ListPartsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPartsOutput build() => _build();

  _$ListPartsOutput _build() {
    _$ListPartsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListPartsOutput._(
              abortDate: abortDate,
              abortRuleId: abortRuleId,
              bucket: bucket,
              key: key,
              uploadId: uploadId,
              partNumberMarker: partNumberMarker,
              nextPartNumberMarker: nextPartNumberMarker,
              maxParts: maxParts,
              isTruncated: isTruncated,
              parts: _parts?.build(),
              initiator: _initiator?.build(),
              owner: _owner?.build(),
              storageClass: storageClass,
              requestCharged: requestCharged,
              checksumAlgorithm: checksumAlgorithm);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parts';
        _parts?.build();
        _$failedField = 'initiator';
        _initiator?.build();
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPartsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListPartsOutputPayload extends ListPartsOutputPayload {
  @override
  final String? bucket;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;
  @override
  final Initiator? initiator;
  @override
  final bool? isTruncated;
  @override
  final String? key;
  @override
  final int? maxParts;
  @override
  final String? nextPartNumberMarker;
  @override
  final Owner? owner;
  @override
  final String? partNumberMarker;
  @override
  final _i3.BuiltList<Part>? parts;
  @override
  final StorageClass? storageClass;
  @override
  final String? uploadId;

  factory _$ListPartsOutputPayload(
          [void Function(ListPartsOutputPayloadBuilder)? updates]) =>
      (new ListPartsOutputPayloadBuilder()..update(updates))._build();

  _$ListPartsOutputPayload._(
      {this.bucket,
      this.checksumAlgorithm,
      this.initiator,
      this.isTruncated,
      this.key,
      this.maxParts,
      this.nextPartNumberMarker,
      this.owner,
      this.partNumberMarker,
      this.parts,
      this.storageClass,
      this.uploadId})
      : super._();

  @override
  ListPartsOutputPayload rebuild(
          void Function(ListPartsOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPartsOutputPayloadBuilder toBuilder() =>
      new ListPartsOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPartsOutputPayload &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        initiator == other.initiator &&
        isTruncated == other.isTruncated &&
        key == other.key &&
        maxParts == other.maxParts &&
        nextPartNumberMarker == other.nextPartNumberMarker &&
        owner == other.owner &&
        partNumberMarker == other.partNumberMarker &&
        parts == other.parts &&
        storageClass == other.storageClass &&
        uploadId == other.uploadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, initiator.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, maxParts.hashCode);
    _$hash = $jc(_$hash, nextPartNumberMarker.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, partNumberMarker.hashCode);
    _$hash = $jc(_$hash, parts.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPartsOutputPayloadBuilder
    implements Builder<ListPartsOutputPayload, ListPartsOutputPayloadBuilder> {
  _$ListPartsOutputPayload? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  InitiatorBuilder? _initiator;
  InitiatorBuilder get initiator =>
      _$this._initiator ??= new InitiatorBuilder();
  set initiator(InitiatorBuilder? initiator) => _$this._initiator = initiator;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _maxParts;
  int? get maxParts => _$this._maxParts;
  set maxParts(int? maxParts) => _$this._maxParts = maxParts;

  String? _nextPartNumberMarker;
  String? get nextPartNumberMarker => _$this._nextPartNumberMarker;
  set nextPartNumberMarker(String? nextPartNumberMarker) =>
      _$this._nextPartNumberMarker = nextPartNumberMarker;

  OwnerBuilder? _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder? owner) => _$this._owner = owner;

  String? _partNumberMarker;
  String? get partNumberMarker => _$this._partNumberMarker;
  set partNumberMarker(String? partNumberMarker) =>
      _$this._partNumberMarker = partNumberMarker;

  _i3.ListBuilder<Part>? _parts;
  _i3.ListBuilder<Part> get parts =>
      _$this._parts ??= new _i3.ListBuilder<Part>();
  set parts(_i3.ListBuilder<Part>? parts) => _$this._parts = parts;

  StorageClass? _storageClass;
  StorageClass? get storageClass => _$this._storageClass;
  set storageClass(StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  ListPartsOutputPayloadBuilder();

  ListPartsOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _initiator = $v.initiator?.toBuilder();
      _isTruncated = $v.isTruncated;
      _key = $v.key;
      _maxParts = $v.maxParts;
      _nextPartNumberMarker = $v.nextPartNumberMarker;
      _owner = $v.owner?.toBuilder();
      _partNumberMarker = $v.partNumberMarker;
      _parts = $v.parts?.toBuilder();
      _storageClass = $v.storageClass;
      _uploadId = $v.uploadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPartsOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPartsOutputPayload;
  }

  @override
  void update(void Function(ListPartsOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPartsOutputPayload build() => _build();

  _$ListPartsOutputPayload _build() {
    _$ListPartsOutputPayload _$result;
    try {
      _$result = _$v ??
          new _$ListPartsOutputPayload._(
              bucket: bucket,
              checksumAlgorithm: checksumAlgorithm,
              initiator: _initiator?.build(),
              isTruncated: isTruncated,
              key: key,
              maxParts: maxParts,
              nextPartNumberMarker: nextPartNumberMarker,
              owner: _owner?.build(),
              partNumberMarker: partNumberMarker,
              parts: _parts?.build(),
              storageClass: storageClass,
              uploadId: uploadId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'initiator';
        _initiator?.build();

        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'parts';
        _parts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPartsOutputPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
