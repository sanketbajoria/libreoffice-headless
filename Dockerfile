FROM ubuntu:eoan

RUN apt-get update && \
	echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
	apt-get -y -q install \
		libreoffice \
        libreoffice-java-common \
        openjdk-8-jre \
		fonts-opensymbol \
		hyphen-fr \
		hyphen-de \
		hyphen-en-us \
		hyphen-it \
		hyphen-ru \
		fonts-dejavu \
		fonts-dejavu-core \
		fonts-dejavu-extra \
		ttf-mscorefonts-installer \
		fonts-droid-fallback \
		fonts-open-sans \
		fonts-dustin \
		fonts-f500 \
		fonts-fanwood \
		fonts-freefont-ttf \
		fonts-liberation \
		fonts-lmodern \
		fonts-lyx \
		fonts-sil-gentium \
		fonts-texgyre \
		fonts-noto \
		fonts-tlwg-purisa wget --no-install-recommends && \
	rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/icons && \
    rm -rf /usr/share/doc && \
    rm -rf /usr/lib/libreoffice/share/gallery && \
	fc-cache -fv

#RUN adduser --home=/opt/libreoffice --disabled-password --gecos "" --shell=/bin/bash libreoffice

#ADD entrypoint.sh /opt/libreoffice/entrypoint.sh
#RUN chmod +x /opt/libreoffice/entrypoint.sh

#VOLUME ["/tmp"]
#WORKDIR "/tmp"

#ENTRYPOINT ["/bin/sh"]
ENTRYPOINT ["libreoffice"]