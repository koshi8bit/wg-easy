#!/bin/bash
# sed "s/<span class=\"align-middle\">WireGuard</span>/XYZ/g" index.html > index2.html
# sed 's/WireGuard/XYZ/g' index.html > index2.html
# sed 's/<span class="align-middle\">WireGuard<\/span>/XYZ/g' index.html > index2.html
# sed "s/<span class=\"align-middle\">WireGuard<\/span>/XYZ/g" index.html > index2.html
# sed -i "s/<span class=\"align-middle\">WireGuard<\/span>/XYZ/g" index.html
WG_GUI_NAME_TMP=""
if [ -n "$WG_GUI_NAME" ]; then
    WG_GUI_NAME_TMP=" ($WG_GUI_NAME)"
fi

sed -i "s/<span class=\"align-middle\">WireGuard<\/span>/<span class=\"align-middle\">WireGuard$WG_GUI_NAME_TMP<\/span>/g" ./www/index.html
# sed 's/123/XYZ/g' test > test2 && cat test2
# sed "s/123/$WG_GUI_NAME/g" test > test2 && cat test2

/usr/bin/dumb-init node server.js
