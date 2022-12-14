#
# Copyright (C) 2020 The Falco Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.
#
include(ExternalProject)

set(CATCH2_INCLUDE ${CMAKE_BINARY_DIR}/catch2-prefix/include)

set(CATCH_EXTERNAL_URL URL https://github.com/catchorg/catch2/archive/v2.13.9.tar.gz URL_HASH
                       SHA256=06dbc7620e3b96c2b69d57bf337028bf245a211b3cddb843835bfe258f427a52)

ExternalProject_Add(
  catch2
  PREFIX ${CMAKE_BINARY_DIR}/catch2-prefix
  ${CATCH_EXTERNAL_URL}
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/catch2-prefix/src/catch2/single_include/catch2/catch.hpp
                  ${CATCH2_INCLUDE}/catch.hpp)
