// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_peering_connection_options_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcPeeringConnectionOptionsResult
    extends ModifyVpcPeeringConnectionOptionsResult {
  @override
  final PeeringConnectionOptions? accepterPeeringConnectionOptions;
  @override
  final PeeringConnectionOptions? requesterPeeringConnectionOptions;

  factory _$ModifyVpcPeeringConnectionOptionsResult(
          [void Function(ModifyVpcPeeringConnectionOptionsResultBuilder)?
              updates]) =>
      (new ModifyVpcPeeringConnectionOptionsResultBuilder()..update(updates))
          ._build();

  _$ModifyVpcPeeringConnectionOptionsResult._(
      {this.accepterPeeringConnectionOptions,
      this.requesterPeeringConnectionOptions})
      : super._();

  @override
  ModifyVpcPeeringConnectionOptionsResult rebuild(
          void Function(ModifyVpcPeeringConnectionOptionsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcPeeringConnectionOptionsResultBuilder toBuilder() =>
      new ModifyVpcPeeringConnectionOptionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcPeeringConnectionOptionsResult &&
        accepterPeeringConnectionOptions ==
            other.accepterPeeringConnectionOptions &&
        requesterPeeringConnectionOptions ==
            other.requesterPeeringConnectionOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accepterPeeringConnectionOptions.hashCode);
    _$hash = $jc(_$hash, requesterPeeringConnectionOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcPeeringConnectionOptionsResultBuilder
    implements
        Builder<ModifyVpcPeeringConnectionOptionsResult,
            ModifyVpcPeeringConnectionOptionsResultBuilder> {
  _$ModifyVpcPeeringConnectionOptionsResult? _$v;

  PeeringConnectionOptionsBuilder? _accepterPeeringConnectionOptions;
  PeeringConnectionOptionsBuilder get accepterPeeringConnectionOptions =>
      _$this._accepterPeeringConnectionOptions ??=
          new PeeringConnectionOptionsBuilder();
  set accepterPeeringConnectionOptions(
          PeeringConnectionOptionsBuilder? accepterPeeringConnectionOptions) =>
      _$this._accepterPeeringConnectionOptions =
          accepterPeeringConnectionOptions;

  PeeringConnectionOptionsBuilder? _requesterPeeringConnectionOptions;
  PeeringConnectionOptionsBuilder get requesterPeeringConnectionOptions =>
      _$this._requesterPeeringConnectionOptions ??=
          new PeeringConnectionOptionsBuilder();
  set requesterPeeringConnectionOptions(
          PeeringConnectionOptionsBuilder? requesterPeeringConnectionOptions) =>
      _$this._requesterPeeringConnectionOptions =
          requesterPeeringConnectionOptions;

  ModifyVpcPeeringConnectionOptionsResultBuilder();

  ModifyVpcPeeringConnectionOptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accepterPeeringConnectionOptions =
          $v.accepterPeeringConnectionOptions?.toBuilder();
      _requesterPeeringConnectionOptions =
          $v.requesterPeeringConnectionOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcPeeringConnectionOptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcPeeringConnectionOptionsResult;
  }

  @override
  void update(
      void Function(ModifyVpcPeeringConnectionOptionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcPeeringConnectionOptionsResult build() => _build();

  _$ModifyVpcPeeringConnectionOptionsResult _build() {
    _$ModifyVpcPeeringConnectionOptionsResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcPeeringConnectionOptionsResult._(
              accepterPeeringConnectionOptions:
                  _accepterPeeringConnectionOptions?.build(),
              requesterPeeringConnectionOptions:
                  _requesterPeeringConnectionOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accepterPeeringConnectionOptions';
        _accepterPeeringConnectionOptions?.build();
        _$failedField = 'requesterPeeringConnectionOptions';
        _requesterPeeringConnectionOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcPeeringConnectionOptionsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
