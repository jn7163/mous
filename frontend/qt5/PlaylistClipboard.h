#ifndef PLAYLISTCLIPBOARD_H
#define PLAYLISTCLIPBOARD_H

#include <deque>

template <class T>
class PlaylistClipboard
{
public:
    PlaylistClipboard():
        m_Empty(true)
    {

    }

    bool Empty() const
    {
        return m_Empty;
    }

    std::deque<T> Content() const
    {
        return m_Content;
    }

    void SetContent(const std::deque<T>& content)
    {
        m_Content = content;
        m_Empty = false;
    }

    void Clear()
    {
        m_Empty = true;
    }

private:
    bool m_Empty;
    std::deque<T> m_Content;
};

#endif // PLAYLISTCLIPBOARD_H
