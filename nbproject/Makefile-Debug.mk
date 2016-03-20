#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/SimulationManager.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# Test Object Files
TESTOBJECTFILES= \
	${TESTDIR}/tests/SimulatorManagerTest.o \
	${TESTDIR}/tests/SimulatorManagerTestRunnder.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-lzmq -lpthread
CXXFLAGS=-lzmq -lpthread

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libsimulationlibrary.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libsimulationlibrary.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libsimulationlibrary.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libsimulationlibrary.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libsimulationlibrary.a

${OBJECTDIR}/SimulationManager.o: SimulationManager.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SimulationManager.o SimulationManager.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-tests-subprojects .build-conf ${TESTFILES}
.build-tests-subprojects:
	cd /mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer && ${MAKE}  -f Makefile CONF=Debug

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/SimulatorManagerTest.o ${TESTDIR}/tests/SimulatorManagerTestRunnder.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} -L/mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries -L/mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/dist/Debug/GNU-Linux /mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/dist/Debug/GNU-Linux/libsocketserver.a /usr/local/lib/libzmq.so.5 /mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries/libjson.a -L/mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries -L/mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/dist/Debug/GNU-Linux `cppunit-config --libs` /mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/dist/Debug/GNU-Linux/libsocketserver.a   


${TESTDIR}/tests/SimulatorManagerTest.o: tests/SimulatorManagerTest.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/ -I/mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries/ -I/mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries/libjson.a -include /mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries/json.hh -std=c++11 -lzmq -lpthread `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/SimulatorManagerTest.o tests/SimulatorManagerTest.cpp


${TESTDIR}/tests/SimulatorManagerTestRunnder.o: tests/SimulatorManagerTestRunnder.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/ -I/mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries/ -I/mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries/libjson.a -include /mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries/json.hh -std=c++11 -lzmq -lpthread `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/SimulatorManagerTestRunnder.o tests/SimulatorManagerTestRunnder.cpp


${OBJECTDIR}/SimulationManager_nomain.o: ${OBJECTDIR}/SimulationManager.o SimulationManager.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/SimulationManager.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/ -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SimulationManager_nomain.o SimulationManager.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/SimulationManager.o ${OBJECTDIR}/SimulationManager_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libsimulationlibrary.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
