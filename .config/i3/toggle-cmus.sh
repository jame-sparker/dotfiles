#!/bin/bash
# Toggle cmus between play and pause
[ "$(cmus-remote -Q | grep status)" = "status playing" ] && cmus-remote -u || cmus-remote -p
