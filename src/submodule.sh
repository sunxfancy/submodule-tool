MODULE_LINKS=$(cat ./.gitmodules | grep path | awk '{print $3}')
echo "${MODULE_LINKS}"