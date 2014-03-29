/*
 * This is the SIP interface definitions corresponding to the eglplatform.h
 * file for the egl module of pogles.
 *
 * Copyright (c) 2012 Riverbank Computing Limited
 *
 * This file is part of pogles.
 *
 * This copy of pogles is licensed for use under the terms of the BSD license.
 *
 * pogles is supplied WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */


%If (PP_RPI)
%Include ../platform/rpi/egl_rpi.sip
%End

%If (PP_X11)
%Include ../platform/x11/egl_x11.sip
%End
