FROM nvidia/cuda:7.5-runtime
MAINTAINER Kiran Somasundaram

RUN apt-get update && \ 
	apt-get install -y \ 
		curl wget nano \ 
		bzip2 libfreetype6 libgl1-mesa-dev \ 
		libglu1-mesa \ 
		libxi6 libxrender1 && \ 
	apt-get -y autoremove  

# Install blender

RUN mkdir /usr/local/blender && \
	wget --quiet http://ftp.nluug.nl/pub/graphics/blender/release/Blender2.78/blender-2.78c-linux-glibc219-x86_64.tar.bz2 -O blender.tar.bz2 && \
	tar -jxvf blender.tar.bz2 -C /usr/local/blender --strip-components=1 && \
	rm blender.tar.bz2

RUN ln -s /usr/local/blender/blender /usr/bin/blender

VOLUME /code
VOLUME /data

ENTRYPOINT ["bin/bash"]
