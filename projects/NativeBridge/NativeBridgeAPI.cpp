/**********************************************************\

  Auto-generated NativeBridgeAPI.cpp

\**********************************************************/

#include "JSObject.h"
#include "variant_list.h"
#include "DOM/Document.h"
#include "global/config.h"

#include "NativeBridgeAPI.h"

///////////////////////////////////////////////////////////////////////////////
/// @fn FB::variant NativeBridgeAPI::echo(const FB::variant& msg)
///
/// @brief  Echos whatever is passed from Javascript.
///         Go ahead and change it. See what happens!
///////////////////////////////////////////////////////////////////////////////
FB::variant NativeBridgeAPI::echo(const FB::variant& msg)
{
    static int n(0);
    fire_echo("So far, you clicked this many times: ", n++);

    // return "foobar";
    return msg;
}

///////////////////////////////////////////////////////////////////////////////
/// @fn NativeBridgePtr NativeBridgeAPI::getPlugin()
///
/// @brief  Gets a reference to the plugin that was passed in when the object
///         was created.  If the plugin has already been released then this
///         will throw a FB::script_error that will be translated into a
///         javascript exception in the page.
///////////////////////////////////////////////////////////////////////////////
NativeBridgePtr NativeBridgeAPI::getPlugin()
{
    NativeBridgePtr plugin(m_plugin.lock());
    if (!plugin) {
        throw FB::script_error("The plugin is invalid");
    }
    return plugin;
}

// Read/Write property testString
std::string NativeBridgeAPI::get_testString()
{
    return m_testString;
}

void NativeBridgeAPI::set_testString(const std::string& val)
{
    m_testString = val;
}

// Read-only property version
std::string NativeBridgeAPI::get_version()
{
    return FBSTRING_PLUGIN_VERSION;
}

void NativeBridgeAPI::testEvent()
{
    fire_test();
}
