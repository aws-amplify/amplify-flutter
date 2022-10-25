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
    return $jf($jc(0, eTag.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
