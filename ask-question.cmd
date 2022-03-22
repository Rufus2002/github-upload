@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set variables
set prediction_url="https://globalawareness.cognitiveservices.azure.com/language/:query-knowledgebases?projectName=Pollution&api-version=2021-10-01&deploymentName=production"
set key="55bb8c107ebc4579944981aa9af13a32"

curl -X POST !prediction_url! -H "Ocp-Apim-Subscription-Key: !key!" -H "Content-Type: application/json" -d "{'question': 'What is a learning Path?' }"