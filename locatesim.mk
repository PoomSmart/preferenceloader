# fallback to 9.3 here
PL_SIMULATOR_VERSION := 9.3

PL_SIMULATOR_ROOT = /Library/Developer/CoreSimulator/Profiles/Runtimes/iOS\ $(PL_SIMULATOR_VERSION).simruntime/Contents/Resources/RuntimeRoot

PL_SIMULATOR_BUNDLES_PATH = $(PL_SIMULATOR_ROOT)/Library/PreferenceBundles
PL_SIMULATOR_PLISTS_PATH = $(PL_SIMULATOR_ROOT)/Library/PreferenceLoader/Preferences
