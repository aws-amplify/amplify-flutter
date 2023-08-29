// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientData extends ClientData {
  @override
  final String? comment;
  @override
  final DateTime? uploadEnd;
  @override
  final double uploadSize;
  @override
  final DateTime? uploadStart;

  factory _$ClientData([void Function(ClientDataBuilder)? updates]) =>
      (new ClientDataBuilder()..update(updates))._build();

  _$ClientData._(
      {this.comment,
      this.uploadEnd,
      required this.uploadSize,
      this.uploadStart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        uploadSize, r'ClientData', 'uploadSize');
  }

  @override
  ClientData rebuild(void Function(ClientDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientDataBuilder toBuilder() => new ClientDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientData &&
        comment == other.comment &&
        uploadEnd == other.uploadEnd &&
        uploadSize == other.uploadSize &&
        uploadStart == other.uploadStart;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, uploadEnd.hashCode);
    _$hash = $jc(_$hash, uploadSize.hashCode);
    _$hash = $jc(_$hash, uploadStart.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientDataBuilder implements Builder<ClientData, ClientDataBuilder> {
  _$ClientData? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  DateTime? _uploadEnd;
  DateTime? get uploadEnd => _$this._uploadEnd;
  set uploadEnd(DateTime? uploadEnd) => _$this._uploadEnd = uploadEnd;

  double? _uploadSize;
  double? get uploadSize => _$this._uploadSize;
  set uploadSize(double? uploadSize) => _$this._uploadSize = uploadSize;

  DateTime? _uploadStart;
  DateTime? get uploadStart => _$this._uploadStart;
  set uploadStart(DateTime? uploadStart) => _$this._uploadStart = uploadStart;

  ClientDataBuilder() {
    ClientData._init(this);
  }

  ClientDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _uploadEnd = $v.uploadEnd;
      _uploadSize = $v.uploadSize;
      _uploadStart = $v.uploadStart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientData;
  }

  @override
  void update(void Function(ClientDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientData build() => _build();

  _$ClientData _build() {
    final _$result = _$v ??
        new _$ClientData._(
            comment: comment,
            uploadEnd: uploadEnd,
            uploadSize: BuiltValueNullFieldError.checkNotNull(
                uploadSize, r'ClientData', 'uploadSize'),
            uploadStart: uploadStart);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
