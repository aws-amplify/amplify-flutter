package com.amazonaws.amplify.amplify_core
import com.amplifyframework.core.*
import com.amplifyframework.auth.result.step.*
import com.amplifyframework.core.Action
import com.amplifyframework.core.Consumer
import com.amplifyframework.logging.Logger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.mockito.Mockito.*
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner
import java.lang.reflect.Field
import java.lang.reflect.Modifier

@RunWith(RobolectricTestRunner::class)
class AmplifyCoreTest {

  lateinit var plugin: Core

  private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
  private var mockCore = mock(Amplify::class.java)

  @Before
  fun setup() {
    plugin = Core()
    val mockLog = mock(Logger::class.java)

//    doNothing().`when`(mockLog).error(anyString(), any(AuthException::class.java))

    setFinalStatic(Amplify::class.java.getDeclaredField("Amplify"), mockCore)

  }

  @Test
  fun configure_returnsSuccess() {
    // Arrange
    doAnswer { invocation: InvocationOnMock ->
      plugin.onConfigure()
      null as Void?
    }.`when`(mockCore).configure(anyString(), anyString(), any(AuthSignUpOptions::class.java), ArgumentMatchers.any<Consumer<AuthSignUpResult>>(), ArgumentMatchers.any<Consumer<AuthException>>())
    val userAttributes: HashMap<String, String> = hashMapOf("email" to "test@test.com")
    val options: HashMap<String, Any> = hashMapOf(
            "userAttributes" to userAttributes
    )
    val data: HashMap<*, *> = hashMapOf(
            "username" to "testUser",
            "password" to "testPassword",
            "options" to options
    )
    val arguments: HashMap<String, Any> = hashMapOf("data" to data)
    val call = MethodCall("signUp", arguments)
    val res = mapOf(
            "isSignUpComplete" to false,
            "nextStep" to mapOf(
                    "signUpStep" to "CONFIRM_SIGN_UP_STEP",
                    "additionalInfo" to "{}",
                    "codeDeliveryDetails" to mapOf(
                            "destination" to "test@test.com",
                            "deliveryMedium" to AuthCodeDeliveryDetails.DeliveryMedium.EMAIL.name,
                            "attributeName" to "email"
                    )
            )
    )

    // Act
    plugin.onMethodCall(call, mockResult)

    // Assert
    verify(mockResult, times(1)).success(res);
  }



  private fun setFinalStatic(field: Field, newValue: Any?) {
    field.isAccessible = true
    val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
    modifiersField.isAccessible = true
    modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
    field.set(null, newValue)
  }
}
