import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aws_liveness/aws_liveness.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AWS Liveness Example',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const LivenessExampleScreen(),
    );
  }
}

class LivenessExampleScreen extends StatefulWidget {
  const LivenessExampleScreen({super.key});

  @override
  State<LivenessExampleScreen> createState() => _LivenessExampleScreenState();
}

class _LivenessExampleScreenState extends State<LivenessExampleScreen> {
  bool _isLoading = false;
  String? _resultMessage;
  bool? _isLive;
  String? _sessionId;

  @override
  void initState() {
    super.initState();
    _listenToEvents();
  }

  /// Listen to liveness detection events
  void _listenToEvents() {
    AwsLiveness.events.listen((event) {
      debugPrint('📡 Liveness Event: $event');
      switch (event['type']) {
        case 'started':
          debugPrint('🚀 Liveness detection started');
          break;
        case 'complete':
          debugPrint('✅ Liveness detection completed');
          break;
        case 'error':
          debugPrint('❌ Liveness detection error: ${event['data']}');
          break;
        case 'cancelled':
          debugPrint('🚫 Liveness detection cancelled');
          break;
      }
    });
  }

  /// Start the face liveness detection flow
  Future<void> _startLivenessCheck() async {
    setState(() {
      _isLoading = true;
      _resultMessage = null;
      _isLive = null;
      _sessionId = null;
    });

    try {
      // IMPORTANT: In a real app, get the session ID from your backend
      // Your backend should call AWS Rekognition's CreateFaceLivenessSession API
      // and return the sessionId to your Flutter app
      const sessionId = 'YOUR_SESSION_ID_FROM_BACKEND';

      if (sessionId == 'YOUR_SESSION_ID_FROM_BACKEND') {
        setState(() {
          _isLoading = false;
          _resultMessage =
              '⚠️ Please replace with a real session ID from your backend';
        });
        _showInfoDialog(
          'Setup Required',
          'To test liveness detection:\n\n'
              '1. Set up a backend that calls AWS Rekognition\'s CreateFaceLivenessSession API\n'
              '2. Replace the sessionId in this example with the one from your backend\n'
              '3. Ensure amplifyconfiguration.json is properly configured',
        );
        return;
      }

      final result = await AwsLiveness.start(
        sessionId: sessionId,
        region: 'us-east-1', // Change to your AWS region
      );

      debugPrint('📦 Liveness Result: $result');

      setState(() {
        if (result['status'] == 'success') {
          _isLive = result['isLive'] as bool?;
          _sessionId = result['sessionId'] as String?;
          _resultMessage = _isLive == true
              ? '✅ Face liveness verified!'
              : '❌ Face liveness check failed';
        } else if (result['status'] == 'cancelled') {
          _resultMessage = '🚫 Liveness check was cancelled';
        }
      });
    } on PlatformException catch (e) {
      debugPrint('❌ PlatformException: ${e.code} - ${e.message}');

      setState(() {
        _resultMessage = '❌ Error: ${e.message}';
      });

      // Handle specific error codes
      _handleError(e.code, e.message);
    } catch (e) {
      debugPrint('❌ Unexpected error: $e');
      setState(() {
        _resultMessage = '❌ Unexpected error occurred';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// Handle specific error codes
  void _handleError(String code, String? message) {
    String title;
    String content;

    switch (code) {
      case 'TIMEOUT':
        title = 'Timeout';
        content =
            'Face verification timed out. Please try again and complete the verification within 50 seconds.';
        break;
      case 'CAMERA_PERMISSION_DENIED':
      case 'PERMISSION_DENIED':
        title = 'Camera Permission Required';
        content =
            'Please grant camera permission to use face liveness detection.';
        break;
      case 'USER_CANCELLED':
        // User cancelled - no need to show error dialog
        return;
      case 'SESSION_NOT_FOUND':
        title = 'Session Not Found';
        content =
            'The liveness session was not found. Please create a new session.';
        break;
      case 'ACCESS_DENIED':
        title = 'Access Denied';
        content = 'AWS access was denied. Please check your IAM permissions.';
        break;
      case 'INVALID_ARGUMENTS':
        title = 'Invalid Arguments';
        content = 'Session ID and region are required.';
        break;
      default:
        title = 'Error';
        content = message ?? 'An error occurred during face verification.';
    }

    _showErrorDialog(title, content);
  }

  void _showErrorDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showInfoDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AWS Liveness Example'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon
              Icon(
                _isLive == true
                    ? Icons.verified_user
                    : _isLive == false
                    ? Icons.error
                    : Icons.face,
                size: 80,
                color: _isLive == true
                    ? Colors.green
                    : _isLive == false
                    ? Colors.red
                    : Colors.blue,
              ),
              const SizedBox(height: 32),

              // Title
              Text(
                'Face Liveness Detection',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              // Description
              Text(
                'Verify that a real person is in front of the camera using AWS Face Liveness.',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Result message
              if (_resultMessage != null) ...[
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: _isLive == true
                        ? Colors.green.withValues(alpha: 0.1)
                        : _isLive == false
                        ? Colors.red.withValues(alpha: 0.1)
                        : Colors.grey.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        _resultMessage!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _isLive == true
                              ? Colors.green[700]
                              : _isLive == false
                              ? Colors.red[700]
                              : Colors.grey[700],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      if (_sessionId != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Session: ${_sessionId!.substring(0, _sessionId!.length > 20 ? 20 : _sessionId!.length)}...',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],

              // Start button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton.icon(
                  onPressed: _isLoading ? null : _startLivenessCheck,
                  icon: _isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.face_retouching_natural),
                  label: Text(
                    _isLoading ? 'Verifying...' : 'Start Face Verification',
                    style: const TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 48),

              // Info text
              Text(
                'Note: Face liveness requires a physical device.\nCamera features do not work on simulators.',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.grey[500]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
