#!/bin/bash -eu

PKGDIR=/tmp/python
OUTPUT=/tmp/output
REQUIREMENTS=/tmp/requirements.txt

mkdir -p ${PKGDIR}
mkdir -p ${OUTPUT}
pip install -t ${PKGDIR} -r ${REQUIREMENTS}
cd /tmp && zip -q -r ${OUTPUT}/layer.zip .
