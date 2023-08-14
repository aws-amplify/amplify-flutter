// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_spot_fleet_request_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifySpotFleetRequestResponse extends ModifySpotFleetRequestResponse {
  @override
  final bool return_;

  factory _$ModifySpotFleetRequestResponse(
          [void Function(ModifySpotFleetRequestResponseBuilder)? updates]) =>
      (new ModifySpotFleetRequestResponseBuilder()..update(updates))._build();

  _$ModifySpotFleetRequestResponse._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifySpotFleetRequestResponse', 'return_');
  }

  @override
  ModifySpotFleetRequestResponse rebuild(
          void Function(ModifySpotFleetRequestResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifySpotFleetRequestResponseBuilder toBuilder() =>
      new ModifySpotFleetRequestResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifySpotFleetRequestResponse && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifySpotFleetRequestResponseBuilder
    implements
        Builder<ModifySpotFleetRequestResponse,
            ModifySpotFleetRequestResponseBuilder> {
  _$ModifySpotFleetRequestResponse? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifySpotFleetRequestResponseBuilder() {
    ModifySpotFleetRequestResponse._init(this);
  }

  ModifySpotFleetRequestResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifySpotFleetRequestResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifySpotFleetRequestResponse;
  }

  @override
  void update(void Function(ModifySpotFleetRequestResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifySpotFleetRequestResponse build() => _build();

  _$ModifySpotFleetRequestResponse _build() {
    final _$result = _$v ??
        new _$ModifySpotFleetRequestResponse._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifySpotFleetRequestResponse', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
