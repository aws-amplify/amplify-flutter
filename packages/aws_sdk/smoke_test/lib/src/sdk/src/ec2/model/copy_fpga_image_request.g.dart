// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_fpga_image_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyFpgaImageRequest extends CopyFpgaImageRequest {
  @override
  final bool dryRun;
  @override
  final String? sourceFpgaImageId;
  @override
  final String? description;
  @override
  final String? name;
  @override
  final String? sourceRegion;
  @override
  final String? clientToken;

  factory _$CopyFpgaImageRequest(
          [void Function(CopyFpgaImageRequestBuilder)? updates]) =>
      (new CopyFpgaImageRequestBuilder()..update(updates))._build();

  _$CopyFpgaImageRequest._(
      {required this.dryRun,
      this.sourceFpgaImageId,
      this.description,
      this.name,
      this.sourceRegion,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CopyFpgaImageRequest', 'dryRun');
  }

  @override
  CopyFpgaImageRequest rebuild(
          void Function(CopyFpgaImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyFpgaImageRequestBuilder toBuilder() =>
      new CopyFpgaImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyFpgaImageRequest &&
        dryRun == other.dryRun &&
        sourceFpgaImageId == other.sourceFpgaImageId &&
        description == other.description &&
        name == other.name &&
        sourceRegion == other.sourceRegion &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, sourceFpgaImageId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sourceRegion.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopyFpgaImageRequestBuilder
    implements Builder<CopyFpgaImageRequest, CopyFpgaImageRequestBuilder> {
  _$CopyFpgaImageRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _sourceFpgaImageId;
  String? get sourceFpgaImageId => _$this._sourceFpgaImageId;
  set sourceFpgaImageId(String? sourceFpgaImageId) =>
      _$this._sourceFpgaImageId = sourceFpgaImageId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _sourceRegion;
  String? get sourceRegion => _$this._sourceRegion;
  set sourceRegion(String? sourceRegion) => _$this._sourceRegion = sourceRegion;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CopyFpgaImageRequestBuilder() {
    CopyFpgaImageRequest._init(this);
  }

  CopyFpgaImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _sourceFpgaImageId = $v.sourceFpgaImageId;
      _description = $v.description;
      _name = $v.name;
      _sourceRegion = $v.sourceRegion;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyFpgaImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyFpgaImageRequest;
  }

  @override
  void update(void Function(CopyFpgaImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyFpgaImageRequest build() => _build();

  _$CopyFpgaImageRequest _build() {
    final _$result = _$v ??
        new _$CopyFpgaImageRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CopyFpgaImageRequest', 'dryRun'),
            sourceFpgaImageId: sourceFpgaImageId,
            description: description,
            name: name,
            sourceRegion: sourceRegion,
            clientToken: clientToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
