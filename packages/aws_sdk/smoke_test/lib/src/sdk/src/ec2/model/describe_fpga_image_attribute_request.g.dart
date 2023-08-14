// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fpga_image_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFpgaImageAttributeRequest
    extends DescribeFpgaImageAttributeRequest {
  @override
  final bool dryRun;
  @override
  final String? fpgaImageId;
  @override
  final FpgaImageAttributeName? attribute;

  factory _$DescribeFpgaImageAttributeRequest(
          [void Function(DescribeFpgaImageAttributeRequestBuilder)? updates]) =>
      (new DescribeFpgaImageAttributeRequestBuilder()..update(updates))
          ._build();

  _$DescribeFpgaImageAttributeRequest._(
      {required this.dryRun, this.fpgaImageId, this.attribute})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeFpgaImageAttributeRequest', 'dryRun');
  }

  @override
  DescribeFpgaImageAttributeRequest rebuild(
          void Function(DescribeFpgaImageAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFpgaImageAttributeRequestBuilder toBuilder() =>
      new DescribeFpgaImageAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFpgaImageAttributeRequest &&
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

class DescribeFpgaImageAttributeRequestBuilder
    implements
        Builder<DescribeFpgaImageAttributeRequest,
            DescribeFpgaImageAttributeRequestBuilder> {
  _$DescribeFpgaImageAttributeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _fpgaImageId;
  String? get fpgaImageId => _$this._fpgaImageId;
  set fpgaImageId(String? fpgaImageId) => _$this._fpgaImageId = fpgaImageId;

  FpgaImageAttributeName? _attribute;
  FpgaImageAttributeName? get attribute => _$this._attribute;
  set attribute(FpgaImageAttributeName? attribute) =>
      _$this._attribute = attribute;

  DescribeFpgaImageAttributeRequestBuilder() {
    DescribeFpgaImageAttributeRequest._init(this);
  }

  DescribeFpgaImageAttributeRequestBuilder get _$this {
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
  void replace(DescribeFpgaImageAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFpgaImageAttributeRequest;
  }

  @override
  void update(
      void Function(DescribeFpgaImageAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFpgaImageAttributeRequest build() => _build();

  _$DescribeFpgaImageAttributeRequest _build() {
    final _$result = _$v ??
        new _$DescribeFpgaImageAttributeRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeFpgaImageAttributeRequest', 'dryRun'),
            fpgaImageId: fpgaImageId,
            attribute: attribute);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
