#!/bin/bash

api_key=`cat nugetapikey.env`

docker run --rm -it microsoft/powershell -Command Publish-Module -Name /psmod -NuGetApiKey $api_key | head -n 1
