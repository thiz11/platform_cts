# Copyright (C) 2010 The Android Open Source Project
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

CTS_APPS_LIST := \
    CtsVerifier

CTS_SECURITY_APPS_LIST := \
	CtsAppAccessData \
	CtsAppWithData \
	CtsInstrumentationAppDiffCert \
	CtsPermissionDeclareApp \
	CtsSharedUidInstall \
	CtsSharedUidInstallDiffCert \
	CtsSimpleAppInstall \
	CtsSimpleAppInstallDiffCert \
	CtsTargetInstrumentationApp \
	CtsUsePermissionDiffCert

CTS_TEST_CASE_LIST := \
	TestDeviceSetup \
	CtsTestStubs \
	CtsAccessibilityServiceTestCases \
	CtsAccountManagerTestCases \
	CtsAppTestCases \
	CtsBluetoothTestCases \
	CtsContentTestCases \
	CtsDatabaseTestCases \
	CtsDelegatingAccessibilityService \
	CtsDpiTestCases \
	CtsDpiTestCases2 \
	CtsExampleTestCases \
	CtsGestureTestCases \
	CtsGraphicsTestCases \
	CtsHardwareTestCases \
	CtsJniTestCases \
	CtsLocationTestCases \
	CtsMediaTestCases \
	CtsOsTestCases \
	CtsPermissionTestCases \
	CtsPermission2TestCases \
	CtsProviderTestCases \
	CtsSaxTestCases \
	CtsSpeechTestCases \
	CtsTelephonyTestCases \
	CtsTextTestCases \
	CtsUtilTestCases \
	CtsViewTestCases \
	CtsWebkitTestCases \
	CtsWidgetTestCases \
	CtsNetTestCases \
	SignatureTest \
	CtsPerformanceTestCases \
	CtsPerformance2TestCases \
	CtsPerformance3TestCases \
	CtsPerformance4TestCases \
	CtsPerformance5TestCases \
	ApiDemos \
	ApiDemosReferenceTest \
	$(CTS_APPS_LIST) \
	$(CTS_SECURITY_APPS_LIST)
