#!/bin/sh

#
# CHANGE FOR NEW RELEASES:
#
export CROSSBAR_VERSION='17.3.1'
export AUTOBAHN_JS_VERSION='0.12.0'
export AUTOBAHN_PYTHON_VERSION='0.18.2'
export AUTOBAHN_CPP_VERSION='0.2.1'
#
# END OF CONFIG
#

#
# Git working directories of all relevant repos must reside
# in parallel (as siblings) to this repository
#
export CROSSBAR_VCS_REF=`git --git-dir="../crossbar/.git" rev-list -n 1 v${CROSSBAR_VERSION} --abbrev-commit`
export AUTOBAHN_JS_VCS_REF=`git --git-dir="../autobahn-js/.git" rev-list -n 1 v${AUTOBAHN_JS_VERSION} --abbrev-commit`
export AUTOBAHN_PYTHON_VCS_REF=`git --git-dir="../autobahn-python/.git" rev-list -n 1 v${AUTOBAHN_PYTHON_VERSION} --abbrev-commit`
export AUTOBAHN_CPP_VCS_REF=`git --git-dir="../autobahn-cpp/.git" rev-list -n 1 ${AUTOBAHN_CPP_VERSION} --abbrev-commit`
export BUILD_DATE=`date -u +"%Y-%m-%d"`

echo ""
echo "The Crossbar.io Project (build date ${BUILD_DATE})"
echo ""
echo "crossbar ${CROSSBAR_VERSION} [${CROSSBAR_VCS_REF}]"
echo "autobahn-js ${AUTOBAHN_JS_VERSION} [${AUTOBAHN_JS_VCS_REF}]"
echo "autobahn-python ${AUTOBAHN_PYTHON_VERSION} [${AUTOBAHN_PYTHON_VCS_REF}]"
echo "autobahn-cpp ${AUTOBAHN_CPP_VERSION} [${AUTOBAHN_CPP_VCS_REF}]"
echo ""
