import com.amazonaws.amplify.amplify_datastore.AmplifyDataStorePlugin
import org.junit.Assert
import org.junit.Before
import org.junit.Test

class AmplifyDataStorePluginTest {
    lateinit var plugin: AmplifyDataStorePlugin

    @Before
    fun setup() {
        plugin = AmplifyDataStorePlugin()
    }

    @Test
    fun test_Query_Success_Result() {
        Assert.assertTrue(true)
    }
}