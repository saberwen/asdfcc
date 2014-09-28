"
" ================================================================================
" Create Time:     2013-04-08 17-17 WEEK_1
" Author:          weiwench(saberwen@hotmail.com)
" File Name:       AutoAddFileHeader.vim
" Description:     
"				  time:	   2013年 10月 07日 星期一 19:05:47 CST
"				  modify:  修改获取文件名方法
" ================================================================================
"

" autocmd BufWritePost *.c,*.sh,*.h,*.py,*.pyc,Makefile,makefile,*.vim exec ":call FileTitleDetct()"
function ModifyFileTitle()
	normal m`
	silent! execute "g/Modify Time:     .*/Modify Time:     /s/Modify Time:     .*/Modify Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w")
	normal ``
	" silent! execute "g/Modify Time:     .*/Modify Time:     /s/Modify Time:     .*/Modify Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w")
endfunction
function FileTitleDetct()
	let n=1
	while n < 10
		let line = getline(n)
		if line =~'^.*Modify Time: *.*WEEK_.$'
			call ModifyFileTitle()
			return
		endif
		let n = n + 1
	endwhile
	unlet n
endfunction


"----------------------------------------------------------------------
"自动插入文件头
"----------------------------------------------------------------------
autocmd BufNewFile *.c,*.sh,*.h,*.py,*.pyc,Makefile,makefile,*.vim exec ":call AddUserTitle()"
function AddUserTitle()
	if &filetype == 'sh'
		let appendlists = [ 
			\"\#!/bin/sh",
			\"\# ================================================================================",
			\"\# Author:          weiwench(saberwen@hotmail.com)",
			\"\# Create Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			\"\# Modify Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			\"\# File Name:       ".expand("%:t"),
			\"\# Description:     ",
			\"\# ================================================================================",
			\"\# ",
			\"\# Tips:",
			\"\# $0 file name",
			\"\# $$ curren script PID",
			\"\# $! pre-command PID",
			\"\# $? pre-command exit value",
			\"\# $# parameter numbers",
			\"\# $@ parameters",
			\"\# $* parameters(as a sting)",
			\"\# ",
			\"\# SET ANSI COLORS {{{ START",
			\"C_RED=\"[1;31m\" ",
			\"C_CYAN=\"[1;36m\" ",
			\"C_BLUE=\"[1;34m\" ",
			\"C_GREEN=\"[1;32m\" ",
			\"C_WHITE=\"[1;37m\" ",
			\"C_YELLOW=\"[1;33m\" ",
			\"C_MAGENTA=\"[1;35m\" ",
			\"C_NORMAL=\"[0;39m\" ",
			\"\# SET ANSI COLORS END }}}",
			\""]

	elseif &filetype == 'vim'   
		let appendlists = [
			\"\"",
			\"\" ================================================================================",
			\"\" Author:          weiwench(saberwen@hotmail.com)",
			\"\" Create Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			\"\" Modify Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			\"\" File Name:       ".expand("%:t"),
			\"\" Description:     ",
			\"\" ================================================================================",
			\""]

	elseif &filetype == 'python' || &filetype == 'pyc'  
		let appendlists = [  
			\"\#! /bin/sh/env python3.3",
			\"\# -*- coding: utf-8 -*-",
			\"\'\'\'",
			\" --------------------------------------------------------------------------------",
			\" Author:          weiwench(saberwen@hotmail.com)",
			\" Create Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			\" Modify Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			\" File Name:       ".expand("%:t"),
			\" Description:     ",
			\" --------------------------------------------------------------------------------",
			\"\'\'\'",
			\""]

	" elseif &filetype == 'c'   
		" let appendlists = [ 
			" \"\/*",
			" \" * ================================================================================",,
			" \" * Author:          weiwench(saberwen@hotmail.com)",
			" \" * Create Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			" \" * Modify Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			" \" * File Name:       ".expand("%:t"),
			" \" * Description:     ",
			" \" * ================================================================================",
			" \" */",
			" \"\#include <stdio.h>",
			" \"\#include <stdlib.h>",
			" \""]


"----------------------------------------------------------------------
" expand("%")  -- get file name 
"
"			%		current file name
"			#		alternate file name
"			#n		alternate file name n
"			<cfile>		file name under the cursor
"			<afile>		autocmd file name
"			<abuf>		autocmd buffer number (as a String!)
"			<amatch>	autocmd matched name
"			<sfile>		sourced script file name
"			<slnum>		sourced script file line number
"			<cword>		word under the cursor
"			<cWORD>		WORD under the cursor
"			<client>	the {clientid} of the last received
"					message |server2client()|
"		Modifiers:
"			:p		expand to full path
"			:h		head (last path component removed)
"			:t		tail (last path component only)
"			:r		root (one extension removed)
"			:e		extension only
"           .  --   current line
"           ,  --   up line
"----------------------------------------------------------------------
    elseif expand("%:t") == 'Makefile' || expand("%:t") == 'makefile'
		let appendlists = [ 
			\"\#",
			\"\# ================================================================================",
			\"\# Author:          weiwench(saberwen@hotmail.com)",
			\"\# Create Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			\"\# Modify Time:     ".strftime("%Y-%m-%d %H-%M WEEK_%w"),
			\"\# File Name:       ".expand("%:t"),
			\"\# Description:     ",
			\"\#",
			\"\# ================================================================================",
			\"\#",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# SET environment {{{ START",
			\"\# --------------------------------------------------------------------------------",
			\"AT    :=# @",
			\"RM    := rm --force ",
			\"DEBUG := YES",
			\"UNITE := NO",
			\"\# --------------------------------------------------------------------------------",
			\"\# SET environment END }}}",
			\"\# --------------------------------------------------------------------------------",
			\"",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# SET compiler {{{ START",
			\"\# --------------------------------------------------------------------------------",
			\"CROSS_COMPILER_PREFIX := ",
			\"CROSS_COMPILER_PREFIX := ",
			\"CC                    := $(CROSS_COMPILER_PREFIX)gcc    ",
			\"CXX                   := $(CROSS_COMPILER_PREFIX)g++",
			\"AR                    := $(CROSS_COMPILER_PREFIX)ar     ",
			\"AS                    := $(CROSS_COMPILER_PREFIX)as     ",
			\"LD                    := $(CROSS_COMPILER_PREFIX)ld     ",
			\"CPP                   := $(CROSS_COMPILER_PREFIX)cpp    ",
			\"NM                    := $(CROSS_COMPILER_PREFIX)nm     ",
			\"STRIP                 := $(CROSS_COMPILER_PREFIX)strip  ",
			\"OBJCOPY               := $(CROSS_COMPILER_PREFIX)objcopy",
			\"OBJDUMP               := $(CROSS_COMPILER_PREFIX)objdump",
			\"\# --------------------------------------------------------------------------------",
			\"\# SET compiler END }}}",
			\"\# --------------------------------------------------------------------------------",
			\"",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# SET compiler flags and files {{{ START",
			\"\# --------------------------------------------------------------------------------",
			\"CFLAGS         := ",
			\"DEBUG_CFLAGS   := -Wall -O0 -g -rdynamic",
			\"RELEASE_CFLAGS := -Wall -O3",
			\"",
			\"\# SYSTEM include and libs directories",
			\"GLOBAL_INC_DIR := ",
			\"GLOBAL_LIB_DIR := ",
			\"",
			\"\# PRIVATE include and libs directories",
			\"LOCAL_INC_DIR  := ",
			\"LOCAL_LIB_DIR  := ",
			\"\# --------------------------------------------------------------------------------",
			\"\# SET compiler flags and files END }}}",
			\"\# --------------------------------------------------------------------------------",
			\"",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# STATEMENTS usually need NOT to be changed {{{ START",
			\"\# --------------------------------------------------------------------------------",
			\"SOURCES_C   = $(wildcard *.c) ",
			\"OBJECTS     = $(basename $(SOURCES_C))",
			\"OBJECTS_O   = $(patsubst %.c,%.o,$(SOURCES_C))",
			\"DIRECTORY   = $(shell echo ./*/)",
			\"ALL_INC_DIR = $(addprefix -I, $(LOCAL_INC_DIR) $(GLOBAL_INC_DIR))",
			\"ALL_LIB_DIR = $(addprefix -L, $(LOCAL_LIB_DIR) $(GLOBAL_LIB_DIR))",
			\"",
			\"ifeq (YES, ${DEBUG})",
			\"    CFLAGS += ${DEBUG_CFLAGS}",
			\"",
			\"else",
			\"    CFLAGS += ${RELEASE_CFLAGS}",
			\"",
			\"endif",
			\"",
			\"ifeq (YES, ${UNITE})",
			\"    OBJECTS := main",
			\"",
			\"UNITE_TARGET ?= ",
			\"ifneq (\"\", \"${UNITE_TARGET}\")",
			\"    OBJECTS := ${UNITE_TARGET}",
			\"endif",
			\"",
			\"else",
			\"",
			\"endif",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# STATEMENTS usually need NOT to be changed END }}}",
			\"\# --------------------------------------------------------------------------------",
			\"",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# START make {{{ START",
			\"\# --------------------------------------------------------------------------------",
			\"all: _CFG $(OBJECTS)",
			\"",
			\"",
			\"$(OBJECTS): $(OBJECTS_O)",
			\"ifeq (YES,${UNITE})",
			\"	$(AT)$(CC) $(CFLAGS) $^ -o $@ $(ALL_LIB_DIR) $(ALL_INC_DIR)",
			\"else",
			\"	$(AT)$(CC) $(CFLAGS) $(patsubst %,%.o,$@) -o $(patsubst %,%,$@) $(ALL_LIB_DIR) $(ALL_INC_DIR)",
			\"endif",
			\"",
			\"",
			\"$(OBJECTS_O): $(SOURCES_C)",
			\"	$(AT)$(CC) $(CFLAGS) -c $(patsubst %.o,%.c,$@) $(ALL_LIB_DIR) $(ALL_INC_DIR)",
			\"",
			\"",
			\"strip:",
			\"	$(AT)$(STRIP) $(OBJECTS) ",
			\"" ,
			\"" ,
			\"clean:",
			\"	$(AT)$(RM) $(OBJECTS) $(OBJECTS_O) ",
			\"",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# CONFIG Makefile {{{ START",
			\"\# --------------------------------------------------------------------------------",
			\"_CFG:",
			\"ifeq (YES,${DEBUG})",
			\"	@echo \"\e[43m++++++++++++++++++++++++++   DEBUG  compile +++++++++++++++++++++++++++\e[0m\"",
			\"	@sed -i 's/^\\<DEBUG.*:=.*[YESNO]\\{1,3\\}\\>/DEBUG := YES/g' Makefile",
			\"else",
			\"	@echo \"\e[43m++++++++++++++++++++++++++  RELEASE compile +++++++++++++++++++++++++++\e[0m\"",
			\"	@sed -i 's/^\\<DEBUG.*:=.*[YESNO]\\{1,3\\}\\>/DEBUG := NO/g' Makefile",
			\"endif",
			\"",
			\"ifeq (YES,${UNITE})",
			\"	@echo \"\e[43m++++++++++++++++++++++++++   UNITE  compile +++++++++++++++++++++++++++\e[0m\"",
			\"	@sed -i 's/^\\<UNITE.*:=.*[YESNO]\\{1,3\\}\\>/UNITE := YES/g' Makefile",
			\"else",
			\"	@echo \"\e[43m++++++++++++++++++++++++++ SEPARATE compile +++++++++++++++++++++++++++\e[0m\"",
			\"	@sed -i 's/^\\<UNITE.*:=.*[YESNO]\\{1,3\\}\\>/UNITE := NO/g' Makefile",
			\"endif",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# CONFIG Makefile END }}}",
			\"\# --------------------------------------------------------------------------------",
			\"",
			\"",
			\"\# --------------------------------------------------------------------------------",
			\"\# START make END }}} ",
			\"\# --------------------------------------------------------------------------------"]

	else
		let appendlists = []

	endif                       

	let CntLine = 0
	for item in appendlists
		call append(CntLine, item)
		let CntLine = CntLine + 1
	endfor
	unlet CntLine
	unlet appendlists

	autocmd BufNewFile * normal G
endfunction
"----------------------------------------------------------------------
