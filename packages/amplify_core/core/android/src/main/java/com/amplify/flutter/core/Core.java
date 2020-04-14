package com.amplify.flutter.core;


import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import com.amplifyframework.core.Amplify;


class Core {
  private final Context applicationContext;
  @Nullable private Activity activity;

  Core(Context applicationContext, @Nullable Activity activity) {
    System.out.println("JAVA CORE");
    this.applicationContext = applicationContext;
    this.activity = activity;
  }

  void setActivity(@Nullable Activity activity) {
    this.activity = activity;
  }

  void configure() {}

  Amplify getConfiguration() {
    return new Amplify();
  };  
}
