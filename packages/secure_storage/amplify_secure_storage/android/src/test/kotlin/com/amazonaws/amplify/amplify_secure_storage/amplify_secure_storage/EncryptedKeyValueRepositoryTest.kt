package com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage

import android.content.Context
import android.content.Context.MODE_PRIVATE
import androidx.test.core.app.ApplicationProvider
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(manifest = Config.NONE, sdk = [23,33])
class EncryptedKeyValueRepositoryTest {
    private var context: Context = ApplicationProvider.getApplicationContext()

    private var repo: EncryptedKeyValueRepository = TestEncryptedKeyValueRepository(context, "test")

    private fun clearNoBackUpDir() {
        repo.initializationFlagFile.delete()
    }

    @Before
    fun setup() {
        FakeAndroidKeyStore.setup
        clearNoBackUpDir()
    }

    @After
    fun tearDown() {
        clearNoBackUpDir()
    }

    @Test
    fun `can read, write, and delete`()  {
        repo.put("key_1", "val_1")
        assertEquals("val_1", repo.get("key_1"))

        repo.remove("key_1")
        assertNull(repo.get("key_1"))
    }

    @Test
    fun `data persists across EncryptedKeyValueRepository instances `()  {
        repo.put("key_1", "val_1")
        assertEquals("val_1", repo.get("key_1"))

        val repo2 = TestEncryptedKeyValueRepository(context, "test")
        assertEquals("val_1", repo2.get("key_1"))
    }

    @Test
    fun `data does not persist app re-install`()  {
        repo.put("key_1", "val_1")
        assertEquals("val_1", repo.get("key_1"))

        clearNoBackUpDir() // simulate a re-install by clearing the no backup dir

        val repo2 = TestEncryptedKeyValueRepository(context, "test")
        assertNull(repo2.get("key_1"))
    }

}

class TestEncryptedKeyValueRepository(
    private val context: Context,
    sharedPreferencesName: String,
): EncryptedKeyValueRepository(context, sharedPreferencesName) {

    /**
     * Override removeSharedPreferencesFile in test because File().delete() will not clear
     * data in test environment.
     */
    override fun removeSharedPreferencesFile() {
        context.getSharedPreferences("test", MODE_PRIVATE).edit().clear().commit()
    }
}