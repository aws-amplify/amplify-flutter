// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.abort_incomplete_multipart_upload;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AbortIncompleteMultipartUpload extends AbortIncompleteMultipartUpload {
  @override
  final int? daysAfterInitiation;

  factory _$AbortIncompleteMultipartUpload(
          [void Function(AbortIncompleteMultipartUploadBuilder)? updates]) =>
      (new AbortIncompleteMultipartUploadBuilder()..update(updates))._build();

  _$AbortIncompleteMultipartUpload._({this.daysAfterInitiation}) : super._();

  @override
  AbortIncompleteMultipartUpload rebuild(
          void Function(AbortIncompleteMultipartUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbortIncompleteMultipartUploadBuilder toBuilder() =>
      new AbortIncompleteMultipartUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbortIncompleteMultipartUpload &&
        daysAfterInitiation == other.daysAfterInitiation;
  }

  @override
  int get hashCode {
    return $jf($jc(0, daysAfterInitiation.hashCode));
  }
}

class AbortIncompleteMultipartUploadBuilder
    implements
        Builder<AbortIncompleteMultipartUpload,
            AbortIncompleteMultipartUploadBuilder> {
  _$AbortIncompleteMultipartUpload? _$v;

  int? _daysAfterInitiation;
  int? get daysAfterInitiation => _$this._daysAfterInitiation;
  set daysAfterInitiation(int? daysAfterInitiation) =>
      _$this._daysAfterInitiation = daysAfterInitiation;

  AbortIncompleteMultipartUploadBuilder() {
    AbortIncompleteMultipartUpload._init(this);
  }

  AbortIncompleteMultipartUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _daysAfterInitiation = $v.daysAfterInitiation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbortIncompleteMultipartUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbortIncompleteMultipartUpload;
  }

  @override
  void update(void Function(AbortIncompleteMultipartUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbortIncompleteMultipartUpload build() => _build();

  _$AbortIncompleteMultipartUpload _build() {
    final _$result = _$v ??
        new _$AbortIncompleteMultipartUpload._(
            daysAfterInitiation: daysAfterInitiation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
