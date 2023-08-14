// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_image_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyImageRequest extends CopyImageRequest {
  @override
  final String? clientToken;
  @override
  final String? description;
  @override
  final bool encrypted;
  @override
  final String? kmsKeyId;
  @override
  final String? name;
  @override
  final String? sourceImageId;
  @override
  final String? sourceRegion;
  @override
  final String? destinationOutpostArn;
  @override
  final bool dryRun;
  @override
  final bool copyImageTags;

  factory _$CopyImageRequest(
          [void Function(CopyImageRequestBuilder)? updates]) =>
      (new CopyImageRequestBuilder()..update(updates))._build();

  _$CopyImageRequest._(
      {this.clientToken,
      this.description,
      required this.encrypted,
      this.kmsKeyId,
      this.name,
      this.sourceImageId,
      this.sourceRegion,
      this.destinationOutpostArn,
      required this.dryRun,
      required this.copyImageTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'CopyImageRequest', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CopyImageRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        copyImageTags, r'CopyImageRequest', 'copyImageTags');
  }

  @override
  CopyImageRequest rebuild(void Function(CopyImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyImageRequestBuilder toBuilder() =>
      new CopyImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyImageRequest &&
        clientToken == other.clientToken &&
        description == other.description &&
        encrypted == other.encrypted &&
        kmsKeyId == other.kmsKeyId &&
        name == other.name &&
        sourceImageId == other.sourceImageId &&
        sourceRegion == other.sourceRegion &&
        destinationOutpostArn == other.destinationOutpostArn &&
        dryRun == other.dryRun &&
        copyImageTags == other.copyImageTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sourceImageId.hashCode);
    _$hash = $jc(_$hash, sourceRegion.hashCode);
    _$hash = $jc(_$hash, destinationOutpostArn.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, copyImageTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopyImageRequestBuilder
    implements Builder<CopyImageRequest, CopyImageRequestBuilder> {
  _$CopyImageRequest? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _sourceImageId;
  String? get sourceImageId => _$this._sourceImageId;
  set sourceImageId(String? sourceImageId) =>
      _$this._sourceImageId = sourceImageId;

  String? _sourceRegion;
  String? get sourceRegion => _$this._sourceRegion;
  set sourceRegion(String? sourceRegion) => _$this._sourceRegion = sourceRegion;

  String? _destinationOutpostArn;
  String? get destinationOutpostArn => _$this._destinationOutpostArn;
  set destinationOutpostArn(String? destinationOutpostArn) =>
      _$this._destinationOutpostArn = destinationOutpostArn;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _copyImageTags;
  bool? get copyImageTags => _$this._copyImageTags;
  set copyImageTags(bool? copyImageTags) =>
      _$this._copyImageTags = copyImageTags;

  CopyImageRequestBuilder() {
    CopyImageRequest._init(this);
  }

  CopyImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _description = $v.description;
      _encrypted = $v.encrypted;
      _kmsKeyId = $v.kmsKeyId;
      _name = $v.name;
      _sourceImageId = $v.sourceImageId;
      _sourceRegion = $v.sourceRegion;
      _destinationOutpostArn = $v.destinationOutpostArn;
      _dryRun = $v.dryRun;
      _copyImageTags = $v.copyImageTags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyImageRequest;
  }

  @override
  void update(void Function(CopyImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyImageRequest build() => _build();

  _$CopyImageRequest _build() {
    final _$result = _$v ??
        new _$CopyImageRequest._(
            clientToken: clientToken,
            description: description,
            encrypted: BuiltValueNullFieldError.checkNotNull(
                encrypted, r'CopyImageRequest', 'encrypted'),
            kmsKeyId: kmsKeyId,
            name: name,
            sourceImageId: sourceImageId,
            sourceRegion: sourceRegion,
            destinationOutpostArn: destinationOutpostArn,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CopyImageRequest', 'dryRun'),
            copyImageTags: BuiltValueNullFieldError.checkNotNull(
                copyImageTags, r'CopyImageRequest', 'copyImageTags'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
