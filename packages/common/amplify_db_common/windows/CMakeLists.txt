# The Flutter tooling requires that developers have a version of Visual Studio
# installed that includes CMake 3.14 or later. You should not increase this
# version, as doing so will cause the plugin to fail to compile for some
# customers of the plugin.
cmake_minimum_required(VERSION 3.14)

# Project-level configuration.
set(PROJECT_NAME "amplify_db_common")
project(${PROJECT_NAME} LANGUAGES C CXX)

# This value is used when generating builds using this plugin, so it must
# not be changed
set(PLUGIN_NAME "amplify_db_common_plugin")

add_library(${PLUGIN_NAME} SHARED
  "amplify_db_common_plugin.cpp"
)

###
# Below here, keep in sync with: https://github.com/simolus3/sqlite3.dart/blob/main/sqlite3_flutter_libs/windows/CMakeLists.txt
###

# Essentially, the idea of this build script is to compile a sqlite3.dll
# and make Fluter bundle that with the final app.
# It looks like we can't avoid building a sqlite3_flutter_libs.dll too,
# but that's not on me.

apply_standard_settings(${PLUGIN_NAME})
set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)
target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_link_libraries(${PLUGIN_NAME} PRIVATE flutter flutter_wrapper_plugin)

# Include FetchContent for sqlite3 if not already available.
include(FetchContent)

# Only add the sqlite3 library if it hasn't been defined already.
if (NOT TARGET sqlite3)
  if (CMAKE_VERSION VERSION_GREATER_EQUAL "3.24.0")
    FetchContent_Declare(
      sqlite3
      URL https://sqlite.org/2023/sqlite-autoconf-3430000.tar.gz
      DOWNLOAD_EXTRACT_TIMESTAMP NEW
    )
  else()
    FetchContent_Declare(
      sqlite3
      URL https://sqlite.org/2023/sqlite-autoconf-3430000.tar.gz
    )
  endif()

  FetchContent_MakeAvailable(sqlite3)

  # Define the sqlite3 library only if it wasn't already defined.
  add_library(sqlite3 SHARED "sqlite3_flutter.c")
  
  # Configure sqlite3 compilation options.
  target_include_directories(sqlite3 PRIVATE "${sqlite3_SOURCE_DIR}")
  target_compile_options(sqlite3 PRIVATE "$<$<NOT:$<CONFIG:Debug>>:-O2>" "/w")

  # Note: Keep in sync with https://github.com/simolus3/sqlite-native-libraries/blob/master/sqlite3-native-library/cpp/CMakeLists.txt
  target_compile_definitions(sqlite3 PRIVATE
    SQLITE_ENABLE_FTS5
    SQLITE_ENABLE_RTREE
    SQLITE_DQS=0
    SQLITE_DEFAULT_MEMSTATUS=0
    SQLITE_TEMP_STORE=2
    SQLITE_MAX_EXPR_DEPTH=0
    SQLITE_OMIT_AUTHORIZATION
    SQLITE_OMIT_DECLTYPE
    SQLITE_OMIT_DEPRECATED
    SQLITE_OMIT_GET_TABLE
    SQLITE_OMIT_LOAD_EXTENSION
    SQLITE_OMIT_PROGRESS_CALLBACK
    SQLITE_OMIT_SHARED_CACHE
    SQLITE_OMIT_TCL_VARIABLE
    SQLITE_OMIT_TRACE
    SQLITE_USE_ALLOCA
    SQLITE_UNTESTABLE
    SQLITE_HAVE_ISNAN
    SQLITE_HAVE_LOCALTIME_R
    SQLITE_HAVE_LOCALTIME_S
  )
  
  # Create an alias for this version of sqlite3 for your plugin's use.
  add_library(sqlite3_amplify_db_common ALIAS sqlite3)
else()
  # If sqlite3 already exists, create an alias for your plugin to avoid duplication.
  add_library(sqlite3_amplify_db_common ALIAS sqlite3)
endif()

# Link your plugin to the sqlite3 alias.
target_link_libraries(${PLUGIN_NAME} PRIVATE sqlite3_amplify_db_common)

# Ensure sqlite3 actually gets built.
add_dependencies(${PLUGIN_NAME} sqlite3_amplify_db_common)

# List of absolute paths to libraries that should be bundled with the plugin.
set(amplify_db_common_bundled_libraries
  "$<TARGET_FILE:sqlite3_amplify_db_common>"
  PARENT_SCOPE
)
