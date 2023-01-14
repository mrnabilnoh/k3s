#!/bin/bash

# Export all variable inside .env file but ignore lines that start with #
export $(grep -v '^#' .env | xargs)


envsubst < certificate.yaml | kubectl apply -f -