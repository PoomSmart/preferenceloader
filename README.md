# Simulator version of PreferenceLoader
This project aims to make testing tweak settings bundle possible on iOS simulator. [simject](https://github.com/angelXwind/simject) is required and used by this project.

### Setting up simulator
`make setup PL_SIMULATOR_VERSION=9.3` For instance, if you target iOS simulator 9.3

Or

`make setup` if you specify the version in locatesim.mk

### Uninstallation
`make remove PL_SIMULATOR_VERSION=9.3`

Or

`make remove` if you specify the version in locatesim.mk

### Sample projects
* [SimPref](https://github.com/PoomSmart/SimPref)
* [Emoji10 (iOS 6.0-8.2)](https://github.com/PoomSmart/Emoji10-Legacy)

# Original README

This is a drop-in replacement for Thomas Moore's PreferenceLoader project.
I personally found this necessary, as there were various things about the existing PreferenceLoader I did not like.

### Complaints about the Original ###
* unnecessary hooking
 * <tt>+[NSData initWithContentsOfFile:]</tt>
 * <tt>-[NSBundle pathForResource:ofType:]</tt>
 * <tt>-[PSSpecifier setupIconImageWithPath:]</tt>
* Due to the way PreferenceLoader was implemented (intercepting the toplevel settings plists as they were read from disk and inserting our data directly into them (!)) it had certain filenames hardcoded, such as Settings-(iPhone|iPod).plist, and wouldn't work for other devices.
* Due to the broad hooks above, all sorts of things that don't need to be intercepted are. Every resource path calculated from a bundle gets extra checks tacked onto it, and every NSData-read-from-file gets a filename check.
* Its current lack of compatibility with iPhoneOS 3.2 and the iPad (relies on a removed ivar, and Settings-Wildcat.plist is not processed.)

### What this Replacement offers ###
* source availability
* error recovery (loading a bad bundle results in a simple "There was an error loading ..." instead of a blank preferences panel)
* cleaner design
* iPhoneOS 3.2 and iPad compatibility.

### License ###
PreferenceLoader is made available under the provisions of the GNU Lesser General Public License (LGPL), version 3.
