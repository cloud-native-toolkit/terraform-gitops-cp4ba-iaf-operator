#!/usr/bin/env bash

NAME="$1"
DEST_DIR="$2"
NAMESPACE="$3"
CHART_DIR="$4"

mkdir -p "${DEST_DIR}"
echo ">>>>>>>> ${DEST_DIR} ${NAMESPACE} ${NAME}"
#PARMLENGTH=$(echo "${PARMS}" | jq '. | length')

#if [[ ${PARMLENGTH} != 0 ]]; then

#cat >> ${DEST_DIR}/pvc_operator.yaml << EOL
#parameters: $(echo "${PARMS}" | jq -c 'from_entries')
#EOL
#fi 
cp -R "${CHART_DIR}"/* "${DEST_DIR}"

#if [[ -n "${VALUES_CONTENT}" ]]; then
#  echo "${VALUES_CONTENT}" > "${DEST_DIR}/iaf-operator.yaml" 
#fi 
