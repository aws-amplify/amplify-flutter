// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_fpga_image_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetFpgaImageAttributeRequest extends ResetFpgaImageAttributeRequest {
  @override
  final bool dryRun;
  @override
  final String? fpgaImageId;
  @override
  final ResetFpgaImageAttributeName? attribute;

  factory _$ResetFpgaImageAttributeRequest(
          [void Function(ResetFpgaImageAttributeRequestBuilder)? updates]) =>
      (new ResetFpgaImageAttributeRequestBuilder()..update(updates))._build();

  _$ResetFpgaImageAttributeRequest._(
      {required this.dryRun, this.fpgaImageId, this.attribute})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ResetFpgaImageAttributeRequest', 'dryRun');
  }

  @override
  ResetFpgaImageAttributeRequest rebuild(
          void Function(ResetFpgaImageAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetFpgaImageAttributeRequestBuilder toBuilder() =>
      new ResetFpgaImageAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetFpgaImageAttributeRequest &&
        dryRun == other.dryRun &&
        fpgaImageId == other.fpgaImageId &&
        attribute == other.attribute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, fpgaImageId.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetFpgaImageAttributeRequestBuilder
    implements
        Builder<ResetFpgaImageAttributeRequest,
            ResetFpgaImageAttributeRequestBuilder> {
  _$ResetFpgaImageAttributeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _fpgaImageId;
  String? get fpgaImageId => _$this._fpgaImageId;
  set fpgaImageId(String? fpgaImageId) => _$this._fpgaImageId = fpgaImageId;

  ResetFpgaImageAttributeName? _attribute;
  ResetFpgaImageAttributeName? get attribute => _$this._attribute;
  set attribute(ResetFpgaImageAttributeName? attribute) =>
      _$this._attribute = attribute;

  ResetFpgaImageAttributeRequestBuilder() {
    ResetFpgaImageAttributeRequest._init(this);
  }

  ResetFpgaImageAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _fpgaImageId = $v.fpgaImageId;
      _attribute = $v.attribute;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetFpgaImageAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetFpgaImageAttributeRequest;
  }

  @override
  void update(void Function(ResetFpgaImageAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetFpgaImageAttributeRequest build() => _build();

  _$ResetFpgaImageAttributeRequest _build() {
    final _$result = _$v ??
        new _$ResetFpgaImageAttributeRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ResetFpgaImageAttributeRequest', 'dryRun'),
            fpgaImageId: fpgaImageId,
            attribute: attribute);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
