#!/bin/bash
# Copyright (c) 2020 Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

ROOTDIR=$PWD

#The following options define whether to enable client certificate authentication. Please uncomment one
#CLIENT_CERT_AUTH=FALSE
CLIENT_CERT_AUTH=TRUE

# Following options will use a local signing key rather than Auth0
#LOCAL_JWT_SIGNING=FALSE
LOCAL_JWT_SIGNING=TRUE

# OCSP Checking
OCSP_CHECKING=""
#OCSP_CHECKING="--cert-revocation-checking true"

DOCKER_COMPOSE=TRUE
#DOCKER_COMPOSE=FALSE

DOCKER_IMAGE="digitalasset/daml-sdk:1.10.0"

# The Ledger ID is used to bootstrap the system with a known identity. This is a random UUID and should be unique to each ledger instance.
#
# PLEASE CHANGE FOR YOUR OWN USE!!
LEDGER_ID="2D105384-CE61-4CCC-8E0E-37248BA935A3"

# The following define the domain names of the PKI infrastructure
DOMAIN=acme.com
DOMAIN_NAME="Acme Corp, LLC"

# The following options relate to Auth0 setup and service credentials. Please see documentation for meaning
# Use in auth-config.json in UI
AUTH0_DOMAIN="<autho-tenant-domain>"
AUTH0_CLIENT_ID="<auth0-client-id>"

# Auth0 Service Account credentials

M2M_CLIENT_ID='<service-client-id>'
M2M_CLIENT_SECRET='<service-client-secret>'

NAVIGATOR_CLIENT_ID='<service-client-id>'
NAVIGATOR_CLIENT_SECRET='<service-client-secret>'

# Minimal token for JSON API - public rights only to retrieve DAML Packages
JSON_CLIENT_ID='<service-client-id>'
JSON_CLIENT_SECRET='<service-client-secret>'

ALICE_CLIENT_ID='<service-client-id>'
ALICE_CLIENT_SECRET='<service-client-secret>'

BOB_CLIENT_ID='<service-client-id>'
BOB_CLIENT_SECRET='<service-client-secret>'

GEORGE_CLIENT_ID='<service-client-id>'
GEORGE_CLIENT_SECRET='<service-client-secret>'

