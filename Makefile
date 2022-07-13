packages = lib32-libdrm-ps4 libdrm-ps4 xf86-video-amdgpu-ps4 lib32-mesa-ps4 mesa-ps4 hello-world.rs

.PHONY: all

all:
	for name in $(packages); do \
		cd $$name; \
		makepkg -d; \
		cp *.tar.zst ../dist; \
		cd ..; \
	done

clean:
	rm -rf */src
	rm -rf */*.tar.*
	rm -rf */pkg
