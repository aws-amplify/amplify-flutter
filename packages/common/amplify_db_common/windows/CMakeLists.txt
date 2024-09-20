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

# ##
# Below here, keep in sync with: https://github.com/simolus3/sqlite3.dart/blob/main/sqlite3_flutter_libs/windows/CMakeLists.txt
# ##

# Apply standard settings for the plugin
apply_standard_settings(${PLUGIN_NAME})
set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)
target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_link_libraries(${PLUGIN_NAME} PRIVATE flutter flutter_wrapper_plugin)

# Check if the target 'sqlite3' already exists
if(NOT TARGET sqlite3_amplify_db_common)
  include(FetchContent)

  if(CMAKE_VERSION VERSION_GREATER_EQUAL "3.24.0")
    FetchContent_Declare(
      sqlite3
      URL https://sqlite.org/2024/sqlite-autoconf-3460000.tar.gz
      DOWNLOAD_EXTRACT_TIMESTAMP NEW
    )
  else()
    FetchContent_Declare(
      sqlite3
      URL https://sqlite.org/2024/sqlite-autoconf-3460000.tar.gz
    )
  endif()

  FetchContent_MakeAvailable(sqlite3)

  # Create an alias for the sqlite3 library specifically for amplify_db_common
  # Must be preserved to avoid collisions, ie consumer has a dependency on sqlite3 too
  add_library(sqlite3_amplify_db_common SHARED "sqlite3_flutter.c")

  target_include_directories(sqlite3_amplify_db_common PRIVATE "${sqlite3_SOURCE_DIR}")
  target_compile_options(sqlite3_amplify_db_common PRIVATE "$<$<NOT:$<CONFIG:Debug>>:-O2>" "/w")

  target_compile_definitions(sqlite3_amplify_db_common PRIVATE
    SQLITE_ENABLE_DBSTAT_VTAB
    SQLITE_ENABLE_FTS5
    SQLITE_ENABLE_RTREE
    SQLITE_DQS=0
    SQLITE_DEFAULT_MEMSTATUS=0
    SQLITE_TEMP_STORE=2
    SQLITE_MAX_EXPR_DEPTH=0
    SQLITE_STRICT_SUBTYPE=1
    SQLITE_OMIT_AUTHORIZATION
    SQLITE_OMIT_DECLTYPE
    SQLITE_OMIT_DEPRECATED
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
endif()

# Ensure sqlite3_amplify_db_common is used by the plugin
add_dependencies(${PLUGIN_NAME} sqlite3_amplify_db_common)

# List of absolute paths to libraries that should be bundled with the plugin
set(amplify_db_common_bundled_libraries
  "$<TARGET_FILE:sqlite3_amplify_db_common>"
  PARENT_SCOPE
)
