// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fpga_image_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFpgaImageRequest extends DeleteFpgaImageRequest {
  @override
  final bool dryRun;
  @override
  final String? fpgaImageId;

  factory _$DeleteFpgaImageRequest(
          [void Function(DeleteFpgaImageRequestBuilder)? updates]) =>
      (new DeleteFpgaImageRequestBuilder()..update(updates))._build();

  _$DeleteFpgaImageRequest._({required this.dryRun, this.fpgaImageId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteFpgaImageRequest', 'dryRun');
  }

  @override
  DeleteFpgaImageRequest rebuild(
          void Function(DeleteFpgaImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFpgaImageRequestBuilder toBuilder() =>
      new DeleteFpgaImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFpgaImageRequest &&
        dryRun == other.dryRun &&
        fpgaImageId == other.fpgaImageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, fpgaImageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFpgaImageRequestBuilder
    implements Builder<DeleteFpgaImageRequest, DeleteFpgaImageRequestBuilder> {
  _$DeleteFpgaImageRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _fpgaImageId;
  String? get fpgaImageId => _$this._fpgaImageId;
  set fpgaImageId(String? fpgaImageId) => _$this._fpgaImageId = fpgaImageId;

  DeleteFpgaImageRequestBuilder() {
    DeleteFpgaImageRequest._init(this);
  }

  DeleteFpgaImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _fpgaImageId = $v.fpgaImageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFpgaImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFpgaImageRequest;
  }

  @override
  void update(void Function(DeleteFpgaImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFpgaImageRequest build() => _build();

  _$DeleteFpgaImageRequest _build() {
    final _$result = _$v ??
        new _$DeleteFpgaImageRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteFpgaImageRequest', 'dryRun'),
            fpgaImageId: fpgaImageId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
