// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_queued_reserved_instances_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteQueuedReservedInstancesError
    extends DeleteQueuedReservedInstancesError {
  @override
  final DeleteQueuedReservedInstancesErrorCode? code;
  @override
  final String? message;

  factory _$DeleteQueuedReservedInstancesError(
          [void Function(DeleteQueuedReservedInstancesErrorBuilder)?
              updates]) =>
      (new DeleteQueuedReservedInstancesErrorBuilder()..update(updates))
          ._build();

  _$DeleteQueuedReservedInstancesError._({this.code, this.message}) : super._();

  @override
  DeleteQueuedReservedInstancesError rebuild(
          void Function(DeleteQueuedReservedInstancesErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteQueuedReservedInstancesErrorBuilder toBuilder() =>
      new DeleteQueuedReservedInstancesErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteQueuedReservedInstancesError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteQueuedReservedInstancesErrorBuilder
    implements
        Builder<DeleteQueuedReservedInstancesError,
            DeleteQueuedReservedInstancesErrorBuilder> {
  _$DeleteQueuedReservedInstancesError? _$v;

  DeleteQueuedReservedInstancesErrorCode? _code;
  DeleteQueuedReservedInstancesErrorCode? get code => _$this._code;
  set code(DeleteQueuedReservedInstancesErrorCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteQueuedReservedInstancesErrorBuilder();

  DeleteQueuedReservedInstancesErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteQueuedReservedInstancesError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteQueuedReservedInstancesError;
  }

  @override
  void update(
      void Function(DeleteQueuedReservedInstancesErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteQueuedReservedInstancesError build() => _build();

  _$DeleteQueuedReservedInstancesError _build() {
    final _$result = _$v ??
        new _$DeleteQueuedReservedInstancesError._(
            code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
