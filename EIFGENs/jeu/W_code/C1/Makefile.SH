case $CONFIG in
'')
	if test ! -f ../config.sh; then
		(echo "Can't find ../config.sh."; exit 1)
	fi 2>/dev/null
	. ../config.sh
	;;
esac
case "$O" in
*/*) cd `expr X$0 : 'X\(.*\)/'` ;;
esac
echo "Compiling C code in C1"
$spitshell >Makefile <<!GROK!THIS!
INCLUDE_PATH =  -I"\$(EIFFEL_LIBRARY)/contrib/library/game/game_core_lib/spec/include" -I"\$(EIFFEL_LIBRARY)\contrib\library\game\C_lib_win\SDL\include" -I"\$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/spec/include" -I"\$(EIFFEL_LIBRARY)\contrib\library\game\C_lib_win\SDL_image\include" -I"\$(EIFFEL_LIBRARY)\contrib\library\game\C_lib_win\SDL_ttf\include" -I"\$(EIFFEL_LIBRARY)\contrib\library\game\C_lib_win\OpenAL\include" -I"\$(EIFFEL_LIBRARY)/contrib/library/game/audio_snd_files_lib/spec/include" -I"\$(EIFFEL_LIBRARY)\contrib\library\game\C_lib_win\libsndfile\include"
SHELL = /bin/sh
CC = $cc
CPP = $cpp
CFLAGS = $wkoptimize $mtccflags $large -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"$rt_include" -I. \$(INCLUDE_PATH)
CPPFLAGS = $wkoptimize $mtcppflags $large -DWORKBENCH -I"$rt_include" -I. \$(INCLUDE_PATH)
LDFLAGS = $ldflags
CCLDFLAGS = $ccldflags  $windows_flags
LDSHAREDFLAGS =  $mtldsharedflags
EIFLIB = "$rt_lib/$prefix$mt_prefix$wkeiflib$suffix"
EIFTEMPLATES = $rt_templates
LIBS = $mtlibs
MAKE = $make
AR = $ar
LD = $ld
MKDEP = $mkdep \$(DPFLAGS) --
MV = $mv
CP = $cp
RANLIB = $ranlib
RM = $rm -f
FILE_EXIST = $file_exist
RMDIR = $rmdir
X2C = "$x2c"
SHAREDLINK = $sharedlink
SHAREDLIBS = $sharedlibs
SHARED_SUFFIX = $shared_suffix
COMMAND_MAKEFILE = 
START_TEST = $start_test 
END_TEST = $end_test 
CREATE_TEST = $create_test 
SYSTEM_IN_DYNAMIC_LIB = jeu$shared_suffix 
!GROK!THIS!
$spitshell >>Makefile <<'!NO!SUBS!'

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C1_c.o 

OLDOBJECTS =  ga883.o ga883d.o ga875.o ga875d.o ga874.o ga874d.o au873.o au873d.o \
	ga882.o ga882d.o ga881.o ga881d.o ga872.o ga872d.o ga871.o ga871d.o \
	ga880.o ga880d.o co870.o co870d.o au869.o au869d.o co868.o co868d.o \
	ga867.o ga867d.o cp879.o cp879d.o ga866.o ga866d.o cp865.o cp865d.o \
	c_864.o c_864d.o ti888.o ti888d.o im863.o im863d.o da889.o da889d.o \
	ti887.o ti887d.o ti886.o ti886d.o re862.o re862d.o da892.o da892d.o \
	ti885.o ti885d.o co884.o co884d.o gr878.o gr878d.o co861.o co861d.o \
	da891.o da891d.o da890.o da890d.o da877.o da877d.o da876.o da876d.o 

all: Cobj1.o

Cobj1.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj1.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

!NO!SUBS!
chmod 644 Makefile
$eunicefix Makefile

