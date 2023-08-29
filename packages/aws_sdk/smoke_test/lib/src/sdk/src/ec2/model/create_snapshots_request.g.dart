// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_snapshots_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSnapshotsRequest extends CreateSnapshotsRequest {
  @override
  final String? description;
  @override
  final InstanceSpecification? instanceSpecification;
  @override
  final String? outpostArn;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;
  @override
  final CopyTagsFromSource? copyTagsFromSource;

  factory _$CreateSnapshotsRequest(
          [void Function(CreateSnapshotsRequestBuilder)? updates]) =>
      (new CreateSnapshotsRequestBuilder()..update(updates))._build();

  _$CreateSnapshotsRequest._(
      {this.description,
      this.instanceSpecification,
      this.outpostArn,
      this.tagSpecifications,
      required this.dryRun,
      this.copyTagsFromSource})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateSnapshotsRequest', 'dryRun');
  }

  @override
  CreateSnapshotsRequest rebuild(
          void Function(CreateSnapshotsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSnapshotsRequestBuilder toBuilder() =>
      new CreateSnapshotsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSnapshotsRequest &&
        description == other.description &&
        instanceSpecification == other.instanceSpecification &&
        outpostArn == other.outpostArn &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun &&
        copyTagsFromSource == other.copyTagsFromSource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, instanceSpecification.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, copyTagsFromSource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSnapshotsRequestBuilder
    implements Builder<CreateSnapshotsRequest, CreateSnapshotsRequestBuilder> {
  _$CreateSnapshotsRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  InstanceSpecificationBuilder? _instanceSpecification;
  InstanceSpecificationBuilder get instanceSpecification =>
      _$this._instanceSpecification ??= new InstanceSpecificationBuilder();
  set instanceSpecification(
          InstanceSpecificationBuilder? instanceSpecification) =>
      _$this._instanceSpecification = instanceSpecification;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CopyTagsFromSource? _copyTagsFromSource;
  CopyTagsFromSource? get copyTagsFromSource => _$this._copyTagsFromSource;
  set copyTagsFromSource(CopyTagsFromSource? copyTagsFromSource) =>
      _$this._copyTagsFromSource = copyTagsFromSource;

  CreateSnapshotsRequestBuilder() {
    CreateSnapshotsRequest._init(this);
  }

  CreateSnapshotsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _instanceSpecification = $v.instanceSpecification?.toBuilder();
      _outpostArn = $v.outpostArn;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _copyTagsFromSource = $v.copyTagsFromSource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSnapshotsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSnapshotsRequest;
  }

  @override
  void update(void Function(CreateSnapshotsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSnapshotsRequest build() => _build();

  _$CreateSnapshotsRequest _build() {
    _$CreateSnapshotsRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateSnapshotsRequest._(
              description: description,
              instanceSpecification: _instanceSpecification?.build(),
              outpostArn: outpostArn,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateSnapshotsRequest', 'dryRun'),
              copyTagsFromSource: copyTagsFromSource);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceSpecification';
        _instanceSpecification?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSnapshotsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
