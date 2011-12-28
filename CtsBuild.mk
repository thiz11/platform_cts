# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

# CTS build rules that are needed to generate the corresponding XML
# for a test package. CTS needs these XML files to know what tests
# to run as well as detect which ones were not executed.
#
# 1. Replace the regular build command with the CTS variant:
#
#    BUILD_EXECUTABLE -> BUILD_CTS_EXECUTABLE
#    BUILD_PACKAGE -> BUILD_CTS_PACKAGE
#    BUILD_HOST_JAVA_LIBRARY -> BUILD_HOST_JAVA_LIBRARY
#
# 2. Define LOCAL_CTS_TEST_PACKAGE if you are using
#    BUILD_EXECUTABLE or BUILD_HOST_JAVA_LIBRARY.
#
BUILD_CTS_EXECUTABLE := $(LOCAL_PATH)/tools/build/test_executable.mk
BUILD_CTS_PACKAGE := $(LOCAL_PATH)/tools/build/test_package.mk
BUILD_CTS_HOST_JAVA_LIBRARY := $(LOCAL_PATH)/tools/build/test_host_java_library.mk

# Test XMLs, native executables, and packages will be placed in this
# directory before creating the final CTS distribution.
CTS_TESTCASES_OUT := $(HOST_OUT)/cts-testcases

# Scanners of source files for tests which are then inputed into
# the XML generator to produce test XMLs.
CTS_NATIVE_TEST_SCANNER := $(HOST_OUT_EXECUTABLES)/cts-native-scanner
CTS_JAVA_TEST_SCANNER := $(HOST_OUT_EXECUTABLES)/cts-java-scanner
CTS_JAVA_TEST_SCANNER_DOCLET := $(HOST_OUT_JAVA_LIBRARIES)/cts-java-scanner-doclet.jar

# Generator of test XMLs from scanner output.
CTS_XML_GENERATOR := $(HOST_OUT_EXECUTABLES)/cts-xml-generator

# File indicating which tests should be blacklisted due to problems.
CTS_EXPECTATIONS := cts/tests/expectations/knownfailures.txt

# Functions to get the paths of the build outputs.

define cts-get-lib-paths
	$(foreach lib,$(1),$(HOST_OUT_JAVA_LIBRARIES)/$(lib).jar)
endef

define cts-get-native-paths
	$(foreach exe,$(1),$(call intermediates-dir-for,EXECUTABLES,$(exe))/$(exe))
endef

define cts-get-package-paths
	$(foreach pkg,$(1),$(CTS_TESTCASES_OUT)/$(pkg).apk)
endef

define cts-get-test-xmls
	$(foreach name,$(1),$(CTS_TESTCASES_OUT)/$(name).xml)
endef
