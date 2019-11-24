FROM ubuntu:19.10

RUN apt-get update && apt-get install -y \
		emacs \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["emacs"]
