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
echo "Compiling C code in C2"
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

OBJECTS = big_file_C2_c.o 

OLDOBJECTS =  fe919.o fe919d.o au901.o au901d.o af925.o af925d.o co917.o co917d.o \
	au902.o au902d.o au903.o au903d.o au904.o au904d.o au900.o au900d.o \
	th896.o th896d.o af923.o af923d.o th894.o th894d.o th895.o th895d.o \
	pa899.o pa899d.o im910.o im910d.o ga893.o ga893d.o ti915.o ti915d.o \
	ab916.o ab916d.o ta898.o ta898d.o re897.o re897d.o zo922.o zo922d.o \
	zo924.o zo924d.o zo921.o zo921d.o se911.o se911d.o du912.o du912d.o \
	bl918.o bl918d.o zo920.o zo920d.o da914.o da914d.o da913.o da913d.o \
	ty905.o ty905d.o ty909.o ty909d.o ty908.o ty908d.o ty907.o ty907d.o \
	ty906.o ty906d.o 

all: Cobj2.o

Cobj2.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj2.o $(OBJECTS)
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

