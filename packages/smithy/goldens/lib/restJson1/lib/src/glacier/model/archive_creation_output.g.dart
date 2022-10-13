// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.glacier.model.archive_creation_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchiveCreationOutput extends ArchiveCreationOutput {
  @override
  final String? archiveId;
  @override
  final String? checksum;
  @override
  final String? location;

  factory _$ArchiveCreationOutput(
          [void Function(ArchiveCreationOutputBuilder)? updates]) =>
      (new ArchiveCreationOutputBuilder()..update(updates))._build();

  _$ArchiveCreationOutput._({this.archiveId, this.checksum, this.location})
      : super._();

  @override
  ArchiveCreationOutput rebuild(
          void Function(ArchiveCreationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveCreationOutputBuilder toBuilder() =>
      new ArchiveCreationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveCreationOutput &&
        archiveId == other.archiveId &&
        checksum == other.checksum &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, archiveId.hashCode), checksum.hashCode), location.hashCode));
  }
}

class ArchiveCreationOutputBuilder
    implements Builder<ArchiveCreationOutput, ArchiveCreationOutputBuilder> {
  _$ArchiveCreationOutput? _$v;

  String? _archiveId;
  String? get archiveId => _$this._archiveId;
  set archiveId(String? archiveId) => _$this._archiveId = archiveId;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  ArchiveCreationOutputBuilder() {
    ArchiveCreationOutput._init(this);
  }

  ArchiveCreationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _archiveId = $v.archiveId;
      _checksum = $v.checksum;
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchiveCreationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArchiveCreationOutput;
  }

  @override
  void update(void Function(ArchiveCreationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchiveCreationOutput build() => _build();

  _$ArchiveCreationOutput _build() {
    final _$result = _$v ??
        new _$ArchiveCreationOutput._(
            archiveId: archiveId, checksum: checksum, location: location);
    replace(_$result);
    return _$result;
  }
}

class _$ArchiveCreationOutputPayload extends ArchiveCreationOutputPayload {
  factory _$ArchiveCreationOutputPayload(
          [void Function(ArchiveCreationOutputPayloadBuilder)? updates]) =>
      (new ArchiveCreationOutputPayloadBuilder()..update(updates))._build();

  _$ArchiveCreationOutputPayload._() : super._();

  @override
  ArchiveCreationOutputPayload rebuild(
          void Function(ArchiveCreationOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveCreationOutputPayloadBuilder toBuilder() =>
      new ArchiveCreationOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveCreationOutputPayload;
  }

  @override
  int get hashCode {
    return 565407043;
  }
}

class ArchiveCreationOutputPayloadBuilder
    implements
        Builder<ArchiveCreationOutputPayload,
            ArchiveCreationOutputPayloadBuilder> {
  _$ArchiveCreationOutputPayload? _$v;

  ArchiveCreationOutputPayloadBuilder() {
    ArchiveCreationOutputPayload._init(this);
  }

  @override
  void replace(ArchiveCreationOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArchiveCreationOutputPayload;
  }

  @override
  void update(void Function(ArchiveCreationOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchiveCreationOutputPayload build() => _build();

  _$ArchiveCreationOutputPayload _build() {
    final _$result = _$v ?? new _$ArchiveCreationOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
