package com.amazonaws.amplify.amplify_datastore

import com.amazonaws.amplify.amplify_datastore.util.AtomicResult
import io.flutter.Log
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mock
import org.mockito.Mockito
import org.mockito.Mockito.any
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.junit.MockitoJUnitRunner

@ExperimentalCoroutinesApi
@RunWith(MockitoJUnitRunner::class)
class AtomicResultTest {
    @get:Rule
    var coroutinesTestRule = CoroutineTestRule()

    @Mock
    private lateinit var mockResult: MethodChannel.Result

    @Test
    fun successIsForwarded(): Unit = runTest(coroutinesTestRule.testDispatcher) {
        val atomicResult = AtomicResult(mockResult, "successIsForwarded")
        atomicResult.success(null)

        advanceUntilIdle()
        
        verify(mockResult).success(null)
    }

    @Test
    fun errorIsForwarded(): Unit = runTest(coroutinesTestRule.testDispatcher) {
        val atomicResult = AtomicResult(mockResult, "errorIsForwarded")
        atomicResult.error("", null, null)

        advanceUntilIdle()

        verify(mockResult).error("", null, null)
    }

    @Test
    fun notImplementedIsForwarded(): Unit = runTest(coroutinesTestRule.testDispatcher) {
        val atomicResult = AtomicResult(mockResult, "notImplementedIsForwarded")
        atomicResult.notImplemented()

        advanceUntilIdle()

        verify(mockResult).notImplemented()
    }

    @Test
    fun multipleSynchronousRepliesAreNotSent(): Unit = runTest(coroutinesTestRule.testDispatcher) {
        val mockedLog = Mockito.mockStatic(Log::class.java)
        
        val atomicResult = AtomicResult(mockResult, "multipleSynchronousRepliesAreNotSent")
        atomicResult.success(null)
        atomicResult.success(null)
        
        advanceUntilIdle()
        
        verify(mockResult, times(1)).success(any())       
        mockedLog.close()
    }
}
