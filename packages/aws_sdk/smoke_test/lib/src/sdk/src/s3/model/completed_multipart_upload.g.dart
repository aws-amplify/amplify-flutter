// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.completed_multipart_upload;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompletedMultipartUpload extends CompletedMultipartUpload {
  @override
  final _i3.BuiltList<_i2.CompletedPart>? parts;

  factory _$CompletedMultipartUpload(
          [void Function(CompletedMultipartUploadBuilder)? updates]) =>
      (new CompletedMultipartUploadBuilder()..update(updates))._build();

  _$CompletedMultipartUpload._({this.parts}) : super._();

  @override
  CompletedMultipartUpload rebuild(
          void Function(CompletedMultipartUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompletedMultipartUploadBuilder toBuilder() =>
      new CompletedMultipartUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompletedMultipartUpload && parts == other.parts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, parts.hashCode));
  }
}

class CompletedMultipartUploadBuilder
    implements
        Builder<CompletedMultipartUpload, CompletedMultipartUploadBuilder> {
  _$CompletedMultipartUpload? _$v;

  _i3.ListBuilder<_i2.CompletedPart>? _parts;
  _i3.ListBuilder<_i2.CompletedPart> get parts =>
      _$this._parts ??= new _i3.ListBuilder<_i2.CompletedPart>();
  set parts(_i3.ListBuilder<_i2.CompletedPart>? parts) => _$this._parts = parts;

  CompletedMultipartUploadBuilder() {
    CompletedMultipartUpload._init(this);
  }

  CompletedMultipartUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parts = $v.parts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompletedMultipartUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompletedMultipartUpload;
  }

  @override
  void update(void Function(CompletedMultipartUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompletedMultipartUpload build() => _build();

  _$CompletedMultipartUpload _build() {
    _$CompletedMultipartUpload _$result;
    try {
      _$result =
          _$v ?? new _$CompletedMultipartUpload._(parts: _parts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parts';
        _parts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompletedMultipartUpload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
