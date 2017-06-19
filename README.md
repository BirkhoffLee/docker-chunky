# docker-chunky [![](https://images.microbadger.com/badges/version/birkhofflee/docker-chunky.svg)](https://microbadger.com/images/birkhofflee/docker-chunky) [![](https://images.microbadger.com/badges/image/birkhofflee/docker-chunky.svg)](https://microbadger.com/images/birkhofflee/docker-chunky)
Docker image of Chunky

# Usage
You must specify the Minecraft version at startup, if not specified, Minecraft version `1.11.2` is set by default.  

The trailing arguments (in this case, `--version`), is added to the Chunky launcher arguments. The data (`CHUNKY_HOME`) directory is located at the `/data` inside of the container. You can use volumes to mount your data into it.  

```bash
$ docker run -it -e "MINECRAFT_VERSION=1.11.2" -v $(pwd)/chunkydata:/data birkhofflee/docker-chunky --version
```

You can also adjust the JVM settings by adding `-e "JAVA_ARGS=-Xmx10G"`.

Here's an example for how to render a map:

```bash
$ ... put some scene data into ./chunkydata/scenes ...
$ docker run -it -e "MINECRAFT_VERSION=1.11.2" -v $(pwd)/chunkydata:/data birkhofflee/docker-chunky -render some-scene -threads 24 -texture /data/texture_pack.zip
```