#!/usr/bin/env bash
#
# Transport Systems Lab - Hugo View Scrip 

# Checks whether we are running on MacOS
if [ "$(uname)" == "Darwin" ]; then
	(sleep 2s && open http://127.0.0.1:1313) | hugo server -w --disableFastRender --noHTTPCache  --bind="0.0.0.0"
# Assumes that we are running under the Windows Subsystem for Linux
else 
	(sleep 1s && cmd.exe /c start http://127.0.0.1:1313) | hugo server -w --disableFastRender --noHTTPCache 
fi