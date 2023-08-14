// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_snapshot_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSnapshotRequest extends CreateSnapshotRequest {
  @override
  final String? description;
  @override
  final String? outpostArn;
  @override
  final String? volumeId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateSnapshotRequest(
          [void Function(CreateSnapshotRequestBuilder)? updates]) =>
      (new CreateSnapshotRequestBuilder()..update(updates))._build();

  _$CreateSnapshotRequest._(
      {this.description,
      this.outpostArn,
      this.volumeId,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateSnapshotRequest', 'dryRun');
  }

  @override
  CreateSnapshotRequest rebuild(
          void Function(CreateSnapshotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSnapshotRequestBuilder toBuilder() =>
      new CreateSnapshotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSnapshotRequest &&
        description == other.description &&
        outpostArn == other.outpostArn &&
        volumeId == other.volumeId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSnapshotRequestBuilder
    implements Builder<CreateSnapshotRequest, CreateSnapshotRequestBuilder> {
  _$CreateSnapshotRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateSnapshotRequestBuilder() {
    CreateSnapshotRequest._init(this);
  }

  CreateSnapshotRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _outpostArn = $v.outpostArn;
      _volumeId = $v.volumeId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSnapshotRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSnapshotRequest;
  }

  @override
  void update(void Function(CreateSnapshotRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSnapshotRequest build() => _build();

  _$CreateSnapshotRequest _build() {
    _$CreateSnapshotRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateSnapshotRequest._(
              description: description,
              outpostArn: outpostArn,
              volumeId: volumeId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateSnapshotRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSnapshotRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
