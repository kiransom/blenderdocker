Docker file for blender 2.78

Works with nvidia-docker

'''
To run with X tunneling from host
$ xhost + # insecure, but quick hack for X11
$ nvidia-docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix image-name
'''
