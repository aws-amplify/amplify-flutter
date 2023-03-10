// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_attributes_parts;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAttributesParts extends GetObjectAttributesParts {
  @override
  final bool? isTruncated;
  @override
  final int? maxParts;
  @override
  final String? nextPartNumberMarker;
  @override
  final String? partNumberMarker;
  @override
  final _i3.BuiltList<_i2.ObjectPart>? parts;
  @override
  final int? totalPartsCount;

  factory _$GetObjectAttributesParts(
          [void Function(GetObjectAttributesPartsBuilder)? updates]) =>
      (new GetObjectAttributesPartsBuilder()..update(updates))._build();

  _$GetObjectAttributesParts._(
      {this.isTruncated,
      this.maxParts,
      this.nextPartNumberMarker,
      this.partNumberMarker,
      this.parts,
      this.totalPartsCount})
      : super._();

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
        isTruncated == other.isTruncated &&
        maxParts == other.maxParts &&
        nextPartNumberMarker == other.nextPartNumberMarker &&
        partNumberMarker == other.partNumberMarker &&
        parts == other.parts &&
        totalPartsCount == other.totalPartsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, maxParts.hashCode);
    _$hash = $jc(_$hash, nextPartNumberMarker.hashCode);
    _$hash = $jc(_$hash, partNumberMarker.hashCode);
    _$hash = $jc(_$hash, parts.hashCode);
    _$hash = $jc(_$hash, totalPartsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectAttributesPartsBuilder
    implements
        Builder<GetObjectAttributesParts, GetObjectAttributesPartsBuilder> {
  _$GetObjectAttributesParts? _$v;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  int? _maxParts;
  int? get maxParts => _$this._maxParts;
  set maxParts(int? maxParts) => _$this._maxParts = maxParts;

  String? _nextPartNumberMarker;
  String? get nextPartNumberMarker => _$this._nextPartNumberMarker;
  set nextPartNumberMarker(String? nextPartNumberMarker) =>
      _$this._nextPartNumberMarker = nextPartNumberMarker;

  String? _partNumberMarker;
  String? get partNumberMarker => _$this._partNumberMarker;
  set partNumberMarker(String? partNumberMarker) =>
      _$this._partNumberMarker = partNumberMarker;

  _i3.ListBuilder<_i2.ObjectPart>? _parts;
  _i3.ListBuilder<_i2.ObjectPart> get parts =>
      _$this._parts ??= new _i3.ListBuilder<_i2.ObjectPart>();
  set parts(_i3.ListBuilder<_i2.ObjectPart>? parts) => _$this._parts = parts;

  int? _totalPartsCount;
  int? get totalPartsCount => _$this._totalPartsCount;
  set totalPartsCount(int? totalPartsCount) =>
      _$this._totalPartsCount = totalPartsCount;

  GetObjectAttributesPartsBuilder() {
    GetObjectAttributesParts._init(this);
  }

  GetObjectAttributesPartsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isTruncated = $v.isTruncated;
      _maxParts = $v.maxParts;
      _nextPartNumberMarker = $v.nextPartNumberMarker;
      _partNumberMarker = $v.partNumberMarker;
      _parts = $v.parts?.toBuilder();
      _totalPartsCount = $v.totalPartsCount;
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
              isTruncated: isTruncated,
              maxParts: maxParts,
              nextPartNumberMarker: nextPartNumberMarker,
              partNumberMarker: partNumberMarker,
              parts: _parts?.build(),
              totalPartsCount: totalPartsCount);
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
