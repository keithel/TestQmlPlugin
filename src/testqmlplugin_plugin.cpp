#include "testqmlplugin_plugin.h"
#include "myrectangle.h"

#include <qqml.h>

void TestQmlPluginPlugin::registerTypes(const char *uri)
{
    // @uri com.l3t.testQmlPlugin
    qmlRegisterType<MyRectangle>(uri, 1, 0, "MyInternalRectangle");
}

