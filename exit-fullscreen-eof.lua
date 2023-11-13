-- Exit fullscreen when playback ends, if keep-open=always

function exit_fullscreen(name, value)
    if value == true then
        mp.set_property("fullscreen", "no")
    end
end
mp.observe_property("eof-reached", "bool", exit_fullscreen)