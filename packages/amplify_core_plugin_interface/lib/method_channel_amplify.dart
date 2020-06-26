part of amplify_flutter_platform_interface;

const MethodChannel _channel = MethodChannel('amplify/amplify_core');

/// An implementation of [AmplifyCorePlugin] that uses method channels.
class MethodChannelAmplifyCore extends AmplifyCorePlugin {
  @override
  Future<bool> configure(String configuration) {
    return _channel.invokeMethod<bool>(
      'configure',
      <String, Object>{
        'configuration': configuration,
      },
    );
  }
}
