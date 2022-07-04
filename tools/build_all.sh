#!/bin/bash
while [ -n "$1" ]; do
case "$1" in
    --help) help=1 ;;
    -h) help=1 ;;
    --proto) proto=1 ;;
    -p) proto=1 ;;
    --runner) runner=1 ;;
    -r) runner=1 ;;
esac
shift
done

if [[ "${help}" -eq 1 ]] ; then
    echo "Usage: build_all.sh --proto --runner"
    exit
fi

if [[ "${proto}" -eq 1 ]] ; then
    dart gen_grpc.dart ../packages/component_grpc/protos ../packages/component_grpc/lib/src/generated ../packages/component_grpc/lib/component_grpc.dart
fi

if [[ "${runner}" -eq 1 ]] ; then
    flutter pub run build_runner build
fi
