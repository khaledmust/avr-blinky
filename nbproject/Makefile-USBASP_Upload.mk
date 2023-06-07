#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-USBASP_Upload.mk)" "nbproject/Makefile-local-USBASP_Upload.mk"
include nbproject/Makefile-local-USBASP_Upload.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=USBASP_Upload
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=application/application.c mcal/gpio/gpio.c ecual/led/led.c main.c ecual/push_button/push_button.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/application/application.o ${OBJECTDIR}/mcal/gpio/gpio.o ${OBJECTDIR}/ecual/led/led.o ${OBJECTDIR}/main.o ${OBJECTDIR}/ecual/push_button/push_button.o
POSSIBLE_DEPFILES=${OBJECTDIR}/application/application.o.d ${OBJECTDIR}/mcal/gpio/gpio.o.d ${OBJECTDIR}/ecual/led/led.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/ecual/push_button/push_button.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/application/application.o ${OBJECTDIR}/mcal/gpio/gpio.o ${OBJECTDIR}/ecual/led/led.o ${OBJECTDIR}/main.o ${OBJECTDIR}/ecual/push_button/push_button.o

# Source Files
SOURCEFILES=application/application.c mcal/gpio/gpio.c ecual/led/led.c main.c ecual/push_button/push_button.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/atmega32"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
_/_=/
ShExtension=.sh
Device=ATmega32
ProjectDir=/home/khaled/projects/avr-blinky.X
ProjectName=avr-blinky
ConfName=USBASP_Upload
ImagePath=dist/USBASP_Upload/${IMAGE_TYPE}/avr-blinky.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ImageDir=dist/USBASP_Upload/${IMAGE_TYPE}
ImageName=avr-blinky.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-USBASP_Upload.mk ${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [avrdude -c usbasp -p m32 -U flash:w:${ProjectDir}/${ImagePath}]"
	@avrdude -c usbasp -p m32 -U flash:w:${ProjectDir}/${ImagePath}
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/application/application.o: application/application.c  .generated_files/flags/USBASP_Upload/f73cd036e1c6c5cf3b9b07f1099c2cc55fd524b3 .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/application.o.d 
	@${RM} ${OBJECTDIR}/application/application.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/application/application.o.d" -MT "${OBJECTDIR}/application/application.o.d" -MT ${OBJECTDIR}/application/application.o  -o ${OBJECTDIR}/application/application.o application/application.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcal/gpio/gpio.o: mcal/gpio/gpio.c  .generated_files/flags/USBASP_Upload/736f06bfc73854238da8fa1f5a0cf67aa655f336 .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcal/gpio" 
	@${RM} ${OBJECTDIR}/mcal/gpio/gpio.o.d 
	@${RM} ${OBJECTDIR}/mcal/gpio/gpio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcal/gpio/gpio.o.d" -MT "${OBJECTDIR}/mcal/gpio/gpio.o.d" -MT ${OBJECTDIR}/mcal/gpio/gpio.o  -o ${OBJECTDIR}/mcal/gpio/gpio.o mcal/gpio/gpio.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/ecual/led/led.o: ecual/led/led.c  .generated_files/flags/USBASP_Upload/ed6fa4e3bb957e50cc6a5bfa274a4d01f5fcbc9b .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ecual/led" 
	@${RM} ${OBJECTDIR}/ecual/led/led.o.d 
	@${RM} ${OBJECTDIR}/ecual/led/led.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/ecual/led/led.o.d" -MT "${OBJECTDIR}/ecual/led/led.o.d" -MT ${OBJECTDIR}/ecual/led/led.o  -o ${OBJECTDIR}/ecual/led/led.o ecual/led/led.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/USBASP_Upload/904f562606c20cf9090d2255bd9cfbdff759e97f .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/ecual/push_button/push_button.o: ecual/push_button/push_button.c  .generated_files/flags/USBASP_Upload/bbd6b788fe7c5ec5951b51ff9a34a7e9949c6bae .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ecual/push_button" 
	@${RM} ${OBJECTDIR}/ecual/push_button/push_button.o.d 
	@${RM} ${OBJECTDIR}/ecual/push_button/push_button.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/ecual/push_button/push_button.o.d" -MT "${OBJECTDIR}/ecual/push_button/push_button.o.d" -MT ${OBJECTDIR}/ecual/push_button/push_button.o  -o ${OBJECTDIR}/ecual/push_button/push_button.o ecual/push_button/push_button.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/application/application.o: application/application.c  .generated_files/flags/USBASP_Upload/e2f4e88e9988965010394c3df4b653a65120846c .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/application.o.d 
	@${RM} ${OBJECTDIR}/application/application.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/application/application.o.d" -MT "${OBJECTDIR}/application/application.o.d" -MT ${OBJECTDIR}/application/application.o  -o ${OBJECTDIR}/application/application.o application/application.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcal/gpio/gpio.o: mcal/gpio/gpio.c  .generated_files/flags/USBASP_Upload/9fff2eab9611ec2817aec81145b1858054524f6a .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcal/gpio" 
	@${RM} ${OBJECTDIR}/mcal/gpio/gpio.o.d 
	@${RM} ${OBJECTDIR}/mcal/gpio/gpio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcal/gpio/gpio.o.d" -MT "${OBJECTDIR}/mcal/gpio/gpio.o.d" -MT ${OBJECTDIR}/mcal/gpio/gpio.o  -o ${OBJECTDIR}/mcal/gpio/gpio.o mcal/gpio/gpio.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/ecual/led/led.o: ecual/led/led.c  .generated_files/flags/USBASP_Upload/6e3179de30b817d4a813d3b09e90e5c18f48c8ee .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ecual/led" 
	@${RM} ${OBJECTDIR}/ecual/led/led.o.d 
	@${RM} ${OBJECTDIR}/ecual/led/led.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/ecual/led/led.o.d" -MT "${OBJECTDIR}/ecual/led/led.o.d" -MT ${OBJECTDIR}/ecual/led/led.o  -o ${OBJECTDIR}/ecual/led/led.o ecual/led/led.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/USBASP_Upload/98fdc29a7b08cf6324396d0b2013565e56c2cb84 .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/ecual/push_button/push_button.o: ecual/push_button/push_button.c  .generated_files/flags/USBASP_Upload/85098c35938188056a94528f8f08f6cc2716a48c .generated_files/flags/USBASP_Upload/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ecual/push_button" 
	@${RM} ${OBJECTDIR}/ecual/push_button/push_button.o.d 
	@${RM} ${OBJECTDIR}/ecual/push_button/push_button.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/ecual/push_button/push_button.o.d" -MT "${OBJECTDIR}/ecual/push_button/push_button.o.d" -MT ${OBJECTDIR}/ecual/push_button/push_button.o  -o ${OBJECTDIR}/ecual/push_button/push_button.o ecual/push_button/push_button.c  -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atmega32 ${PACK_COMMON_OPTIONS}  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atmega32 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_USBASP_Upload=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/avr-blinky.X.${IMAGE_TYPE}.hex"
	
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
