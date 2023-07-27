// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_object_tagging_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectTaggingOutput extends GetObjectTaggingOutput {
  @override
  final String? versionId;
  @override
  final _i4.BuiltList<_i3.Tag> tagSet;

  factory _$GetObjectTaggingOutput(
          [void Function(GetObjectTaggingOutputBuilder)? updates]) =>
      (new GetObjectTaggingOutputBuilder()..update(updates))._build();

  _$GetObjectTaggingOutput._({this.versionId, required this.tagSet})
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
        versionId == other.versionId &&
        tagSet == other.tagSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, tagSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectTaggingOutputBuilder
    implements Builder<GetObjectTaggingOutput, GetObjectTaggingOutputBuilder> {
  _$GetObjectTaggingOutput? _$v;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  _i4.ListBuilder<_i3.Tag>? _tagSet;
  _i4.ListBuilder<_i3.Tag> get tagSet =>
      _$this._tagSet ??= new _i4.ListBuilder<_i3.Tag>();
  set tagSet(_i4.ListBuilder<_i3.Tag>? tagSet) => _$this._tagSet = tagSet;

  GetObjectTaggingOutputBuilder();

  GetObjectTaggingOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionId = $v.versionId;
      _tagSet = $v.tagSet.toBuilder();
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
              versionId: versionId, tagSet: tagSet.build());
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
    var _$hash = 0;
    _$hash = $jc(_$hash, tagSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  GetObjectTaggingOutputPayloadBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
