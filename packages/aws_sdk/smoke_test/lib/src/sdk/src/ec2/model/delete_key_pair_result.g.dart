// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_key_pair_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteKeyPairResult extends DeleteKeyPairResult {
  @override
  final bool return_;
  @override
  final String? keyPairId;

  factory _$DeleteKeyPairResult(
          [void Function(DeleteKeyPairResultBuilder)? updates]) =>
      (new DeleteKeyPairResultBuilder()..update(updates))._build();

  _$DeleteKeyPairResult._({required this.return_, this.keyPairId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DeleteKeyPairResult', 'return_');
  }

  @override
  DeleteKeyPairResult rebuild(
          void Function(DeleteKeyPairResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteKeyPairResultBuilder toBuilder() =>
      new DeleteKeyPairResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteKeyPairResult &&
        return_ == other.return_ &&
        keyPairId == other.keyPairId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jc(_$hash, keyPairId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteKeyPairResultBuilder
    implements Builder<DeleteKeyPairResult, DeleteKeyPairResultBuilder> {
  _$DeleteKeyPairResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  String? _keyPairId;
  String? get keyPairId => _$this._keyPairId;
  set keyPairId(String? keyPairId) => _$this._keyPairId = keyPairId;

  DeleteKeyPairResultBuilder() {
    DeleteKeyPairResult._init(this);
  }

  DeleteKeyPairResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _keyPairId = $v.keyPairId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteKeyPairResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteKeyPairResult;
  }

  @override
  void update(void Function(DeleteKeyPairResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteKeyPairResult build() => _build();

  _$DeleteKeyPairResult _build() {
    final _$result = _$v ??
        new _$DeleteKeyPairResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DeleteKeyPairResult', 'return_'),
            keyPairId: keyPairId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
