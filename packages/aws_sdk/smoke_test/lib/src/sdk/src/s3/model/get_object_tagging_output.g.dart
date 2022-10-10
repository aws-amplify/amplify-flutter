// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_tagging_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectTaggingOutput extends GetObjectTaggingOutput {
  @override
  final _i4.BuiltList<_i3.Tag> tagSet;
  @override
  final String? versionId;

  factory _$GetObjectTaggingOutput(
          [void Function(GetObjectTaggingOutputBuilder)? updates]) =>
      (new GetObjectTaggingOutputBuilder()..update(updates))._build();

  _$GetObjectTaggingOutput._({required this.tagSet, this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tagSet, r'GetObjectTaggingOutput', 'tagSet');
  }

  @override
  GetObjectTaggingOutput rebuild(
          void Function(GetObjectTaggingOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTaggingOutputBuilder toBuilder() =>
      new GetObjectTaggingOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTaggingOutput &&
        tagSet == other.tagSet &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tagSet.hashCode), versionId.hashCode));
  }
}

class GetObjectTaggingOutputBuilder
    implements Builder<GetObjectTaggingOutput, GetObjectTaggingOutputBuilder> {
  _$GetObjectTaggingOutput? _$v;

  _i4.ListBuilder<_i3.Tag>? _tagSet;
  _i4.ListBuilder<_i3.Tag> get tagSet =>
      _$this._tagSet ??= new _i4.ListBuilder<_i3.Tag>();
  set tagSet(_i4.ListBuilder<_i3.Tag>? tagSet) => _$this._tagSet = tagSet;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  GetObjectTaggingOutputBuilder() {
    GetObjectTaggingOutput._init(this);
  }

  GetObjectTaggingOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagSet = $v.tagSet.toBuilder();
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectTaggingOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTaggingOutput;
  }

  @override
  void update(void Function(GetObjectTaggingOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTaggingOutput build() => _build();

  _$GetObjectTaggingOutput _build() {
    _$GetObjectTaggingOutput _$result;
    try {
      _$result = _$v ??
          new _$GetObjectTaggingOutput._(
              tagSet: tagSet.build(), versionId: versionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSet';
        tagSet.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectTaggingOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectTaggingOutputPayload extends GetObjectTaggingOutputPayload {
  @override
  final _i4.BuiltList<_i3.Tag> tagSet;

  factory _$GetObjectTaggingOutputPayload(
          [void Function(GetObjectTaggingOutputPayloadBuilder)? updates]) =>
      (new GetObjectTaggingOutputPayloadBuilder()..update(updates))._build();

  _$GetObjectTaggingOutputPayload._({required this.tagSet}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tagSet, r'GetObjectTaggingOutputPayload', 'tagSet');
  }

  @override
  GetObjectTaggingOutputPayload rebuild(
          void Function(GetObjectTaggingOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTaggingOutputPayloadBuilder toBuilder() =>
      new GetObjectTaggingOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTaggingOutputPayload && tagSet == other.tagSet;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tagSet.hashCode));
  }
}

class GetObjectTaggingOutputPayloadBuilder
    implements
        Builder<GetObjectTaggingOutputPayload,
            GetObjectTaggingOutputPayloadBuilder> {
  _$GetObjectTaggingOutputPayload? _$v;

  _i4.ListBuilder<_i3.Tag>? _tagSet;
  _i4.ListBuilder<_i3.Tag> get tagSet =>
      _$this._tagSet ??= new _i4.ListBuilder<_i3.Tag>();
  set tagSet(_i4.ListBuilder<_i3.Tag>? tagSet) => _$this._tagSet = tagSet;

  GetObjectTaggingOutputPayloadBuilder() {
    GetObjectTaggingOutputPayload._init(this);
  }

  GetObjectTaggingOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagSet = $v.tagSet.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectTaggingOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTaggingOutputPayload;
  }

  @override
  void update(void Function(GetObjectTaggingOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTaggingOutputPayload build() => _build();

  _$GetObjectTaggingOutputPayload _build() {
    _$GetObjectTaggingOutputPayload _$result;
    try {
      _$result =
          _$v ?? new _$GetObjectTaggingOutputPayload._(tagSet: tagSet.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSet';
        tagSet.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectTaggingOutputPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
