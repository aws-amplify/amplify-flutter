// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.s3.model.copy_object_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectResult extends CopyObjectResult {
  @override
  final String? eTag;

  factory _$CopyObjectResult(
          [void Function(CopyObjectResultBuilder)? updates]) =>
      (new CopyObjectResultBuilder()..update(updates))._build();

  _$CopyObjectResult._({this.eTag}) : super._();

  @override
  CopyObjectResult rebuild(void Function(CopyObjectResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectResultBuilder toBuilder() =>
      new CopyObjectResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectResult && eTag == other.eTag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopyObjectResultBuilder
    implements Builder<CopyObjectResult, CopyObjectResultBuilder> {
  _$CopyObjectResult? _$v;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  CopyObjectResultBuilder() {
    CopyObjectResult._init(this);
  }

  CopyObjectResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eTag = $v.eTag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyObjectResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyObjectResult;
  }

  @override
  void update(void Function(CopyObjectResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectResult build() => _build();

  _$CopyObjectResult _build() {
    final _$result = _$v ?? new _$CopyObjectResult._(eTag: eTag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
