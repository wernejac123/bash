if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 1
fi

dd if=/dev/zero of="$1" bs=1k count=1440
mkdosfs "$1"
echo "done"
