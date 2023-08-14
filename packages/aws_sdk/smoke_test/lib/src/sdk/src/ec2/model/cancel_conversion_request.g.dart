// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_conversion_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelConversionRequest extends CancelConversionRequest {
  @override
  final String? conversionTaskId;
  @override
  final bool dryRun;
  @override
  final String? reasonMessage;

  factory _$CancelConversionRequest(
          [void Function(CancelConversionRequestBuilder)? updates]) =>
      (new CancelConversionRequestBuilder()..update(updates))._build();

  _$CancelConversionRequest._(
      {this.conversionTaskId, required this.dryRun, this.reasonMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CancelConversionRequest', 'dryRun');
  }

  @override
  CancelConversionRequest rebuild(
          void Function(CancelConversionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelConversionRequestBuilder toBuilder() =>
      new CancelConversionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelConversionRequest &&
        conversionTaskId == other.conversionTaskId &&
        dryRun == other.dryRun &&
        reasonMessage == other.reasonMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversionTaskId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, reasonMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelConversionRequestBuilder
    implements
        Builder<CancelConversionRequest, CancelConversionRequestBuilder> {
  _$CancelConversionRequest? _$v;

  String? _conversionTaskId;
  String? get conversionTaskId => _$this._conversionTaskId;
  set conversionTaskId(String? conversionTaskId) =>
      _$this._conversionTaskId = conversionTaskId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _reasonMessage;
  String? get reasonMessage => _$this._reasonMessage;
  set reasonMessage(String? reasonMessage) =>
      _$this._reasonMessage = reasonMessage;

  CancelConversionRequestBuilder() {
    CancelConversionRequest._init(this);
  }

  CancelConversionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversionTaskId = $v.conversionTaskId;
      _dryRun = $v.dryRun;
      _reasonMessage = $v.reasonMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelConversionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelConversionRequest;
  }

  @override
  void update(void Function(CancelConversionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelConversionRequest build() => _build();

  _$CancelConversionRequest _build() {
    final _$result = _$v ??
        new _$CancelConversionRequest._(
            conversionTaskId: conversionTaskId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CancelConversionRequest', 'dryRun'),
            reasonMessage: reasonMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
