# Makefile for GNU Emacs.app Modified

# Copyright (C) 2014 Vincent Goulet

# Author: Vincent Goulet

# This file is part of GNU Emacs.app Modified
# http://vgoulet.act.ulaval.ca/emacs

# This Makefile will create a disk image to distribute a single
# architecture or universal version of GNU Emacs. For a universal
# build, two separate builds (i386 and ppc) are needed.
#
# The code of this Makefile is based on a file created by Remko
# Troncon (http://el-tramo.be/about).

# Set most variables in Makeconf
include ./Makeconf

all : 
	@echo ----- Updating web page...
	LANG=ISO-8859-1 \
	sed -e 's/<ESSVERSION>/${ESSVERSION}/'       \
	    -e 's/<AUCTEXVERSION>/${AUCTEXVERSION}/' \
	    -e 's/<ORGVERSION>/${ORGVERSION}/'     \
	    -e 's/<POLYMODEVERSION>/${POLYMODEVERSION}/' \
	    -e 's/<MARKDOWNMODEVERSION>/${MARKDOWNMODEVERSION}/' \
	    -e 's/<EXECPATHVERSION>/${EXECPATHVERSION}/' \
	    -e 's/<PSVNVERSION>/${PSVNVERSION}/'     \
	    -e 's/<VERSION>/${VERSION}/g'             \
	    index.md.in > index.md
	sed -e 's/<VERSION>/${VERSION}/g'     \
	    -e 's/<DMGFILE>/${DMGFILE}/'      \
	    _layouts/default.html.in > _layouts/default.html
	@echo ----- Done updating web page

