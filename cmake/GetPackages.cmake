include(FetchContent)

#boost
# Add boost lib sources
set(BOOST_VERSION 1.81.0)
set(BOOST_INCLUDE_LIBRARIES
system thread filesystem)
set(BOOST_ENABLE_CMAKE ON)

# Download and extract the boost library from GitHub
message(
  STATUS
    "Downloading and extracting boost library sources. This will take some time..."
)
set(FETCHCONTENT_QUIET FALSE) # Needed to print downloading progress
FetchContent_Declare(
  Boost
  URL ${CMAKE_CURRENT_SOURCE_DIR}/packages/boost-${BOOST_VERSION}.tar.xz 
  #  URL https://dl.bintray.com/boostorg/release/${BOOST_VERSION}/source/boost_${BOOST_VERSION}.tar.gz

#   SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/boost
  DOWNLOAD_EXTRACT_TIMESTAMP
  TRUE)
  FetchContent_GetProperties(glog)
if(NOT Boost_POPULATED)
set(Boost_USE_ICU OFF)
set(Boost_NO_TESTS ON)

      FetchContent_MakeAvailable(Boost)
endif()





