// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_attributes_parts;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAttributesParts extends GetObjectAttributesParts {
  @override
  final int totalPartsCount;
  @override
  final String? partNumberMarker;
  @override
  final String? nextPartNumberMarker;
  @override
  final int maxParts;
  @override
  final bool isTruncated;
  @override
  final _i3.BuiltList<_i2.ObjectPart>? parts;

  factory _$GetObjectAttributesParts(
          [void Function(GetObjectAttributesPartsBuilder)? updates]) =>
      (new GetObjectAttributesPartsBuilder()..update(updates))._build();

  _$GetObjectAttributesParts._(
      {required this.totalPartsCount,
      this.partNumberMarker,
      this.nextPartNumberMarker,
      required this.maxParts,
      required this.isTruncated,
      this.parts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalPartsCount, r'GetObjectAttributesParts', 'totalPartsCount');
    BuiltValueNullFieldError.checkNotNull(
        maxParts, r'GetObjectAttributesParts', 'maxParts');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'GetObjectAttributesParts', 'isTruncated');
  }

  @override
  GetObjectAttributesParts rebuild(
          void Function(GetObjectAttributesPartsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAttributesPartsBuilder toBuilder() =>
      new GetObjectAttributesPartsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAttributesParts &&
        totalPartsCount == other.totalPartsCount &&
        partNumberMarker == other.partNumberMarker &&
        nextPartNumberMarker == other.nextPartNumberMarker &&
        maxParts == other.maxParts &&
        isTruncated == other.isTruncated &&
        parts == other.parts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalPartsCount.hashCode);
    _$hash = $jc(_$hash, partNumberMarker.hashCode);
    _$hash = $jc(_$hash, nextPartNumberMarker.hashCode);
    _$hash = $jc(_$hash, maxParts.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, parts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectAttributesPartsBuilder
    implements
        Builder<GetObjectAttributesParts, GetObjectAttributesPartsBuilder> {
  _$GetObjectAttributesParts? _$v;

  int? _totalPartsCount;
  int? get totalPartsCount => _$this._totalPartsCount;
  set totalPartsCount(int? totalPartsCount) =>
      _$this._totalPartsCount = totalPartsCount;

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

  _i3.ListBuilder<_i2.ObjectPart>? _parts;
  _i3.ListBuilder<_i2.ObjectPart> get parts =>
      _$this._parts ??= new _i3.ListBuilder<_i2.ObjectPart>();
  set parts(_i3.ListBuilder<_i2.ObjectPart>? parts) => _$this._parts = parts;

  GetObjectAttributesPartsBuilder() {
    GetObjectAttributesParts._init(this);
  }

  GetObjectAttributesPartsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalPartsCount = $v.totalPartsCount;
      _partNumberMarker = $v.partNumberMarker;
      _nextPartNumberMarker = $v.nextPartNumberMarker;
      _maxParts = $v.maxParts;
      _isTruncated = $v.isTruncated;
      _parts = $v.parts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectAttributesParts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAttributesParts;
  }

  @override
  void update(void Function(GetObjectAttributesPartsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAttributesParts build() => _build();

  _$GetObjectAttributesParts _build() {
    _$GetObjectAttributesParts _$result;
    try {
      _$result = _$v ??
          new _$GetObjectAttributesParts._(
              totalPartsCount: BuiltValueNullFieldError.checkNotNull(
                  totalPartsCount,
                  r'GetObjectAttributesParts',
                  'totalPartsCount'),
              partNumberMarker: partNumberMarker,
              nextPartNumberMarker: nextPartNumberMarker,
              maxParts: BuiltValueNullFieldError.checkNotNull(
                  maxParts, r'GetObjectAttributesParts', 'maxParts'),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'GetObjectAttributesParts', 'isTruncated'),
              parts: _parts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parts';
        _parts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectAttributesParts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
