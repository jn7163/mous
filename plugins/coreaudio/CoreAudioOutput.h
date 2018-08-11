#pragma once

#include <plugin/IOutput.h>
using namespace mous;

class CoreAudioOutput: public IOutput
{
public:
    CoreAudioOutput();

public:
    virtual ~CoreAudioOutput();

    virtual ErrorCode Open();
    virtual void Close();

    virtual ErrorCode Setup(int32_t& channels, int32_t& sampleRate, int32_t& bitsPerSample);
    virtual ErrorCode Write(const char* buf, uint32_t len);

    virtual int VolumeLevel() const;
    virtual void SetVolumeLevel(int level);

    virtual std::vector<const BaseOption*> Options() const;
};
