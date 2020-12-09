#!/bin/sh

read -p "Project Directory Name (YYYMM Customer - Subject): " PROJECTDIRNAME

BASEDIR="$HOME/OraDocs/_Delivery/"
PROJECTDIR="$BASEDIR/$PROJECTDIRNAME"

mkdir -p "$PROJECTDIR/_inputs"
mkdir -p "$PROJECTDIR/_published"
mkdir -p "$PROJECTDIR/_templates-to-customize"
mkdir -p "$PROJECTDIR/0_PMO"
mkdir -p "$PROJECTDIR/1_Workshops"
mkdir -p "$PROJECTDIR/2_Documentation"
mkdir -p "$PROJECTDIR/3_Deployment"
