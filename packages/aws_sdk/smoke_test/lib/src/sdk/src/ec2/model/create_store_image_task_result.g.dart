// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_store_image_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStoreImageTaskResult extends CreateStoreImageTaskResult {
  @override
  final String? objectKey;

  factory _$CreateStoreImageTaskResult(
          [void Function(CreateStoreImageTaskResultBuilder)? updates]) =>
      (new CreateStoreImageTaskResultBuilder()..update(updates))._build();

  _$CreateStoreImageTaskResult._({this.objectKey}) : super._();

  @override
  CreateStoreImageTaskResult rebuild(
          void Function(CreateStoreImageTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStoreImageTaskResultBuilder toBuilder() =>
      new CreateStoreImageTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStoreImageTaskResult && objectKey == other.objectKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, objectKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateStoreImageTaskResultBuilder
    implements
        Builder<CreateStoreImageTaskResult, CreateStoreImageTaskResultBuilder> {
  _$CreateStoreImageTaskResult? _$v;

  String? _objectKey;
  String? get objectKey => _$this._objectKey;
  set objectKey(String? objectKey) => _$this._objectKey = objectKey;

  CreateStoreImageTaskResultBuilder();

  CreateStoreImageTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objectKey = $v.objectKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStoreImageTaskResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStoreImageTaskResult;
  }

  @override
  void update(void Function(CreateStoreImageTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStoreImageTaskResult build() => _build();

  _$CreateStoreImageTaskResult _build() {
    final _$result =
        _$v ?? new _$CreateStoreImageTaskResult._(objectKey: objectKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
