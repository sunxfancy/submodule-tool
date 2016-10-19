MODULE_LINKS=$(cat ./.gitmodules | grep url | awk '{print $3}')
echo "${MODULE_LINKS}"