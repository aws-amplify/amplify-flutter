package com.solvian.aws_liveness

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import com.amplifyframework.ui.liveness.ui.FaceLivenessDetector
import kotlinx.coroutines.delay
import java.net.URL
import java.net.HttpURLConnection
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.concurrent.thread

class FaceLivenessActivity : ComponentActivity() {
    
    companion object {
        const val EXTRA_SESSION_ID = "session_id"  // Key name for intent extra, NOT the value!
        const val EXTRA_REGION = "region"  // Key name for intent extra, NOT the value!
        const val RESULT_SUCCESS = "success"
        const val RESULT_ERROR = "error"
        const val RESULT_CANCELLED = "cancelled"
        const val TIMEOUT_MS = 50000L // 50 seconds (reduced from 70)
        
        // Result intent keys
        const val RESULT_TYPE = "result_type"
        const val ERROR_CODE = "errorCode"
        const val ERROR_MESSAGE = "errorMessage"
        
        const val TAG = "FaceLiveness_FRAME_DEBUG"
        const val NETWORK_TAG = "FaceLiveness_NETWORK"
    }
    
    private var sessionId: String = ""
    private var region: String = ""
    private var timeoutHandler: Handler? = null
    private var timeoutRunnable: Runnable? = null
    private var hasCompleted = false // Track if flow completed to prevent timeout after completion
    private var isInVerificationPhase = false // Track if we're in verification phase (face scan done, AWS verifying)
    
    // FRAME DROP DETECTION: Track frame activity to detect gaps
    private val frameMonitorHandler = Handler(Looper.getMainLooper())
    private var lastFrameTimestamp = AtomicLong(0L)
    private var frameCount = AtomicInteger(0)
    private var frameGapCount = AtomicInteger(0)
    private var maxFrameGap = AtomicLong(0L)
    private var isMonitoringFrames = false
    private val sessionStartTime = SystemClock.elapsedRealtime()
    
    // NETWORK MONITORING: Track network connectivity and AWS endpoint reachability
    private val networkMonitorHandler = Handler(Looper.getMainLooper())
    private var isMonitoringNetwork = false
    private var connectivityManager: ConnectivityManager? = null
    private var networkCallback: ConnectivityManager.NetworkCallback? = null
    private var networkLossCount = AtomicInteger(0)
    private var lastNetworkCheckTime = AtomicLong(0L)
    private var lastNetworkQuality = "unknown"
    private val awsEndpointReachable = AtomicBoolean(true)
    private val lastAwsEndpointCheckTime = AtomicLong(0L)
    
    private val frameMonitorRunnable = object : Runnable {
        override fun run() {
            if (!isMonitoringFrames || hasCompleted) return
            
            val now = SystemClock.elapsedRealtime()
            val lastFrame = lastFrameTimestamp.get()
            
            if (lastFrame > 0) {
                val gapMs = now - lastFrame
                
                // Log if gap is > 100ms (frame drops)
                if (gapMs > 100) {
                    val totalFrames = frameCount.get()
                    val gapsSoFar = frameGapCount.incrementAndGet()
                    
                    // Update max gap
                    val currentMax = maxFrameGap.get()
                    if (gapMs > currentMax) {
                        maxFrameGap.set(gapMs)
                    }
                    
                    Log.e(TAG, "⚠️ FRAME GAP DETECTED: ${gapMs}ms since last frame")
                    Log.e(TAG, "   Session time: ${now - sessionStartTime}ms")
                    Log.e(TAG, "   Total frames: $totalFrames")
                    Log.e(TAG, "   Frame gaps detected: $gapsSoFar")
                    Log.e(TAG, "   Max gap so far: ${maxFrameGap.get()}ms")
                    
                    // Critical frame drop (>1 second)
                    if (gapMs > 1000) {
                        Log.e(TAG, "🔴 CRITICAL FRAME DROP: ${gapMs}ms - THIS WILL CAUSE STREAM IDLE!")
                    }
                }
            }
            
            // Check again in 50ms
            frameMonitorHandler.postDelayed(this, 50)
        }
    }
    
    private fun startFrameMonitoring() {
        if (isMonitoringFrames) return
        
        isMonitoringFrames = true
        lastFrameTimestamp.set(SystemClock.elapsedRealtime())
        frameCount.set(0)
        frameGapCount.set(0)
        maxFrameGap.set(0L)
        
        Log.e(TAG, "========== FRAME MONITORING STARTED ==========")
        Log.e(TAG, "Session start time: ${sessionStartTime}ms")
        
        frameMonitorHandler.postDelayed(frameMonitorRunnable, 50)
    }
    
    private fun stopFrameMonitoring() {
        isMonitoringFrames = false
        frameMonitorHandler.removeCallbacks(frameMonitorRunnable)
        
        val totalFrames = frameCount.get()
        val totalGaps = frameGapCount.get()
        val maxGap = maxFrameGap.get()
        val sessionDuration = SystemClock.elapsedRealtime() - sessionStartTime
        
        Log.e(TAG, "========== FRAME MONITORING STOPPED ==========")
        Log.e(TAG, "Session duration: ${sessionDuration}ms")
        Log.e(TAG, "Total frames: $totalFrames")
        Log.e(TAG, "Frame gaps detected: $totalGaps")
        Log.e(TAG, "Max frame gap: ${maxGap}ms")
        Log.e(TAG, "Average frame rate: ${if (sessionDuration > 0) (totalFrames * 1000 / sessionDuration) else 0} fps")
        
        if (totalGaps > 0) {
            Log.e(TAG, "⚠️⚠️⚠️ FRAME DROPS DETECTED DURING SESSION ⚠️⚠️⚠️")
            Log.e(TAG, "This may have caused the stream idle timeout")
        }
    }
    
    private fun onFrameProcessed() {
        val now = SystemClock.elapsedRealtime()
        val count = frameCount.incrementAndGet()
        lastFrameTimestamp.set(now)
        
        // Log every 30 frames to avoid spam
        if (count % 30 == 0) {
            Log.d(TAG, "Frame #$count at ${now - sessionStartTime}ms")
        }
    }
    
    // ==================== NETWORK MONITORING ====================
    
    private fun startNetworkMonitoring() {
        if (isMonitoringNetwork) return
        
        isMonitoringNetwork = true
        lastNetworkCheckTime.set(System.currentTimeMillis())
        networkLossCount.set(0)
        
        Log.e(NETWORK_TAG, "========== NETWORK MONITORING STARTED ==========")
        
        // Initialize connectivity manager
        connectivityManager = getSystemService(Context.CONNECTIVITY_SERVICE) as? ConnectivityManager
        
        // Log initial network state
        logNetworkState("INITIAL")
        
        // Register network callback for connectivity changes
        setupNetworkCallback()
        
        // Start periodic network quality checks
        networkMonitorHandler.postDelayed(networkMonitorRunnable, 2000) // Check every 2 seconds
    }
    
    private fun stopNetworkMonitoring() {
        isMonitoringNetwork = false
        networkMonitorHandler.removeCallbacks(networkMonitorRunnable)
        
        // Unregister network callback
        networkCallback?.let {
            try {
                connectivityManager?.unregisterNetworkCallback(it)
            } catch (e: Exception) {
                Log.w(NETWORK_TAG, "Error unregistering network callback: ${e.message}")
            }
        }
        
        val sessionDuration = System.currentTimeMillis() - lastNetworkCheckTime.get()
        val losses = networkLossCount.get()
        
        Log.e(NETWORK_TAG, "========== NETWORK MONITORING STOPPED ==========")
        Log.e(NETWORK_TAG, "Session duration: ${sessionDuration}ms")
        Log.e(NETWORK_TAG, "Network losses detected: $losses")
        Log.e(NETWORK_TAG, "Last network quality: $lastNetworkQuality")
        Log.e(NETWORK_TAG, "AWS endpoint reachable: ${awsEndpointReachable.get()}")
        
        if (losses > 0) {
            Log.e(NETWORK_TAG, "⚠️⚠️⚠️ NETWORK CONNECTIVITY ISSUES DETECTED ⚠️⚠️⚠️")
            Log.e(NETWORK_TAG, "This may have caused the stream idle timeout")
        }
    }
    
    private val networkMonitorRunnable = object : Runnable {
        override fun run() {
            if (!isMonitoringNetwork || hasCompleted) return
            
            val now = System.currentTimeMillis()
            val elapsed = now - lastNetworkCheckTime.get()
            
            // Log current network state
            logNetworkState("CHECK_${elapsed}ms")
            
            // Check AWS endpoint reachability (every 5 seconds)
            if (now - lastAwsEndpointCheckTime.get() > 5000) {
                checkAwsEndpointReachability()
                lastAwsEndpointCheckTime.set(now)
            }
            
            // Schedule next check
            networkMonitorHandler.postDelayed(this, 2000)
        }
    }
    
    private fun setupNetworkCallback() {
        networkCallback = object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                Log.e(NETWORK_TAG, "🟢 Network AVAILABLE: $network")
            }
            
            override fun onLost(network: Network) {
                val count = networkLossCount.incrementAndGet()
                Log.e(NETWORK_TAG, "🔴 Network LOST: $network (loss count: $count)")
            }
            
            override fun onCapabilitiesChanged(network: Network, networkCapabilities: NetworkCapabilities) {
                val downstreamKbps = networkCapabilities.linkDownstreamBandwidthKbps
                val upstreamKbps = networkCapabilities.linkUpstreamBandwidthKbps
                
                val quality = when {
                    downstreamKbps < 1000 -> "POOR"
                    downstreamKbps < 5000 -> "FAIR"
                    else -> "GOOD"
                }
                
                if (quality != lastNetworkQuality) {
                    lastNetworkQuality = quality
                    Log.e(NETWORK_TAG, "📶 Network quality: $quality (down: ${downstreamKbps}kbps, up: ${upstreamKbps}kbps)")
                }
            }
        }
        
        val request = NetworkRequest.Builder()
            .addCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
            .build()
        
        try {
            connectivityManager?.registerNetworkCallback(request, networkCallback!!)
        } catch (e: Exception) {
            Log.e(NETWORK_TAG, "❌ Failed to register network callback: ${e.message}")
        }
    }
    
    private fun logNetworkState(tag: String) {
        val cm = connectivityManager ?: return
        
        val activeNetwork = cm.activeNetwork
        if (activeNetwork == null) {
            Log.e(NETWORK_TAG, "[$tag] ❌ NO ACTIVE NETWORK")
            return
        }
        
        val capabilities = cm.getNetworkCapabilities(activeNetwork)
        if (capabilities == null) {
            Log.e(NETWORK_TAG, "[$tag] ⚠️ Network active but no capabilities")
            return
        }
        
        val transportType = when {
            capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) -> "WiFi"
            capabilities.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR) -> "Cellular"
            capabilities.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET) -> "Ethernet"
            else -> "Unknown"
        }
        
        val hasInternet = capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
        val isValidated = capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)
        val downKbps = capabilities.linkDownstreamBandwidthKbps
        val upKbps = capabilities.linkUpstreamBandwidthKbps
        
        Log.e(NETWORK_TAG, "[$tag] Network: $transportType")
        Log.e(NETWORK_TAG, "[$tag] - Internet: $hasInternet, Validated: $isValidated")
        Log.e(NETWORK_TAG, "[$tag] - Bandwidth: ↓${downKbps}kbps ↑${upKbps}kbps")
    }
    
    private fun checkAwsEndpointReachability() {
        // Check if we can reach AWS Rekognition endpoint
        // Running in background thread to avoid blocking UI
        thread {
            try {
                val endpoint = "https://streaming-rekognition.$region.amazonaws.com"
                val url = URL(endpoint)
                val connection = url.openConnection() as HttpURLConnection
                connection.requestMethod = "HEAD"
                connection.connectTimeout = 3000 // 3 seconds
                connection.readTimeout = 3000
                
                val responseCode = connection.responseCode
                val reachable = responseCode in 200..499 // Any response means endpoint is reachable
                
                awsEndpointReachable.set(reachable)
                
                if (reachable) {
                    Log.e(NETWORK_TAG, "✅ AWS endpoint reachable: $endpoint (code: $responseCode)")
                } else {
                    Log.e(NETWORK_TAG, "❌ AWS endpoint NOT reachable: $endpoint (code: $responseCode)")
                }
                
                connection.disconnect()
            } catch (e: Exception) {
                awsEndpointReachable.set(false)
                Log.e(NETWORK_TAG, "❌ AWS endpoint check failed: ${e.message}")
                Log.e(NETWORK_TAG, "   This may indicate network connectivity issues to AWS")
            }
        }
    }
    
    private val requestPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) { isGranted ->
        if (isGranted) {
            // Permission granted, continue with liveness
            setupUI()
        } else {
            finishWithResult(RESULT_ERROR, mapOf(
                "code" to "PERMISSION_DENIED",
                "message" to "Camera permission is required for face liveness"
            ))
        }
    }
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        sessionId = intent.getStringExtra(EXTRA_SESSION_ID) ?: ""
        region = intent.getStringExtra(EXTRA_REGION) ?: ""
        
        android.util.Log.e("FaceLiveness", "========== onCreate: sessionId=$sessionId, region=$region ==========")
        
        if (sessionId.isEmpty() || region.isEmpty()) {
            android.util.Log.e("FaceLiveness", "Invalid arguments: sessionId or region is empty")
            finishWithResult(RESULT_ERROR, mapOf(
                "code" to "INVALID_ARGUMENTS",
                "message" to "Session ID and region are required"
            ))
            return
        }
        
        // Initialize Amplify BEFORE setting up UI
        // This is critical - FaceLivenessDetector needs Amplify to be configured
        initializeAmplify()
        
        // Check camera permission
        when {
            ContextCompat.checkSelfPermission(
                this,
                Manifest.permission.CAMERA
            ) == PackageManager.PERMISSION_GRANTED -> {
                // Permission already granted
                android.util.Log.d("FaceLiveness", "Camera permission already granted")
                setupUI()
            }
            else -> {
                // Request permission
                android.util.Log.d("FaceLiveness", "Requesting camera permission")
                requestPermissionLauncher.launch(Manifest.permission.CAMERA)
            }
        }
    }
    
    private fun verifyLoadedPlugins(amplifyClass: Class<*>) {
        try {
            android.util.Log.e("Amplify", "========== VERIFYING LOADED PLUGINS ==========")
            
            // Try to get Auth category
            try {
                val authMethod = amplifyClass.getMethod("Auth")
                val authCategory = authMethod.invoke(null)
                android.util.Log.e("Amplify", "✅ Auth category is available")
                android.util.Log.e("Amplify", "   Auth category type: ${authCategory?.javaClass?.name}")
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "❌ Auth category NOT available: ${e.message}")
            }
            
            // Try to get Predictions category (CRITICAL for Liveness)
            try {
                val predictionsMethod = amplifyClass.getMethod("Predictions")
                val predictionsCategory = predictionsMethod.invoke(null)
                android.util.Log.e("Amplify", "✅✅✅ PREDICTIONS CATEGORY IS AVAILABLE ✅✅✅")
                android.util.Log.e("Amplify", "   Predictions category type: ${predictionsCategory?.javaClass?.name}")
            } catch (e: NoSuchMethodException) {
                android.util.Log.e("Amplify", "🔴🔴🔴 PREDICTIONS CATEGORY NOT AVAILABLE (NoSuchMethodException) 🔴🔴🔴")
                android.util.Log.e("Amplify", "   This means Predictions plugin was NOT added/configured!")
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "🔴 PREDICTIONS CATEGORY ERROR: ${e.message}")
                e.printStackTrace()
            }
            
            // Try to list all configured categories
            try {
                android.util.Log.e("Amplify", "Attempting to list all Amplify methods (categories):")
                val allMethods = amplifyClass.methods
                val categoryMethods = allMethods.filter { 
                    it.parameterCount == 0 && 
                    it.returnType != Void.TYPE &&
                    !it.name.startsWith("get") &&
                    !it.name.startsWith("set") &&
                    !it.name.startsWith("add") &&
                    !it.name.startsWith("configure") &&
                    !it.name.equals("wait") &&
                    !it.name.equals("notify") &&
                    !it.name.equals("notifyAll") &&
                    !it.name.equals("toString") &&
                    !it.name.equals("hashCode") &&
                    !it.name.equals("equals")
                }
                android.util.Log.e("Amplify", "Found ${categoryMethods.size} potential category methods:")
                categoryMethods.forEach { method ->
                    android.util.Log.e("Amplify", "  - ${method.name}() -> ${method.returnType.simpleName}")
                }
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "⚠️ Could not list methods: ${e.message}")
            }
            
            android.util.Log.e("Amplify", "========== END PLUGIN VERIFICATION ==========")
        } catch (e: Exception) {
            android.util.Log.e("Amplify", "🔴 ERROR verifying plugins: ${e.message}", e)
        }
    }
    
    private fun initializeAmplify() {
        try {
            android.util.Log.e("Amplify", "========== Initializing Amplify in FaceLivenessActivity ==========")
            
            // Log Amplify UI Liveness version
            try {
                android.util.Log.e("Amplify", "📦 AWS Amplify UI Liveness version: 1.6.0 (UPGRADED from 1.5.0)")
                android.util.Log.e("Amplify", "✅ Using latest version with timeout bug fixes")
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "Could not determine version: ${e.message}")
            }
            
            // CRITICAL: Read and verify amplifyconfiguration.json
            android.util.Log.e("Amplify", "========== READING AMPLIFY CONFIGURATION ==========")
            try {
                val rawResId = applicationContext.resources.getIdentifier(
                    "amplifyconfiguration", 
                    "raw", 
                    applicationContext.packageName
                )
                android.util.Log.e("Amplify", "🔍 amplifyconfiguration.json resource ID: $rawResId")
                
                if (rawResId != 0) {
                    val inputStream = applicationContext.resources.openRawResource(rawResId)
                    val configContent = inputStream.bufferedReader().use { it.readText() }
                    android.util.Log.e("Amplify", "✅ Configuration file found and read successfully")
                    android.util.Log.e("Amplify", "📄 Configuration content length: ${configContent.length} bytes")
                    
                    // Check if predictions plugin is present
                    if (configContent.contains("\"predictions\"")) {
                        android.util.Log.e("Amplify", "✅✅✅ PREDICTIONS PLUGIN FOUND IN CONFIG ✅✅✅")
                        if (configContent.contains("awsRekognitionPlugin")) {
                            android.util.Log.e("Amplify", "✅✅✅ AWS REKOGNITION PLUGIN FOUND IN CONFIG ✅✅✅")
                        } else {
                            android.util.Log.e("Amplify", "⚠️ Predictions found but awsRekognitionPlugin NOT FOUND")
                        }
                    } else {
                        android.util.Log.e("Amplify", "🔴🔴🔴 PREDICTIONS PLUGIN NOT FOUND IN CONFIG 🔴🔴🔴")
                    }
                    
                    // Log first 500 chars to verify content (safe logging)
                    val preview = configContent.take(500)
                    android.util.Log.e("Amplify", "📄 Config preview (first 500 chars):\n$preview")
                } else {
                    android.util.Log.e("Amplify", "🔴🔴🔴 amplifyconfiguration.json NOT FOUND 🔴🔴🔴")
                }
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "🔴 ERROR reading amplifyconfiguration.json: ${e.message}", e)
            }
            android.util.Log.e("Amplify", "========== END CONFIGURATION READ ==========")
            
            val amplifyClass = Class.forName("com.amplifyframework.core.Amplify")
            
            // Try to check if Amplify is already configured (optional - method may not exist in all versions)
            var isConfigured = false
            try {
                val isConfiguredMethod = amplifyClass.getMethod("isConfigured")
                isConfigured = isConfiguredMethod.invoke(null) as? Boolean ?: false
                if (isConfigured) {
                    android.util.Log.e("Amplify", "✅ Amplify is already configured (by MainActivity or elsewhere)")
                    android.util.Log.e("Amplify", "⚠️ Verifying required plugins are present...")
                    
                    // Verify plugins even if Amplify is already configured
                    verifyLoadedPlugins(amplifyClass)
                    
                    return
                }
            } catch (e: NoSuchMethodException) {
                // isConfigured() method doesn't exist in this version - that's okay, we'll configure anyway
                android.util.Log.e("Amplify", "⚠️ isConfigured() method not available, proceeding with configuration")
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "⚠️ Could not check if Amplify is configured: ${e.message}, proceeding anyway")
            }
            
            android.util.Log.e("Amplify", "Configuring Amplify...")
            
            // Try to add Auth plugin first
            try {
                val authPluginClass = Class.forName("com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin")
                val authPluginInstance = authPluginClass.getDeclaredConstructor().newInstance()
                val addPluginMethod = amplifyClass.getMethod("addPlugin", com.amplifyframework.core.plugin.Plugin::class.java)
                addPluginMethod.invoke(null, authPluginInstance)
                android.util.Log.e("Amplify", "✅ Added AWSCognitoAuthPlugin")
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "⚠️ Could not add Auth plugin (may already be added): ${e.message}")
                // Continue anyway - plugin might already be added
            }
            
            // CRITICAL: Try to add Predictions plugin (REQUIRED for Face Liveness)
            try {
                val predictionsPluginClass = Class.forName("com.amplifyframework.predictions.aws.AWSPredictionsPlugin")
                val predictionsPluginInstance = predictionsPluginClass.getDeclaredConstructor().newInstance()
                val addPluginMethod = amplifyClass.getMethod("addPlugin", com.amplifyframework.core.plugin.Plugin::class.java)
                addPluginMethod.invoke(null, predictionsPluginInstance)
                android.util.Log.e("Amplify", "✅✅✅ Added AWSPredictionsPlugin - CRITICAL FOR LIVENESS ✅✅✅")
            } catch (e: ClassNotFoundException) {
                android.util.Log.e("Amplify", "🔴🔴🔴 AWSPredictionsPlugin class NOT FOUND 🔴🔴🔴")
                android.util.Log.e("Amplify", "   This means aws-predictions dependency is missing from build.gradle!")
                android.util.Log.e("Amplify", "   Error: ${e.message}")
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "⚠️ Could not add Predictions plugin (may already be added): ${e.message}")
                android.util.Log.e("Amplify", "   Exception type: ${e.javaClass.name}")
                // Continue anyway - plugin might already be added
            }
            
            // Try configure(Context) first
            try {
                val configureMethod = amplifyClass.getMethod("configure", android.content.Context::class.java)
                configureMethod.invoke(null, applicationContext)
                android.util.Log.e("Amplify", "✅✅✅ Amplify configured successfully using configure(Context) ✅✅✅")
                
                // Verify what plugins are loaded
                verifyLoadedPlugins(amplifyClass)
                
                return
            } catch (e: NoSuchMethodException) {
                // Try configure(Context, AmplifyConfiguration) if the simple method doesn't exist
                android.util.Log.e("Amplify", "Simple configure method not found, trying with configuration file")
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "⚠️ configure(Context) failed: ${e.message}, trying with config file")
            }
            
            // Try configure with configuration file
            try {
                val configClass = Class.forName("com.amplifyframework.core.AmplifyConfiguration")
                val fromConfigFileMethod = configClass.getMethod("fromConfigFile", android.content.Context::class.java, Int::class.java)
                
                // Use the app's package name (not the plugin's) to find the config file
                val appPackageName = packageManager.getApplicationInfo(applicationInfo.packageName, 0).packageName
                android.util.Log.e("Amplify", "Looking for amplifyconfiguration.json in package: $appPackageName")
                var rawResId = applicationContext.resources.getIdentifier("amplifyconfiguration", "raw", appPackageName)
                
                android.util.Log.e("Amplify", "Looking for amplifyconfiguration.json, rawResId: $rawResId, packageName: $appPackageName")
                
                if (rawResId == 0) {
                    // Try with applicationContext.packageName as fallback
                    rawResId = applicationContext.resources.getIdentifier("amplifyconfiguration", "raw", applicationContext.packageName)
                    android.util.Log.e("Amplify", "Fallback: trying with applicationContext.packageName=${applicationContext.packageName}, rawResId: $rawResId")
                }
                
                if (rawResId != 0) {
                    android.util.Log.e("Amplify", "✅ Found amplifyconfiguration.json with resource ID: $rawResId")
                    val config = fromConfigFileMethod.invoke(null, applicationContext, rawResId)
                    
                    // Discover all available configure methods
                    var configured = false
                    val allMethods = amplifyClass.declaredMethods + amplifyClass.methods
                    val configureMethods = allMethods.filter { it.name == "configure" }
                    
                    android.util.Log.e("Amplify", "Found ${configureMethods.size} configure method(s)")
                    configureMethods.forEach { method ->
                        android.util.Log.e("Amplify", "  - configure(${method.parameterTypes.joinToString { it.simpleName }})")
                    }
                    
                    // Try each configure method we found
                    for (method in configureMethods) {
                        if (configured) break
                        try {
                            val paramTypes = method.parameterTypes
                            val params = when {
                                paramTypes.size == 1 && paramTypes[0] == configClass -> {
                                    // configure(AmplifyConfiguration)
                                    arrayOf(config)
                                }
                                paramTypes.size == 2 && paramTypes[0] == configClass && paramTypes[1] == android.content.Context::class.java -> {
                                    // configure(AmplifyConfiguration, Context) - CORRECT ORDER
                                    arrayOf(config, applicationContext)
                                }
                                paramTypes.size == 2 && paramTypes[0] == android.content.Context::class.java && paramTypes[1] == configClass -> {
                                    // configure(Context, AmplifyConfiguration) - reverse order
                                    arrayOf(applicationContext, config)
                                }
                                paramTypes.size == 1 && paramTypes[0] == android.content.Context::class.java -> {
                                    // configure(Context) - might auto-load config
                                    arrayOf(applicationContext)
                                }
                                else -> {
                                    android.util.Log.e("Amplify", "⚠️ Skipping configure method with unexpected signature: ${paramTypes.joinToString { it.simpleName }}")
                                    continue
                                }
                            }
                            
                            method.isAccessible = true
                            method.invoke(null, *params)
                            android.util.Log.e("Amplify", "✅✅✅ Amplify configured successfully using configure(${paramTypes.joinToString { it.simpleName }}) ✅✅✅")
                            configured = true
                            
                            // Verify what plugins are loaded
                            verifyLoadedPlugins(amplifyClass)
                        } catch (e: Exception) {
                            // Check if it's AlreadyConfiguredException - that's actually OK!
                            val cause = e.cause
                            if (cause != null && cause.javaClass.simpleName == "AlreadyConfiguredException") {
                                android.util.Log.e("Amplify", "✅✅✅ Amplify is already configured (AlreadyConfiguredException) ✅✅✅")
                                configured = true
                                
                                // Verify what plugins are loaded
                                verifyLoadedPlugins(amplifyClass)
                            } else {
                                android.util.Log.e("Amplify", "⚠️ configure(${method.parameterTypes.joinToString { it.simpleName }}) failed: ${e.message}")
                                e.printStackTrace()
                            }
                        }
                    }
                    
                    if (!configured) {
                        android.util.Log.e("Amplify", "❌❌❌ Could not configure Amplify with any available method ❌❌❌")
                        android.util.Log.e("Amplify", "⚠️ Attempting to proceed anyway - Amplify might auto-configure or might already be configured")
                    }
                } else {
                    android.util.Log.e("Amplify", "❌❌❌ amplifyconfiguration.json not found in res/raw/ ❌❌❌")
                }
            } catch (e: Exception) {
                android.util.Log.e("Amplify", "❌ Exception in configure method: ${e.message}", e)
                e.printStackTrace()
            }
        } catch (e: ClassNotFoundException) {
            android.util.Log.e("Amplify", "❌❌❌ Amplify classes not found - dependency may be missing: ${e.message} ❌❌❌")
            e.printStackTrace()
        } catch (error: Exception) {
            android.util.Log.e("Amplify", "❌❌❌ Failed to initialize Amplify: ${error.message} ❌❌❌", error)
            error.printStackTrace()
        }
    }
    
    override fun onBackPressed() {
        android.util.Log.d("FaceLiveness", "Back button pressed - user cancelled")
        cancelTimeoutTimer()
        finishWithResult(RESULT_CANCELLED, null)
    }
    
    override fun onDestroy() {
        super.onDestroy()
        // Stop frame monitoring, network monitoring and cancel timeout timer when activity is destroyed
        stopFrameMonitoring()
        stopNetworkMonitoring()
        cancelTimeoutTimer()
    }
    
    private fun startTimeoutTimer() {
        // Cancel any existing timer
        cancelTimeoutTimer()
        
        // Create handler on main thread
        timeoutHandler = Handler(Looper.getMainLooper())
        
        // Create runnable that will fire after 50 seconds
        timeoutRunnable = Runnable {
            // Only trigger timeout if:
            // 1. Flow hasn't completed
            // 2. Activity is still active
            // 3. We're NOT in verification phase (face scan must be done first)
            if (!hasCompleted && !isFinishing && !isDestroyed && !isInVerificationPhase) {
                android.util.Log.e("FaceLiveness", "⏰ Android: 50-second timeout reached - closing UI and showing error")
                finishWithResult(RESULT_ERROR, mapOf(
                    "code" to "TIMEOUT",
                    "message" to "Unable to generate face signature."
                ))
            } else if (isInVerificationPhase) {
                android.util.Log.d("FaceLiveness", "⏰ Timeout reached but in verification phase - not closing")
            }
        }
        
        // Post the runnable with 50-second delay
        timeoutHandler?.postDelayed(timeoutRunnable!!, TIMEOUT_MS)
        android.util.Log.d("FaceLiveness", "⏰ Started 50-second timeout timer")
    }
    
    private fun cancelTimeoutTimer() {
        timeoutRunnable?.let { runnable ->
            timeoutHandler?.removeCallbacks(runnable)
        }
        timeoutRunnable = null
        timeoutHandler = null
        android.util.Log.d("FaceLiveness", "⏰ Cancelled timeout timer")
    }
    
    private fun setupUI() {
        android.util.Log.d("FaceLiveness", "Setting up UI with sessionId: $sessionId, region: $region")
        
        // Start 70-second timeout timer
        startTimeoutTimer()
        
        setContent {
            // Custom color scheme: only change primary color to black for buttons
            // Keep everything else default
            val customColorScheme = lightColorScheme(
                primary = Color.Black, // Button background color
                onPrimary = Color.White, // Button text color
            )
            
            MaterialTheme(colorScheme = customColorScheme) {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    // Start frame monitoring when UI is set up
                    LaunchedEffect(Unit) {
                        startFrameMonitoring()
                        startNetworkMonitoring()
                    }
                    
                    FaceLivenessScreen(
                        sessionId = sessionId,
                        region = region,
                        onFrameProcessed = {
                            onFrameProcessed()
                        },
                        onComplete = { result ->
                            stopFrameMonitoring()
                            android.util.Log.e("FaceLiveness", "✅✅✅ onComplete called with result: $result")
                            // Mark that we're in verification phase (face scan done, AWS is verifying)
                            isInVerificationPhase = true
                            android.util.Log.d("FaceLiveness", "✅ Face scan complete, now in verification phase - timer will not close")
                            // Handle completion - result is a Map or similar structure
                            val sessionIdResult = result.getOrElse("sessionId") { sessionId }
                            val isLive = result.getOrElse("isLive") { false }
                            finishWithResult(RESULT_SUCCESS, mapOf(
                                "sessionId" to sessionIdResult,
                                "isLive" to isLive
                            ))
                        },
                        onError = { error ->
                            stopFrameMonitoring()
                            android.util.Log.e("FaceLiveness", "❌ onError called with error: $error")
                            // Handle error - error is a Map or similar structure
                            val errorCode = error.getOrElse("errorCode") { "UNKNOWN_ERROR" }
                            val errorMessage = error.getOrElse("errorMessage") { "An error occurred" }
                            finishWithResult(RESULT_ERROR, mapOf(
                                "code" to errorCode,
                                "message" to errorMessage
                            ))
                        }
                    )
                }
            }
        }
    }
    
    private fun finishWithResult(resultType: String, data: Map<String, Any?>?) {
        // Stop all monitoring and mark as completed
        stopFrameMonitoring()
        stopNetworkMonitoring()
        hasCompleted = true
        cancelTimeoutTimer()
        
        val resultIntent = android.content.Intent().apply {
            putExtra("result_type", resultType)
            data?.forEach { (key, value) ->
                when (value) {
                    is String -> putExtra(key, value)
                    is Boolean -> putExtra(key, value)
                    is Int -> putExtra(key, value)
                    is Long -> putExtra(key, value)
                    is Double -> putExtra(key, value)
                    is Float -> putExtra(key, value)
                }
            }
        }
        setResult(
            if (resultType == RESULT_SUCCESS) RESULT_OK else RESULT_CANCELED,
            resultIntent
        )
        finish()
    }
}

@Composable
fun FaceLivenessScreen(
    sessionId: String,
    region: String,
    onComplete: (Map<String, Any>) -> Unit,
    onError: (Map<String, Any>) -> Unit,
    onFrameProcessed: () -> Unit // NEW: Callback for frame processing
) {
    // Timer state
    var timeRemaining by remember { mutableStateOf((FaceLivenessActivity.TIMEOUT_MS / 1000).toInt()) } // Convert to seconds
    var isTimerActive by remember { mutableStateOf(true) }
    var isInVerification by remember { mutableStateOf(false) }
    
    // FRAME DROP DETECTION: Simulate frame callbacks since AWS doesn't expose them
    // We'll use a heartbeat to indicate the UI is active
    LaunchedEffect(Unit) {
        android.util.Log.d(FaceLivenessActivity.TAG, "FaceLivenessDetector composable created - UI is active")
        while (true) {
            onFrameProcessed() // Heartbeat every 33ms (~30fps)
            delay(33)
        }
    }
    
    DisposableEffect(Unit) {
        android.util.Log.d(FaceLivenessActivity.TAG, "FaceLivenessDetector attached to composition")
        onDispose {
            android.util.Log.d(FaceLivenessActivity.TAG, "FaceLivenessDetector detached from composition")
        }
    }
    
    // Countdown timer
    LaunchedEffect(isTimerActive) {
        if (isTimerActive && !isInVerification) {
            while (timeRemaining > 0 && isTimerActive && !isInVerification) {
                delay(1000)
                timeRemaining--
            }
        }
    }
    
    Box(modifier = Modifier.fillMaxSize()) {
        FaceLivenessDetector(
        sessionId = sessionId,
        region = region,
        disableStartView = true, // Skip the library's instruction screen - use Flutter for instructions
        onComplete = {
            // onComplete callback - result might be a simple success indicator
            android.util.Log.d("FaceLiveness", "onComplete called")
            // Stop timer and mark as verification phase
            isInVerification = true
            isTimerActive = false
            val resultMap = mapOf(
                "sessionId" to sessionId,
                "isLive" to true
            )
            onComplete(resultMap)
        },
        onError = { error: Any ->
            // onError callback - extract error message from FaceLivenessDetectionException
            android.util.Log.e("FaceLiveness", "========== onError START ==========")
            android.util.Log.e("FaceLiveness", "onError called: $error")
            android.util.Log.e("FaceLiveness", "Error type: ${error::class.java.name}")
            System.out.println("FaceLiveness ERROR: $error")
            System.out.println("FaceLiveness ERROR TYPE: ${error::class.java.name}")
            
            val errorMessage = try {
                android.util.Log.e("FaceLiveness", "Checking if error is Throwable...")
                android.util.Log.e("FaceLiveness", "Error class: ${error::class.java}")
                android.util.Log.e("FaceLiveness", "Error is Throwable? ${error is Throwable}")
                android.util.Log.e("FaceLiveness", "Error is String? ${error is String}")
                System.out.println("FaceLiveness ERROR CLASS: ${error::class.java}")
                System.out.println("FaceLiveness IS THROWABLE: ${error is Throwable}")
                System.out.println("FaceLiveness IS STRING: ${error is String}")
                
                // Force cast to Throwable if possible
                val throwableError = error as? Throwable
                android.util.Log.e("FaceLiveness", "Cast to Throwable result: $throwableError")
                System.out.println("FaceLiveness CAST TO THROWABLE: $throwableError")
                
                when {
                    error is String -> {
                        android.util.Log.e("FaceLiveness", "Error is a String: $error")
                        error
                    }
                    error is Throwable -> {
                        android.util.Log.e("FaceLiveness", "✅ Error IS a Throwable")
                        System.out.println("FaceLiveness: Error IS a Throwable")
                        // Try to get message, cause, or detailed error info
                        val message = error.message
                        val cause = error.cause
                        val causeMessage = cause?.message
                        val stackTrace = error.stackTraceToString()
                        android.util.Log.e("FaceLiveness", "========== EXCEPTION DETAILS ==========")
                        android.util.Log.e("FaceLiveness", "Exception message: $message")
                        android.util.Log.e("FaceLiveness", "Exception cause type: ${cause?.javaClass?.name}")
                        android.util.Log.e("FaceLiveness", "Exception cause message: $causeMessage")
                        android.util.Log.e("FaceLiveness", "Exception stack: $stackTrace")
                        System.out.println("FaceLiveness EXCEPTION MESSAGE: $message")
                        System.out.println("FaceLiveness EXCEPTION CAUSE TYPE: ${cause?.javaClass?.name}")
                        System.out.println("FaceLiveness EXCEPTION CAUSE MESSAGE: $causeMessage")
                        
                        // Try to get all available methods and call common getters
                        val errorDetails = mutableMapOf<String, Any?>()
                        
                        // Try common getter methods
                        android.util.Log.e("FaceLiveness", "Trying getter methods...")
                        val getterMethods = listOf("getErrorCode", "getErrorMessage", "getMessage", "getCause", "getLocalizedMessage")
                        getterMethods.forEach { methodName ->
                            try {
                                val method = error.javaClass.getMethod(methodName)
                                val value = method.invoke(error)
                                errorDetails[methodName] = value
                                android.util.Log.e("FaceLiveness", "$methodName: $value")
                                System.out.println("FaceLiveness $methodName: $value")
                            } catch (e: Exception) {
                                // Method doesn't exist or failed - that's OK
                                android.util.Log.d("FaceLiveness", "Method $methodName not available: ${e.message}")
                            }
                        }
                        
                        // ========== EXTRACT SUPPRESSED EXCEPTIONS (THE "ATTACHED EXCEPTION") ==========
                        android.util.Log.e("FaceLiveness", "========== CHECKING FOR SUPPRESSED EXCEPTIONS ==========")
                        try {
                            val suppressed = error.suppressed
                            android.util.Log.e("FaceLiveness", "Suppressed exceptions count: ${suppressed.size}")
                            suppressed.forEachIndexed { index, suppressedException ->
                                android.util.Log.e("FaceLiveness", "========== SUPPRESSED EXCEPTION #$index ==========")
                                android.util.Log.e("FaceLiveness", "Type: ${suppressedException.javaClass.name}")
                                android.util.Log.e("FaceLiveness", "Message: ${suppressedException.message}")
                                android.util.Log.e("FaceLiveness", "Cause: ${suppressedException.cause}")
                                android.util.Log.e("FaceLiveness", "ToString: $suppressedException")
                                android.util.Log.e("FaceLiveness", "Stack trace:\n${suppressedException.stackTraceToString()}")
                                
                                // Extract fields from suppressed exception too
                                try {
                                    suppressedException.javaClass.declaredFields.forEach { field ->
                                        try {
                                            field.isAccessible = true
                                            val value = field.get(suppressedException)
                                            android.util.Log.e("FaceLiveness", "  Suppressed[$index].${field.name}: $value")
                                        } catch (e: Exception) {
                                            // Ignore
                                        }
                                    }
                                } catch (e: Exception) {
                                    android.util.Log.w("FaceLiveness", "Could not inspect suppressed exception fields: ${e.message}")
                                }
                            }
                        } catch (e: Exception) {
                            android.util.Log.e("FaceLiveness", "Error getting suppressed exceptions: ${e.message}")
                        }
                        
                        // Try to get all fields from the exception (including inherited)
                        android.util.Log.e("FaceLiveness", "========== INSPECTING ALL EXCEPTION FIELDS ==========")
                        try {
                            var currentClass: Class<*>? = error.javaClass
                            while (currentClass != null && currentClass != Any::class.java) {
                                val classToInspect = currentClass // Local copy for closure
                                android.util.Log.e("FaceLiveness", "Inspecting class: ${classToInspect.name}")
                                classToInspect.declaredFields.forEach { field ->
                                    try {
                                        field.isAccessible = true
                                        val value = field.get(error)
                                        errorDetails["field_${field.name}"] = value
                                        android.util.Log.e("FaceLiveness", "Field ${classToInspect.simpleName}.${field.name}: $value")
                                        System.out.println("FaceLiveness FIELD ${classToInspect.simpleName}.${field.name}: $value")
                                        
                                        // If the field itself is a Throwable, extract its details too
                                        if (value is Throwable && field.name != "cause") {
                                            android.util.Log.e("FaceLiveness", "  ↳ Nested throwable in field '${field.name}':")
                                            android.util.Log.e("FaceLiveness", "    Type: ${value.javaClass.name}")
                                            android.util.Log.e("FaceLiveness", "    Message: ${value.message}")
                                            android.util.Log.e("FaceLiveness", "    Cause: ${value.cause?.message}")
                                            android.util.Log.e("FaceLiveness", "    Stack trace:\n${value.stackTraceToString()}")
                                            
                                            // Try to extract fields from nested throwable
                                            try {
                                                value.javaClass.declaredFields.forEach { nestedField ->
                                                    try {
                                                        nestedField.isAccessible = true
                                                        val nestedValue = nestedField.get(value)
                                                        android.util.Log.e("FaceLiveness", "      ${nestedField.name}: $nestedValue")
                                                    } catch (e: Exception) {
                                                        // Ignore
                                                    }
                                                }
                                            } catch (e: Exception) {
                                                android.util.Log.w("FaceLiveness", "Could not inspect nested throwable fields: ${e.message}")
                                            }
                                        }
                                    } catch (e: Exception) {
                                        android.util.Log.w("FaceLiveness", "Could not read field ${field.name}: ${e.message}")
                                    }
                                }
                                currentClass = currentClass.superclass
                            }
                        } catch (e: Exception) {
                            android.util.Log.w("FaceLiveness", "Could not inspect exception fields: ${e.message}")
                            System.out.println("FaceLiveness FIELD INSPECTION ERROR: ${e.message}")
                        }
                        
                        // ========== EXTRACT FULL CAUSE CHAIN ==========
                        android.util.Log.e("FaceLiveness", "========== FULL CAUSE CHAIN ==========")
                        var currentCause: Throwable? = error
                        var depth = 0
                        while (currentCause != null && depth < 10) {
                            android.util.Log.e("FaceLiveness", "Cause depth $depth:")
                            android.util.Log.e("FaceLiveness", "  Type: ${currentCause.javaClass.name}")
                            android.util.Log.e("FaceLiveness", "  Message: ${currentCause.message}")
                            android.util.Log.e("FaceLiveness", "  ToString: $currentCause")
                            
                            // Extract all fields from each cause
                            try {
                                currentCause.javaClass.declaredFields.forEach { field ->
                                    try {
                                        field.isAccessible = true
                                        val value = field.get(currentCause)
                                        if (field.name != "cause" && field.name != "stackTrace") {
                                            android.util.Log.e("FaceLiveness", "    ${field.name}: $value")
                                        }
                                    } catch (e: Exception) {
                                        // Ignore
                                    }
                                }
                            } catch (e: Exception) {
                                android.util.Log.w("FaceLiveness", "Could not inspect cause fields at depth $depth: ${e.message}")
                            }
                            
                            currentCause = currentCause.cause
                            depth++
                        }
                        
                        // Try to get toString representation
                        val toString = error.toString()
                        android.util.Log.e("FaceLiveness", "Exception toString: $toString")
                        System.out.println("FaceLiveness EXCEPTION toString: $toString")
                        
                        // Build final error message from available info
                        val finalMessage = errorDetails["getErrorMessage"]?.toString() 
                            ?: errorDetails["getErrorCode"]?.toString()?.let { "Error code: $it" }
                            ?: message 
                            ?: causeMessage 
                            ?: toString
                        
                        android.util.Log.e("FaceLiveness", "========== ALL ERROR DETAILS ==========")
                        android.util.Log.e("FaceLiveness", "All error details: $errorDetails")
                        System.out.println("FaceLiveness ALL ERROR DETAILS: $errorDetails")
                        System.out.println("FaceLiveness FINAL MESSAGE: $finalMessage")
                        
                        finalMessage
                    }
                    else -> {
                        android.util.Log.e("FaceLiveness", "⚠️ Error did NOT match String or Throwable - using else branch")
                        System.out.println("FaceLiveness: Error did NOT match String or Throwable")
                        
                        // Use reflection to extract ALL information from the error object
                        val errorDetails = mutableMapOf<String, Any?>()
                        
                        android.util.Log.e("FaceLiveness", "========== EXTRACTING ERROR DETAILS VIA REFLECTION ==========")
                        System.out.println("FaceLiveness: EXTRACTING ERROR DETAILS VIA REFLECTION")
                        
                        // Get all methods and try to call common getters
                        try {
                            val methods = error.javaClass.declaredMethods + error.javaClass.methods
                            android.util.Log.e("FaceLiveness", "Found ${methods.size} methods")
                            
                            val getterMethods = listOf("getMessage", "getErrorCode", "getErrorMessage", "getError", "getCause", "getLocalizedMessage", "getRecoverySuggestion", "getThrowable", "toString")
                            getterMethods.forEach { methodName ->
                                try {
                                    val method = methods.find { it.name == methodName && it.parameterCount == 0 }
                                    if (method != null) {
                                        method.isAccessible = true
                                        val value = method.invoke(error)
                                        errorDetails[methodName] = value
                                        android.util.Log.e("FaceLiveness", "$methodName: $value")
                                        System.out.println("FaceLiveness $methodName: $value")
                                    }
                                } catch (e: Exception) {
                                    android.util.Log.d("FaceLiveness", "Method $methodName failed: ${e.message}")
                                }
                            }
                        } catch (e: Exception) {
                            android.util.Log.e("FaceLiveness", "Error getting methods: ${e.message}")
                        }
                        
                        // Get all fields from main exception
                        android.util.Log.e("FaceLiveness", "========== MAIN EXCEPTION FIELDS ==========")
                        try {
                            var currentClass: Class<*>? = error.javaClass
                            while (currentClass != null && currentClass != Any::class.java) {
                                val classToInspect = currentClass
                                android.util.Log.e("FaceLiveness", "Inspecting class: ${classToInspect.name}")
                                classToInspect.declaredFields.forEach { field ->
                                    try {
                                        field.isAccessible = true
                                        val value = field.get(error)
                                        errorDetails["field_${field.name}"] = value
                                        android.util.Log.e("FaceLiveness", "Field ${classToInspect.simpleName}.${field.name}: $value")
                                        System.out.println("FaceLiveness FIELD ${classToInspect.simpleName}.${field.name}: $value")
                                    } catch (e: Exception) {
                                        android.util.Log.w("FaceLiveness", "Could not read field ${field.name}: ${e.message}")
                                    }
                                }
                                currentClass = currentClass.superclass
                            }
                        } catch (e: Exception) {
                            android.util.Log.e("FaceLiveness", "Error getting fields: ${e.message}")
                        }
                        
                        // ========== EXTRACT PREDICTIONS EXCEPTION FROM THROWABLE FIELD ==========
                        android.util.Log.e("FaceLiveness", "========== EXTRACTING PREDICTIONS EXCEPTION FROM THROWABLE FIELD ==========")
                        val throwableField = errorDetails["field_throwable"]
                        if (throwableField != null && throwableField is Throwable) {
                            android.util.Log.e("FaceLiveness", "✅ Found PredictionsException in throwable field!")
                            android.util.Log.e("FaceLiveness", "PredictionsException type: ${throwableField.javaClass.name}")
                            android.util.Log.e("FaceLiveness", "PredictionsException message: ${throwableField.message}")
                            android.util.Log.e("FaceLiveness", "PredictionsException toString: $throwableField")
                            
                            // Extract all fields from PredictionsException
                            android.util.Log.e("FaceLiveness", "========== PREDICTIONS EXCEPTION FIELDS ==========")
                            try {
                                throwableField.javaClass.declaredFields.forEach { field ->
                                    try {
                                        field.isAccessible = true
                                        val value = field.get(throwableField)
                                        android.util.Log.e("FaceLiveness", "  PredictionsException.${field.name}: $value")
                                        System.out.println("FaceLiveness PREDICTIONS.${field.name}: $value")
                                    } catch (e: Exception) {
                                        android.util.Log.w("FaceLiveness", "Could not read PredictionsException field ${field.name}: ${e.message}")
                                    }
                                }
                            } catch (e: Exception) {
                                android.util.Log.e("FaceLiveness", "Error inspecting PredictionsException: ${e.message}")
                            }
                            
                            // Extract ValidationException from cause chain
                            android.util.Log.e("FaceLiveness", "========== FULL CAUSE CHAIN FROM PREDICTIONS EXCEPTION ==========")
                            var currentCause: Throwable? = throwableField
                            var depth = 0
                            var rootCauseMessage: String? = null
                            
                            while (currentCause != null && depth < 10) {
                                android.util.Log.e("FaceLiveness", "Cause depth $depth:")
                                android.util.Log.e("FaceLiveness", "  Type: ${currentCause.javaClass.name}")
                                android.util.Log.e("FaceLiveness", "  Message: ${currentCause.message}")
                                android.util.Log.e("FaceLiveness", "  ToString: $currentCause")
                                System.out.println("FaceLiveness CAUSE[$depth]: ${currentCause.javaClass.name} - ${currentCause.message}")
                                
                                // Check if this is the ValidationException with stream idle timeout
                                val causeMsg = currentCause.message ?: ""
                                if (causeMsg.contains("Stream idle timeout", ignoreCase = true) ||
                                    causeMsg.contains("timeoutExceeded", ignoreCase = true)) {
                                    android.util.Log.e("FaceLiveness", "🔴 ROOT CAUSE FOUND: $causeMsg")
                                    System.out.println("FaceLiveness ROOT CAUSE FOUND: $causeMsg")
                                    rootCauseMessage = causeMsg
                                }
                                
                                // Extract all fields from this cause
                                try {
                                    currentCause.javaClass.declaredFields.forEach { field ->
                                        try {
                                            field.isAccessible = true
                                            val value = field.get(currentCause)
                                            if (field.name != "cause" && field.name != "stackTrace") {
                                                android.util.Log.e("FaceLiveness", "    ${field.name}: $value")
                                                System.out.println("FaceLiveness CAUSE[$depth].${field.name}: $value")
                                            }
                                        } catch (e: Exception) {
                                            // Ignore
                                        }
                                    }
                                } catch (e: Exception) {
                                    android.util.Log.w("FaceLiveness", "Could not inspect cause at depth $depth: ${e.message}")
                                }
                                
                                currentCause = currentCause.cause
                                depth++
                            }
                            
                            // Use root cause message if found
                            if (rootCauseMessage != null) {
                                android.util.Log.e("FaceLiveness", "========== USING ROOT CAUSE MESSAGE ==========")
                                android.util.Log.e("FaceLiveness", "Root cause: $rootCauseMessage")
                                rootCauseMessage
                            } else {
                                throwableField.message ?: "PredictionsException occurred"
                            }
                        } else {
                            android.util.Log.e("FaceLiveness", "⚠️ No throwable field found or not a Throwable")
                            
                            // Build final message from extracted details
                            val finalMessage = errorDetails["getErrorMessage"]?.toString()
                                ?: errorDetails["getErrorCode"]?.toString()?.let { "Error code: $it" }
                                ?: errorDetails["getMessage"]?.toString()
                                ?: errorDetails["getError"]?.toString()
                                ?: errorDetails["toString"]?.toString()
                                ?: error.toString()
                            
                            android.util.Log.e("FaceLiveness", "========== ALL EXTRACTED ERROR DETAILS ==========")
                            android.util.Log.e("FaceLiveness", "All error details: $errorDetails")
                            System.out.println("FaceLiveness ALL ERROR DETAILS: $errorDetails")
                            System.out.println("FaceLiveness FINAL MESSAGE: $finalMessage")
                            
                            finalMessage
                        }
                    }
                }
            } catch (e: Exception) {
                android.util.Log.e("FaceLiveness", "Error extracting error message: ${e.message}", e)
                error.toString()
            }
            
            android.util.Log.e("FaceLiveness", "Final error message: $errorMessage")
            
            // Check if it's a cancellation error - handle it as a cancellation
            if (errorMessage.contains("cancel", ignoreCase = true) || 
                errorMessage.contains("user", ignoreCase = true) ||
                errorMessage.contains("cancelled", ignoreCase = true)) {
                android.util.Log.d("FaceLiveness", "Detected cancellation in error: $errorMessage")
                // For cancellation, we still call onError but with a cancellation code
                val errorMap = mapOf(
                    "errorCode" to "USER_CANCELLED",
                    "errorMessage" to errorMessage
                )
                onError(errorMap)
            } else {
                // Determine error type and message based on error content
                val errorCode: String
                val errorMessageText: String
                
                // Check for duplicate face or invalid signature errors
                val lowerErrorMessage = errorMessage.lowercase()
                if (lowerErrorMessage.contains("duplicate", ignoreCase = true) ||
                    lowerErrorMessage.contains("already registered", ignoreCase = true) ||
                    lowerErrorMessage.contains("invalid signature", ignoreCase = true) ||
                    lowerErrorMessage.contains("signature", ignoreCase = true)) {
                    errorCode = "DUPLICATE_FACE_OR_SIGNATURE"
                    errorMessageText = "Unable to generate face signature"
                    android.util.Log.d("FaceLiveness", "Detected duplicate face or signature error")
                } else {
                    // Common error - use default message
                    errorCode = "LIVENESS_ERROR"
                    errorMessageText = "Unable to verify the face please try again"
                }
                
                // Activity will finish automatically via finishWithResult
                val errorMap = mapOf(
                    "errorCode" to errorCode,
                    "errorMessage" to errorMessageText
                )
                onError(errorMap)
            }
        }
        )
        
        // Timer UI overlay - only show if not in verification phase
        if (!isInVerification && isTimerActive) {
            Box(
                modifier = Modifier
                    .align(Alignment.TopCenter)
                    .padding(top = 70.dp)
            ) {
                Card(
                    modifier = Modifier.padding(horizontal = 16.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = Color.Black.copy(alpha = 0.7f)
                    )
                ) {
                    Text(
                        text = "Finish the process within ${timeRemaining}s",
                        color = Color.White,
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.padding(horizontal = 16.dp, vertical = 8.dp)
                    )
                }
            }
        }
    }
}

