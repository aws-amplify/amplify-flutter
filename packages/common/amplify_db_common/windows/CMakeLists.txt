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

# Option to disable internal sqlite3 definition
option(USE_CUSTOM_SQLITE3 "Disable internal sqlite3 definition to allow downstream dependencies to define their own" OFF)

if (NOT USE_CUSTOM_SQLITE3)
  # Define the sqlite3_amplify target
  if (NOT TARGET sqlite3_amplify)
    add_library(sqlite3_amplify SHARED "sqlite3_flutter.c")
    
    # Configure sqlite3 properties and definitions
    target_include_directories(sqlite3_amplify PRIVATE "${sqlite3_SOURCE_DIR}")
    target_compile_options(sqlite3_amplify PRIVATE "$<$<NOT:$<CONFIG:Debug>>:-O2>" "/w")
    target_compile_definitions(sqlite3_amplify PRIVATE
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
  endif()

  # Create a global alias for sqlite3
  if (NOT TARGET sqlite3)
    add_library(sqlite3 ALIAS sqlite3_amplify)
  endif()
endif()

# Link your plugin to the custom sqlite3 target
if (TARGET sqlite3_amplify)
  target_link_libraries(${PLUGIN_NAME} PRIVATE sqlite3_amplify)
endif()

# Add dependencies to ensure proper build order
if (NOT USE_CUSTOM_SQLITE3 AND TARGET sqlite3_amplify)
  add_dependencies(${PLUGIN_NAME} sqlite3_amplify)
endif()
