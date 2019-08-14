$package = $args[0]
echo "Creating wheels for ${package}"
docker run -v ${pwd}:/source --rm quay.io/pypa/manylinux2010_x86_64 bash /source/wheel-any.sh $package
