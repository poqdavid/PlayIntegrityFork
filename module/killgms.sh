#!/system/bin/sh
# killgms.sh by osm0sis @ xda-developers
#
# Kill the Google Play services DroidGuard process
# (com.google.android.gms.unstable)

if [ -n "$TERMUX_VERSION" ] || echo "$PREFIX" | grep -q "com.termux"; then
  if [ "$(whoami 2>/dev/null)" != "root" ]; then
    echo "killgms: need root permissions";
    echo "killgms: please run tsu command (pkg install tsu)";
    exit 1;
  fi;
else
  if [ "$USER" != "root" ] || [ "$(whoami 2>/dev/null)" != "root" ]; then
    echo "killgms: need root permissions";
    exit 1;
  fi;
fi;

killall -v com.google.android.gms.unstable;
