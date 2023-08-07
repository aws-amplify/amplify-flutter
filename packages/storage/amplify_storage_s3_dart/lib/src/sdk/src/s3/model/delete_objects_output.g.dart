// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_objects_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectsOutput extends DeleteObjectsOutput {
  @override
  final _i3.BuiltList<DeletedObject>? deleted;
  @override
  final RequestCharged? requestCharged;
  @override
  final _i3.BuiltList<Error>? errors;

  factory _$DeleteObjectsOutput(
          [void Function(DeleteObjectsOutputBuilder)? updates]) =>
      (new DeleteObjectsOutputBuilder()..update(updates))._build();

  _$DeleteObjectsOutput._({this.deleted, this.requestCharged, this.errors})
      : super._();

  @override
  DeleteObjectsOutput rebuild(
          void Function(DeleteObjectsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectsOutputBuilder toBuilder() =>
      new DeleteObjectsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectsOutput &&
        deleted == other.deleted &&
        requestCharged == other.requestCharged &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteObjectsOutputBuilder
    implements Builder<DeleteObjectsOutput, DeleteObjectsOutputBuilder> {
  _$DeleteObjectsOutput? _$v;

  _i3.ListBuilder<DeletedObject>? _deleted;
  _i3.ListBuilder<DeletedObject> get deleted =>
      _$this._deleted ??= new _i3.ListBuilder<DeletedObject>();
  set deleted(_i3.ListBuilder<DeletedObject>? deleted) =>
      _$this._deleted = deleted;

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i3.ListBuilder<Error>? _errors;
  _i3.ListBuilder<Error> get errors =>
      _$this._errors ??= new _i3.ListBuilder<Error>();
  set errors(_i3.ListBuilder<Error>? errors) => _$this._errors = errors;

  DeleteObjectsOutputBuilder();

  DeleteObjectsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleted = $v.deleted?.toBuilder();
      _requestCharged = $v.requestCharged;
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectsOutput;
  }

  @override
  void update(void Function(DeleteObjectsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectsOutput build() => _build();

  _$DeleteObjectsOutput _build() {
    _$DeleteObjectsOutput _$result;
    try {
      _$result = _$v ??
          new _$DeleteObjectsOutput._(
              deleted: _deleted?.build(),
              requestCharged: requestCharged,
              errors: _errors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleted';
        _deleted?.build();

        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteObjectsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DeleteObjectsOutputPayload extends DeleteObjectsOutputPayload {
  @override
  final _i3.BuiltList<DeletedObject>? deleted;
  @override
  final _i3.BuiltList<Error>? errors;

  factory _$DeleteObjectsOutputPayload(
          [void Function(DeleteObjectsOutputPayloadBuilder)? updates]) =>
      (new DeleteObjectsOutputPayloadBuilder()..update(updates))._build();

  _$DeleteObjectsOutputPayload._({this.deleted, this.errors}) : super._();

  @override
  DeleteObjectsOutputPayload rebuild(
          void Function(DeleteObjectsOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectsOutputPayloadBuilder toBuilder() =>
      new DeleteObjectsOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectsOutputPayload &&
        deleted == other.deleted &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteObjectsOutputPayloadBuilder
    implements
        Builder<DeleteObjectsOutputPayload, DeleteObjectsOutputPayloadBuilder> {
  _$DeleteObjectsOutputPayload? _$v;

  _i3.ListBuilder<DeletedObject>? _deleted;
  _i3.ListBuilder<DeletedObject> get deleted =>
      _$this._deleted ??= new _i3.ListBuilder<DeletedObject>();
  set deleted(_i3.ListBuilder<DeletedObject>? deleted) =>
      _$this._deleted = deleted;

  _i3.ListBuilder<Error>? _errors;
  _i3.ListBuilder<Error> get errors =>
      _$this._errors ??= new _i3.ListBuilder<Error>();
  set errors(_i3.ListBuilder<Error>? errors) => _$this._errors = errors;

  DeleteObjectsOutputPayloadBuilder();

  DeleteObjectsOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleted = $v.deleted?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectsOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectsOutputPayload;
  }

  @override
  void update(void Function(DeleteObjectsOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectsOutputPayload build() => _build();

  _$DeleteObjectsOutputPayload _build() {
    _$DeleteObjectsOutputPayload _$result;
    try {
      _$result = _$v ??
          new _$DeleteObjectsOutputPayload._(
              deleted: _deleted?.build(), errors: _errors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleted';
        _deleted?.build();
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteObjectsOutputPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
