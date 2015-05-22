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
echo "Compiling C code in C3"
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

OBJECTS = big_file_C3_c.o 

OLDOBJECTS =  ap934.o ap934d.o au943.o au943d.o au942.o au942d.o mu941.o mu941d.o \
	ga927.o ga927d.o ga933.o ga933d.o ga932.o ga932d.o ga940.o ga940d.o \
	ga939.o ga939d.o cp945.o cp945d.o ga931.o ga931d.o ti953.o ti953d.o \
	th947.o th947d.o ga930.o ga930d.o ga946.o ga946d.o af926.o af926d.o \
	cp944.o cp944d.o da951.o da951d.o ti952.o ti952d.o da956.o da956d.o \
	da955.o da955d.o da949.o da949d.o da936.o da936d.o fi950.o fi950d.o \
	in957.o in957d.o ga938.o ga938d.o ga929.o ga929d.o ga928.o ga928d.o \
	da954.o da954d.o da935.o da935d.o da948.o da948d.o ga937.o ga937d.o 

all: Cobj3.o

Cobj3.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj3.o $(OBJECTS)
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

