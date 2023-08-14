// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_image_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateImageRequest extends CreateImageRequest {
  @override
  final _i3.BuiltList<BlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final String? instanceId;
  @override
  final String? name;
  @override
  final bool noReboot;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateImageRequest(
          [void Function(CreateImageRequestBuilder)? updates]) =>
      (new CreateImageRequestBuilder()..update(updates))._build();

  _$CreateImageRequest._(
      {this.blockDeviceMappings,
      this.description,
      required this.dryRun,
      this.instanceId,
      this.name,
      required this.noReboot,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateImageRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        noReboot, r'CreateImageRequest', 'noReboot');
  }

  @override
  CreateImageRequest rebuild(
          void Function(CreateImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateImageRequestBuilder toBuilder() =>
      new CreateImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateImageRequest &&
        blockDeviceMappings == other.blockDeviceMappings &&
        description == other.description &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId &&
        name == other.name &&
        noReboot == other.noReboot &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, noReboot.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateImageRequestBuilder
    implements Builder<CreateImageRequest, CreateImageRequestBuilder> {
  _$CreateImageRequest? _$v;

  _i3.ListBuilder<BlockDeviceMapping>? _blockDeviceMappings;
  _i3.ListBuilder<BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??= new _i3.ListBuilder<BlockDeviceMapping>();
  set blockDeviceMappings(
          _i3.ListBuilder<BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _noReboot;
  bool? get noReboot => _$this._noReboot;
  set noReboot(bool? noReboot) => _$this._noReboot = noReboot;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateImageRequestBuilder() {
    CreateImageRequest._init(this);
  }

  CreateImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _description = $v.description;
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _name = $v.name;
      _noReboot = $v.noReboot;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateImageRequest;
  }

  @override
  void update(void Function(CreateImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateImageRequest build() => _build();

  _$CreateImageRequest _build() {
    _$CreateImageRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateImageRequest._(
              blockDeviceMappings: _blockDeviceMappings?.build(),
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateImageRequest', 'dryRun'),
              instanceId: instanceId,
              name: name,
              noReboot: BuiltValueNullFieldError.checkNotNull(
                  noReboot, r'CreateImageRequest', 'noReboot'),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateImageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
