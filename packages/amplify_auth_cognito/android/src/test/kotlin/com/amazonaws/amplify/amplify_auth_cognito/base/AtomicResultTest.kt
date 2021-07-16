package com.amazonaws.amplify.amplify_auth_cognito.base

import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runBlockingTest
import kotlinx.coroutines.test.setMain
import org.junit.AfterClass
import org.junit.BeforeClass
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mock
import org.mockito.Mockito.*
import org.mockito.junit.MockitoJUnitRunner

@ObsoleteCoroutinesApi
@ExperimentalCoroutinesApi
@RunWith(MockitoJUnitRunner::class)
class AtomicResultTest {
    companion object {
        /**
         * Used to replace unavailable [Dispatchers.Main] context.
         */
        private val mainThreadSurrogate = newSingleThreadContext("UI Thread")

        @JvmStatic
        @BeforeClass
        fun setUp() {
            Dispatchers.setMain(mainThreadSurrogate)
        }

        @JvmStatic
        @AfterClass
        fun tearDown() {
            Dispatchers.resetMain()
            mainThreadSurrogate.close()
        }
    }

    @Mock
    private lateinit var mockResult: MethodChannel.Result

    @Test
    fun successIsForwarded() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        atomicResult.success(null)
        verify(mockResult).success(null)
    }

    @Test
    fun errorIsForwarded() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        atomicResult.error(null, null, null)
        verify(mockResult).error(null, null, null)
    }

    @Test
    fun notImplementedIsForwarded() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        atomicResult.notImplemented()
        verify(mockResult).notImplemented()
    }

    @Test
    fun multipleSynchronousRepliesAreNotSent() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        atomicResult.success(null)
        atomicResult.success(null)
        verify(mockResult, times(1)).success(any())
    }

    @Test
    fun multipleConcurrentRepliesAreNotSent() = runBlockingTest {
        val atomicResult = AtomicResult(mockResult)
        val jobs = mutableListOf<Job>()
        for (i in 0..1000) {
            val job = launch(Dispatchers.IO) {
                atomicResult.success(null)
            }
            jobs.add(job)
        }
        // Block til jobs complete
        jobs.forEach {
            it.join()
        }
        verify(mockResult, times(1)).success(any())
    }
}