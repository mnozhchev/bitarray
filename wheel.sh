cd `dirname $0`
rm -fr dist/
for PYBIN in /opt/python/*/bin; do
    rm -fr build/
    "${PYBIN}/pip" --disable-pip-version-check wheel ./ -w dist/
done
