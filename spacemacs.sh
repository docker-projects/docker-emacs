
docker run --rm \                                            
        -u $(id -u):$(id -g) \
        -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
        -v /dev/snd:/dev/snd \
        -v "$HOME/spacemacs:$HOME" \
        -w "$HOME/spacemacs" \
        -e DISPLAY="unix$DISPLAY" \
        -e HOME \
        $(find /dev/snd/ -type c | sed 's/^/--device /') \
        ugeek/emacs "$@"
