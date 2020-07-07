#!/usr/bin/env bash

NAMESPACE="$1"
SERVICE_ACCOUNT_NAME="$2"

kubectl create serviceaccount -n "${NAMESPACE}" "${SERVICE_ACCOUNT_NAME}"
