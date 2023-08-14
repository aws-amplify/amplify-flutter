// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_fpga_image_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFpgaImageRequest extends CreateFpgaImageRequest {
  @override
  final bool dryRun;
  @override
  final StorageLocation? inputStorageLocation;
  @override
  final StorageLocation? logsStorageLocation;
  @override
  final String? description;
  @override
  final String? name;
  @override
  final String? clientToken;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateFpgaImageRequest(
          [void Function(CreateFpgaImageRequestBuilder)? updates]) =>
      (new CreateFpgaImageRequestBuilder()..update(updates))._build();

  _$CreateFpgaImageRequest._(
      {required this.dryRun,
      this.inputStorageLocation,
      this.logsStorageLocation,
      this.description,
      this.name,
      this.clientToken,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateFpgaImageRequest', 'dryRun');
  }

  @override
  CreateFpgaImageRequest rebuild(
          void Function(CreateFpgaImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFpgaImageRequestBuilder toBuilder() =>
      new CreateFpgaImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFpgaImageRequest &&
        dryRun == other.dryRun &&
        inputStorageLocation == other.inputStorageLocation &&
        logsStorageLocation == other.logsStorageLocation &&
        description == other.description &&
        name == other.name &&
        clientToken == other.clientToken &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, inputStorageLocation.hashCode);
    _$hash = $jc(_$hash, logsStorageLocation.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateFpgaImageRequestBuilder
    implements Builder<CreateFpgaImageRequest, CreateFpgaImageRequestBuilder> {
  _$CreateFpgaImageRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  StorageLocationBuilder? _inputStorageLocation;
  StorageLocationBuilder get inputStorageLocation =>
      _$this._inputStorageLocation ??= new StorageLocationBuilder();
  set inputStorageLocation(StorageLocationBuilder? inputStorageLocation) =>
      _$this._inputStorageLocation = inputStorageLocation;

  StorageLocationBuilder? _logsStorageLocation;
  StorageLocationBuilder get logsStorageLocation =>
      _$this._logsStorageLocation ??= new StorageLocationBuilder();
  set logsStorageLocation(StorageLocationBuilder? logsStorageLocation) =>
      _$this._logsStorageLocation = logsStorageLocation;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateFpgaImageRequestBuilder() {
    CreateFpgaImageRequest._init(this);
  }

  CreateFpgaImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _inputStorageLocation = $v.inputStorageLocation?.toBuilder();
      _logsStorageLocation = $v.logsStorageLocation?.toBuilder();
      _description = $v.description;
      _name = $v.name;
      _clientToken = $v.clientToken;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFpgaImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFpgaImageRequest;
  }

  @override
  void update(void Function(CreateFpgaImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFpgaImageRequest build() => _build();

  _$CreateFpgaImageRequest _build() {
    _$CreateFpgaImageRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateFpgaImageRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateFpgaImageRequest', 'dryRun'),
              inputStorageLocation: _inputStorageLocation?.build(),
              logsStorageLocation: _logsStorageLocation?.build(),
              description: description,
              name: name,
              clientToken: clientToken,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputStorageLocation';
        _inputStorageLocation?.build();
        _$failedField = 'logsStorageLocation';
        _logsStorageLocation?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateFpgaImageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
