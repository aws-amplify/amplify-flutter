// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.delete_objects_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectsOutput extends DeleteObjectsOutput {
  @override
  final _i3.BuiltList<_i4.DeletedObject>? deleted;
  @override
  final _i3.BuiltList<_i5.Error>? errors;
  @override
  final _i6.RequestCharged? requestCharged;

  factory _$DeleteObjectsOutput(
          [void Function(DeleteObjectsOutputBuilder)? updates]) =>
      (new DeleteObjectsOutputBuilder()..update(updates))._build();

  _$DeleteObjectsOutput._({this.deleted, this.errors, this.requestCharged})
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
        errors == other.errors &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, deleted.hashCode), errors.hashCode),
        requestCharged.hashCode));
  }
}

class DeleteObjectsOutputBuilder
    implements Builder<DeleteObjectsOutput, DeleteObjectsOutputBuilder> {
  _$DeleteObjectsOutput? _$v;

  _i3.ListBuilder<_i4.DeletedObject>? _deleted;
  _i3.ListBuilder<_i4.DeletedObject> get deleted =>
      _$this._deleted ??= new _i3.ListBuilder<_i4.DeletedObject>();
  set deleted(_i3.ListBuilder<_i4.DeletedObject>? deleted) =>
      _$this._deleted = deleted;

  _i3.ListBuilder<_i5.Error>? _errors;
  _i3.ListBuilder<_i5.Error> get errors =>
      _$this._errors ??= new _i3.ListBuilder<_i5.Error>();
  set errors(_i3.ListBuilder<_i5.Error>? errors) => _$this._errors = errors;

  _i6.RequestCharged? _requestCharged;
  _i6.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i6.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  DeleteObjectsOutputBuilder() {
    DeleteObjectsOutput._init(this);
  }

  DeleteObjectsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleted = $v.deleted?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _requestCharged = $v.requestCharged;
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
              errors: _errors?.build(),
              requestCharged: requestCharged);
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
  final _i3.BuiltList<_i4.DeletedObject>? deleted;
  @override
  final _i3.BuiltList<_i5.Error>? errors;

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
    return $jf($jc($jc(0, deleted.hashCode), errors.hashCode));
  }
}

class DeleteObjectsOutputPayloadBuilder
    implements
        Builder<DeleteObjectsOutputPayload, DeleteObjectsOutputPayloadBuilder> {
  _$DeleteObjectsOutputPayload? _$v;

  _i3.ListBuilder<_i4.DeletedObject>? _deleted;
  _i3.ListBuilder<_i4.DeletedObject> get deleted =>
      _$this._deleted ??= new _i3.ListBuilder<_i4.DeletedObject>();
  set deleted(_i3.ListBuilder<_i4.DeletedObject>? deleted) =>
      _$this._deleted = deleted;

  _i3.ListBuilder<_i5.Error>? _errors;
  _i3.ListBuilder<_i5.Error> get errors =>
      _$this._errors ??= new _i3.ListBuilder<_i5.Error>();
  set errors(_i3.ListBuilder<_i5.Error>? errors) => _$this._errors = errors;

  DeleteObjectsOutputPayloadBuilder() {
    DeleteObjectsOutputPayload._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
