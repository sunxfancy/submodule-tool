BASE_PATH=$(pwd)
SUB_PATH=$(cat ./.gitmodules | grep path | awk '{print $3}')
echo "${SUB_PATH}"
echo "${BASE_PATH}"