// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_parts_output;

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
  final _i3.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i4.Initiator? initiator;
  @override
  final bool? isTruncated;
  @override
  final String? key;
  @override
  final int? maxParts;
  @override
  final String? nextPartNumberMarker;
  @override
  final _i5.Owner? owner;
  @override
  final String? partNumberMarker;
  @override
  final _i9.BuiltList<_i6.Part>? parts;
  @override
  final _i7.RequestCharged? requestCharged;
  @override
  final _i8.StorageClass? storageClass;
  @override
  final String? uploadId;

  factory _$ListPartsOutput([void Function(ListPartsOutputBuilder)? updates]) =>
      (new ListPartsOutputBuilder()..update(updates))._build();

  _$ListPartsOutput._(
      {this.abortDate,
      this.abortRuleId,
      this.bucket,
      this.checksumAlgorithm,
      this.initiator,
      this.isTruncated,
      this.key,
      this.maxParts,
      this.nextPartNumberMarker,
      this.owner,
      this.partNumberMarker,
      this.parts,
      this.requestCharged,
      this.storageClass,
      this.uploadId})
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
        checksumAlgorithm == other.checksumAlgorithm &&
        initiator == other.initiator &&
        isTruncated == other.isTruncated &&
        key == other.key &&
        maxParts == other.maxParts &&
        nextPartNumberMarker == other.nextPartNumberMarker &&
        owner == other.owner &&
        partNumberMarker == other.partNumberMarker &&
        parts == other.parts &&
        requestCharged == other.requestCharged &&
        storageClass == other.storageClass &&
        uploadId == other.uploadId;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                abortDate
                                                                    .hashCode),
                                                            abortRuleId
                                                                .hashCode),
                                                        bucket.hashCode),
                                                    checksumAlgorithm.hashCode),
                                                initiator.hashCode),
                                            isTruncated.hashCode),
                                        key.hashCode),
                                    maxParts.hashCode),
                                nextPartNumberMarker.hashCode),
                            owner.hashCode),
                        partNumberMarker.hashCode),
                    parts.hashCode),
                requestCharged.hashCode),
            storageClass.hashCode),
        uploadId.hashCode));
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

  _i3.ChecksumAlgorithm? _checksumAlgorithm;
  _i3.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i3.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i4.InitiatorBuilder? _initiator;
  _i4.InitiatorBuilder get initiator =>
      _$this._initiator ??= new _i4.InitiatorBuilder();
  set initiator(_i4.InitiatorBuilder? initiator) =>
      _$this._initiator = initiator;

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

  _i5.OwnerBuilder? _owner;
  _i5.OwnerBuilder get owner => _$this._owner ??= new _i5.OwnerBuilder();
  set owner(_i5.OwnerBuilder? owner) => _$this._owner = owner;

  String? _partNumberMarker;
  String? get partNumberMarker => _$this._partNumberMarker;
  set partNumberMarker(String? partNumberMarker) =>
      _$this._partNumberMarker = partNumberMarker;

  _i9.ListBuilder<_i6.Part>? _parts;
  _i9.ListBuilder<_i6.Part> get parts =>
      _$this._parts ??= new _i9.ListBuilder<_i6.Part>();
  set parts(_i9.ListBuilder<_i6.Part>? parts) => _$this._parts = parts;

  _i7.RequestCharged? _requestCharged;
  _i7.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i7.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i8.StorageClass? _storageClass;
  _i8.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i8.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  ListPartsOutputBuilder() {
    ListPartsOutput._init(this);
  }

  ListPartsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _abortDate = $v.abortDate;
      _abortRuleId = $v.abortRuleId;
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
      _requestCharged = $v.requestCharged;
      _storageClass = $v.storageClass;
      _uploadId = $v.uploadId;
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
              checksumAlgorithm: checksumAlgorithm,
              initiator: _initiator?.build(),
              isTruncated: isTruncated,
              key: key,
              maxParts: maxParts,
              nextPartNumberMarker: nextPartNumberMarker,
              owner: _owner?.build(),
              partNumberMarker: partNumberMarker,
              parts: _parts?.build(),
              requestCharged: requestCharged,
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
  final _i3.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i4.Initiator? initiator;
  @override
  final bool? isTruncated;
  @override
  final String? key;
  @override
  final int? maxParts;
  @override
  final String? nextPartNumberMarker;
  @override
  final _i5.Owner? owner;
  @override
  final String? partNumberMarker;
  @override
  final _i9.BuiltList<_i6.Part>? parts;
  @override
  final _i8.StorageClass? storageClass;
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, bucket.hashCode),
                                                checksumAlgorithm.hashCode),
                                            initiator.hashCode),
                                        isTruncated.hashCode),
                                    key.hashCode),
                                maxParts.hashCode),
                            nextPartNumberMarker.hashCode),
                        owner.hashCode),
                    partNumberMarker.hashCode),
                parts.hashCode),
            storageClass.hashCode),
        uploadId.hashCode));
  }
}

class ListPartsOutputPayloadBuilder
    implements Builder<ListPartsOutputPayload, ListPartsOutputPayloadBuilder> {
  _$ListPartsOutputPayload? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i3.ChecksumAlgorithm? _checksumAlgorithm;
  _i3.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i3.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i4.InitiatorBuilder? _initiator;
  _i4.InitiatorBuilder get initiator =>
      _$this._initiator ??= new _i4.InitiatorBuilder();
  set initiator(_i4.InitiatorBuilder? initiator) =>
      _$this._initiator = initiator;

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

  _i5.OwnerBuilder? _owner;
  _i5.OwnerBuilder get owner => _$this._owner ??= new _i5.OwnerBuilder();
  set owner(_i5.OwnerBuilder? owner) => _$this._owner = owner;

  String? _partNumberMarker;
  String? get partNumberMarker => _$this._partNumberMarker;
  set partNumberMarker(String? partNumberMarker) =>
      _$this._partNumberMarker = partNumberMarker;

  _i9.ListBuilder<_i6.Part>? _parts;
  _i9.ListBuilder<_i6.Part> get parts =>
      _$this._parts ??= new _i9.ListBuilder<_i6.Part>();
  set parts(_i9.ListBuilder<_i6.Part>? parts) => _$this._parts = parts;

  _i8.StorageClass? _storageClass;
  _i8.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i8.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  ListPartsOutputPayloadBuilder() {
    ListPartsOutputPayload._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
