docker buildx create --name build_container_systemd --driver-opt env.BUILDKIT_STEP_LOG_MAX_SIZE=10000000 --driver-opt env.BUILDKIT_STEP_LOG_MAX_SPEED=10000000
docker buildx use build_container_systemd
docker buildx build --platform linux/amd64,linux/arm64/v8 -t spurin/ssh-client . --push
