#/**********************************************************\ 
#
# Auto-Generated Plugin Configuration file
# for NativeBridge
#
#\**********************************************************/

set(PLUGIN_NAME "NativeBridge")
set(PLUGIN_PREFIX "NBR")
set(COMPANY_NAME "personalnet")

# ActiveX constants:
set(FBTYPELIB_NAME NativeBridgeLib)
set(FBTYPELIB_DESC "NativeBridge 1.0 Type Library")
set(IFBControl_DESC "NativeBridge Control Interface")
set(FBControl_DESC "NativeBridge Control Class")
set(IFBComJavascriptObject_DESC "NativeBridge IComJavascriptObject Interface")
set(FBComJavascriptObject_DESC "NativeBridge ComJavascriptObject Class")
set(IFBComEventSource_DESC "NativeBridge IFBComEventSource Interface")
set(AXVERSION_NUM "1")

# NOTE: THESE GUIDS *MUST* BE UNIQUE TO YOUR PLUGIN/ACTIVEX CONTROL!  YES, ALL OF THEM!
set(FBTYPELIB_GUID 9ed91bae-3af8-5969-9cf9-455c6f853d19)
set(IFBControl_GUID 3aec054b-6f0a-59ba-864d-d4a1ccf28e67)
set(FBControl_GUID 932f3253-a485-57db-830d-e56d91d13b15)
set(IFBComJavascriptObject_GUID bbae6d0f-6017-5948-a846-846b7fc2eb0f)
set(FBComJavascriptObject_GUID 11179ae3-7ea1-51d0-b977-b5e331d45599)
set(IFBComEventSource_GUID 03bfc5a2-31b9-5055-a803-d3a59112b1e1)
if ( FB_PLATFORM_ARCH_32 )
    set(FBControl_WixUpgradeCode_GUID 5b5cf015-4bcb-51a2-8734-cf2aa9fa8d4a)
else ( FB_PLATFORM_ARCH_32 )
    set(FBControl_WixUpgradeCode_GUID 086b78d8-e4ad-52de-972e-0b5534c18603)
endif ( FB_PLATFORM_ARCH_32 )

# these are the pieces that are relevant to using it from Javascript
set(ACTIVEX_PROGID "personalnet.NativeBridge")
set(MOZILLA_PLUGINID "personal.net/NativeBridge")

# strings
set(FBSTRING_CompanyName "personal.net")
set(FBSTRING_PluginDescription "The plugin bridge between javascript and C++ code.")
set(FBSTRING_PLUGIN_VERSION "1.0.0.0")
set(FBSTRING_LegalCopyright "Copyright 2013 personal.net")
set(FBSTRING_PluginFileName "np${PLUGIN_NAME}.dll")
set(FBSTRING_ProductName "NativeBridge")
set(FBSTRING_FileExtents "")
if ( FB_PLATFORM_ARCH_32 )
    set(FBSTRING_PluginName "NativeBridge")  # No 32bit postfix to maintain backward compatability.
else ( FB_PLATFORM_ARCH_32 )
    set(FBSTRING_PluginName "NativeBridge_${FB_PLATFORM_ARCH_NAME}")
endif ( FB_PLATFORM_ARCH_32 )
set(FBSTRING_MIMEType "application/x-nativebridge")

# Uncomment this next line if you're not planning on your plugin doing
# any drawing:

#set (FB_GUI_DISABLED 1)

# Mac plugin settings. If your plugin does not draw, set these all to 0
set(FBMAC_USE_QUICKDRAW 0)
set(FBMAC_USE_CARBON 1)
set(FBMAC_USE_COCOA 1)
set(FBMAC_USE_COREGRAPHICS 1)
set(FBMAC_USE_COREANIMATION 0)
set(FBMAC_USE_INVALIDATINGCOREANIMATION 0)

# If you want to register per-machine on Windows, uncomment this line
#set (FB_ATLREG_MACHINEWIDE 1)
