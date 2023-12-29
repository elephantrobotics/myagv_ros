#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/er/myagv_ros/src/rtabmap_ros/rtabmap_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/er/myagv_ros/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/er/myagv_ros/install/lib/python3/dist-packages:/home/er/myagv_ros/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/er/myagv_ros/build" \
    "/home/er/.pyenv/shims/python3" \
    "/home/er/myagv_ros/src/rtabmap_ros/rtabmap_python/setup.py" \
    egg_info --egg-base /home/er/myagv_ros/build/rtabmap_ros/rtabmap_python \
    build --build-base "/home/er/myagv_ros/build/rtabmap_ros/rtabmap_python" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/er/myagv_ros/install" --install-scripts="/home/er/myagv_ros/install/bin"
