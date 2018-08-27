#include <util/PluginHelper.h>
using namespace mous;

static const PluginInfo plugin_info {
    "oss",
    "Open Sound System Output",
    2
};

extern "C" {
    PluginType MousGetPluginType() {
        return PluginType::Output;
    }

    const PluginInfo* MousGetPluginInfo() {
        return &plugin_info;
    }

    void* MousCreateObject() {
        return nullptr;
    }

    void MousFreeObject() {
    }
}

