#!/bin/bash

find ./ -type f -exec sed -i -e 's;_images/;images/;g' {} \;
find ./ -type f -exec sed -i -e 's;_static/;static/;g' {} \;
find ./ -type f -exec sed -i -e 's;_downloads/;downloads/;g' {} \;

rm -r docs/user-guide/downloads && mv docs/user-guide/_downloads docs/user-guide/downloads
rm -r docs/user-guide/static && mv docs/user-guide/_static docs/user-guide/static
rm -r docs/user-guide/images && mv docs/user-guide/_images docs/user-guide/images
