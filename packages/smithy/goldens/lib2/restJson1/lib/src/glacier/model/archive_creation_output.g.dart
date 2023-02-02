// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.glacier.model.archive_creation_output;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, archiveId.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
