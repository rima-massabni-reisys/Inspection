.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 5.10.1 (tarball Tue May 29 19:16:06 EDT 2018)"
	.asciz "Plugin.AudioRecorder.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioPlayer__ctor
Plugin_AudioRecorder_AudioPlayer__ctor:
.file 1 "<unknown>"
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioPlayer_Play_string
Plugin_AudioRecorder_AudioPlayer_Play_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400b20
.word 0xb4000660
.word 0xf9400b20
.word 0xf9001ba0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000f00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #200]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xeb1f033f
.word 0x10000011
.word 0x54000d60
.word 0xf9001039
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_2
.word 0xf9400b21
.word 0xaa0103e0
.word 0xf940003e
bl _p_3
.word 0xf9400fa0
.word 0xf90013a0
.word 0xf9400fa0
bl _p_4
bl _p_5
.word 0xf9000b20
.word 0x91004321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b20
.word 0xf9001ba0
.word 0xeb1f033f
.word 0x10000011
.word 0x540006a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #200]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xeb1f033f
.word 0x10000011
.word 0x54000500
.word 0xf9001039
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_6
.word 0xf9400b21
.word 0xaa0103e0
.word 0xf940003e
bl _p_7
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_1:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioPlayer_Player_FinishedPlaying_object_AVFoundation_AVStatusEventArgs
Plugin_AudioRecorder_AudioPlayer_Player_FinishedPlaying_object_AVFoundation_AVStatusEventArgs:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9400fa0
.word 0xf9400c00
.word 0xaa0003f9
.word 0xb5000040
.word 0x14000009

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xf9400002
.word 0xaa1903e0
.word 0xf9400fa1
.word 0xf9400f30
.word 0xd63f0200
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioPlayer_Pause
Plugin_AudioRecorder_AudioPlayer_Pause:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400b40
.word 0xaa0003fa
.word 0xb5000040
.word 0x14000004
.word 0xaa1a03e0
.word 0xf940035e
bl _p_9
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioPlayer_Play
Plugin_AudioRecorder_AudioPlayer_Play:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400b40
.word 0xaa0003fa
.word 0xb5000040
.word 0x14000004
.word 0xaa1a03e0
.word 0xf940035e
bl _p_7
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioPlayer_add_FinishedPlaying_System_EventHandler
Plugin_AudioRecorder_AudioPlayer_add_FinishedPlaying_System_EventHandler:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9400f38
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_10
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #240]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91006321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_5:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioPlayer_remove_FinishedPlaying_System_EventHandler
Plugin_AudioRecorder_AudioPlayer_remove_FinishedPlaying_System_EventHandler:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9400f38
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_11
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #240]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91006321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_6:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_ConfigureAVAudioSession
Plugin_AudioRecorder_AudioRecorderService_get_ConfigureAVAudioSession:
.loc 1 1 0
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #256]
.word 0x39400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_ConfigureAVAudioSession_bool
Plugin_AudioRecorder_AudioRecorderService_set_ConfigureAVAudioSession_bool:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #256]
.word 0x394043a1
.word 0x39000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath
Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_12

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #264]
bl _p_13

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #272]
bl _p_14
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting
Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013bf

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #256]
.word 0x39400000
.word 0x340007c0
bl _p_15
.word 0xaa0003f9
.word 0xaa1903e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_16
.word 0xf9002ba0
bl _p_17
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_18
.word 0x53001c00
.word 0x34000620
.word 0xaa1903e0
.word 0xf940033e
bl _p_16
.word 0xf9002ba0
bl _p_19
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_18
.word 0x53001c00
.word 0x340004e0
.word 0xaa1903e0
.word 0xf940033e
bl _p_16
.word 0xf9002ba0
bl _p_20
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_18
.word 0x53001c00
.word 0x340003a0
.word 0xf9400b40
.word 0xd2800001
bl _p_21
.word 0x53001c00
.word 0x34000200
.word 0xaa1903e0
.word 0xf940033e
bl _p_16
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
bl _p_17
.word 0xaa0003e1
.word 0x910083a2
.word 0xaa1903e0
.word 0xf940033e
bl _p_22
.word 0x53001c00
.word 0x340000a0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28004a1
bl _p_23
.word 0xf9002ba0
.word 0xf9400b40
.word 0xf9002fa0
bl _p_17
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94013a3
bl _p_24
.word 0xaa0003e1
.word 0xd28019c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.word 0x17ffffe9

Lme_a:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped
Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #256]
.word 0x39400000
.word 0x34000260
.word 0xf9400ba0
.word 0xf9400800
.word 0xd2800001
bl _p_18
.word 0x53001c00
.word 0x340001a0
bl _p_15
.word 0xaa0003e3
.word 0xf9400ba0
.word 0xf9400801
.word 0x910063a2
.word 0xaa0303e0
.word 0xf940007e
bl _p_22
.word 0x53001c00
.word 0x34000060
.word 0xf9400ba0
.word 0xf900081f
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_AudioStreamDetails
Plugin_AudioRecorder_AudioRecorderService_get_AudioStreamDetails:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_AudioStreamDetails_Plugin_AudioRecorder_AudioStreamDetails
Plugin_AudioRecorder_AudioRecorderService_set_AudioStreamDetails_Plugin_AudioRecorder_AudioStreamDetails:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_FilePath
Plugin_AudioRecorder_AudioRecorderService_get_FilePath:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_FilePath_string
Plugin_AudioRecorder_AudioRecorderService_set_FilePath_string:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_PreferredSampleRate
Plugin_AudioRecorder_AudioRecorderService_get_PreferredSampleRate:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9807000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_PreferredSampleRate_int
Plugin_AudioRecorder_AudioRecorderService_set_PreferredSampleRate_int:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9007001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_IsRecording
Plugin_AudioRecorder_AudioRecorderService_get_IsRecording:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9401340
.word 0xaa0003fa
.word 0xb5000060
.word 0xd2800000
.word 0x1400000b
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #280]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_AudioSilenceTimeout
Plugin_AudioRecorder_AudioRecorderService_get_AudioSilenceTimeout:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0x9101e000
.word 0xf9400000
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_AudioSilenceTimeout_System_TimeSpan
Plugin_AudioRecorder_AudioRecorderService_set_AudioSilenceTimeout_System_TimeSpan:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x9101e000
.word 0xf9400fa1
.word 0xf9000001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_TotalAudioTimeout
Plugin_AudioRecorder_AudioRecorderService_get_TotalAudioTimeout:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0x91020000
.word 0xf9400000
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_TotalAudioTimeout_System_TimeSpan
Plugin_AudioRecorder_AudioRecorderService_set_TotalAudioTimeout_System_TimeSpan:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x91020000
.word 0xf9400fa1
.word 0xf9000001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingOnSilence
Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingOnSilence:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39422000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingOnSilence_bool
Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingOnSilence_bool:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a1
.word 0xf9400ba0
.word 0x39022001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingAfterTimeout
Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingAfterTimeout:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39422400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingAfterTimeout_bool
Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingAfterTimeout_bool:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a1
.word 0xf9400ba0
.word 0x39022401
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_get_SilenceThreshold
Plugin_AudioRecorder_AudioRecorderService_get_SilenceThreshold:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd408c10
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_set_SilenceThreshold_single
Plugin_AudioRecorder_AudioRecorderService_set_SilenceThreshold_single:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xbd001ba0
.word 0xbd401bb0
.word 0x1e22c200
.word 0xf9400ba0
.word 0x1e624010
.word 0xbd008c10
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_add_AudioInputReceived_System_EventHandler_1_string
Plugin_AudioRecorder_AudioRecorderService_add_AudioInputReceived_System_EventHandler_1_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9402338
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_10
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91010321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #296]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_1d:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_remove_AudioInputReceived_System_EventHandler_1_string
Plugin_AudioRecorder_AudioRecorderService_remove_AudioInputReceived_System_EventHandler_1_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9402338
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_11
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91010321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #296]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_1e:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_Init
Plugin_AudioRecorder_AudioRecorderService_Init:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService__ctor
Plugin_AudioRecorder_AudioRecorderService__ctor:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xd295889e
.word 0xb900735e
.word 0x910083a0
.word 0xf90017a0
.word 0xd280001e
.word 0xf2e8001e
.word 0x9e6703c0
bl _p_26
.word 0xf94017be
.word 0xf90003c0
.word 0x9101e340
.word 0xf94013a1
.word 0xf9000001
.word 0x910063a0
.word 0xf90017a0
.word 0xd280001e
.word 0xf2e807de
.word 0x9e6703c0
bl _p_26
.word 0xf94017be
.word 0xf90003c0
.word 0x91020340
.word 0xf9400fa1
.word 0xf9000001
.word 0xd280003e
.word 0x3902235e
.word 0xd280003e
.word 0x3902275e
.word 0xd29999be
.word 0xf2a7c99e
.word 0x9e6703d0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd008f50
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_StartRecording
Plugin_AudioRecorder_AudioRecorderService_StartRecording:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0x910123a1
.word 0xf9400ba0
.word 0xf90037a0
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910123a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xd2800001
.word 0xf9000fa1
.word 0xf90013a1
.word 0xf90017a1
.word 0x91002002
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94013a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94017a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9004bbe
.word 0x910123a0
.word 0x91002000
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400401
.word 0xf9001fa1
.word 0xf9400800
.word 0xf90023a0
.word 0x9100c3a0
.word 0x910123a1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #312]
bl _p_27
.word 0x910123a0
.word 0x91002000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #304]
bl _p_28
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_GetAudioFileStream
Plugin_AudioRecorder_AudioRecorderService_GetAudioFileStream:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection
Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x3901235f
.word 0xeb1f035f
.word 0x10000011
.word 0x54000200
.word 0x91014340
.word 0xd2800001
.word 0xf9000001
.word 0xf9000401
.word 0xeb1f035f
.word 0x10000011
.word 0x54000120
.word 0x91018340
.word 0xd2800001
.word 0xf9000001
.word 0xf9000401
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8

Lme_23:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_AudioStream_OnBroadcast_object_byte__
Plugin_AudioRecorder_AudioRecorderService_AudioStream_OnBroadcast_object_byte__:
.loc 1 1 0
.word 0xa9ad7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xf90013a1
.word 0xaa0203fa
.word 0xf90083bf
.word 0xd2800000
.word 0xf9007ba0
.word 0xf9007fa0
.word 0xf90077bf
.word 0xd2800000
.word 0xf9006fa0
.word 0xf90073a0
.word 0xd2800000
.word 0xf90067a0
.word 0xf9006ba0
.word 0xaa1a03e0
.word 0xd2800001
.word 0xd2800002
.word 0xd2800023
.word 0xd2800024
.word 0xd2800005
bl _p_30
.word 0x1e22c000
.word 0xbd408f30
.word 0x1e22c201
.word 0x1e624030
.word 0xbd010bb0
.word 0xbd410bb0
.word 0x1e22c201
.word 0x1e612000
.word 0x54000180
.word 0x5400016b
.word 0xd280003e
.word 0x3901233e
.word 0xeb1f033f
.word 0x10000011
.word 0x540015a0
.word 0x91014320
.word 0xd2800001
.word 0xf9000001
.word 0xf9000401
.word 0x1400004f
.word 0x39422320
.word 0x340006c0
.word 0xeb1f033f
.word 0x10000011
.word 0x54001460
.word 0x91014320

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #320]
.word 0x39402000
.word 0x340005a0
.word 0x910403a0
.word 0xf9008ba0
bl _p_31
.word 0xf9408bbe
.word 0xf90003c0
.word 0x910403a0
.word 0xf90093a0
.word 0xeb1f033f
.word 0x10000011
.word 0x54001260
.word 0x91014320

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #320]
.word 0x9101c3a1
.word 0xf9008ba1
bl _p_32
.word 0xf9408bbe
.word 0xf90003c0
.word 0xf94093a0
.word 0x9101a3a1
.word 0xf9008ba1
.word 0xf9403ba1
bl _p_33
.word 0xf9408bbe
.word 0xf90003c0
.word 0x9101e320
.word 0xf9400000
.word 0xf90033a0
.word 0xf94037a0
.word 0xf90063a0
.word 0xf94033a0
.word 0xf9005fa0
.word 0xf94063a0
.word 0xf9405fa1
.word 0xeb01001f
.word 0x9a9fd7e0
.word 0x340003c0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xaa1903e0
bl _p_34
.word 0x1400006d
.word 0x910163a0
.word 0xf9008ba0
bl _p_31
.word 0xf9408bbe
.word 0xf90003c0
.word 0xd2800000
.word 0xf90057a0
.word 0xf9005ba0
.word 0x9102a3a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #320]
.word 0xf9402fa1
bl _p_35
.word 0xf94057a0
.word 0xf90027a0
.word 0xf9405ba0
.word 0xf9002ba0
.word 0x91014320
.word 0xf94027a1
.word 0xf9000001
.word 0xf9402ba1
.word 0xf9000401
.word 0x39422720
.word 0x34000a80
.word 0x910403a0
.word 0xf9008ba0
bl _p_31
.word 0xf9408bbe
.word 0xf90003c0
.word 0x91018320
.word 0xf9400001
.word 0xf9006fa1
.word 0xf9400400
.word 0xf90073a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #320]
.word 0x394383a0
.word 0x35000120
.word 0xd2800000
.word 0xf90067a0
.word 0xf9006ba0
.word 0xf94067a0
.word 0xf9004fa0
.word 0xf9406ba0
.word 0xf90053a0
.word 0x1400001c
.word 0xf94083a0
.word 0xf90023a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xf9406fa0
.word 0xf9001fa0
.word 0x9100c3a0
.word 0xf9008ba0
.word 0xf94023a0
.word 0xf9401fa1
bl _p_36
.word 0xf9408bbe
.word 0xf90003c0
.word 0xd2800000
.word 0xf90047a0
.word 0xf9004ba0
.word 0x910223a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #336]
.word 0xf9401ba1
bl _p_37
.word 0xf94047a0
.word 0xf9004fa0
.word 0xf9404ba0
.word 0xf90053a0
.word 0xf9404fa0
.word 0xf9007ba0
.word 0xf94053a0
.word 0xf9007fa0
.word 0x91020320
.word 0xf9400000
.word 0xf90077a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #336]
.word 0x3943e3a0
.word 0x35000060
.word 0xd280001a
.word 0x1400000e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xf9407ba0
.word 0xf90017a0
.word 0xf94017a0
.word 0xf90043a0
.word 0xf94077a0
.word 0xf9003fa0
.word 0xf94043a0
.word 0xf9403fa1
.word 0xeb01001f
.word 0x9a9fd7fa
.word 0x340000da

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xaa1903e0
bl _p_34
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8d37bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8

Lme_24:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_Timeout_string
Plugin_AudioRecorder_AudioRecorderService_Timeout_string:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1
.word 0xf9401340
.word 0xf90013a0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000be0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf94013a2
.word 0xeb1f035f
.word 0x10000011
.word 0x54000a40
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #360]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #384]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xeb1f035f
.word 0x10000011
.word 0x540005a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #392]
.word 0xd2800e01
bl _p_1
.word 0xeb1f035f
.word 0x10000011
.word 0x54000440
.word 0xf900101a
.word 0x91008001
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #400]
.word 0xf9001401

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #408]
.word 0xf9002001

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #416]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_38
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_25:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool
Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf90043a0
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0x910143a1
.word 0xf9400ba0
.word 0xf9003ba0
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x394063a0
.word 0x3901e3a0
.word 0x910143a0
.word 0xd2800001
.word 0xf90013a1
.word 0xf90017a1
.word 0xf9001ba1
.word 0x91002002
.word 0xaa0203e0
.word 0xf94013a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94017a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb90053be
.word 0x910143a0
.word 0x91002000
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x910143a1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #424]
bl _p_39
.word 0x910143a0
.word 0x91002000
bl _p_40
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int
Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9401320
.word 0xb40006c0
.word 0xf9401320
.word 0xf9002ba0
.word 0xeb1f033f
.word 0x10000011
.word 0x540013c0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf9402ba2
.word 0xeb1f033f
.word 0x10000011
.word 0x54001220
.word 0xf9001039
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #360]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #384]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x14000017

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #432]
.word 0xd2800701
bl _p_1
.word 0xf9002ba0
.word 0xb9801ba1
.word 0xd2805002
bl _p_41
.word 0xf9402ba0
.word 0xf9001320
.word 0x91008321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401320
.word 0xf9002ba0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000a60

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf9402ba2
.word 0xeb1f033f
.word 0x10000011
.word 0x540008c0
.word 0xf9001039
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #360]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #440]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9400f20
.word 0xb5000240

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #448]
.word 0xd2800801
bl _p_1
.word 0xf9000f20
.word 0x91006321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x14000009
.word 0xf90013a0
bl _p_42
.word 0xf90023a0
.word 0xf94023a0
.word 0xb4000060
.word 0xf94023a0
bl _p_25
.word 0x14000001
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_27:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService_GetAudioFilePath
Plugin_AudioRecorder_AudioRecorderService_GetAudioFilePath:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39412000
.word 0x35000060
.word 0xd2800000
.word 0x14000003
.word 0xf9400ba0
.word 0xf9401c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService__Timeoutb__58_0
Plugin_AudioRecorder_AudioRecorderService__Timeoutb__58_0:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
bl _p_43
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_29:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_add_OnBroadcast_System_EventHandler_1_byte__
Plugin_AudioRecorder_AudioStream_add_OnBroadcast_System_EventHandler_1_byte__:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9400f38
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_10
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91006321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #464]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_2a:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_remove_OnBroadcast_System_EventHandler_1_byte__
Plugin_AudioRecorder_AudioStream_remove_OnBroadcast_System_EventHandler_1_byte__:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9400f38
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_11
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91006321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #464]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_2b:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_add_OnActiveChanged_System_EventHandler_1_bool
Plugin_AudioRecorder_AudioStream_add_OnActiveChanged_System_EventHandler_1_bool:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9401338
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_10
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #472]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91008321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #480]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_2c:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_remove_OnActiveChanged_System_EventHandler_1_bool
Plugin_AudioRecorder_AudioStream_remove_OnActiveChanged_System_EventHandler_1_bool:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9401338
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_11
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #472]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x91008321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #480]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_2d:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_add_OnException_System_EventHandler_1_System_Exception
Plugin_AudioRecorder_AudioStream_add_OnException_System_EventHandler_1_System_Exception:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9401738
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_10
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #488]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x9100a321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #496]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_2e:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_remove_OnException_System_EventHandler_1_System_Exception
Plugin_AudioRecorder_AudioStream_remove_OnException_System_EventHandler_1_System_Exception:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9401738
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_11
.word 0xaa0003f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #488]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xaa1603f5
.word 0xeb1f033f
.word 0x10000011
.word 0x540003e0
.word 0x9100a321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #496]
.word 0xc85f7c30
.word 0xeb18021f
.word 0x54000061
.word 0xc811fc36
.word 0x35ffff91
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0xeb17001f
.word 0x54fffaa1
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_2f:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_get_SampleRate
Plugin_AudioRecorder_AudioStream_get_SampleRate:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_set_SampleRate_int
Plugin_AudioRecorder_AudioStream_set_SampleRate_int:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9003401
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_get_ChannelCount
Plugin_AudioRecorder_AudioStream_get_ChannelCount:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_get_BitsPerSample
Plugin_AudioRecorder_AudioStream_get_BitsPerSample:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_get_Active
Plugin_AudioRecorder_AudioStream_get_Active:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xf9400800
.word 0xaa0003fa
.word 0xb5000060
.word 0xd2800000
.word 0x14000004
.word 0xaa1a03e0
bl _p_44
.word 0x53001c00
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_Start
Plugin_AudioRecorder_AudioStream_Start:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xaa1a03e0
bl _p_45
.word 0x53001c00
.word 0x35000520
.word 0xaa1a03e0
bl _p_46
.word 0xf9400b41
.word 0xaa0103e0
.word 0xf940003e
bl _p_47
.word 0x93407c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x35000160
.word 0xf9401340
.word 0xaa0003f9
.word 0xb5000040
.word 0x1400001b
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800022
.word 0xf9400f30
.word 0xd63f0200
.word 0x14000015

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28057c1
bl _p_23
.word 0xf90033a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #504]
.word 0xd2800281
bl _p_1
.word 0xaa0003e1
.word 0xf94033a0
.word 0xb9001039
bl _p_48
.word 0xaa0003e1
.word 0xd28019c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #512]
.word 0xd2800020
bl _p_49
.word 0xaa0003fa
.word 0x14000004
.word 0xf90013a0
.word 0xf94013a0
bl _p_50
.word 0xaa1a03e0
.word 0x14000001
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_Stop
Plugin_AudioRecorder_AudioStream_Stop:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf9400b40
.word 0xf90017a0
.word 0xeb1f035f
.word 0x10000011
.word 0x540009a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf94017a2
.word 0xeb1f035f
.word 0x10000011
.word 0x54000800
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #528]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_51
.word 0xf9400b42
.word 0xaa0203e0
.word 0xd2800021
.word 0xf940005e
bl _p_52
.word 0x93407c00
.word 0xf90013a0
.word 0xf9400b41
.word 0xaa0103e0
.word 0xf940003e
bl _p_53
.word 0xf94013a0
.word 0xf9000b5f
.word 0x35000140
.word 0xf9401340
.word 0xaa0003f9
.word 0xb5000040
.word 0x14000006
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800002
.word 0xf9400f30
.word 0xd63f0200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #512]
.word 0xd2800020
bl _p_49
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_36:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream__ctor_int_int
Plugin_AudioRecorder_AudioStream__ctor_int_int:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9003401
.word 0xb98023a1
.word 0xb9003001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_InitAudioQueue
Plugin_AudioRecorder_AudioStream_InitAudioQueue:
.loc 1 1 0
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
.word 0xf9005ba0
.word 0xf9005fa0
.word 0xf90063a0
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf90047a0
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xf90067bf
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf90047a0
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xb9803740
.word 0x1e620000
.word 0xfd003fa0
.word 0xd28c6dbe
.word 0xf2ad8e1e
.word 0xb90083be
.word 0xd280019e
.word 0xb90087be
.word 0xd280003e
.word 0xb9008fbe
.word 0xd280003e
.word 0xb90097be
.word 0xd280021e
.word 0xb9009bbe
.word 0xd280005e
.word 0xb9008bbe
.word 0xd280005e
.word 0xb90093be
.word 0xb9009fbf
.word 0xf9403fa0
.word 0xf90053a0
.word 0xf94043a0
.word 0xf90057a0
.word 0xf94047a0
.word 0xf9005ba0
.word 0xf9404ba0
.word 0xf9005fa0
.word 0xf9404fa0
.word 0xf90063a0
.word 0xf94053a0
.word 0xf9002ba0
.word 0xf94057a0
.word 0xf9002fa0
.word 0xf9405ba0
.word 0xf90033a0
.word 0xf9405fa0
.word 0xf90037a0
.word 0xf94063a0
.word 0xf9003ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #552]
bl _p_54
.word 0xf9006fa0
.word 0x9100a3a1
.word 0xf9402ba2
.word 0xf90017a2
.word 0xf9402fa2
.word 0xf9001ba2
.word 0xf94033a2
.word 0xf9001fa2
.word 0xf94037a2
.word 0xf90023a2
.word 0xf9403ba2
.word 0xf90027a2
bl _p_55
.word 0xf9406fa0
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b40
.word 0xf9006ba0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000960

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf9406ba2
.word 0xeb1f035f
.word 0x10000011
.word 0x540007c0
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #528]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_56
.word 0xb9803340
.word 0xb980b3a1
.word 0x1b017c19
.word 0xd2800018
.word 0x14000012
.word 0xf9400b44
.word 0xb9803342
.word 0x910323a3
.word 0xaa0403e0
.word 0xaa1903e1
.word 0xf940009e
bl _p_57
.word 0x93407c00
.word 0xf9400b44
.word 0xf94067a1
.word 0xaa0403e0
.word 0xaa1903e2
.word 0xd2800003
.word 0xf940009e
bl _p_58
.word 0x93407c00
.word 0x11000718
.word 0xd280007e
.word 0x6b1e031f
.word 0x54fffdab
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_38:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStream_QueueInputCompleted_object_AudioToolbox_InputCompletedEventArgs
Plugin_AudioRecorder_AudioStream_QueueInputCompleted_object_AudioToolbox_InputCompletedEventArgs:
.loc 1 1 0
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xf9001ba1
.word 0xaa0203fa
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xaa1903e0
bl _p_45
.word 0x53001c00
.word 0x35000040
.word 0x14000070
.word 0xf940035e
.word 0xf9400f40

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #560]
bl _p_59
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54000d41
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #568]
.word 0xeb02003f
.word 0x10000011
.word 0x54000c41
.word 0x91004000
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c01
.word 0xf9002ba1
.word 0xf9401001
.word 0xf9002fa1
.word 0xf9401401
.word 0xf90033a1
.word 0xf9401800
.word 0xf90037a0
.word 0xb9404ba1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #576]
bl _p_60
.word 0xaa0003f8
.word 0xf94023a0
.word 0xb9404ba3
.word 0xaa1803e1
.word 0xd2800002
bl _p_61
.word 0xf9400f20
.word 0xaa0003f7
.word 0xb5000040
.word 0x14000006
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1803e2
.word 0xf9400ef0
.word 0xd63f0200
.word 0xaa1903e0
bl _p_45
.word 0x53001c00
.word 0x340005a0
.word 0xf9400b24
.word 0xf940035e
.word 0xf9400f41
.word 0xb9803322
.word 0xf940035e
.word 0xf9400b43
.word 0xaa0403e0
.word 0xf940009e
bl _p_58
.word 0x93407c00
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x34000400
.word 0xf9401720
.word 0xaa0003f7
.word 0xb5000040
.word 0x1400001c

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #584]
.word 0xf9006ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #504]
.word 0xd2800281
bl _p_1
.word 0xaa0003e1
.word 0xf9406ba0
.word 0xb900103a
bl _p_48
.word 0xf90067a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #592]
.word 0xd2801101
bl _p_1
.word 0xf94067a1
.word 0xf90063a0
bl _p_62
.word 0xf94063a2
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xf9400ef0
.word 0xd63f0200
.word 0x14000009
.word 0xf9003ba0
bl _p_42
.word 0xf9005ba0
.word 0xf9405ba0
.word 0xb4000060
.word 0xf9405ba0
bl _p_25
.word 0x14000001
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_39:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_Stream_int_int_int_int
Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_Stream_int_int_int_int:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9001fbf
bl _p_63
.word 0xf90037a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #600]
.word 0xd2800801
bl _p_1
.word 0xf94037a2
.word 0xf90033a0
.word 0xf9400ba1
bl _p_64
.word 0xf94033a0
.word 0xf9001fa0
.word 0xf9401fa0
.word 0xb9801ba1
.word 0xb98023a2
.word 0xb9802ba3
.word 0xb98033a4
bl _p_65
.word 0xf90023bf
.word 0x94000005
.word 0xf94023a0
.word 0xb4000040
bl _p_66
.word 0x14000010
.word 0xf9002fbe
.word 0xf9401fa0
.word 0xb4000160
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #608]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_3a:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int
Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xf9000fba
.word 0xaa0003f6
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xaa0403fa
.word 0xaa1603e0
.word 0xd2800001
.word 0xd2800002
.word 0xf94002de
bl _p_67
.word 0xaa1603e0
.word 0xd2800a41
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800921
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd28008c1
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd28008c1
.word 0xf94002de
bl _p_68
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e035f
.word 0x540000cd
.word 0x11009341
.word 0xaa1603e0
.word 0xf94002de
bl _p_69
.word 0x14000005
.word 0xaa1603e0
.word 0xaa1a03e1
.word 0xf94002de
bl _p_69
.word 0xaa1603e0
.word 0xd2800ae1
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800821
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800ac1
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd28008a1
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800cc1
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800da1
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800e81
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800401
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800201
.word 0xf94002de
bl _p_69
.word 0xaa1603e0
.word 0xd2800021
.word 0xf94002de
bl _p_70
.word 0xb98023a0
.word 0x93403c01
.word 0xaa1603e0
.word 0xf94002de
bl _p_70
.word 0xaa1603e0
.word 0xb9802ba1
.word 0xf94002de
bl _p_69
.word 0xb9802ba0
.word 0x531f7801
.word 0xaa1603e0
.word 0xf94002de
bl _p_69
.word 0xaa1603e0
.word 0xd2800041
.word 0xf94002de
bl _p_70
.word 0xb98033a0
.word 0x93403c01
.word 0xaa1603e0
.word 0xf94002de
bl _p_70
.word 0xaa1603e0
.word 0xd2800c81
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800c21
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800e81
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xd2800c21
.word 0xf94002de
bl _p_68
.word 0xaa1603e0
.word 0xaa1a03e1
.word 0xf94002de
bl _p_69
.word 0xf9400bb6
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3b:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool
Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xf9001bb7
.word 0xa903ebb9
.word 0xaa0003f5
.word 0xaa0103f6
.word 0xaa0203f7
.word 0xf90027a3
.word 0xf9002ba4
.word 0xaa0503fa
.word 0xd2800014
.word 0x394123a0
.word 0x340008a0
.word 0xaa1603f3
.word 0x1400003e
.word 0x3500017a
.word 0x11000660
.word 0x93407c00
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54001389
.word 0x8b0002a0
.word 0x91008000
.word 0x39400016
.word 0x14000009
.word 0x93407e60
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54001269
.word 0x8b0002a0
.word 0x91008000
.word 0x39400016
.word 0xb90063b6
.word 0x3500015a
.word 0x93407e60
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54001129
.word 0x8b0002a0
.word 0x91008000
.word 0x39400016
.word 0x1400000a
.word 0x11000660
.word 0x93407c00
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54000fe9
.word 0x8b0002a0
.word 0x91008000
.word 0x39400016
.word 0xaa1603f9
.word 0x394143a0
.word 0x34000100
.word 0xb98063a0
.word 0x93403c00
.word 0x53185c00
.word 0x53001f21
.word 0x2a010000
.word 0x93403c16
.word 0x14000004
.word 0xb98063a0
.word 0x53185c00
.word 0x2a190016
.word 0xaa1403f9
.word 0xaa1603f4
.word 0x6b16033f
.word 0x5400006a
.word 0xaa1403f6
.word 0x14000002
.word 0xaa1903f6
.word 0xaa1603f4
.word 0x11000a73
.word 0xb9801aa0
.word 0x4b170000
.word 0x6b00027f
.word 0x54fff80b
.word 0x14000026
.word 0xaa1603fa
.word 0x14000020
.word 0x394143a0
.word 0x34000140
.word 0x93407f40
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54000b09
.word 0x8b0002a0
.word 0x91008000
.word 0x39400016
.word 0x1400000c
.word 0x93407f40
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x540009e9
.word 0x8b0002a0
.word 0x91008000
.word 0x39400000
.word 0xd280001e
.word 0x2a1e0000
.word 0x93403c16
.word 0xaa1403f3
.word 0xaa1603f4
.word 0x6b16027f
.word 0x5400006a
.word 0xaa1403f6
.word 0x14000002
.word 0xaa1303f6
.word 0xaa1603f4
.word 0x1100075a
.word 0xb9801aa0
.word 0x4b170000
.word 0x6b00035f
.word 0x54fffbcb
.word 0x394143a0
.word 0x34000320
.word 0x394123a0
.word 0x34000180
.word 0x1e220290
.word 0x1e22c200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #616]
.word 0xbd400010
.word 0x1e22c201
.word 0x1e611800
.word 0x1e624010
.word 0xbd005bb0
.word 0x14000023
.word 0x1e220290
.word 0x1e22c200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #624]
.word 0xbd400010
.word 0x1e22c201
.word 0x1e611800
.word 0x1e624010
.word 0xbd005bb0
.word 0x14000018
.word 0x394123a0
.word 0x34000180
.word 0x1e220290
.word 0x1e22c200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #632]
.word 0xbd400010
.word 0x1e22c201
.word 0x1e611800
.word 0x1e624010
.word 0xbd005bb0
.word 0x1400000b
.word 0x1e220290
.word 0x1e22c200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #640]
.word 0xbd400010
.word 0x1e22c201
.word 0x1e611800
.word 0x1e624010
.word 0xbd005bb0
.word 0xbd405bb0
.word 0x1e22c200
.word 0x1e624000
.word 0xa94153b3
.word 0xa9425bb5
.word 0xf9401bb7
.word 0xa943ebb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_3c:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioFunctions__cctor
Plugin_AudioRecorder_AudioFunctions__cctor:
.loc 1 1 0
.word 0xa9bf7bfd
.word 0x910003fd
.word 0xd280001e
.word 0xf2a86ffe
.word 0x9e6703d0
.word 0x1e22c200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #624]
.word 0x1e624010
.word 0xbd000010
.word 0xd280001e
.word 0xf2a86ffe
.word 0x9e6703d0
.word 0x1e22c200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #640]
.word 0x1e624010
.word 0xbd000010
.word 0xd29fc01e
.word 0xf2a8dffe
.word 0x9e6703d0
.word 0x1e22c200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #616]
.word 0x1e624010
.word 0xbd000010
.word 0xd29fe01e
.word 0xf2a8effe
.word 0x9e6703d0
.word 0x1e22c200

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #632]
.word 0x1e624010
.word 0xbd000010
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3d:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStreamDetails_get_SampleRate
Plugin_AudioRecorder_AudioStreamDetails_get_SampleRate:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStreamDetails_set_SampleRate_int
Plugin_AudioRecorder_AudioStreamDetails_set_SampleRate_int:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9001001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3f:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStreamDetails_get_ChannelCount
Plugin_AudioRecorder_AudioStreamDetails_get_ChannelCount:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_40:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStreamDetails_set_ChannelCount_int
Plugin_AudioRecorder_AudioStreamDetails_set_ChannelCount_int:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9001401
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_41:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStreamDetails_get_BitsPerSample
Plugin_AudioRecorder_AudioStreamDetails_get_BitsPerSample:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_42:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStreamDetails_set_BitsPerSample_int
Plugin_AudioRecorder_AudioStreamDetails_set_BitsPerSample_int:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9001801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_43:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioStreamDetails__ctor
Plugin_AudioRecorder_AudioStreamDetails__ctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_44:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string
Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf90047a0
.word 0xf9004ba0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0x910163a1
.word 0xf9400ba0
.word 0xf90043a0
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910163a1
.word 0xf9400fa0
.word 0xf9003fa0
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910163a1
.word 0xf94013a0
.word 0xf90047a0
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910163a0
.word 0xd2800001
.word 0xf90017a1
.word 0xf9001ba1
.word 0xf9001fa1
.word 0x91002002
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9401ba1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9401fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9005bbe
.word 0x910163a0
.word 0x91002000
.word 0xf9400001
.word 0xf90023a1
.word 0xf9400401
.word 0xf90027a1
.word 0xf9400800
.word 0xf9002ba0
.word 0x910103a0
.word 0x910163a1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #648]
bl _p_71
.word 0x910163a0
.word 0x91002000
bl _p_40
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_51:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream
Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0xf90017a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #656]
bl _p_54
.word 0xf94017a1
.word 0xf90013a0
.word 0xd2800062
.word 0xd2800023
.word 0xd2800064
bl _p_72
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_52:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder_StreamActiveChanged_object_bool
Plugin_AudioRecorder_WaveRecorder_StreamActiveChanged_object_bool:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0x394083a0
.word 0x35000060
.word 0xf9400ba0
bl _p_73
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_53:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder_OnStreamBroadcast_object_byte__
Plugin_AudioRecorder_WaveRecorder_OnStreamBroadcast_object_byte__:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9401400
.word 0xb4000220
.word 0xf9400ba0
.word 0xf9401000
.word 0xb40001c0
.word 0xf9400ba0
.word 0xf9401402
.word 0xaa0203e0
.word 0xf94013a1
.word 0xf940005e
bl _p_74
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xb9803821
.word 0xf94013a2
.word 0xb9801842
.word 0xb020021
.word 0xb9003801
.word 0x1400000b
.word 0xf90017a0
.word 0xf9400ba0
bl _p_73
bl _p_42
.word 0xf90027a0
.word 0xf94027a0
.word 0xb4000060
.word 0xf94027a0
bl _p_25
.word 0x14000001
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_54:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder_StopRecorder
Plugin_AudioRecorder_WaveRecorder_StopRecorder:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9401b40
.word 0xb4000d20
.word 0xf9401b40
.word 0xf90027a0
.word 0xeb1f035f
.word 0x10000011
.word 0x54001680

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf94027a2
.word 0xeb1f035f
.word 0x10000011
.word 0x540014e0
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #664]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #680]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #384]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401b40
.word 0xf90023a0
.word 0xeb1f035f
.word 0x10000011
.word 0x54001000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf94023a2
.word 0xeb1f035f
.word 0x10000011
.word 0x54000e60
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #696]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #712]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #720]
.word 0x92800af0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401740
.word 0xb4000860
.word 0xf9401340
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9401401
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9409030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000640
.word 0xf9401743
.word 0xaa0303e0
.word 0xd2800001
.word 0xd2800002
.word 0xf940007e
bl _p_67
.word 0xf9401740
.word 0xf90023a0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #728]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xf90027a0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #736]
.word 0x928011f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xf9002ba0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #744]
.word 0x928009f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e3
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2
.word 0xb9803b44
bl _p_65
.word 0xf9401741
.word 0xaa0103e0
.word 0xf940003e
bl _p_75
.word 0xf900175f
.word 0xf9000f5f
.word 0xf900135f
.word 0xf9001b5f
.word 0x14000004
.word 0xf9000fa0
.word 0xf9400fa0
bl _p_50
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_55:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder_Dispose
Plugin_AudioRecorder_WaveRecorder_Dispose:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_73
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_56:
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder__ctor
Plugin_AudioRecorder_WaveRecorder__ctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_57:
.text
ut_88:
add x0, x0, 16
b Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_88
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext
Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext:
.loc 1 1 0
.word 0xa9af7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xf9003bbf
.word 0xf90037bf
.word 0xf9003fbf
.word 0xf94013a0
.word 0xb980001a
.word 0xf94013a0
.word 0xf9401019
.word 0x3400079a
.word 0xd280003e
.word 0x6b1e035f
.word 0x540013c0
.word 0xf9401f20
.word 0xb5000a80
.word 0xaa1903e0
bl _p_76
.word 0xaa0003e1
.word 0x9101c3a0
.word 0xf90043a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_77
.word 0xf94043be
.word 0xf90003c0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9403ba0
.word 0xaa0003e1
.word 0xf940003e
.word 0xb9804400
.word 0xf90063a0
.word 0xd5033bbf
.word 0xf94063a0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x35000500
.word 0xf94013a0
.word 0xb900001f
.word 0xf94013a0
.word 0xf9403ba1
.word 0xf90027a1
.word 0x9100a002
.word 0xaa0203e1
.word 0xf94027a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0x91002000
.word 0x9101c3a1
.word 0xf94013a2

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #760]
bl _p_78
.word 0x14000110
.word 0xf94013a0
.word 0x9100a000
.word 0xf9400000
.word 0xf9003ba0
.word 0xf94013a0
.word 0x9100a000
.word 0xf900001f
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.word 0x9101c3a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #752]
bl _p_79
.word 0xaa0003fa
.word 0xf9001f3a
.word 0x9100e320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xaa1903e0
bl _p_80
.word 0xaa1903e0
bl _p_81
.word 0xb9807321
.word 0xaa1903e0
bl _p_82
.word 0xf9400f23
.word 0xf9401321
.word 0xf9401f22
.word 0xaa0303e0
.word 0xf940007e
bl _p_83
.word 0xaa0003e1
.word 0xf940003e
.word 0xf90033bf
.word 0x910183a1
.word 0xf90033a0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94033a0
.word 0xf90037a0
.word 0xf94037a0
.word 0xaa0003e1
.word 0xf940003e
.word 0xb9804400
.word 0xf90063a0
.word 0xd5033bbf
.word 0xf94063a0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x35000520
.word 0xf94013a0
.word 0xd280003e
.word 0xb900001e
.word 0xf94013a0
.word 0xf94037a1
.word 0xf90023a1
.word 0x9100c002
.word 0xaa0203e1
.word 0xf94023a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0x91002000
.word 0x9101a3a1
.word 0xf94013a2

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #768]
bl _p_84
.word 0x140000ab
.word 0xf94013a0
.word 0x9100c000
.word 0xf9400000
.word 0xf90037a0
.word 0xf94013a0
.word 0x9100c000
.word 0xf900001f
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.word 0x9101a3a0
bl _p_85

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #776]
.word 0xd2800381
bl _p_1
.word 0xaa0003e1
.word 0xf9007fa1
.word 0xf90083a0
.word 0xf9401321
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #728]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e2
.word 0xf9407fa0
.word 0xf94083a1
.word 0xaa0103e3
.word 0xf940007e
.word 0xb9001422
.word 0xf90077a0
.word 0xf9007ba0
.word 0xf90073a0
.word 0xf9401321
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #736]
.word 0x928011f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e2
.word 0xf94073a0
.word 0xf94077a1
.word 0xf9407ba3
.word 0xf940007e
.word 0xb9001022
.word 0xf9006ba0
.word 0xf9006fa0
.word 0xf90067a0
.word 0xf9401321
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #744]
.word 0x928009f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
.word 0xf9406fa3
.word 0xf940007e
.word 0xb9001822
.word 0xf9001b20
.word 0x9100c321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9100e3a0
.word 0xf90043a0
bl _p_31
.word 0xf94043be
.word 0xf90003c0
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0x910143a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #320]
.word 0xf9401fa1
bl _p_35
.word 0xf9402ba0
.word 0xf90017a0
.word 0xf9402fa0
.word 0xf9001ba0
.word 0x91018320
.word 0xf94017a1
.word 0xf9000001
.word 0xf9401ba1
.word 0xf9000401

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #784]
.word 0xd2800301
bl _p_1
.word 0xf90063a0
bl _p_86
.word 0xf94063a0
.word 0xf9001720
.word 0x9100a321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401720
.word 0xaa0003e1
.word 0xf940003e
.word 0xf940081a
.word 0x14000016
.word 0xf90047a0
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf94013a0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf94013a0
.word 0x91002000
.word 0xf9403fa1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #304]
bl _p_87
bl _p_42
.word 0xf9005ba0
.word 0xf9405ba0
.word 0xb4000060
.word 0xf9405ba0
bl _p_25
.word 0x1400000c
.word 0xf94013a0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf94013a0
.word 0x91002000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #304]
.word 0xaa1a03e1
bl _p_88
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8d17bfd
.word 0xd65f03c0

Lme_58:
.text
ut_89:
add x0, x0, 16
b Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x91002000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #304]
.word 0xf9400fa1
bl _p_89
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_59:
.text
ut_90:
add x0, x0, 16
b Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext
Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext:
.loc 1 1 0
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf9001bbf
.word 0xf90027bf
.word 0xf9400fa0
.word 0xb980001a
.word 0xf9400fa0
.word 0xf9401000
.word 0xf9001fa0
.word 0x3400073a
.word 0xf9401fa0
.word 0xf9401000
.word 0xf9006fa0
.word 0xf9401fa0
.word 0xf9006ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001b40

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf9406ba0
.word 0xf9406fa2
.word 0xeb1f001f
.word 0x10000011
.word 0x54001980
.word 0xf9001020
.word 0x91008023
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #360]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #384]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x340008da
.word 0xf9401fa0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #792]
.word 0x92800cf0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf940003e
.word 0xf90017bf
.word 0x9100a3a1
.word 0xf90017a0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9001ba0
.word 0xf9401ba0
.word 0xaa0003e1
.word 0xf940003e
.word 0xb9804400
.word 0xf9006ba0
.word 0xd5033bbf
.word 0xf9406ba0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x35000500
.word 0xf9400fa0
.word 0xb900001f
.word 0xf9400fa0
.word 0xf9401ba1
.word 0xf90013a1
.word 0x9100c002
.word 0xaa0203e1
.word 0xf94013a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400fa0
.word 0x91002000
.word 0x9100c3a1
.word 0xf9400fa2

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #800]
bl _p_90
.word 0x1400005d
.word 0xf9400fa0
.word 0x9100c000
.word 0xf9400000
.word 0xf9001ba0
.word 0xf9400fa0
.word 0x9100c000
.word 0xf900001f
.word 0xf9400fa0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.word 0x9100c3a0
bl _p_85
.word 0x14000009
.word 0xf90043a0
bl _p_42
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_25
.word 0x14000001
.word 0xf9401fa0
bl _p_91
.word 0xf9401fa0
.word 0xf9002ba0
.word 0xf9402ba0
.word 0x39412000
.word 0x35000060
.word 0xf90037bf
.word 0x14000009
.word 0xf9402ba0
.word 0xf9002fa0
.word 0xf9402fa0
.word 0xf9401c00
.word 0xf90033a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x14000001
.word 0xf94037a0
.word 0xf90023a0
.word 0xf9401fa0
.word 0xf9401402
.word 0xf94023a1
.word 0xaa0203e0
.word 0xf940005e
bl _p_92
.word 0xf9400fa0
.word 0x3940a000
.word 0x34000220
.word 0xf9401fa0
.word 0xf9402000
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb5000040
.word 0x14000009
.word 0xf9403fa3
.word 0xf9401fa1
.word 0xf94023a2
.word 0xaa0303e0
.word 0xf9006ba3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf9406ba0
.word 0x14000013
.word 0xf90047a0
.word 0xf94047a0
.word 0xf90027a0
.word 0xf9400fa0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf9400fa0
.word 0x91002000
.word 0xf94027a1
bl _p_93
bl _p_42
.word 0xf90063a0
.word 0xf94063a0
.word 0xb4000060
.word 0xf94063a0
bl _p_25
.word 0x14000008
.word 0xf9400fa0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf9400fa0
.word 0x91002000
bl _p_94
.word 0xf9400bba
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_5a:
.text
ut_91:
add x0, x0, 16
b Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x91002000
.word 0xf9400fa1
bl _p_95
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5b:
.text
ut_92:
add x0, x0, 16
b Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext
Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext:
.loc 1 1 0
.word 0xa9b17bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xf90027bf
.word 0xf9002bbf
.word 0xf94013a0
.word 0xb980001a
.word 0xf94013a0
.word 0xf9401419
.word 0xd280003e
.word 0x6b1e035f
.word 0x540001c9
.word 0xf94013a0
.word 0xf9401000
.word 0xb5000160

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2807141
bl _p_23
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.word 0x3400095a
.word 0xd280003e
.word 0x6b1e035f
.word 0x54002f00
.word 0xf9401b20
.word 0xb4000a40
.word 0xf9401b21
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #792]
.word 0x92800cf0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf940003e
.word 0xf90023bf
.word 0x910103a1
.word 0xf90023a0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a0
.word 0xf90027a0
.word 0xf94027a0
.word 0xaa0003e1
.word 0xf940003e
.word 0xb9804400
.word 0xf90053a0
.word 0xd5033bbf
.word 0xf94053a0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x35000500
.word 0xf94013a0
.word 0xb900001f
.word 0xf94013a0
.word 0xf94027a1
.word 0xf9001ba1
.word 0x9100e002
.word 0xaa0203e1
.word 0xf9401ba0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0x91002000
.word 0x910123a1
.word 0xf94013a2

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #808]
bl _p_96
.word 0x1400015d
.word 0xf94013a0
.word 0x9100e000
.word 0xf9400000
.word 0xf90027a0
.word 0xf94013a0
.word 0x9100e000
.word 0xf900001f
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.word 0x910123a0
bl _p_85
.word 0xf94013a0
.word 0xf9401800
.word 0xf9000b20
.word 0x91004321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xf9401000
.word 0xf9001b20
.word 0x9100c321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xf9401800
.word 0xf90073a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #656]
bl _p_54
.word 0xf94073a1
.word 0xf9006fa0
.word 0xd2800042
.word 0xd2800043
.word 0xd2800024
bl _p_72
.word 0xf9406fa0
.word 0xf9000f20
.word 0x91006321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400f20
.word 0xf9006ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800d01
bl _p_1
.word 0xf9406ba1
.word 0xf90067a0
bl _p_97
.word 0xf94067a0
.word 0xf9001320
.word 0x91008321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401320
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9401400
.word 0xf9005fa0
bl _p_63
.word 0xf90063a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #600]
.word 0xd2800801
bl _p_1
.word 0xf9405fa1
.word 0xf94063a2
.word 0xf9005ba0
bl _p_64
.word 0xf9405ba0
.word 0xf9001720
.word 0x9100a321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xb9003b3f
.word 0xf9401b20
.word 0xf90057a0
.word 0xeb1f033f
.word 0x10000011
.word 0x54001ce0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf94057a2
.word 0xeb1f033f
.word 0x10000011
.word 0x54001b40
.word 0xf9001039
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #664]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #680]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #440]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401b20
.word 0xf90053a0
.word 0xeb1f033f
.word 0x10000011
.word 0x54001660

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf94053a2
.word 0xeb1f033f
.word 0x10000011
.word 0x540014c0
.word 0xf9001039
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #696]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #712]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #824]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401b21
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #280]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35000a60
.word 0xf9401b21
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #832]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9001fbf
.word 0x9100e3a1
.word 0xf9001fa0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401fa0
.word 0xf90027a0
.word 0xf94027a0
.word 0xaa0003e1
.word 0xf940003e
.word 0xb9804400
.word 0xf90053a0
.word 0xd5033bbf
.word 0xf94053a0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x35000520
.word 0xf94013a0
.word 0xd280003e
.word 0xb900001e
.word 0xf94013a0
.word 0xf94027a1
.word 0xf90017a1
.word 0x9100e002
.word 0xaa0203e1
.word 0xf94017a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0x91002000
.word 0x910123a1
.word 0xf94013a2

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #808]
bl _p_96
.word 0x1400002c
.word 0xf94013a0
.word 0x9100e000
.word 0xf9400000
.word 0xf90027a0
.word 0xf94013a0
.word 0x9100e000
.word 0xf900001f
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.word 0x910123a0
bl _p_85
.word 0x14000004
.word 0xf9002fa0
.word 0xf9402fa0
bl _p_50
.word 0x14000013
.word 0xf90033a0
.word 0xf94033a0
.word 0xf9002ba0
.word 0xf94013a0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf94013a0
.word 0x91002000
.word 0xf9402ba1
bl _p_93
bl _p_42
.word 0xf9004ba0
.word 0xf9404ba0
.word 0xb4000060
.word 0xf9404ba0
bl _p_25
.word 0x14000008
.word 0xf94013a0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf94013a0
.word 0x91002000
bl _p_94
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_5c:
.text
ut_93:
add x0, x0, 16
b Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
.text
	.align 4
	.no_dead_strip Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x91002000
.word 0xf9400fa1
bl _p_95
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5d:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_string_invoke_void_object_TEventArgs_object_string
wrapper_delegate_invoke_System_EventHandler_1_string_invoke_void_object_TEventArgs_object_string:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000680
.word 0x14000001
.word 0xf9403717
.word 0xaa1703e0
.word 0xb5000220
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x1400001e
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000018
.word 0xb9801af8
.word 0xd2800016
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540003a9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffd8b
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_25
bl _p_98
.word 0xaa0003f7
.word 0xb5ffff80
.word 0x17ffffcb
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_5f:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_byte___invoke_void_object_TEventArgs_object_byte__
wrapper_delegate_invoke_System_EventHandler_1_byte___invoke_void_object_TEventArgs_object_byte__:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000680
.word 0x14000001
.word 0xf9403717
.word 0xaa1703e0
.word 0xb5000220
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x1400001e
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000018
.word 0xb9801af8
.word 0xd2800016
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540003a9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffd8b
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_25
bl _p_98
.word 0xaa0003f7
.word 0xb5ffff80
.word 0x17ffffcb
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_60:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_bool_invoke_void_object_TEventArgs_object_bool
wrapper_delegate_invoke_System_EventHandler_1_bool_invoke_void_object_TEventArgs_object_bool:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000680
.word 0x14000001
.word 0xf9403717
.word 0xaa1703e0
.word 0xb5000220
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x1400001e
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000018
.word 0xb9801af8
.word 0xd2800016
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540003a9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffd8b
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_25
bl _p_98
.word 0xaa0003f7
.word 0xb5ffff80
.word 0x17ffffcb
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_65:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_System_Exception_invoke_void_object_TEventArgs_object_System_Exception
wrapper_delegate_invoke_System_EventHandler_1_System_Exception_invoke_void_object_TEventArgs_object_System_Exception:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000680
.word 0x14000001
.word 0xf9403717
.word 0xaa1703e0
.word 0xb5000220
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x1400001e
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000018
.word 0xb9801af8
.word 0xd2800016
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540003a9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffd8b
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_25
bl _p_98
.word 0xaa0003f7
.word 0xb5ffff80
.word 0x17ffffcb
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_66:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_AVFoundation_AVStatusEventArgs_invoke_void_object_TEventArgs_object_AVFoundation_AVStatusEventArgs
wrapper_delegate_invoke_System_EventHandler_1_AVFoundation_AVStatusEventArgs_invoke_void_object_TEventArgs_object_AVFoundation_AVStatusEventArgs:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000680
.word 0x14000001
.word 0xf9403717
.word 0xaa1703e0
.word 0xb5000220
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x1400001e
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000018
.word 0xb9801af8
.word 0xd2800016
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540003a9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffd8b
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_25
bl _p_98
.word 0xaa0003f7
.word 0xb5ffff80
.word 0x17ffffcb
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_67:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_string_invoke_TResult
wrapper_delegate_invoke_System_Func_1_string_invoke_TResult:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x350005e0
.word 0x14000001
.word 0xf9403759
.word 0xaa1903e0
.word 0xb50001a0
.word 0xf9401359
.word 0xaa1903e0
.word 0xb40000c0
.word 0xf9401f40
.word 0xf9400b41
.word 0xaa1903e0
.word 0xd63f0020
.word 0x1400001c
.word 0xf9401f40
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000018
.word 0xb9801b3a
.word 0xd2800018
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400017
.word 0xaa1703e1
.word 0xaa0103e0
.word 0xf9001ba1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf9401ba1
.word 0xaa0003f7
.word 0x11000718
.word 0xaa1803e0
.word 0x6b1a001f
.word 0x54fffdab
.word 0xaa1703e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xaa1903e0
bl _p_25
bl _p_98
.word 0xaa0003f9
.word 0xb5ffff80
.word 0x17ffffd0
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_68:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_69:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_string
wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_string:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000620
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001c
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000017
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffdab
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffce
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_6a:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_6b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000620
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001c
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000017
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffdab
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffce
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_6c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x350006c0
.word 0x14000001
.word 0xf9403717
.word 0xaa1703e0
.word 0xb5000220
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x14000020
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001a
.word 0xb9801af8
.word 0xd2800016
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540003e9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f5
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffd6b
.word 0xaa1503e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_25
bl _p_98
.word 0xaa0003f7
.word 0xb5ffff80
.word 0x17ffffc9
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_6d:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x350005e0
.word 0x14000001
.word 0xf9403759
.word 0xaa1903e0
.word 0xb50001a0
.word 0xf9401359
.word 0xaa1903e0
.word 0xb40000c0
.word 0xf9401f40
.word 0xf9400b41
.word 0xaa1903e0
.word 0xd63f0020
.word 0x1400001c
.word 0xf9401f40
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000018
.word 0xb9801b3a
.word 0xd2800018
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400017
.word 0xaa1703e1
.word 0xaa0103e0
.word 0xf9001ba1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf9401ba1
.word 0xaa0003f7
.word 0x11000718
.word 0xaa1803e0
.word 0x6b1a001f
.word 0x54fffdab
.word 0xaa1703e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xaa1903e0
bl _p_25
bl _p_98
.word 0xaa0003f9
.word 0xb5ffff80
.word 0x17ffffd0
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_6e:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_6f:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000620
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001c
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000017
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffdab
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffce
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_70:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_71:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_72:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_73:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_1_string_invoke_TResult
wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_1_string_invoke_TResult:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x350005e0
.word 0x14000001
.word 0xf9403759
.word 0xaa1903e0
.word 0xb50001a0
.word 0xf9401359
.word 0xaa1903e0
.word 0xb40000c0
.word 0xf9401f40
.word 0xf9400b41
.word 0xaa1903e0
.word 0xd63f0020
.word 0x1400001c
.word 0xf9401f40
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000018
.word 0xb9801b3a
.word 0xd2800018
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400017
.word 0xaa1703e1
.word 0xaa0103e0
.word 0xf9001ba1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf9401ba1
.word 0xaa0003f7
.word 0x11000718
.word 0xaa1803e0
.word 0x6b1a001f
.word 0x54fffdab
.word 0xaa1703e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xaa1903e0
bl _p_25
bl _p_98
.word 0xaa0003f9
.word 0xb5ffff80
.word 0x17ffffd0
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_74:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_1_string_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_1_string_invoke_TResult_T_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_75:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string
wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000620
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001c
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000017
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffdab
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffce
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_76:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_IAsyncResult:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_77:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_78:
.text
ut_121:
add x0, x0, 16
b System_Nullable_1_System_DateTime__ctor_System_DateTime
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime__ctor_System_DateTime
System_Nullable_1_System_DateTime__ctor_System_DateTime:
.file 2 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/corlib/System/Nullable.cs"
.loc 2 94 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xd280003e
.word 0x3900201e
.loc 2 95 0
.word 0xf9400fa1
.word 0xf9000001
.loc 2 96 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_79:
.text
ut_122:
add x0, x0, 16
b System_Nullable_1_System_DateTime_get_HasValue
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_get_HasValue
System_Nullable_1_System_DateTime_get_HasValue:
.loc 2 99 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39402000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7a:
.text
ut_123:
add x0, x0, 16
b System_Nullable_1_System_DateTime_get_Value
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_get_Value
System_Nullable_1_System_DateTime_get_Value:
.loc 2 104 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0x39402000
.word 0x34000100
.loc 2 107 0
.word 0xf94013a0
.word 0xf9400000
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 2 105 0
.word 0xd286ab00
bl _p_99
.word 0xaa0003e1
.word 0xd2801f60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_7b:
.text
ut_124:
add x0, x0, 16
b System_Nullable_1_System_DateTime_Equals_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_Equals_object
System_Nullable_1_System_DateTime_Equals_object:
.loc 2 113 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xb50000da
.loc 2 114 0
.word 0xf94013a0
.word 0x39402000
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x14000023
.loc 2 115 0
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #848]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 2 116 0
.word 0xd2800000
.word 0x14000013
.loc 2 118 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #320]
.word 0x9100a3a0
.word 0xf9001fa0
.word 0xaa1a03e0
bl _p_100
.word 0xf9401fbe
.word 0xf90003c0
.word 0xf90007c1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #320]
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9401ba2
bl _p_101
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_7c:
.text
ut_125:
add x0, x0, 16
b System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime:
.loc 2 123 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0x394083a0
.word 0xf9400ba1
.word 0x39402021
.word 0x6b01001f
.word 0x54000060
.loc 2 124 0
.word 0xd2800000
.word 0x14000017
.loc 2 126 0
.word 0xf9400ba0
.word 0x39402000
.word 0x35000060
.loc 2 127 0
.word 0xd2800020
.word 0x14000012
.loc 2 129 0
.word 0x910063a0
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90017a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #856]
.word 0xd2800301
bl _p_1
.word 0xaa0003e1
.word 0xf9401ba0
.word 0x91004022
.word 0xf94017a3
.word 0xf9000043
bl _p_102
.word 0x53001c00
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_7d:
.text
ut_126:
add x0, x0, 16
b System_Nullable_1_System_DateTime_GetHashCode
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_GetHashCode
System_Nullable_1_System_DateTime_GetHashCode:
.loc 2 134 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x39402340
.word 0x35000060
.loc 2 135 0
.word 0xd2800000
.word 0x1400000d
.loc 2 137 0
.word 0xf940035e
.word 0xf9400340
.word 0xd29fffe1
.word 0xf2bfffe1
.word 0xf2dfffe1
.word 0xf2e7ffe1
.word 0x8a010001
.word 0xaa0103e0
.word 0x93407c00
.word 0x9360fc21
.word 0x93407c21
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7e:
.text
ut_127:
add x0, x0, 16
b System_Nullable_1_System_DateTime_GetValueOrDefault
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_GetValueOrDefault
System_Nullable_1_System_DateTime_GetValueOrDefault:
.loc 2 142 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0xf9400000
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7f:
.text
ut_128:
add x0, x0, 16
b System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime:
.loc 2 147 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0
.word 0x39402000
.word 0x35000080
.word 0xf94017a0
.word 0xf9000ba0
.word 0x14000004
.word 0xf94013a0
.word 0xf9400000
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_80:
.text
ut_129:
add x0, x0, 16
b System_Nullable_1_System_DateTime_ToString
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_ToString
System_Nullable_1_System_DateTime_ToString:
.loc 2 152 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39402000
.word 0x34000080
.loc 2 153 0
.word 0xf9400ba0
bl _p_103
.word 0x14000005
.loc 2 155 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #864]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_81:
.text
ut_130:
add x0, x0, 16
b System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime:
.loc 2 177 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a0
.word 0x35000060
.loc 2 178 0
.word 0xd2800000
.word 0x1400000c
.loc 2 180 0
.word 0x910043a0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #856]
.word 0xd2800301
bl _p_1
.word 0x91004001
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_82:
.text
ut_131:
add x0, x0, 16
b System_Nullable_1_System_DateTime_Unbox_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_Unbox_object
System_Nullable_1_System_DateTime_Unbox_object:
.loc 2 185 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf94013a0
.word 0xb5000120
.loc 2 186 0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94027a0
.word 0xf9000fa0
.word 0x1400001f
.loc 2 187 0
.word 0xf94013a0
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540003c1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #848]
.word 0xeb02003f
.word 0x10000011
.word 0x540002c1
.word 0x91004000
.word 0xf9400000
.word 0xf90017a0
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0x9100c3a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #320]
.word 0xf94017a1
bl _p_35
.word 0xf9401ba0
.word 0xf9000ba0
.word 0xf9401fa0
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_83:
.text
ut_132:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan
System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan:
.loc 2 94 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xd280003e
.word 0x3900201e
.loc 2 95 0
.word 0xf9400fa1
.word 0xf9000001
.loc 2 96 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_84:
.text
ut_133:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_get_HasValue
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_get_HasValue
System_Nullable_1_System_TimeSpan_get_HasValue:
.loc 2 99 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39402000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_85:
.text
ut_134:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_get_Value
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_get_Value
System_Nullable_1_System_TimeSpan_get_Value:
.loc 2 104 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0x39402000
.word 0x34000100
.loc 2 107 0
.word 0xf94013a0
.word 0xf9400000
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 2 105 0
.word 0xd286ab00
bl _p_99
.word 0xaa0003e1
.word 0xd2801f60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_86:
.text
ut_135:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_Equals_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_Equals_object
System_Nullable_1_System_TimeSpan_Equals_object:
.loc 2 113 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xb50000da
.loc 2 114 0
.word 0xf94013a0
.word 0x39402000
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x14000023
.loc 2 115 0
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #872]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 2 116 0
.word 0xd2800000
.word 0x14000013
.loc 2 118 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #336]
.word 0x9100a3a0
.word 0xf9001fa0
.word 0xaa1a03e0
bl _p_104
.word 0xf9401fbe
.word 0xf90003c0
.word 0xf90007c1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #336]
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9401ba2
bl _p_105
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_87:
.text
ut_136:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan
System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan:
.loc 2 123 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0x394083a0
.word 0xf9400ba1
.word 0x39402021
.word 0x6b01001f
.word 0x54000060
.loc 2 124 0
.word 0xd2800000
.word 0x14000017
.loc 2 126 0
.word 0xf9400ba0
.word 0x39402000
.word 0x35000060
.loc 2 127 0
.word 0xd2800020
.word 0x14000012
.loc 2 129 0
.word 0x910063a0
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90017a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #880]
.word 0xd2800301
bl _p_1
.word 0xaa0003e1
.word 0xf9401ba0
.word 0x91004022
.word 0xf94017a3
.word 0xf9000043
bl _p_106
.word 0x53001c00
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_88:
.text
ut_137:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_GetHashCode
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_GetHashCode
System_Nullable_1_System_TimeSpan_GetHashCode:
.loc 2 134 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x39402340
.word 0x35000060
.loc 2 135 0
.word 0xd2800000
.word 0x14000008
.loc 2 137 0
.word 0xf940035e
.word 0xf9400340
.word 0x93407c00
.word 0xf9400341
.word 0x9360fc21
.word 0x93407c21
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_89:
.text
ut_138:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_GetValueOrDefault
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_GetValueOrDefault
System_Nullable_1_System_TimeSpan_GetValueOrDefault:
.loc 2 142 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0xf9400000
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8a:
.text
ut_139:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_GetValueOrDefault_System_TimeSpan
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_GetValueOrDefault_System_TimeSpan
System_Nullable_1_System_TimeSpan_GetValueOrDefault_System_TimeSpan:
.loc 2 147 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0
.word 0x39402000
.word 0x35000080
.word 0xf94017a0
.word 0xf9000ba0
.word 0x14000004
.word 0xf94013a0
.word 0xf9400000
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8b:
.text
ut_140:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_ToString
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_ToString
System_Nullable_1_System_TimeSpan_ToString:
.loc 2 152 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39402000
.word 0x34000080
.loc 2 153 0
.word 0xf9400ba0
bl _p_107
.word 0x14000005
.loc 2 155 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #864]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8c:
.text
ut_141:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_Box_System_Nullable_1_System_TimeSpan
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_Box_System_Nullable_1_System_TimeSpan
System_Nullable_1_System_TimeSpan_Box_System_Nullable_1_System_TimeSpan:
.loc 2 177 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a0
.word 0x35000060
.loc 2 178 0
.word 0xd2800000
.word 0x1400000c
.loc 2 180 0
.word 0x910043a0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #880]
.word 0xd2800301
bl _p_1
.word 0x91004001
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8d:
.text
ut_142:
add x0, x0, 16
b System_Nullable_1_System_TimeSpan_Unbox_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_TimeSpan_Unbox_object
System_Nullable_1_System_TimeSpan_Unbox_object:
.loc 2 185 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf94013a0
.word 0xb5000120
.loc 2 186 0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94027a0
.word 0xf9000fa0
.word 0x1400001f
.loc 2 187 0
.word 0xf94013a0
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540003c1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #872]
.word 0xeb02003f
.word 0x10000011
.word 0x540002c1
.word 0x91004000
.word 0xf9400000
.word 0xf90017a0
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0x9100c3a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #336]
.word 0xf94017a1
bl _p_37
.word 0xf9401ba0
.word 0xf9000ba0
.word 0xf9401fa0
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_8e:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs_invoke_void_object_TEventArgs_object_AudioToolbox_InputCompletedEventArgs
wrapper_delegate_invoke_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs_invoke_void_object_TEventArgs_object_AudioToolbox_InputCompletedEventArgs:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000680
.word 0x14000001
.word 0xf9403717
.word 0xaa1703e0
.word 0xb5000220
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x1400001e
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000018
.word 0xb9801af8
.word 0xd2800016
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540003a9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffd8b
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_25
bl _p_98
.word 0xaa0003f7
.word 0xb5ffff80
.word 0x17ffffcb
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_8f:
.text
ut_144:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_:
.file 3 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/runtime/compilerservices/AsyncMethodBuilder.cs"
.loc 3 459 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9400fa0
.word 0xf9400001
.word 0xf90013a1
.word 0xf9400401
.word 0xf90017a1
.word 0xf9400801
.word 0xf9001ba1
.word 0xf9400c01
.word 0xf9001fa1
.word 0xf9401001
.word 0xf90023a1
.word 0xf9401401
.word 0xf90027a1
.word 0xf9401800
.word 0xf9002ba0
.word 0x14000009
.word 0xd29e1b20
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 3 466 0
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.loc 3 470 0
.word 0x910163a0
bl _p_108
.loc 3 471 0
.word 0xf9400fa0
bl _p_109
.loc 3 472 0
.word 0xf9003fbf
.word 0x94000005
.word 0xf9403fa0
.word 0xb4000040
bl _p_66
.word 0x14000006
.word 0xf9004bbe
.loc 3 475 0
.word 0x910163a0
bl _p_110
.loc 3 476 0
.word 0xf9404bbe
.word 0xd61f03c0
.loc 3 477 0
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_90:
.text
ut_145:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_:
.loc 3 304 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9400fa0
.word 0xf9400001
.word 0xf90013a1
.word 0xf9400401
.word 0xf90017a1
.word 0xf9400801
.word 0xf9001ba1
.word 0xf9400c01
.word 0xf9001fa1
.word 0xf9401001
.word 0xf90023a1
.word 0xf9401401
.word 0xf90027a1
.word 0xf9401800
.word 0xf9002ba0
.word 0x14000009
.word 0xd29e1b20
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 3 311 0
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.loc 3 315 0
.word 0x910163a0
bl _p_108
.loc 3 316 0
.word 0xf9400fa0
bl _p_111
.loc 3 317 0
.word 0xf9003fbf
.word 0x94000005
.word 0xf9403fa0
.word 0xb4000040
bl _p_66
.word 0x14000006
.word 0xf9004bbe
.loc 3 320 0
.word 0x910163a0
bl _p_110
.loc 3 321 0
.word 0xf9404bbe
.word 0xd61f03c0
.loc 3 322 0
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_91:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL
System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL:
.file 4 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/threading/Tasks/Task.cs"
.loc 4 5539 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0
.word 0xf9400fa0
bl _p_112
.word 0x3980b410
.word 0xb5000050
bl _p_113
.word 0xf9400fa0
bl _p_112
.word 0xd2800a01
bl _p_1
.word 0xf90017a0
.word 0xf9400fa0
bl _p_114
.word 0xaa0003e2
.word 0xf94017a0
.word 0xf90013a0
.word 0x394043a1
.word 0xd63f0040
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_92:
.text
ut_147:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_:
.loc 3 304 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf9400fa0
.word 0xf9400001
.word 0xf90013a1
.word 0xf9400401
.word 0xf90017a1
.word 0xf9400801
.word 0xf9001ba1
.word 0xf9400c01
.word 0xf9001fa1
.word 0xf9401001
.word 0xf90023a1
.word 0xf9401401
.word 0xf90027a1
.word 0xf9401801
.word 0xf9002ba1
.word 0xf9401c00
.word 0xf9002fa0
.word 0x14000009
.word 0xd29e1b20
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 3 311 0
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.loc 3 315 0
.word 0x910183a0
bl _p_108
.loc 3 316 0
.word 0xf9400fa0
bl _p_115
.loc 3 317 0
.word 0xf90043bf
.word 0x94000005
.word 0xf94043a0
.word 0xb4000040
bl _p_66
.word 0x14000006
.word 0xf9004fbe
.loc 3 320 0
.word 0x910183a0
bl _p_110
.loc 3 321 0
.word 0xf9404fbe
.word 0xd61f03c0
.loc 3 322 0
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_93:
.text
ut_148:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_:
.loc 3 542 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013b8
.word 0xaa0003f8
.word 0xf90017a1
.word 0xf9001ba2
.word 0xf9003bbf
.word 0xf9003bbf
.loc 3 543 0
.word 0xd2800000
.word 0xaa1803f7
.word 0x35000080
.word 0xaa1703f6
.word 0xd2800017
.word 0x14000008

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #304]
.word 0xaa1803e0
bl _p_28
.word 0xaa1703f6
.word 0xaa0003f7
.word 0x9101c3a2
.word 0xaa1603e0
.word 0xaa1703e1
bl _p_116
.word 0xaa0003f7
.loc 3 547 0
.word 0xf9400300
.word 0xb50004a0
.loc 3 551 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #304]
.word 0xaa1803e0
bl _p_28
.word 0xaa0003f6
.loc 3 556 0
.word 0xf9401ba0
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c01
.word 0xf9002ba1
.word 0xf9401001
.word 0xf9002fa1
.word 0xf9401401
.word 0xf90033a1
.word 0xf9401800
.word 0xf90037a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #888]
.word 0xd2800901
bl _p_1
.word 0x9100e3a1
.word 0xf90053a0
.word 0x91004000
.word 0xd2800702
bl _mono_gc_wbarrier_range_copy
.word 0xf94053a1
.word 0xf9403ba2
.word 0xaa1803e0
.word 0xaa1603e3
bl _p_117
.loc 3 559 0
.word 0xf94017a0
.word 0xaa1703e1
bl _p_118
.loc 3 560 0
.word 0x1400000c
.word 0xf9003fa0
.word 0xf9403fa0
.loc 3 563 0
.word 0xd2800001
bl _p_119
.loc 3 564 0
bl _p_42
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xb4000060
.word 0xf9404fa0
bl _p_25
.word 0x14000001
.loc 3 565 0
.word 0xa9415fb6
.word 0xf94013b8
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_94:
.text
ut_149:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_:
.loc 3 542 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013b8
.word 0xaa0003f8
.word 0xf90017a1
.word 0xf9001ba2
.word 0xf9003bbf
.word 0xf9003bbf
.loc 3 543 0
.word 0xd2800000
.word 0xaa1803f7
.word 0x35000080
.word 0xaa1703f6
.word 0xd2800017
.word 0x14000008

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #304]
.word 0xaa1803e0
bl _p_28
.word 0xaa1703f6
.word 0xaa0003f7
.word 0x9101c3a2
.word 0xaa1603e0
.word 0xaa1703e1
bl _p_116
.word 0xaa0003f7
.loc 3 547 0
.word 0xf9400300
.word 0xb50004a0
.loc 3 551 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #304]
.word 0xaa1803e0
bl _p_28
.word 0xaa0003f6
.loc 3 556 0
.word 0xf9401ba0
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c01
.word 0xf9002ba1
.word 0xf9401001
.word 0xf9002fa1
.word 0xf9401401
.word 0xf90033a1
.word 0xf9401800
.word 0xf90037a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #888]
.word 0xd2800901
bl _p_1
.word 0x9100e3a1
.word 0xf90053a0
.word 0x91004000
.word 0xd2800702
bl _mono_gc_wbarrier_range_copy
.word 0xf94053a1
.word 0xf9403ba2
.word 0xaa1803e0
.word 0xaa1603e3
bl _p_117
.loc 3 559 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #752]
.word 0xf94017a0
.word 0xaa1703e1
bl _p_120
.loc 3 560 0
.word 0x1400000c
.word 0xf9003fa0
.word 0xf9403fa0
.loc 3 563 0
.word 0xd2800001
bl _p_119
.loc 3 564 0
bl _p_42
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xb4000060
.word 0xf9404fa0
bl _p_25
.word 0x14000001
.loc 3 565 0
.word 0xa9415fb6
.word 0xf94013b8
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_95:
.text
ut_150:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_:
.loc 3 360 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #896]
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_121
.loc 3 361 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_96:
.text
ut_151:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_:
.loc 3 360 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #904]
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_122
.loc 3 361 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_97:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL:
.file 5 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/threading/Tasks/Future.cs"
.loc 5 104 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf90013bf
.word 0xd2800001
.word 0xd2800002
.word 0xf94013a3
bl _p_123
.loc 5 106 0
.word 0xf9400ba0
.word 0x394063a1
.word 0x39012001
.loc 5 107 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_98:
.text
ut_153:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_:
.loc 3 542 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013b8
.word 0xaa0003f8
.word 0xf90017a1
.word 0xf9001ba2
.word 0xf9003bbf
.word 0xf9003bbf
.loc 3 543 0
.word 0xd2800000
.word 0xaa1803f7
.word 0x35000080
.word 0xaa1703f6
.word 0xd2800017
.word 0x14000008

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #912]
.word 0xaa1803e0
bl _p_124
.word 0xaa1703f6
.word 0xaa0003f7
.word 0x9101c3a2
.word 0xaa1603e0
.word 0xaa1703e1
bl _p_116
.word 0xaa0003f7
.loc 3 547 0
.word 0xf9400300
.word 0xb50004a0
.loc 3 551 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #912]
.word 0xaa1803e0
bl _p_124
.word 0xaa0003f6
.loc 3 556 0
.word 0xf9401ba0
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c01
.word 0xf9002ba1
.word 0xf9401001
.word 0xf9002fa1
.word 0xf9401401
.word 0xf90033a1
.word 0xf9401800
.word 0xf90037a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #920]
.word 0xd2800901
bl _p_1
.word 0x9100e3a1
.word 0xf90053a0
.word 0x91004000
.word 0xd2800702
bl _mono_gc_wbarrier_range_copy
.word 0xf94053a1
.word 0xf9403ba2
.word 0xaa1803e0
.word 0xaa1603e3
bl _p_117
.loc 3 559 0
.word 0xf94017a0
.word 0xaa1703e1
bl _p_118
.loc 3 560 0
.word 0x1400000c
.word 0xf9003fa0
.word 0xf9403fa0
.loc 3 563 0
.word 0xd2800001
bl _p_119
.loc 3 564 0
bl _p_42
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xb4000060
.word 0xf9404fa0
bl _p_25
.word 0x14000001
.loc 3 565 0
.word 0xa9415fb6
.word 0xf94013b8
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_99:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor:
.loc 5 91 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_125
.loc 5 93 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9a:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions:
.loc 5 97 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xb98023a2
.word 0xd2800023
bl _p_126
.loc 5 99 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9b:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult:
.loc 5 104 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xf9400ba0
.word 0xd2800001
.word 0xd2800002
.word 0xf94017a3
bl _p_123
.loc 5 106 0
.word 0xf9400ba0
.word 0x91012000
.word 0x398063a1
.word 0x39000001
.loc 5 107 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9c:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken:
.loc 5 110 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf9400ba0
.word 0x394063a1
.word 0xb98033a2
.word 0xf9401fa3
bl _p_123
.loc 5 112 0
.word 0x394063a0
.word 0x350000a0
.loc 5 114 0
.word 0xf9400ba0
.word 0x91012000
.word 0x398083a1
.word 0x39000001
.loc 5 116 0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_9d:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken:
.loc 5 161 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb90033bf
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
.word 0xf94013a3
.word 0xd2800004
.word 0xd2800005
.word 0xd2800006
bl _p_127
.loc 5 164 0
.word 0xd280003e
.word 0xb90033be
.loc 5 165 0
.word 0x9100c3a1
.word 0xf9400ba0
bl _p_128
.loc 5 166 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_9e:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions:
.loc 5 322 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xf90017a1
.word 0xaa0203f9
.word 0xf9001ba3
.word 0xf90023a4
.word 0xb9004bbf
.word 0xf94013a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9002fa0
.word 0xaa1903f8
.word 0xb98043a0
.word 0xd280009e
.word 0xa1e0000
.word 0x35000060
.word 0xd2800019
.word 0x14000017

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xd63f0000
.word 0xf9403000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #928]
.word 0xd29ffffe
.word 0xf2affffe
.word 0xa1e0021
.word 0xd28007fe
.word 0xa1e0022
.word 0x531d7042
.word 0x8b020000
.word 0xf9400000
.word 0x53067c21
.word 0xd29ffffe
.word 0xf2a03ffe
.word 0xa1e0021
.word 0x8b010000
.word 0xf9400019
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xaa1803e2
.word 0xaa1903e3
.word 0xf9401ba4
.word 0xb98043a5
.word 0xd2800006
.word 0xd2800007
bl _p_129
.loc 5 325 0
.word 0xd280003e
.word 0xb9004bbe
.loc 5 326 0
.word 0x910123a1
.word 0xf94013a0
bl _p_128
.loc 5 327 0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_9f:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 5 333 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001fa4
.word 0xf90023a5
.word 0xf90027a6
.word 0xf9002ba7
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf94017a3
.word 0xb9803ba4
.word 0xb98043a5
.word 0xf94027a6
bl _p_127
.loc 5 336 0
.word 0xf9400ba0
.word 0xf9402ba1
bl _p_128
.loc 5 337 0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_a0:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
.loc 5 352 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001fa4
.word 0xf90023a5
.word 0xf90027a6
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
.word 0xf94013a3
.word 0xf94017a4
.word 0xb9803ba5
.word 0xb98043a6
.word 0xf94027a7
bl _p_130
.loc 5 354 0
.word 0xb98043a0
.word 0xd281001e
.word 0xa1e0000
.word 0x35000080
.loc 5 358 0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.loc 5 356 0
.word 0xd2969ce0
.word 0xf2a00020
bl _p_99
.word 0xf9002ba0
.word 0xd296a0e0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xd2801440
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_25

Lme_a1:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 5 363 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bbc
.word 0x910183bc
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90027a5
.word 0xf9002ba6
.word 0xf9002fa7
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf9401fa4
.word 0xb9804ba5
.word 0xb98053a6
.word 0xf9402fa7
bl _p_129
.loc 5 365 0
.word 0xf9400fa0
.word 0xf9400381
bl _p_128
.loc 5 366 0
.word 0xf9400bbc
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_a2:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
.loc 5 382 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf90023a5
.word 0xf90027a6
.word 0xf9002ba7
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf94017a3
.word 0xf9401ba4
.word 0xb98043a5
.word 0xb9804ba6
.word 0xf9402ba7
bl _p_130
.loc 5 384 0
.word 0xb9804ba0
.word 0xd281001e
.word 0xa1e0000
.word 0x35000080
.loc 5 388 0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 5 386 0
.word 0xd2969ce0
.word 0xf2a00020
bl _p_99
.word 0xf90033a0
.word 0xd296a0e0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e2
.word 0xf94033a1
.word 0xd2801440
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_25

Lme_a3:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 5 395 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023a5
.word 0xf90027a6
.word 0xf9400fa0
.word 0xb4000480
.loc 5 399 0
.word 0xf94023a0
.word 0xb4000540
.loc 5 403 0
.word 0xb9803ba0
.word 0xd281001e
.word 0xa1e0000
.word 0x350005c0
.loc 5 410 0
.word 0xb9803ba0
.word 0xd284001e
.word 0x2a1e0000
.word 0xf90033a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #936]
.word 0xd2800a01
bl _p_1
.word 0xf94033a5
.word 0xf9002fa0
.word 0xf9400fa1
.word 0xf9400ba2
.word 0xf94013a3
.word 0xb98033a4
.word 0xf94023a6
.word 0xf94027a7
bl _p_131
.word 0xf9402fa2
.loc 5 412 0
.word 0xaa0203e0
.word 0xf9002ba0
.word 0xaa0203e0
.word 0xd2800001
.word 0xf940005e
bl _p_132
.word 0xf9402ba0
.loc 5 413 0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 5 397 0
.word 0xd296b580
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 5 401 0
.word 0xd296b7c0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 5 406 0
.word 0xd2969ce0
.word 0xf2a00020
bl _p_99
.word 0xf9002ba0
.word 0xd296a0e0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xd2801440
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_25

Lme_a4:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 5 420 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xd2800210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001fa4
.word 0xf90023a5
.word 0xf90027a6
.word 0xf9002ba7
.word 0xf9400fa0
.word 0xb40004c0
.loc 5 424 0
.word 0xf94027a0
.word 0xb4000580
.loc 5 428 0
.word 0xb98043a0
.word 0xd281001e
.word 0xa1e0000
.word 0x35000600
.loc 5 434 0
.word 0xb98043a0
.word 0xd284001e
.word 0x2a1e0000
.word 0xf9003ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #936]
.word 0xd2800a01
bl _p_1
.word 0xf9403ba6
.word 0xf90037a0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9400ba3
.word 0xf94017a4
.word 0xb9803ba5
.word 0xf94027a7
.word 0xf9402ba9
.word 0xf90003e9
bl _p_133
.word 0xf94037a2
.loc 5 436 0
.word 0xaa0203e0
.word 0xf90033a0
.word 0xaa0203e0
.word 0xd2800001
.word 0xf940005e
bl _p_132
.word 0xf94033a0
.loc 5 437 0
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.loc 5 422 0
.word 0xd296b580
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 5 426 0
.word 0xd296b7c0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 5 430 0
.word 0xd2969ce0
.word 0xf2a00020
bl _p_99
.word 0xf90033a0
.word 0xd296a0e0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e2
.word 0xf94033a1
.word 0xd2801440
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_25

Lme_a5:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult:
.loc 5 463 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013a1
.word 0xb9804740
.word 0xf9001ba0
.word 0xd5033bbf
.word 0xf9401ba0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x34000060
.word 0xd2800000
.word 0x1400002a
.loc 5 471 0
.word 0xaa1a03e0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_134
.word 0x53001c00
.word 0x34000420
.loc 5 474 0
.word 0x91012340
.word 0x398083a1
.word 0x39000001
.loc 5 483 0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000400
.word 0x91011340
.word 0xf9001fa0
.word 0xb9804741
.word 0xd5033bbf
.word 0xf9401fa0
.word 0xd280001e
.word 0xf2a0201e
.word 0x2a1e0021
.word 0x885f7c10
.word 0x8811fc01
.word 0x35ffffd1
.word 0xd5033bbf
.word 0xaa1003e0
.loc 5 485 0
.word 0xf9401f40
.word 0xf9001ba0
.word 0xd5033bbf
.word 0xf9401ba0
.word 0xaa0003f9
.loc 5 486 0
.word 0xb4000080
.word 0xaa1903e0
.word 0xf940033e
bl _p_135
.loc 5 488 0
.word 0xaa1a03e0
bl _p_136
.loc 5 490 0
.word 0xd2800020
.word 0x14000002
.loc 5 493 0
.word 0xd2800000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8

Lme_a6:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult:
.loc 5 507 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1
.word 0xf9401740
.word 0xb40000a0
.loc 5 509 0
.word 0xaa1a03e0
.word 0xf9400fa1
bl _p_137
.loc 5 513 0
.word 0x1400000f
.loc 5 516 0
.word 0x91012340
.word 0x398063a1
.word 0x39000001
.loc 5 517 0
.word 0xb9804740
.word 0xf9001fa0
.word 0xd5033bbf
.word 0xf9401fa0
.word 0xd280001e
.word 0xf2a0201e
.word 0x2a1e0000
.word 0xf9001ba0
.word 0xd5033bbf
.word 0xf9401ba0
.word 0xb9004740
.loc 5 519 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a7:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result:
.loc 5 532 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9804400
.word 0xf9001ba0
.word 0xd5033bbf
.word 0xf9401ba0
.word 0xd280001e
.word 0xf2a2201e
.word 0xa1e0000
.word 0xd280001e
.word 0xf2a0201e
.word 0x6b1e001f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x350000c0
.word 0xf94013a0
.word 0x91012000
.word 0x39800000
.word 0x390043a0
.word 0x14000008
.word 0x910043a0
.word 0xf90017a0
.word 0xf94013a0
.word 0xd2800021
bl _p_138
.word 0xf94017be
.word 0xf90003c0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a8:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess:
.loc 5 548 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0x91012000
.word 0x39800000
.word 0x390043a0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a9:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool:
.loc 5 556 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf90017a1
.word 0xf9001fbf
.word 0xb9804720
.word 0xf90023a0
.word 0xd5033bbf
.word 0xf94023a0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x35000120
.word 0xf9001fbf
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xaa1903e0
.word 0x92800001
.word 0xf2bfffe1
.word 0xf9401ba2
bl _p_139
.loc 5 559 0
.word 0x3940a3a0
.word 0x34000060
.word 0xaa1903e0
bl _p_140
.loc 5 562 0
.word 0xaa1903e0
bl _p_141
.word 0x53001c00
.word 0x35000080
.word 0xaa1903e0
.word 0xd2800021
bl _p_142
.loc 5 567 0
.word 0x91012320
.word 0x39800000
.word 0x390063a0
.word 0xf9400bb9
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_aa:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object:
.loc 5 590 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1
.word 0xd2800000
.word 0x53001c18
.loc 5 600 0
.word 0xaa1903e0
.word 0xd2800021
bl _p_143
.loc 5 601 0
.word 0xaa1903e0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_134
.word 0x53001c00
.word 0x34000120
.loc 5 604 0
.word 0xaa1903e0
.word 0xf94013a1
bl _p_144
.loc 5 605 0
.word 0xaa1903e0
.word 0xd2800001
bl _p_145
.loc 5 606 0
.word 0xd2800020
.word 0x53001c18
.loc 5 609 0
.word 0xaa1803e0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ab:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken:
.loc 5 618 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
bl _p_146
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ac:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object:
.loc 5 637 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf9001ba2
.word 0xd2800000
.word 0x53001c18
.loc 5 648 0
.word 0xf9400fa0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_134
.word 0x53001c00
.word 0x34000120
.loc 5 652 0
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf9401ba2
bl _p_147
.loc 5 653 0
.word 0xf9400fa0
bl _p_148
.loc 5 654 0
.word 0xd2800020
.word 0x53001c18
.loc 5 657 0
.word 0xaa1803e0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ad:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory:
.loc 5 668 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #944]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_ae:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke:
.loc 5 677 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xf9400b59
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f9
.loc 5 678 0
.word 0xb4000198
.loc 5 680 0
.word 0x9100c3a0
.word 0xf9001fa0
.word 0xaa1903e0
.word 0xf9400f30
.word 0xd63f0200
.word 0xf9401fbe
.word 0xf90003c0
.word 0x91012340
.word 0x3980c3a1
.word 0x39000001
.loc 5 681 0
.word 0x14000017
.loc 5 683 0
.word 0xf9400b40

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #960]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #968]
bl _p_149
.word 0xaa0003f9
.loc 5 684 0
.word 0xaa1903e0
.word 0xb4000180
.loc 5 686 0
.word 0xf9400f41
.word 0x9100a3a0
.word 0xf9001fa0
.word 0xaa1903e0
.word 0xf9400f30
.word 0xd63f0200
.word 0xf9401fbe
.word 0xf90003c0
.word 0x91012340
.word 0x3980a3a1
.word 0x39000001
.loc 5 690 0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_af:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter:
.loc 5 699 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017bf
.word 0x9100a3a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #976]
.word 0xf94013a1
bl _p_150
.word 0xf94017a0
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b0:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool:
.loc 5 709 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0x9100c3a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #984]
.word 0xf94013a1
.word 0x3940a3a2
bl _p_151
.word 0xf9401ba0
.word 0xf9000ba0
.word 0xf9401fa0
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b1:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult:
.loc 5 737 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9002bbf
.word 0xd280003e
.word 0xb9002bbe
.loc 5 738 0
bl _p_152
.word 0xaa0003e2
.word 0xf90013bf
.word 0x9100a3a5
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a3
.word 0xd2800004
bl _p_153
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b2:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler:
.loc 5 795 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb90033bf
.word 0xd280003e
.word 0xb90033be
.loc 5 796 0
.word 0xf90017bf
.word 0x9100c3a5
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf94017a3
.word 0xd2800004
bl _p_153
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b3:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler:
.loc 5 876 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xb90043bf
.word 0xd280003e
.word 0xb90043be
.loc 5 877 0
.word 0x910103a5
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9401fa2
.word 0xf94013a3
.word 0xb98033a4
bl _p_153
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_b4:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_:
.loc 5 884 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf90023a4
.word 0xaa0503fa
.word 0xb9004bbf
.word 0xb90053bf
.word 0xf94013a0
.word 0xb40005a0
.loc 5 889 0
.word 0xf94017a0
.word 0xb4000460
.loc 5 896 0
.word 0x910123a1
.word 0x910143a2
.word 0xb98043a0
bl _p_154
.loc 5 901 0
.word 0xb9804ba0
.word 0xf90037a0
.word 0xb98053a0
.word 0xf9003ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #992]
.word 0xd2800a01
bl _p_1
.word 0xf94037a4
.word 0xf9403ba5
.word 0xf90033a0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xd2800003
.word 0xaa1a03e6
bl _p_155
.word 0xf94033a0
.word 0xaa0003fa
.loc 5 909 0
.word 0xf9400fa0
.word 0xaa1a03e1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xb98043a4
bl _p_156
.loc 5 911 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.loc 5 891 0
.word 0xd296b7c0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.word 0xd296ba40
.word 0xf2a00020
.loc 5 886 0
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_b5:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor:
.loc 5 81 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1000]
.word 0xd2800501
bl _p_1
.word 0xf9000fa0
bl _p_157
.word 0xf9400fa1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #944]
.word 0xf9000001
.loc 5 87 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1008]
.word 0xf9400000
.word 0xf9000ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000620

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1016]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000480
.word 0xf9001020
.word 0x91008022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1024]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1032]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1040]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1048]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_b6:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor:
.file 6 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/threading/Tasks/FutureFactory.cs"
.loc 6 93 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
.word 0xd2800003
.word 0xd2800004
bl _p_158
.loc 6 95 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b7:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler:
.loc 6 210 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xaa0003f7
.word 0xf9000fa1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xb98033a0
bl _p_159
.loc 6 211 0
.word 0xb9802ba0
.word 0x92800bfe
.word 0xf2bffffe
.word 0xa1e0000
.word 0x35000480
.loc 6 213 0
.word 0x910042e2
.word 0xaa0203e1
.word 0xf9400fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 6 214 0
.word 0xf9401fa0
.word 0xf9000ee0
.word 0x910062e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 6 215 0
.word 0xb9802ba0
.word 0xb90022e0
.loc 6 216 0
.word 0xb98033a0
.word 0xb90026e0
.loc 6 217 0
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2969ce0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801440
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.word 0x17ffffd5

Lme_b8:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler:
.loc 6 388 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001fa3
.word 0xf90023a4
.word 0xb9004bbf
.word 0xd280003e
.word 0xb9004bbe
.loc 6 389 0
.word 0xb9803ba0
.word 0xd280009e
.word 0xa1e0000
.word 0x35000060
.word 0xd2800017
.word 0x14000017

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xd63f0000
.word 0xf9403000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #928]
.word 0xd29ffffe
.word 0xf2affffe
.word 0xa1e0021
.word 0xd28007fe
.word 0xa1e0022
.word 0x531d7042
.word 0x8b020000
.word 0xf9400000
.word 0x53067c21
.word 0xd29ffffe
.word 0xf2a03ffe
.word 0xa1e0021
.word 0x8b010000
.word 0xf9400017
.word 0x910123a6

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #936]
.word 0xaa1703e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xb9803ba3
.word 0xd2800004
.word 0xf94023a5
bl _p_160
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_b9:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler:
.loc 6 523 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf90023a4
.word 0xf90027a5
.word 0xb90053bf
.word 0xd280003e
.word 0xb90053be
.loc 6 524 0
.word 0xb98043a0
.word 0xd280009e
.word 0xa1e0000
.word 0x35000060
.word 0xd2800016
.word 0x14000017

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xd63f0000
.word 0xf9403000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #928]
.word 0xd29ffffe
.word 0xf2affffe
.word 0xa1e0021
.word 0xd28007fe
.word 0xa1e0022
.word 0x531d7042
.word 0x8b020000
.word 0xf9400000
.word 0x53067c21
.word 0xd29ffffe
.word 0xf2a03ffe
.word 0xa1e0021
.word 0x8b010000
.word 0xf9400016
.word 0x910143a7

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #936]
.word 0xaa1603e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xb98043a4
.word 0xd2800005
.word 0xf94027a6
bl _p_161
.word 0xf9400bb6
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_ba:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool:
.loc 6 542 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xaa0103f9
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf90037bf
.word 0xf9003bbf
.word 0x390183bf
.word 0xf90037bf
.loc 6 543 0
.word 0xf9003bbf
.loc 6 544 0
.word 0x390183bf
.loc 6 548 0
.word 0xb4000199
.loc 6 550 0
.word 0x910143a0
.word 0xf90053a0
.word 0xaa1903e0
.word 0xf9400fa1
.word 0xf9400f30
.word 0xd63f0200
.word 0xf94053be
.word 0xf90003c0
.word 0x398143a0
.word 0x390183a0
.loc 6 551 0
.word 0x14000007
.loc 6 554 0
.word 0xf94013a0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94013a0
.loc 6 556 0
.word 0xf9003fbf
.word 0x94000023
.word 0xf9403fa0
.word 0xb4000040
bl _p_66
.word 0x14000087
.word 0xf90057a0
.word 0xf94057a0
.loc 6 557 0
.word 0xf9003ba0
bl _p_42
.word 0xf90073a0
.word 0xf94073a0
.word 0xb4000060
.word 0xf94073a0
bl _p_25
.word 0xf9003fbf
.word 0x94000014
.word 0xf9403fa0
.word 0xb4000040
bl _p_66
.word 0x14000078
.word 0xf9005ba0
.word 0xf9405ba0
.loc 6 558 0
.word 0xf90037a0
bl _p_42
.word 0xf90077a0
.word 0xf94077a0
.word 0xb4000060
.word 0xf94077a0
bl _p_25
.word 0xf9003fbf
.word 0x94000005
.word 0xf9403fa0
.word 0xb4000040
bl _p_66
.word 0x14000069
.word 0xf9006fbe
.loc 6 561 0
.word 0xf9403ba0
.word 0xb4000240
.loc 6 563 0
.word 0xf94017a3
.word 0xf9403ba0
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf940001e
.word 0xf9404fa0
.word 0x91022000
.word 0xf9400000
.word 0xf9002fa0
.word 0xf9402fa0
.word 0xf90027a0
.word 0xf9403ba2
.word 0xaa0303e0
.word 0xf94027a1
.word 0xf940007e
bl _p_146
.loc 6 564 0
.word 0x14000053
.loc 6 565 0
.word 0xf94037a0
.word 0xb4000520
.loc 6 567 0
.word 0xf94017a2
.word 0xf94037a1
.word 0xaa0203e0
.word 0xf940005e
bl _p_162
.word 0x53001c00
.loc 6 568 0
.word 0x34000940
.word 0xf94037a0
.word 0xf90047a0
.word 0xf94047a0
.word 0xf9004ba0
.word 0xf94047a0
.word 0xeb1f001f
.word 0x540001a0
.word 0xf94047a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1056]
.word 0xeb01001f
.word 0x54000060
.word 0xf9004bbf
.word 0x14000001
.word 0xf9404ba0
.word 0xb40006a0
.loc 6 570 0
.word 0xf94017a0
.word 0xf9401c00
.word 0xf9007ba0
.word 0xd5033bbf
.word 0xf9407ba0
.word 0xf9401002
.word 0xd5033bbf
.word 0xaa0203e0
.word 0xd2800001
.word 0xf940005e
bl _p_163
.loc 6 572 0
.word 0x14000029
.loc 6 575 0
.word 0x390203bf
.word 0x394203a0
.word 0x34000140
.loc 6 576 0
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_164
.word 0x93407c00
.word 0xaa0003e1
.word 0xd2800000
.word 0xd2800022
bl _p_165
.loc 6 578 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1064]
.word 0x39400000
.word 0x340000e0
.loc 6 580 0
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_164
.word 0x93407c00
bl _p_166
.loc 6 582 0
.word 0x3940c3a0
.word 0x34000120
.loc 6 584 0
.word 0xf94017a2
.word 0x398183a0
.word 0x390103a0
.word 0xaa0203e0
.word 0xf94023a1
.word 0xf940005e
bl _p_137
.loc 6 585 0
.word 0x14000008
.loc 6 588 0
.word 0xf94017a2
.word 0x398183a0
.word 0x3900e3a0
.word 0xaa0203e0
.word 0xf9401fa1
.word 0xf940005e
bl _p_167
.loc 6 593 0
.word 0xf9406fbe
.word 0xd61f03c0
.loc 6 594 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_bb:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object:
.loc 6 778 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9400ba0
.word 0xb9802004

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #1000]
.word 0xf9400fa0
.word 0xf94013a1
.word 0xd2800002
.word 0xf94017a3
bl _p_168
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_bc:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions:
.loc 6 0 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xa901ebb9
.word 0xaa0003f6
.word 0xf90017a1
.word 0xf9001ba2
.word 0xaa0303f9
.word 0xaa0403fa
.word 0xf90023bf
.word 0x3900e3bf

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1072]
.word 0xd2800501
bl _p_1
.word 0xf90023a0
.word 0xf94023a1
.word 0xf94017a0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a1
.word 0xf9401ba0
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 6 816 0
.word 0xb4002176
.loc 6 819 0
.word 0xf94023a0
.word 0xf9400800
.word 0xb5000080
.word 0xf94023a0
.word 0xf9400c00
.word 0xb4001fa0
.loc 6 824 0
.word 0xaa1a03e0
.word 0xd2800021
bl _p_169
.loc 6 826 0
.word 0xf94023a0
.word 0xf90047a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #936]
.word 0xd2800a01
bl _p_1
.word 0xf90043a0
.word 0xaa1903e1
.word 0xaa1a03e2
bl _p_170
.word 0xf94043a0
.word 0xf94047a1
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 6 828 0
.word 0xd2800000
.word 0x6b1f001f
.loc 6 831 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1064]
.word 0x39400000
.word 0x340000a0
.loc 6 833 0
.word 0xf94023a0
.word 0xf9401000
bl _p_171
.word 0x14000001
.loc 6 842 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1080]
.word 0x39400000
.word 0x34000ea0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1088]
.word 0xd2800401
bl _p_1
.word 0xaa0003fa
.word 0xf94023a1
.word 0xf9000c01
.word 0x91006002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.loc 6 844 0
.word 0xf90047a0
.word 0xf90043a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1096]
.word 0xd2800281
bl _p_1
.word 0xf94043a1
.word 0xf94047a2
.word 0xf9000840
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 6 847 0
.word 0xeb1f035f
.word 0x10000011
.word 0x54001720

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1104]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xeb1f035f
.word 0x10000011
.word 0x540015a0
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1112]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1120]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1128]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa1603e0
.word 0xaa1903e2
.word 0xf9400ed0
.word 0xd63f0200
.word 0xaa0003f9
.loc 6 852 0
.word 0xb40009c0
.word 0xaa1903e0
.word 0xf9400321

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #1136]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x34000860
.word 0xf9400b41
.word 0xaa0103e0
.word 0xf940003e
bl _p_172
.word 0x53001c00
.word 0x340007a0
.loc 6 855 0
.word 0xf9400f40
.word 0xf9400801
.word 0xf9400f40
.word 0xf9400c02
.word 0xf9400f40
.word 0xf9401003

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #1000]
.word 0xaa1903e0
.word 0xd2800004
bl _p_173
.loc 6 857 0
.word 0x14000030
.loc 6 861 0
.word 0xf94023a0
.word 0xf90043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000d60

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1104]
.word 0xd2800e01
bl _p_1
.word 0xaa0003e1
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000bc0
.word 0xf9001020
.word 0x91008022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1144]
.word 0xf9001420

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1152]
.word 0xf9002020

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1160]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa1603e0
.word 0xaa1903e2
.word 0xf9400ed0
.word 0xd63f0200
.loc 6 866 0
.word 0x14000026
.word 0xf90027a0
.loc 6 869 0
.word 0x390143bf
.word 0x394143a0
.word 0x34000160
.loc 6 870 0
.word 0xf94023a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_164
.word 0x93407c00
.word 0xaa0003e1
.word 0xd2800000
.word 0xd2800062
bl _p_165
.loc 6 872 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1064]
.word 0x39400000
.word 0x34000100
.loc 6 874 0
.word 0xf94023a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_164
.word 0x93407c00
bl _p_166
.loc 6 878 0
.word 0xf94023a0
.word 0xf9401002
.word 0x3900e3bf
.word 0x3980e3a0
.word 0x3901c3a0
.word 0xaa0203e0
.word 0xf9403ba1
.word 0xf940005e
bl _p_137
.loc 6 879 0
.word 0xf94027a0
bl _p_50
.loc 6 882 0
.word 0xf94023a0
.word 0xf9401000
.word 0xf9400bb6
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.loc 6 820 0
.word 0xd296c740
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.word 0xd296c440
.word 0xf2a00020
.loc 6 817 0
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.word 0xd2802120
.word 0xaa1103e1
bl _p_8
.word 0xd2801400
.word 0xaa1103e1
bl _p_8

Lme_bd:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000660
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001e
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000019
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540003c9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f6
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffd8b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffcc
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_be:
.text
ut_191:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create:
.loc 3 444 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xd2800000
.word 0xf9000fa0
.word 0xf90013a0
.word 0xf90017a0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94013a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94017a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_bf:
.text
ut_192:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.loc 3 485 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_174
.loc 3 486 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c0:
.text
ut_193:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task:
.loc 3 574 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xf9400819
.loc 3 575 0
.word 0xaa1903e0
.word 0xb5000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #936]
.word 0xd2800a01
bl _p_1
.word 0xf90013a0
bl _p_175
.word 0xf94013a1
.word 0xaa0103e0
.word 0xaa0103f9
.word 0xf9400fa1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 3 576 0
.word 0xaa1903e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c1:
.text
ut_194:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult:
.loc 3 590 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013a1
.word 0xf9400b59
.loc 3 591 0
.word 0xaa1903e0
.word 0xb5000280
.loc 3 593 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #912]
.word 0xaa1a03e0
.word 0xf94013a1
bl _p_176
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 3 595 0
.word 0x14000013
.loc 3 599 0
.word 0xd2800000
.word 0x6b1f001f
.loc 3 603 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1064]
.word 0x39400000
.word 0x340000c0
.loc 3 605 0
.word 0xaa1903e0
.word 0xf940033e
bl _p_164
.word 0x93407c00
bl _p_166
.loc 3 608 0
.word 0xaa1903e0
.word 0xf94013a1
.word 0xf940033e
bl _p_137
.word 0x53001c00
.word 0x340000a0
.loc 3 613 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 3 610 0
.word 0xd297cd20
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801f60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_c2:
.text
ut_195:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult:
.loc 3 628 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0x3900a3bf
.word 0xf9400b20
.loc 3 629 0
.word 0xb50001e0
.loc 3 631 0
.word 0xf9400fa0
.word 0xf9000b20
.word 0x91004321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 3 632 0
.word 0x1400000a
.loc 3 636 0
.word 0x3900a3bf
.word 0x3980a3a0
.word 0x390083a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #912]
.word 0xaa1903e0
.word 0xf94013a1
bl _p_177
.loc 3 638 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c3:
.text
ut_196:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception:
.loc 3 649 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb40005fa
.loc 3 653 0
.word 0xf9400b38
.loc 3 654 0
.word 0xaa1803e0
.word 0xb50000e0
.loc 3 657 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #912]
.word 0xaa1903e0
bl _p_124
.word 0xaa0003f8
.loc 3 661 0
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1168]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800019
.word 0xaa1903f7
.loc 3 662 0
.word 0xb50000f9
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xf940031e
bl _p_162
.word 0x53001c1a
.word 0x1400000b
.word 0xf94002fe
.word 0x910222e0
.word 0xf9400000
.word 0xf9001ba0
.word 0xaa1803e0
.word 0xf9401ba1
.word 0xaa1703e2
.word 0xf940031e
bl _p_146
.word 0x53001c1a
.loc 3 673 0
.word 0x340001da
.loc 3 677 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 3 649 0
.word 0xd29769e0
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25
.loc 3 675 0
.word 0xd297cd20
.word 0xf2a00020
bl _p_99
.word 0xaa0003e1
.word 0xd2801f60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_25

Lme_c4:
.text
ut_197:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult:
.loc 3 737 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0x14000001
.loc 3 752 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1184]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340004c0
.loc 3 754 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54003e61
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1200]
.word 0xeb02003f
.word 0x10000011
.word 0x54003d61
.word 0x39404000
.loc 3 755 0
.word 0x350000c0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1208]
.word 0xf940001a
.word 0x14000005

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1216]
.word 0xf940001a
.loc 3 756 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0xaa1a03e0
.word 0x140001d7
.loc 3 759 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1232]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000660
.loc 3 764 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540038a1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1240]
.word 0xeb02003f
.word 0x10000011
.word 0x540037a1
.word 0xb980101a
.loc 3 765 0
.word 0xaa1a03e0
.word 0xd280013e
.word 0x6b1e001f
.word 0x5400356a
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e035f
.word 0x540034eb
.loc 3 768 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1248]
.word 0xf9400000
.word 0x9280001e
.word 0xf2bffffe
.word 0x4b1e0341
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54003569
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xf9400000
.loc 3 769 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1224]
.word 0x1400019c
.loc 3 773 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1256]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54003141
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1264]
.word 0xeb02003f
.word 0x10000011
.word 0x54003041
.word 0xb9401000
.word 0x34002d00

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1272]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54002d41
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1280]
.word 0xeb02003f
.word 0x10000011
.word 0x54002c41
.word 0x39404000
.word 0x34002900

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1288]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54002941
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1296]
.word 0xeb02003f
.word 0x10000011
.word 0x54002841
.word 0x39804000
.word 0x34002500

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1304]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54002541
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1312]
.word 0xeb02003f
.word 0x10000011
.word 0x54002441
.word 0x79402000
.word 0x34002100

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1320]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000620

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1328]
.word 0xb9800001
.word 0xb90043a1
.word 0xb9800401
.word 0xb90047a1
.word 0xb9800801
.word 0xb9004ba1
.word 0xb9800c00
.word 0xb9004fa0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54001fe1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1336]
.word 0xeb02003f
.word 0x10000011
.word 0x54001ee1
.word 0x91004000
.word 0xb9800001
.word 0xb90033a1
.word 0xb9800401
.word 0xb90037a1
.word 0xb9800801
.word 0xb9003ba1
.word 0xb9800c00
.word 0xb9003fa0
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9401ba2
.word 0xf9401fa3
bl _p_178
.word 0x53001c00
.word 0x350019e0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1344]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54001a21
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1352]
.word 0xeb02003f
.word 0x10000011
.word 0x54001921
.word 0xf9400800
.word 0xb40015e0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1360]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54001621
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1368]
.word 0xeb02003f
.word 0x10000011
.word 0x54001521
.word 0xf9400800
.word 0xb40011e0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1376]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54001221
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1384]
.word 0xeb02003f
.word 0x10000011
.word 0x54001121
.word 0x79802000
.word 0x34000de0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1392]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000300

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0x91004001
.word 0x398083a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54000e21
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1400]
.word 0xeb02003f
.word 0x10000011
.word 0x54000d21
.word 0x79402000
.word 0x340009e0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1408]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340003e0
.word 0xd2800000
.word 0x93407c00
.word 0xf9002ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0xaa0003e1
.word 0xf9402ba0
.word 0x91004022
.word 0x398083a3
.word 0x39000043
.word 0xf9400022
.word 0x3940b043
.word 0xeb1f007f
.word 0x10000011
.word 0x54000981
.word 0xf9400042
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #1416]
.word 0xeb03005f
.word 0x10000011
.word 0x54000881
.word 0xf9400821
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000500

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1176]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1424]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000540
.word 0xd2800000
.word 0x2a0003e0
.word 0xf9002ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0xd2800221
bl _p_1
.word 0xaa0003e1
.word 0xf9402ba0
.word 0x91004022
.word 0x398083a3
.word 0x39000043
.word 0xf9400022
.word 0x3940b043
.word 0xeb1f007f
.word 0x10000011
.word 0x540004a1
.word 0xf9400042
.word 0xf9400042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #1432]
.word 0xeb03005f
.word 0x10000011
.word 0x540003a1
.word 0xf9400821
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000180
.loc 3 786 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9400000
.word 0x14000010
.loc 3 789 0
.word 0x14000006
.loc 3 791 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9400000
.word 0x1400000a
.loc 3 795 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #936]
.word 0xd2800a01
bl _p_1
.word 0xf9002ba0
.word 0xf94013a1
bl _p_179
.word 0xf9402ba0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_c5:
.text
ut_198:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor:
.loc 3 427 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0x390043bf

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #1448]
.word 0xf9400ba0
bl _p_180
.word 0xaa0003e1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c6:
.text
ut_199:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_:
.loc 3 542 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013b8
.word 0xaa0003f8
.word 0xf90017a1
.word 0xf9001ba2
.word 0xf9003fbf
.word 0xf9003fbf
.loc 3 543 0
.word 0xd2800000
.word 0xaa1803f7
.word 0x35000080
.word 0xaa1703f6
.word 0xd2800017
.word 0x14000008

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #912]
.word 0xaa1803e0
bl _p_124
.word 0xaa1703f6
.word 0xaa0003f7
.word 0x9101e3a2
.word 0xaa1603e0
.word 0xaa1703e1
bl _p_116
.word 0xaa0003f7
.loc 3 547 0
.word 0xf9400300
.word 0xb50004e0
.loc 3 551 0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #912]
.word 0xaa1803e0
bl _p_124
.word 0xaa0003f6
.loc 3 556 0
.word 0xf9401ba0
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c01
.word 0xf9002ba1
.word 0xf9401001
.word 0xf9002fa1
.word 0xf9401401
.word 0xf90033a1
.word 0xf9401801
.word 0xf90037a1
.word 0xf9401c00
.word 0xf9003ba0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1456]
.word 0xd2800a01
bl _p_1
.word 0x9100e3a1
.word 0xf9005ba0
.word 0x91004000
.word 0xd2800802
bl _mono_gc_wbarrier_range_copy
.word 0xf9405ba1
.word 0xf9403fa2
.word 0xaa1803e0
.word 0xaa1603e3
bl _p_117
.loc 3 559 0
.word 0xf94017a0
.word 0xaa1703e1
bl _p_118
.loc 3 560 0
.word 0x1400000c
.word 0xf90043a0
.word 0xf94043a0
.loc 3 563 0
.word 0xd2800001
bl _p_119
.loc 3 564 0
bl _p_42
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_25
.word 0x14000001
.loc 3 565 0
.word 0xa9415fb6
.word 0xf94013b8
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_c7:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult
wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0x390123bf

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x350007c0
.word 0x14000001
.word 0xf9403759
.word 0xaa1903e0
.word 0xb50002a0
.word 0xf9401359
.word 0xaa1903e0
.word 0xb4000140
.word 0xf9401f40
.word 0xf9400b41
.word 0x9100c3a0
.word 0xf9002ba0
.word 0xaa1903e0
.word 0xd63f0020
.word 0xf9402bbe
.word 0xf90003c0
.word 0x14000026
.word 0xf9401f40
.word 0xf9400b40
.word 0x9100c3a1
.word 0xf9002ba1
.word 0xd63f0000
.word 0xf9402bbe
.word 0xf90003c0
.word 0x1400001e
.word 0xb9801b3a
.word 0xd2800018
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000469
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400017
.word 0xaa1703e1
.word 0x910103a0
.word 0xf9002ba0
.word 0xaa0103e0
.word 0xf90033a1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf9402bbe
.word 0xf90003c0
.word 0xf94033a0
.word 0x398103a0
.word 0x390123a0
.word 0x11000718
.word 0xaa1803e0
.word 0x6b1a001f
.word 0x54fffd0b
.word 0x398123a0
.word 0x3900c3a0
.word 0xa94163b7
.word 0xa9426bb9
.word 0xf9401ba0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xaa1903e0
bl _p_25
bl _p_98
.word 0xaa0003f9
.word 0xb5ffff80
.word 0x17ffffc1
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_cc:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_object:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x390143bf

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000840
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50002e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb4000160
.word 0xf9401f20
.word 0xf9400b22
.word 0x9100e3a0
.word 0xf9002fa0
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xf9402fbe
.word 0xf90003c0
.word 0x14000028
.word 0xf9401f20
.word 0xf9400b21
.word 0x9100e3a0
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf9402fbe
.word 0xf90003c0
.word 0x1400001f
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540004a9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0x910123a0
.word 0xf9002fa0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90033a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9402fbe
.word 0xf90003c0
.word 0xf94033a0
.word 0x398123a0
.word 0x390143a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffceb
.word 0x398143a0
.word 0x3900e3a0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0xf9401fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffbd
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_d1:
.text
ut_210:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult:
.file 7 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/runtime/compilerservices/TaskAwaiter.cs"
.loc 7 317 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 7 318 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d2:
.text
ut_211:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_get_IsCompleted:
.loc 7 325 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
.word 0xaa0003e1
.word 0xf940003e
.word 0xb9804400
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d3:
.text
ut_212:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action:
.loc 7 336 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400fa1
.word 0xd2800022
.word 0xd2800023
bl _p_181
.loc 7 337 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d4:
.text
ut_213:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action:
.loc 7 347 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400fa1
.word 0xd2800022
.word 0xd2800003
bl _p_181
.loc 7 348 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d5:
.text
ut_214:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_GetResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_GetResult
System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_GetResult:
.loc 7 357 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0xf9400000
bl _p_182
.loc 7 358 0
.word 0xf94013a0
.word 0xf9400000
.word 0xaa0003e1
.word 0xf940003e
.word 0x91012000
.word 0x39800000
.word 0x390043a0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d6:
.text
ut_215:
add x0, x0, 16
b System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool:
.loc 7 466 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0x9100e3a0

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #1464]
.word 0xf9400fa1
.word 0x394083a2
bl _p_183
.word 0xf9401fa0
.word 0xf90017a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9401ba1
.word 0xf9000001
.loc 7 467 0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_d7:
.text
ut_216:
add x0, x0, 16
b System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter:
.loc 7 473 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0xf9400001
.word 0xf9000ba1
.word 0xf9400400
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d8:
.text
ut_217:
add x0, x0, 16
b System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool:
.loc 7 494 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.loc 7 495 0
.word 0x394083a1
.word 0x39002001
.loc 7 496 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d9:
.text
ut_218:
add x0, x0, 16
b System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_get_IsCompleted:
.loc 7 503 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
.word 0xaa0003e1
.word 0xf940003e
.word 0xb9804400
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xd280001e
.word 0xf2a02c1e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_da:
.text
ut_219:
add x0, x0, 16
b System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action:
.loc 7 514 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400020
.word 0x39402022
.word 0xf9400fa1
.word 0xd2800023
bl _p_181
.loc 7 515 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_db:
.text
ut_220:
add x0, x0, 16
b System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action:
.loc 7 525 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400020
.word 0x39402022
.word 0xf9400fa1
.word 0xd2800003
bl _p_181
.loc 7 526 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_dc:
.text
ut_221:
add x0, x0, 16
b System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_GetResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_GetResult
System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_GetResult:
.loc 7 535 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0xf9400000
bl _p_182
.loc 7 536 0
.word 0xf94013a0
.word 0xf9400000
.word 0xaa0003e1
.word 0xf940003e
.word 0x91012000
.word 0x39800000
.word 0x390043a0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_dd:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000620
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50001e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9401f20
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400001c
.word 0xf9401f20
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000017
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000389
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffdab
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffce
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_de:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_
System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_:
.file 8 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/threading/Tasks/TaskContinuation.cs"
.loc 8 131 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fb7
.word 0xaa0003f4
.word 0xf90013a1
.word 0xf90017a2
.word 0xaa0303f7
.word 0xf9001ba4
.word 0xf9001fa5
.word 0xf90023a6
.word 0xf9002bbf
.word 0xf9002fb4
.word 0xf94017a0
.word 0xf90033a0
.word 0xf90037b7
.word 0xb98033a0
.word 0xd280009e
.word 0xa1e0000
.word 0x35000060
.word 0xd2800017
.word 0x14000017

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xd63f0000
.word 0xf9403000

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #928]
.word 0xd29ffffe
.word 0xf2affffe
.word 0xa1e0021
.word 0xd28007fe
.word 0xa1e0022
.word 0x531d7042
.word 0x8b020000
.word 0xf9400000
.word 0x53067c21
.word 0xd29ffffe
.word 0xf2a03ffe
.word 0xa1e0021
.word 0x8b010000
.word 0xf9400017
.word 0xf9002bbf
.word 0xf9402ba0
.word 0xf90027a0
.word 0xf9402fa0
.word 0xf94033a1
.word 0xf94037a2
.word 0xaa1703e3
.word 0xf94027a4
.word 0xb98033a5
.word 0xb9803ba6
.word 0xd2800007
bl _p_130
.loc 8 135 0
.word 0xf94013a0
.word 0xf9002680
.word 0x91012281
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 8 136 0
.word 0xaa1403e0
.word 0xf94023a1
bl _p_128
.loc 8 137 0
.word 0xf9400bb4
.word 0xf9400fb7
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_df:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke:
.loc 8 146 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xf9402759
.loc 8 149 0
.word 0xf900275f
.loc 8 152 0
.word 0xaa1903e0
.word 0xf940033e
bl _p_140
.loc 8 156 0
.word 0xf9400b40

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1472]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1480]
bl _p_149
.word 0xaa0003f8
.loc 8 157 0
.word 0xaa1803e0
.word 0xb40000c0
.loc 8 159 0
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xf9400f10
.word 0xd63f0200
.loc 8 160 0
.word 0x14000011
.loc 8 162 0
.word 0xf9400b40

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1488]

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x2, [x16, #1496]
bl _p_149
.word 0xaa0003f8
.loc 8 163 0
.word 0xaa1803e0
.word 0xb40000c0
.loc 8 165 0
.word 0xf9400f42
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xf9400f10
.word 0xd63f0200
.loc 8 169 0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_e0:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__cctor
System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__cctor:
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1504]
.word 0xd2800201
bl _p_1
.word 0xaa0003e1

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #1008]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_e1:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x390143bf

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xb9400000
.word 0x35000840
.word 0x14000001
.word 0xf9403738
.word 0xaa1803e0
.word 0xb50002e0
.word 0xf9401338
.word 0xaa1803e0
.word 0xb4000160
.word 0xf9401f20
.word 0xf9400b22
.word 0x9100e3a0
.word 0xf9002fa0
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xf9402fbe
.word 0xf90003c0
.word 0x14000028
.word 0xf9401f20
.word 0xf9400b21
.word 0x9100e3a0
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf9402fbe
.word 0xf90003c0
.word 0x1400001f
.word 0xb9801b19
.word 0xd2800017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540004a9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0x910123a0
.word 0xf9002fa0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90033a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9402fbe
.word 0xf90003c0
.word 0xf94033a0
.word 0x398123a0
.word 0x390143a0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b19001f
.word 0x54fffceb
.word 0x398143a0
.word 0x3900e3a0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0xf9401fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_25
bl _p_98
.word 0xaa0003f8
.word 0xb5ffff80
.word 0x17ffffbd
.word 0xd2801e80
.word 0xaa1103e1
bl _p_8

Lme_e6:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__ctor
System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e7:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__0_System_IAsyncResult
System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__0_System_IAsyncResult:
.loc 6 863 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400801
.word 0xf9400c02
.word 0xf9401003

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #1000]
.word 0xf9400fa0
.word 0xd2800024
bl _p_173
.loc 6 864 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e8:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__ctor
System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e9:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__1_System_IAsyncResult
System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__1_System_IAsyncResult:
.loc 6 849 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400b21
.word 0xaa0103e0
.word 0xf940003e
bl _p_172
.word 0x53001c00
.word 0x340001a0
.loc 6 850 0
.word 0xf9400f20
.word 0xf9400801
.word 0xf9400f20
.word 0xf9400c02
.word 0xf9400f20
.word 0xf9401003

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x15, [x16, #1000]
.word 0xf9400fa0
.word 0xd2800024
bl _p_173
.loc 6 851 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ea:
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult
System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult:
.loc 3 833 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf90013bf

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x0, [x16, #936]
.word 0xd2800a01
bl _p_1
.word 0xf9001ba0
.word 0xd2800001
.word 0xf9400ba2
.word 0xd2880003
.word 0xf94013a4
bl _p_184
.word 0xf9401ba0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_eb:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__ctor
System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ec:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult___cctorb__64_0_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult___cctorb__64_0_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.loc 5 87 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xaa1a03e0
.word 0xf940035e
bl _p_185
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x1, [x16, #1512]
.word 0xeb01001f
.word 0x10000011
.word 0x540000c1
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801f40
.word 0xaa1103e1
bl _p_8

Lme_ed:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl Plugin_AudioRecorder_AudioPlayer__ctor
bl Plugin_AudioRecorder_AudioPlayer_Play_string
bl Plugin_AudioRecorder_AudioPlayer_Player_FinishedPlaying_object_AVFoundation_AVStatusEventArgs
bl Plugin_AudioRecorder_AudioPlayer_Pause
bl Plugin_AudioRecorder_AudioPlayer_Play
bl Plugin_AudioRecorder_AudioPlayer_add_FinishedPlaying_System_EventHandler
bl Plugin_AudioRecorder_AudioPlayer_remove_FinishedPlaying_System_EventHandler
bl Plugin_AudioRecorder_AudioRecorderService_get_ConfigureAVAudioSession
bl Plugin_AudioRecorder_AudioRecorderService_set_ConfigureAVAudioSession_bool
bl Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath
bl Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting
bl Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped
bl Plugin_AudioRecorder_AudioRecorderService_get_AudioStreamDetails
bl Plugin_AudioRecorder_AudioRecorderService_set_AudioStreamDetails_Plugin_AudioRecorder_AudioStreamDetails
bl Plugin_AudioRecorder_AudioRecorderService_get_FilePath
bl Plugin_AudioRecorder_AudioRecorderService_set_FilePath_string
bl Plugin_AudioRecorder_AudioRecorderService_get_PreferredSampleRate
bl Plugin_AudioRecorder_AudioRecorderService_set_PreferredSampleRate_int
bl Plugin_AudioRecorder_AudioRecorderService_get_IsRecording
bl Plugin_AudioRecorder_AudioRecorderService_get_AudioSilenceTimeout
bl Plugin_AudioRecorder_AudioRecorderService_set_AudioSilenceTimeout_System_TimeSpan
bl Plugin_AudioRecorder_AudioRecorderService_get_TotalAudioTimeout
bl Plugin_AudioRecorder_AudioRecorderService_set_TotalAudioTimeout_System_TimeSpan
bl Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingOnSilence
bl Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingOnSilence_bool
bl Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingAfterTimeout
bl Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingAfterTimeout_bool
bl Plugin_AudioRecorder_AudioRecorderService_get_SilenceThreshold
bl Plugin_AudioRecorder_AudioRecorderService_set_SilenceThreshold_single
bl Plugin_AudioRecorder_AudioRecorderService_add_AudioInputReceived_System_EventHandler_1_string
bl Plugin_AudioRecorder_AudioRecorderService_remove_AudioInputReceived_System_EventHandler_1_string
bl Plugin_AudioRecorder_AudioRecorderService_Init
bl Plugin_AudioRecorder_AudioRecorderService__ctor
bl Plugin_AudioRecorder_AudioRecorderService_StartRecording
bl Plugin_AudioRecorder_AudioRecorderService_GetAudioFileStream
bl Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection
bl Plugin_AudioRecorder_AudioRecorderService_AudioStream_OnBroadcast_object_byte__
bl Plugin_AudioRecorder_AudioRecorderService_Timeout_string
bl Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool
bl Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int
bl Plugin_AudioRecorder_AudioRecorderService_GetAudioFilePath
bl Plugin_AudioRecorder_AudioRecorderService__Timeoutb__58_0
bl Plugin_AudioRecorder_AudioStream_add_OnBroadcast_System_EventHandler_1_byte__
bl Plugin_AudioRecorder_AudioStream_remove_OnBroadcast_System_EventHandler_1_byte__
bl Plugin_AudioRecorder_AudioStream_add_OnActiveChanged_System_EventHandler_1_bool
bl Plugin_AudioRecorder_AudioStream_remove_OnActiveChanged_System_EventHandler_1_bool
bl Plugin_AudioRecorder_AudioStream_add_OnException_System_EventHandler_1_System_Exception
bl Plugin_AudioRecorder_AudioStream_remove_OnException_System_EventHandler_1_System_Exception
bl Plugin_AudioRecorder_AudioStream_get_SampleRate
bl Plugin_AudioRecorder_AudioStream_set_SampleRate_int
bl Plugin_AudioRecorder_AudioStream_get_ChannelCount
bl Plugin_AudioRecorder_AudioStream_get_BitsPerSample
bl Plugin_AudioRecorder_AudioStream_get_Active
bl Plugin_AudioRecorder_AudioStream_Start
bl Plugin_AudioRecorder_AudioStream_Stop
bl Plugin_AudioRecorder_AudioStream__ctor_int_int
bl Plugin_AudioRecorder_AudioStream_InitAudioQueue
bl Plugin_AudioRecorder_AudioStream_QueueInputCompleted_object_AudioToolbox_InputCompletedEventArgs
bl Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_Stream_int_int_int_int
bl Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int
bl Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool
bl Plugin_AudioRecorder_AudioFunctions__cctor
bl Plugin_AudioRecorder_AudioStreamDetails_get_SampleRate
bl Plugin_AudioRecorder_AudioStreamDetails_set_SampleRate_int
bl Plugin_AudioRecorder_AudioStreamDetails_get_ChannelCount
bl Plugin_AudioRecorder_AudioStreamDetails_set_ChannelCount_int
bl Plugin_AudioRecorder_AudioStreamDetails_get_BitsPerSample
bl Plugin_AudioRecorder_AudioStreamDetails_set_BitsPerSample_int
bl Plugin_AudioRecorder_AudioStreamDetails__ctor
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string
bl Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream
bl Plugin_AudioRecorder_WaveRecorder_StreamActiveChanged_object_bool
bl Plugin_AudioRecorder_WaveRecorder_OnStreamBroadcast_object_byte__
bl Plugin_AudioRecorder_WaveRecorder_StopRecorder
bl Plugin_AudioRecorder_WaveRecorder_Dispose
bl Plugin_AudioRecorder_WaveRecorder__ctor
bl Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext
bl Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
bl Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext
bl Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
bl Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext
bl Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
bl method_addresses
bl wrapper_delegate_invoke_System_EventHandler_1_string_invoke_void_object_TEventArgs_object_string
bl wrapper_delegate_invoke_System_EventHandler_1_byte___invoke_void_object_TEventArgs_object_byte__
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_EventHandler_1_bool_invoke_void_object_TEventArgs_object_bool
bl wrapper_delegate_invoke_System_EventHandler_1_System_Exception_invoke_void_object_TEventArgs_object_System_Exception
bl wrapper_delegate_invoke_System_EventHandler_1_AVFoundation_AVStatusEventArgs_invoke_void_object_TEventArgs_object_AVFoundation_AVStatusEventArgs
bl wrapper_delegate_invoke_System_Func_1_string_invoke_TResult
bl wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object
bl wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_string
bl wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult
bl wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
bl wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
bl wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
bl wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
bl wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
bl wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
bl wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
bl wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
bl wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_1_string_invoke_TResult
bl wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_1_string_invoke_TResult_T_object
bl wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string
bl wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_IAsyncResult
bl wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
bl System_Nullable_1_System_DateTime__ctor_System_DateTime
bl System_Nullable_1_System_DateTime_get_HasValue
bl System_Nullable_1_System_DateTime_get_Value
bl System_Nullable_1_System_DateTime_Equals_object
bl System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
bl System_Nullable_1_System_DateTime_GetHashCode
bl System_Nullable_1_System_DateTime_GetValueOrDefault
bl System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
bl System_Nullable_1_System_DateTime_ToString
bl System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
bl System_Nullable_1_System_DateTime_Unbox_object
bl System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan
bl System_Nullable_1_System_TimeSpan_get_HasValue
bl System_Nullable_1_System_TimeSpan_get_Value
bl System_Nullable_1_System_TimeSpan_Equals_object
bl System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan
bl System_Nullable_1_System_TimeSpan_GetHashCode
bl System_Nullable_1_System_TimeSpan_GetValueOrDefault
bl System_Nullable_1_System_TimeSpan_GetValueOrDefault_System_TimeSpan
bl System_Nullable_1_System_TimeSpan_ToString
bl System_Nullable_1_System_TimeSpan_Box_System_Nullable_1_System_TimeSpan
bl System_Nullable_1_System_TimeSpan_Unbox_object
bl wrapper_delegate_invoke_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs_invoke_void_object_TEventArgs_object_AudioToolbox_InputCompletedEventArgs
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
bl System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
bl System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_
bl System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor
bl System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor
bl System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
bl System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
bl System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
bl System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
bl System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object
bl System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions
bl wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_object
bl System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
bl System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
bl System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
bl System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
bl System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_GetResult
bl System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
bl System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
bl System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
bl System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
bl System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
bl System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
bl System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_GetResult
bl wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
bl System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_
bl System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
bl System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__cctor
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_IAsyncResult
bl System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__ctor
bl System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__0_System_IAsyncResult
bl System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__ctor
bl System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__1_System_IAsyncResult
bl System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult
bl System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__ctor
bl System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult___cctorb__64_0_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 88,89,90,91,92,93,121,122
	.long 123,124,125,126,127,128,129,130
	.long 131,132,133,134,135,136,137,138
	.long 139,140,141,142,144,145,147,148
	.long 149,150,151,153,191,192,193,194
	.long 195,196,197,198,199,210,211,212
	.long 213,214,215,216,217,218,219,220
	.long 221
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_88
bl ut_89
bl ut_90
bl ut_91
bl ut_92
bl ut_93
bl ut_121
bl ut_122
bl ut_123
bl ut_124
bl ut_125
bl ut_126
bl ut_127
bl ut_128
bl ut_129
bl ut_130
bl ut_131
bl ut_132
bl ut_133
bl ut_134
bl ut_135
bl ut_136
bl ut_137
bl ut_138
bl ut_139
bl ut_140
bl ut_141
bl ut_142
bl ut_144
bl ut_145
bl ut_147
bl ut_148
bl ut_149
bl ut_150
bl ut_151
bl ut_153
bl ut_191
bl ut_192
bl ut_193
bl ut_194
bl ut_195
bl ut_196
bl ut_197
bl ut_198
bl ut_199
bl ut_210
bl ut_211
bl ut_212
bl ut_213
bl ut_214
bl ut_215
bl ut_216
bl ut_217
bl ut_218
bl ut_219
bl ut_220
bl ut_221

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,32,157,4,158,3,68,13,29,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.byte 16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,16,12,31,0,68,14,32,157,4,158,3,68,13,29,68
	.byte 154,2,28,12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1,13
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29,18,12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.byte 13,12,31,0,68,14,48,157,6,158,5,68,13,29,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4,14
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,19,12,31,0,68,14,176,2,157,38,158,37,68,13,29,68,153,36
	.byte 154,35,14,12,31,0,68,14,144,1,157,18,158,17,68,13,29,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68
	.byte 153,10,18,12,31,0,68,14,112,157,14,158,13,68,13,29,68,153,12,154,11,18,12,31,0,68,14,48,157,6,158,5
	.byte 68,13,29,68,153,4,154,3,22,12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,152,26,153,25,68,154,24,24
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,151,26,152,25,68,153,24,154,23,13,12,31,0,68,14,112,157
	.byte 14,158,13,68,13,29,19,12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,68,154,5,31,12,31,0,68,14
	.byte 112,157,14,158,13,68,13,29,68,147,12,148,11,68,149,10,150,9,68,151,8,68,153,7,154,6,14,12,31,0,68,14
	.byte 160,1,157,20,158,19,68,13,29,13,12,31,0,68,14,80,157,10,158,9,68,13,29,16,12,31,0,68,14,96,157,12
	.byte 158,11,68,13,29,68,154,10,19,12,31,0,68,14,144,2,157,34,158,33,68,13,29,68,153,32,154,31,17,12,31,0
	.byte 68,14,224,1,157,28,158,27,68,13,29,68,154,26,19,12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,153,28
	.byte 154,27,28,12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3,23
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3,26,12,31,0,68,14,80,157,10
	.byte 158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4,19,12,31,0,68,14,64,157,8,158,7,68,13,29
	.byte 68,152,6,68,154,5,13,12,31,0,68,14,64,157,8,158,7,68,13,29,22,12,31,0,68,14,176,1,157,22,158,21
	.byte 68,13,29,68,150,20,151,19,68,152,18,18,12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,13,12
	.byte 31,0,68,14,96,157,12,158,11,68,13,29,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,156,10,18,12,31
	.byte 0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,154
	.byte 6,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,18,12,31,0,68,14,48,157,6,158,5,68,13,29
	.byte 68,152,4,153,3,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,21,12,31,0,68,14,64,157,8,158
	.byte 7,68,13,29,68,152,6,153,5,68,154,4,17,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14,16,12
	.byte 31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8
	.byte 16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,17,12,31,0,68,14,128,2,157,32,158,31,68,13,29
	.byte 68,153,30,22,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,150,16,68,153,15,154,14,22,12,31,0,68,14
	.byte 192,1,157,24,158,23,68,13,29,68,150,22,151,21,68,152,20,23,12,31,0,68,14,112,157,14,158,13,68,13,29,68
	.byte 151,12,152,11,68,153,10,154,9,26,12,31,0,68,14,112,157,14,158,13,68,13,29,68,150,12,151,11,68,152,10,153
	.byte 9,68,154,8,19,12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,68,151,11,21,12,31,0,68,14,48,157
	.byte 6,158,5,68,13,29,68,152,4,153,3,68,154,2,16,12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2

.text
	.align 4
plt:
mono_aot_Plugin_AudioRecorder_plt:
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_1:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1528]
br x16
.word 5027
	.no_dead_strip plt_AVFoundation_AVAudioPlayer_remove_FinishedPlaying_System_EventHandler_1_AVFoundation_AVStatusEventArgs
plt_AVFoundation_AVAudioPlayer_remove_FinishedPlaying_System_EventHandler_1_AVFoundation_AVStatusEventArgs:
_p_2:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1536]
br x16
.word 5035
	.no_dead_strip plt_AVFoundation_AVAudioPlayer_Stop
plt_AVFoundation_AVAudioPlayer_Stop:
_p_3:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1544]
br x16
.word 5040
	.no_dead_strip plt_Foundation_NSUrl_FromFilename_string
plt_Foundation_NSUrl_FromFilename_string:
_p_4:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1552]
br x16
.word 5045
	.no_dead_strip plt_AVFoundation_AVAudioPlayer_FromUrl_Foundation_NSUrl
plt_AVFoundation_AVAudioPlayer_FromUrl_Foundation_NSUrl:
_p_5:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1560]
br x16
.word 5050
	.no_dead_strip plt_AVFoundation_AVAudioPlayer_add_FinishedPlaying_System_EventHandler_1_AVFoundation_AVStatusEventArgs
plt_AVFoundation_AVAudioPlayer_add_FinishedPlaying_System_EventHandler_1_AVFoundation_AVStatusEventArgs:
_p_6:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1568]
br x16
.word 5055
	.no_dead_strip plt_AVFoundation_AVAudioPlayer_Play
plt_AVFoundation_AVAudioPlayer_Play:
_p_7:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1576]
br x16
.word 5060
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_8:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1584]
br x16
.word 5065
	.no_dead_strip plt_AVFoundation_AVAudioPlayer_Pause
plt_AVFoundation_AVAudioPlayer_Pause:
_p_9:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1592]
br x16
.word 5100
	.no_dead_strip plt_System_Delegate_Combine_System_Delegate_System_Delegate
plt_System_Delegate_Combine_System_Delegate_System_Delegate:
_p_10:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1600]
br x16
.word 5105
	.no_dead_strip plt_System_Delegate_Remove_System_Delegate_System_Delegate
plt_System_Delegate_Remove_System_Delegate_System_Delegate:
_p_11:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1608]
br x16
.word 5110
	.no_dead_strip plt_System_IO_Path_GetTempPath
plt_System_IO_Path_GetTempPath:
_p_12:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1616]
br x16
.word 5115
	.no_dead_strip plt_System_IO_Path_Combine_string_string
plt_System_IO_Path_Combine_string_string:
_p_13:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1624]
br x16
.word 5120
	.no_dead_strip plt_System_Threading_Tasks_Task_FromResult_string_string
plt_System_Threading_Tasks_Task_FromResult_string_string:
_p_14:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1632]
br x16
.word 5125
	.no_dead_strip plt_AVFoundation_AVAudioSession_SharedInstance
plt_AVFoundation_AVAudioSession_SharedInstance:
_p_15:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1640]
br x16
.word 5137
	.no_dead_strip plt_AVFoundation_AVAudioSession_get_Category
plt_AVFoundation_AVAudioSession_get_Category:
_p_16:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1648]
br x16
.word 5142
	.no_dead_strip plt_AVFoundation_AVAudioSession_get_CategoryRecord
plt_AVFoundation_AVAudioSession_get_CategoryRecord:
_p_17:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1656]
br x16
.word 5147
	.no_dead_strip plt_Foundation_NSString_op_Inequality_Foundation_NSString_Foundation_NSString
plt_Foundation_NSString_op_Inequality_Foundation_NSString_Foundation_NSString:
_p_18:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1664]
br x16
.word 5152
	.no_dead_strip plt_AVFoundation_AVAudioSession_get_CategoryPlayAndRecord
plt_AVFoundation_AVAudioSession_get_CategoryPlayAndRecord:
_p_19:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1672]
br x16
.word 5157
	.no_dead_strip plt_AVFoundation_AVAudioSession_get_CategoryMultiRoute
plt_AVFoundation_AVAudioSession_get_CategoryMultiRoute:
_p_20:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1680]
br x16
.word 5162
	.no_dead_strip plt_Foundation_NSString_op_Equality_Foundation_NSString_Foundation_NSString
plt_Foundation_NSString_op_Equality_Foundation_NSString_Foundation_NSString:
_p_21:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1688]
br x16
.word 5167
	.no_dead_strip plt_AVFoundation_AVAudioSession_SetCategory_Foundation_NSString_Foundation_NSError_
plt_AVFoundation_AVAudioSession_SetCategory_Foundation_NSString_Foundation_NSError_:
_p_22:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1696]
br x16
.word 5172
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_23:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1704]
br x16
.word 5177
	.no_dead_strip plt_string_Format_string_object_object_object
plt_string_Format_string_object_object_object:
_p_24:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1712]
br x16
.word 5197
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_25:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1720]
br x16
.word 5202
	.no_dead_strip plt_System_TimeSpan_FromSeconds_double
plt_System_TimeSpan_FromSeconds_double:
_p_26:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1728]
br x16
.word 5230
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_:
_p_27:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1736]
br x16
.word 5235
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_get_Task
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_get_Task:
_p_28:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1744]
br x16
.word 5247
	.no_dead_strip plt_Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream
plt_Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream:
_p_29:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1752]
br x16
.word 5258
	.no_dead_strip plt_Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool
plt_Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool:
_p_30:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1760]
br x16
.word 5260
	.no_dead_strip plt_System_DateTime_get_Now
plt_System_DateTime_get_Now:
_p_31:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1768]
br x16
.word 5262
	.no_dead_strip plt_System_Nullable_1_System_DateTime_get_Value
plt_System_Nullable_1_System_DateTime_get_Value:
_p_32:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1776]
br x16
.word 5267
	.no_dead_strip plt_System_DateTime_Subtract_System_DateTime
plt_System_DateTime_Subtract_System_DateTime:
_p_33:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1784]
br x16
.word 5278
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService_Timeout_string
plt_Plugin_AudioRecorder_AudioRecorderService_Timeout_string:
_p_34:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1792]
br x16
.word 5283
	.no_dead_strip plt_System_Nullable_1_System_DateTime__ctor_System_DateTime
plt_System_Nullable_1_System_DateTime__ctor_System_DateTime:
_p_35:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1800]
br x16
.word 5285
	.no_dead_strip plt_System_DateTime_op_Subtraction_System_DateTime_System_DateTime
plt_System_DateTime_op_Subtraction_System_DateTime_System_DateTime:
_p_36:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1808]
br x16
.word 5296
	.no_dead_strip plt_System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan
plt_System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan:
_p_37:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1816]
br x16
.word 5301
	.no_dead_strip plt_System_Threading_Tasks_Task_Run_System_Func_1_System_Threading_Tasks_Task
plt_System_Threading_Tasks_Task_Run_System_Func_1_System_Threading_Tasks_Task:
_p_38:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1824]
br x16
.word 5312
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_:
_p_39:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1832]
br x16
.word 5317
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task:
_p_40:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1840]
br x16
.word 5329
	.no_dead_strip plt_Plugin_AudioRecorder_AudioStream__ctor_int_int
plt_Plugin_AudioRecorder_AudioStream__ctor_int_int:
_p_41:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1848]
br x16
.word 5334
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_42:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1856]
br x16
.word 5336
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool
plt_Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool:
_p_43:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1864]
br x16
.word 5375
	.no_dead_strip plt_AudioToolbox_AudioQueue_get_IsRunning
plt_AudioToolbox_AudioQueue_get_IsRunning:
_p_44:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1872]
br x16
.word 5377
	.no_dead_strip plt_Plugin_AudioRecorder_AudioStream_get_Active
plt_Plugin_AudioRecorder_AudioStream_get_Active:
_p_45:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1880]
br x16
.word 5382
	.no_dead_strip plt_Plugin_AudioRecorder_AudioStream_InitAudioQueue
plt_Plugin_AudioRecorder_AudioStream_InitAudioQueue:
_p_46:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1888]
br x16
.word 5384
	.no_dead_strip plt_AudioToolbox_AudioQueue_Start
plt_AudioToolbox_AudioQueue_Start:
_p_47:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1896]
br x16
.word 5386
	.no_dead_strip plt_string_Format_string_object
plt_string_Format_string_object:
_p_48:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1904]
br x16
.word 5391
	.no_dead_strip plt_System_Threading_Tasks_Task_FromResult_bool_bool
plt_System_Threading_Tasks_Task_FromResult_bool_bool:
_p_49:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1912]
br x16
.word 5396
	.no_dead_strip plt__jit_icall_mono_arch_rethrow_exception
plt__jit_icall_mono_arch_rethrow_exception:
_p_50:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1920]
br x16
.word 5408
	.no_dead_strip plt_AudioToolbox_InputAudioQueue_remove_InputCompleted_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs
plt_AudioToolbox_InputAudioQueue_remove_InputCompleted_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs:
_p_51:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1928]
br x16
.word 5438
	.no_dead_strip plt_AudioToolbox_AudioQueue_Stop_bool
plt_AudioToolbox_AudioQueue_Stop_bool:
_p_52:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1936]
br x16
.word 5443
	.no_dead_strip plt_AudioToolbox_AudioQueue_Dispose
plt_AudioToolbox_AudioQueue_Dispose:
_p_53:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1944]
br x16
.word 5448
	.no_dead_strip plt__jit_icall_ves_icall_object_new_specific
plt__jit_icall_ves_icall_object_new_specific:
_p_54:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1952]
br x16
.word 5453
	.no_dead_strip plt_AudioToolbox_InputAudioQueue__ctor_AudioToolbox_AudioStreamBasicDescription
plt_AudioToolbox_InputAudioQueue__ctor_AudioToolbox_AudioStreamBasicDescription:
_p_55:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1960]
br x16
.word 5485
	.no_dead_strip plt_AudioToolbox_InputAudioQueue_add_InputCompleted_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs
plt_AudioToolbox_InputAudioQueue_add_InputCompleted_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs:
_p_56:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1968]
br x16
.word 5490
	.no_dead_strip plt_AudioToolbox_AudioQueue_AllocateBufferWithPacketDescriptors_int_int_intptr_
plt_AudioToolbox_AudioQueue_AllocateBufferWithPacketDescriptors_int_int_intptr_:
_p_57:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1976]
br x16
.word 5495
	.no_dead_strip plt_AudioToolbox_AudioQueue_EnqueueBuffer_intptr_int_AudioToolbox_AudioStreamPacketDescription__
plt_AudioToolbox_AudioQueue_EnqueueBuffer_intptr_int_AudioToolbox_AudioStreamPacketDescription__:
_p_58:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1984]
br x16
.word 5500
	.no_dead_strip plt_System_Runtime_InteropServices_Marshal_PtrToStructure_intptr_System_Type
plt_System_Runtime_InteropServices_Marshal_PtrToStructure_intptr_System_Type:
_p_59:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #1992]
br x16
.word 5505
	.no_dead_strip plt_wrapper_alloc_object_AllocVector_intptr_intptr
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_60:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2000]
br x16
.word 5510
	.no_dead_strip plt_System_Runtime_InteropServices_Marshal_Copy_intptr_byte___int_int
plt_System_Runtime_InteropServices_Marshal_Copy_intptr_byte___int_int:
_p_61:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2008]
br x16
.word 5518
	.no_dead_strip plt_System_Exception__ctor_string
plt_System_Exception__ctor_string:
_p_62:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2016]
br x16
.word 5523
	.no_dead_strip plt_System_Text_Encoding_get_UTF8
plt_System_Text_Encoding_get_UTF8:
_p_63:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2024]
br x16
.word 5528
	.no_dead_strip plt_System_IO_BinaryWriter__ctor_System_IO_Stream_System_Text_Encoding
plt_System_IO_BinaryWriter__ctor_System_IO_Stream_System_Text_Encoding:
_p_64:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2032]
br x16
.word 5533
	.no_dead_strip plt_Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int
plt_Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int:
_p_65:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2040]
br x16
.word 5538
	.no_dead_strip plt__jit_icall_mono_thread_self_abort
plt__jit_icall_mono_thread_self_abort:
_p_66:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2048]
br x16
.word 5540
	.no_dead_strip plt_System_IO_BinaryWriter_Seek_int_System_IO_SeekOrigin
plt_System_IO_BinaryWriter_Seek_int_System_IO_SeekOrigin:
_p_67:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2056]
br x16
.word 5565
	.no_dead_strip plt_System_IO_BinaryWriter_Write_char
plt_System_IO_BinaryWriter_Write_char:
_p_68:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2064]
br x16
.word 5570
	.no_dead_strip plt_System_IO_BinaryWriter_Write_int
plt_System_IO_BinaryWriter_Write_int:
_p_69:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2072]
br x16
.word 5575
	.no_dead_strip plt_System_IO_BinaryWriter_Write_int16
plt_System_IO_BinaryWriter_Write_int16:
_p_70:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2080]
br x16
.word 5580
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_:
_p_71:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2088]
br x16
.word 5585
	.no_dead_strip plt_System_IO_FileStream__ctor_string_System_IO_FileMode_System_IO_FileAccess_System_IO_FileShare
plt_System_IO_FileStream__ctor_string_System_IO_FileMode_System_IO_FileAccess_System_IO_FileShare:
_p_72:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2096]
br x16
.word 5597
	.no_dead_strip plt_Plugin_AudioRecorder_WaveRecorder_StopRecorder
plt_Plugin_AudioRecorder_WaveRecorder_StopRecorder:
_p_73:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2104]
br x16
.word 5602
	.no_dead_strip plt_System_IO_BinaryWriter_Write_byte__
plt_System_IO_BinaryWriter_Write_byte__:
_p_74:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2112]
br x16
.word 5604
	.no_dead_strip plt_System_IO_BinaryWriter_Dispose
plt_System_IO_BinaryWriter_Dispose:
_p_75:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2120]
br x16
.word 5609
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath
plt_Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath:
_p_76:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2128]
br x16
.word 5614
	.no_dead_strip plt_System_Threading_Tasks_Task_1_string_GetAwaiter
plt_System_Threading_Tasks_Task_1_string_GetAwaiter:
_p_77:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2136]
br x16
.word 5616
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_:
_p_78:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2144]
br x16
.word 5627
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult
plt_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult:
_p_79:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2152]
br x16
.word 5639
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection
plt_Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection:
_p_80:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2160]
br x16
.word 5650
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting
plt_Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting:
_p_81:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2168]
br x16
.word 5652
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int
plt_Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int:
_p_82:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2176]
br x16
.word 5654
	.no_dead_strip plt_Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string
plt_Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string:
_p_83:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2184]
br x16
.word 5656
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_:
_p_84:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2192]
br x16
.word 5658
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_GetResult
plt_System_Runtime_CompilerServices_TaskAwaiter_GetResult:
_p_85:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2200]
br x16
.word 5670
	.no_dead_strip plt_System_Threading_Tasks_TaskCompletionSource_1_string__ctor
plt_System_Threading_Tasks_TaskCompletionSource_1_string__ctor:
_p_86:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2208]
br x16
.word 5675
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_SetException_System_Exception
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_SetException_System_Exception:
_p_87:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2216]
br x16
.word 5686
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_SetResult_System_Threading_Tasks_Task_1_string
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_SetResult_System_Threading_Tasks_Task_1_string:
_p_88:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2224]
br x16
.word 5697
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
_p_89:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2232]
br x16
.word 5708
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_:
_p_90:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2240]
br x16
.word 5719
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped
plt_Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped:
_p_91:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2248]
br x16
.word 5731
	.no_dead_strip plt_System_Threading_Tasks_TaskCompletionSource_1_string_TrySetResult_string
plt_System_Threading_Tasks_TaskCompletionSource_1_string_TrySetResult_string:
_p_92:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2256]
br x16
.word 5733
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetException_System_Exception
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetException_System_Exception:
_p_93:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2264]
br x16
.word 5744
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult:
_p_94:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2272]
br x16
.word 5749
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
_p_95:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2280]
br x16
.word 5754
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_:
_p_96:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2288]
br x16
.word 5759
	.no_dead_strip plt_System_IO_StreamWriter__ctor_System_IO_Stream
plt_System_IO_StreamWriter__ctor_System_IO_Stream:
_p_97:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2296]
br x16
.word 5771
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_98:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2304]
br x16
.word 5776
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_99:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2312]
br x16
.word 5814
	.no_dead_strip plt_System_Nullable_1_System_DateTime_Unbox_object
plt_System_Nullable_1_System_DateTime_Unbox_object:
_p_100:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2320]
br x16
.word 5843
	.no_dead_strip plt_System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
plt_System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime:
_p_101:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2328]
br x16
.word 5865
	.no_dead_strip plt_System_DateTime_Equals_object
plt_System_DateTime_Equals_object:
_p_102:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2336]
br x16
.word 5887
	.no_dead_strip plt_System_DateTime_ToString
plt_System_DateTime_ToString:
_p_103:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2344]
br x16
.word 5892
	.no_dead_strip plt_System_Nullable_1_System_TimeSpan_Unbox_object
plt_System_Nullable_1_System_TimeSpan_Unbox_object:
_p_104:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2352]
br x16
.word 5897
	.no_dead_strip plt_System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan
plt_System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan:
_p_105:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2360]
br x16
.word 5919
	.no_dead_strip plt_System_TimeSpan_Equals_object
plt_System_TimeSpan_Equals_object:
_p_106:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2368]
br x16
.word 5941
	.no_dead_strip plt_System_TimeSpan_ToString
plt_System_TimeSpan_ToString:
_p_107:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2376]
br x16
.word 5946
	.no_dead_strip plt_System_Threading_ExecutionContext_EstablishCopyOnWriteScope_System_Threading_ExecutionContextSwitcher_
plt_System_Threading_ExecutionContext_EstablishCopyOnWriteScope_System_Threading_ExecutionContextSwitcher_:
_p_108:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2384]
br x16
.word 5951
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext
plt_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext:
_p_109:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2392]
br x16
.word 5956
	.no_dead_strip plt_System_Threading_ExecutionContextSwitcher_Undo
plt_System_Threading_ExecutionContextSwitcher_Undo:
_p_110:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2400]
br x16
.word 5958
	.no_dead_strip plt_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext
plt_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext:
_p_111:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2408]
br x16
.word 5963
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_112:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2416]
br x16
.word 5993
	.no_dead_strip plt__jit_icall_mono_generic_class_init
plt__jit_icall_mono_generic_class_init:
_p_113:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2424]
br x16
.word 6001
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_114:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2432]
br x16
.word 6027
	.no_dead_strip plt_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext
plt_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext:
_p_115:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2440]
br x16
.word 6050
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_GetCompletionAction_System_Threading_Tasks_Task_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_GetCompletionAction_System_Threading_Tasks_Task_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_:
_p_116:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2448]
br x16
.word 6052
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_PostBoxInitialization_System_Runtime_CompilerServices_IAsyncStateMachine_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_System_Threading_Tasks_Task
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_PostBoxInitialization_System_Runtime_CompilerServices_IAsyncStateMachine_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_System_Threading_Tasks_Task:
_p_117:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2456]
br x16
.word 6057
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_UnsafeOnCompleted_System_Action
plt_System_Runtime_CompilerServices_TaskAwaiter_UnsafeOnCompleted_System_Action:
_p_118:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2464]
br x16
.word 6062
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_ThrowAsync_System_Exception_System_Threading_SynchronizationContext
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_ThrowAsync_System_Exception_System_Threading_SynchronizationContext:
_p_119:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2472]
br x16
.word 6067
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_1_string_UnsafeOnCompleted_System_Action
plt_System_Runtime_CompilerServices_TaskAwaiter_1_string_UnsafeOnCompleted_System_Action:
_p_120:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2480]
br x16
.word 6072
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_:
_p_121:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2488]
br x16
.word 6094
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_:
_p_122:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2496]
br x16
.word 6120
	.no_dead_strip plt_System_Threading_Tasks_Task__ctor_bool_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken
plt_System_Threading_Tasks_Task__ctor_bool_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken:
_p_123:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2504]
br x16
.word 6146
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task:
_p_124:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2512]
br x16
.word 6151
	.no_dead_strip plt_System_Threading_Tasks_Task__ctor
plt_System_Threading_Tasks_Task__ctor:
_p_125:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2520]
br x16
.word 6162
	.no_dead_strip plt_System_Threading_Tasks_Task__ctor_object_System_Threading_Tasks_TaskCreationOptions_bool
plt_System_Threading_Tasks_Task__ctor_object_System_Threading_Tasks_TaskCreationOptions_bool:
_p_126:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2528]
br x16
.word 6167
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
_p_127:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2536]
br x16
.word 6172
	.no_dead_strip plt_System_Threading_Tasks_Task_PossiblyCaptureContext_System_Threading_StackCrawlMark_
plt_System_Threading_Tasks_Task_PossiblyCaptureContext_System_Threading_StackCrawlMark_:
_p_128:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2544]
br x16
.word 6192
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
_p_129:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2552]
br x16
.word 6197
	.no_dead_strip plt_System_Threading_Tasks_Task__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
plt_System_Threading_Tasks_Task__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
_p_130:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2560]
br x16
.word 6217
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
_p_131:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2568]
br x16
.word 6222
	.no_dead_strip plt_System_Threading_Tasks_Task_ScheduleAndStart_bool
plt_System_Threading_Tasks_Task_ScheduleAndStart_bool:
_p_132:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2576]
br x16
.word 6242
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
_p_133:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2584]
br x16
.word 6247
	.no_dead_strip plt_System_Threading_Tasks_Task_AtomicStateUpdate_int_int
plt_System_Threading_Tasks_Task_AtomicStateUpdate_int_int:
_p_134:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2592]
br x16
.word 6267
	.no_dead_strip plt_System_Threading_Tasks_Task_ContingentProperties_SetCompleted
plt_System_Threading_Tasks_Task_ContingentProperties_SetCompleted:
_p_135:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2600]
br x16
.word 6272
	.no_dead_strip plt_System_Threading_Tasks_Task_FinishStageThree
plt_System_Threading_Tasks_Task_FinishStageThree:
_p_136:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2608]
br x16
.word 6277
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult:
_p_137:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2616]
br x16
.word 6282
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool:
_p_138:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2624]
br x16
.word 6302
	.no_dead_strip plt_System_Threading_Tasks_Task_InternalWait_int_System_Threading_CancellationToken
plt_System_Threading_Tasks_Task_InternalWait_int_System_Threading_CancellationToken:
_p_139:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2632]
br x16
.word 6322
	.no_dead_strip plt_System_Threading_Tasks_Task_NotifyDebuggerOfWaitCompletionIfNecessary
plt_System_Threading_Tasks_Task_NotifyDebuggerOfWaitCompletionIfNecessary:
_p_140:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2640]
br x16
.word 6327
	.no_dead_strip plt_System_Threading_Tasks_Task_get_IsRanToCompletion
plt_System_Threading_Tasks_Task_get_IsRanToCompletion:
_p_141:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2648]
br x16
.word 6332
	.no_dead_strip plt_System_Threading_Tasks_Task_ThrowIfExceptional_bool
plt_System_Threading_Tasks_Task_ThrowIfExceptional_bool:
_p_142:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2656]
br x16
.word 6337
	.no_dead_strip plt_System_Threading_Tasks_Task_EnsureContingentPropertiesInitialized_bool
plt_System_Threading_Tasks_Task_EnsureContingentPropertiesInitialized_bool:
_p_143:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2664]
br x16
.word 6342
	.no_dead_strip plt_System_Threading_Tasks_Task_AddException_object
plt_System_Threading_Tasks_Task_AddException_object:
_p_144:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2672]
br x16
.word 6347
	.no_dead_strip plt_System_Threading_Tasks_Task_Finish_bool
plt_System_Threading_Tasks_Task_Finish_bool:
_p_145:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2680]
br x16
.word 6352
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object:
_p_146:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2688]
br x16
.word 6357
	.no_dead_strip plt_System_Threading_Tasks_Task_RecordInternalCancellationRequest_System_Threading_CancellationToken_object
plt_System_Threading_Tasks_Task_RecordInternalCancellationRequest_System_Threading_CancellationToken_object:
_p_147:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2696]
br x16
.word 6377
	.no_dead_strip plt_System_Threading_Tasks_Task_CancellationCleanupLogic
plt_System_Threading_Tasks_Task_CancellationCleanupLogic:
_p_148:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2704]
br x16
.word 6382
	.no_dead_strip plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr:
_p_149:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2712]
br x16
.word 6387
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
plt_System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult:
_p_150:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2720]
br x16
.word 6395
	.no_dead_strip plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool:
_p_151:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2728]
br x16
.word 6415
	.no_dead_strip plt_System_Threading_Tasks_TaskScheduler_get_Current
plt_System_Threading_Tasks_TaskScheduler_get_Current:
_p_152:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2736]
br x16
.word 6435
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_:
_p_153:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2744]
br x16
.word 6440
	.no_dead_strip plt_System_Threading_Tasks_Task_CreationOptionsFromContinuationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskCreationOptions__System_Threading_Tasks_InternalTaskOptions_
plt_System_Threading_Tasks_Task_CreationOptionsFromContinuationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskCreationOptions__System_Threading_Tasks_InternalTaskOptions_:
_p_154:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2752]
br x16
.word 6460
	.no_dead_strip plt_System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_
plt_System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_:
_p_155:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2760]
br x16
.word 6465
	.no_dead_strip plt_System_Threading_Tasks_Task_ContinueWithCore_System_Threading_Tasks_Task_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions
plt_System_Threading_Tasks_Task_ContinueWithCore_System_Threading_Tasks_Task_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions:
_p_156:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2768]
br x16
.word 6485
	.no_dead_strip plt_System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor
plt_System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor:
_p_157:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2776]
br x16
.word 6490
	.no_dead_strip plt_System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
plt_System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler:
_p_158:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2784]
br x16
.word 6510
	.no_dead_strip plt_System_Threading_Tasks_TaskFactory_CheckMultiTaskContinuationOptions_System_Threading_Tasks_TaskContinuationOptions
plt_System_Threading_Tasks_TaskFactory_CheckMultiTaskContinuationOptions_System_Threading_Tasks_TaskContinuationOptions:
_p_159:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2792]
br x16
.word 6530
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
_p_160:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2800]
br x16
.word 6535
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
_p_161:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2808]
br x16
.word 6555
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object:
_p_162:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2816]
br x16
.word 6575
	.no_dead_strip plt_System_Threading_Tasks_TaskExceptionHolder_MarkAsHandled_bool
plt_System_Threading_Tasks_TaskExceptionHolder_MarkAsHandled_bool:
_p_163:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2824]
br x16
.word 6595
	.no_dead_strip plt_System_Threading_Tasks_Task_get_Id
plt_System_Threading_Tasks_Task_get_Id:
_p_164:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2832]
br x16
.word 6600
	.no_dead_strip plt_System_Threading_Tasks_AsyncCausalityTracer_TraceOperationCompletion_System_Threading_Tasks_CausalityTraceLevel_int_System_Threading_Tasks_AsyncCausalityStatus
plt_System_Threading_Tasks_AsyncCausalityTracer_TraceOperationCompletion_System_Threading_Tasks_CausalityTraceLevel_int_System_Threading_Tasks_AsyncCausalityStatus:
_p_165:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2840]
br x16
.word 6605
	.no_dead_strip plt_System_Threading_Tasks_Task_RemoveFromActiveTasks_int
plt_System_Threading_Tasks_Task_RemoveFromActiveTasks_int:
_p_166:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2848]
br x16
.word 6610
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult:
_p_167:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2856]
br x16
.word 6615
	.no_dead_strip plt_System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions
plt_System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions:
_p_168:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2864]
br x16
.word 6635
	.no_dead_strip plt_System_Threading_Tasks_TaskFactory_CheckFromAsyncOptions_System_Threading_Tasks_TaskCreationOptions_bool
plt_System_Threading_Tasks_TaskFactory_CheckFromAsyncOptions_System_Threading_Tasks_TaskCreationOptions_bool:
_p_169:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2872]
br x16
.word 6655
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions:
_p_170:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2880]
br x16
.word 6660
	.no_dead_strip plt_System_Threading_Tasks_Task_AddToActiveTasks_System_Threading_Tasks_Task
plt_System_Threading_Tasks_Task_AddToActiveTasks_System_Threading_Tasks_Task:
_p_171:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2888]
br x16
.word 6680
	.no_dead_strip plt_System_Threading_AtomicBoolean_TryRelaxedSet
plt_System_Threading_AtomicBoolean_TryRelaxedSet:
_p_172:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2896]
br x16
.word 6685
	.no_dead_strip plt_System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
plt_System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool:
_p_173:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2904]
br x16
.word 6690
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
_p_174:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2912]
br x16
.word 6710
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor:
_p_175:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2920]
br x16
.word 6715
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult:
_p_176:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2928]
br x16
.word 6735
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult:
_p_177:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2936]
br x16
.word 6755
	.no_dead_strip plt_System_Decimal_op_Equality_System_Decimal_System_Decimal
plt_System_Decimal_op_Equality_System_Decimal_System_Decimal:
_p_178:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2944]
br x16
.word 6775
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult:
_p_179:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2952]
br x16
.word 6780
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult
plt_System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult:
_p_180:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2960]
br x16
.word 6800
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_OnCompletedInternal_System_Threading_Tasks_Task_System_Action_bool_bool
plt_System_Runtime_CompilerServices_TaskAwaiter_OnCompletedInternal_System_Threading_Tasks_Task_System_Action_bool_bool:
_p_181:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2968]
br x16
.word 6821
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_ValidateEnd_System_Threading_Tasks_Task
plt_System_Runtime_CompilerServices_TaskAwaiter_ValidateEnd_System_Threading_Tasks_Task:
_p_182:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2976]
br x16
.word 6826
	.no_dead_strip plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool:
_p_183:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2984]
br x16
.word 6831
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken:
_p_184:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #2992]
br x16
.word 6851
	.no_dead_strip plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_get_Result
plt_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_get_Result:
_p_185:
adrp x16, mono_aot_Plugin_AudioRecorder_got@PAGE+0
add x16, x16, mono_aot_Plugin_AudioRecorder_got@PAGEOFF
ldr x16, [x16, #3000]
br x16
.word 6871
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Plugin_AudioRecorder_got, 3008
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "E1DB6FBA-E08F-457C-AD12-9217B82998B2"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Plugin.AudioRecorder"
.data
	.align 3
_mono_aot_file_info:

	.long 143,0
	.align 3
	.quad mono_aot_Plugin_AudioRecorder_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 190,3008,186,238,66,387000831,0,8274
	.long 128,8,8,9,0,25,14088,5808
	.long 5536,4792,0,5144,5496,4880,0,3640
	.long 344,5800,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
	.byte 99,163,243,157,234,66,143,83,107,149,202,173,82,169,136,144
	.globl _mono_aot_module_Plugin_AudioRecorder_info
	.align 3
_mono_aot_module_Plugin_AudioRecorder_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_4:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM7=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,0,7
	.asciz "_Flags"

LDIFF_SYM8=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_3:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 40,16
LDIFF_SYM11=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM12=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,16,6
	.asciz "class_handle"

LDIFF_SYM13=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,35,24,6
	.asciz "flags"

LDIFF_SYM14=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 2,35,32,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM15=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM16=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM17=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_2:

	.byte 5
	.asciz "AVFoundation_AVAudioPlayer"

	.byte 48,16
LDIFF_SYM18=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,35,0,6
	.asciz "__mt_WeakDelegate_var"

LDIFF_SYM19=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2,35,40,0,7
	.asciz "AVFoundation_AVAudioPlayer"

LDIFF_SYM20=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM21=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM22=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_10:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM23=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM24=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM25=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM26=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_9:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM27=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM28=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM29=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM30=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_8:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM31=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM32=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM33=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM34=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_12:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM35=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM36=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM37=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM38=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM39=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_14:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM40=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM41=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM42=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM43=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_13:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM44=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM45=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM46=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM47=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM48=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_11:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM49=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM50=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM51=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM52=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM53=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM54=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM55=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_7:

	.byte 5
	.asciz "System_Delegate"

	.byte 104,16
LDIFF_SYM56=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM57=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM58=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM59=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM60=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM61=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM62=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM63=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM64=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM65=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM66=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM67=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,96,0,7
	.asciz "System_Delegate"

LDIFF_SYM68=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM69=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM70=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_6:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 112,16
LDIFF_SYM71=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM72=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,104,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM73=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM74=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM75=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_5:

	.byte 5
	.asciz "System_EventHandler"

	.byte 112,16
LDIFF_SYM76=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,0,0,7
	.asciz "System_EventHandler"

LDIFF_SYM77=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM77
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM78=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM79=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_0:

	.byte 5
	.asciz "Plugin_AudioRecorder_AudioPlayer"

	.byte 32,16
LDIFF_SYM80=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,0,6
	.asciz "_audioPlayer"

LDIFF_SYM81=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,16,6
	.asciz "FinishedPlaying"

LDIFF_SYM82=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,24,0,7
	.asciz "Plugin_AudioRecorder_AudioPlayer"

LDIFF_SYM83=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM83
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM84=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM85=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioPlayer:.ctor"
	.asciz "Plugin_AudioRecorder_AudioPlayer__ctor"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioPlayer__ctor
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM86=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM87=Lfde0_end - Lfde0_start
	.long LDIFF_SYM87
Lfde0_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioPlayer__ctor

LDIFF_SYM88=Lme_0 - Plugin_AudioRecorder_AudioPlayer__ctor
	.long LDIFF_SYM88
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioPlayer:Play"
	.asciz "Plugin_AudioRecorder_AudioPlayer_Play_string"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioPlayer_Play_string
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM89=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 1,105,3
	.asciz "pathToAudioFile"

LDIFF_SYM90=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM91=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM92=Lfde1_end - Lfde1_start
	.long LDIFF_SYM92
Lfde1_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioPlayer_Play_string

LDIFF_SYM93=Lme_1 - Plugin_AudioRecorder_AudioPlayer_Play_string
	.long LDIFF_SYM93
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_16:

	.byte 5
	.asciz "System_EventArgs"

	.byte 16,16
LDIFF_SYM94=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,35,0,0,7
	.asciz "System_EventArgs"

LDIFF_SYM95=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM95
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM96=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM97=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_15:

	.byte 5
	.asciz "AVFoundation_AVStatusEventArgs"

	.byte 17,16
LDIFF_SYM98=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,35,0,6
	.asciz "<Status>k__BackingField"

LDIFF_SYM99=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 2,35,16,0,7
	.asciz "AVFoundation_AVStatusEventArgs"

LDIFF_SYM100=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM100
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM101=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM102=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioPlayer:Player_FinishedPlaying"
	.asciz "Plugin_AudioRecorder_AudioPlayer_Player_FinishedPlaying_object_AVFoundation_AVStatusEventArgs"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioPlayer_Player_FinishedPlaying_object_AVFoundation_AVStatusEventArgs
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM103=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,141,24,3
	.asciz "sender"

LDIFF_SYM104=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 0,3
	.asciz "e"

LDIFF_SYM105=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM106=Lfde2_end - Lfde2_start
	.long LDIFF_SYM106
Lfde2_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioPlayer_Player_FinishedPlaying_object_AVFoundation_AVStatusEventArgs

LDIFF_SYM107=Lme_2 - Plugin_AudioRecorder_AudioPlayer_Player_FinishedPlaying_object_AVFoundation_AVStatusEventArgs
	.long LDIFF_SYM107
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioPlayer:Pause"
	.asciz "Plugin_AudioRecorder_AudioPlayer_Pause"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioPlayer_Pause
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM108=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM109=Lfde3_end - Lfde3_start
	.long LDIFF_SYM109
Lfde3_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioPlayer_Pause

LDIFF_SYM110=Lme_3 - Plugin_AudioRecorder_AudioPlayer_Pause
	.long LDIFF_SYM110
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioPlayer:Play"
	.asciz "Plugin_AudioRecorder_AudioPlayer_Play"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioPlayer_Play
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM111=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM112=Lfde4_end - Lfde4_start
	.long LDIFF_SYM112
Lfde4_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioPlayer_Play

LDIFF_SYM113=Lme_4 - Plugin_AudioRecorder_AudioPlayer_Play
	.long LDIFF_SYM113
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioPlayer:add_FinishedPlaying"
	.asciz "Plugin_AudioRecorder_AudioPlayer_add_FinishedPlaying_System_EventHandler"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioPlayer_add_FinishedPlaying_System_EventHandler
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM114=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM115=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM116=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM117=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM118=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM119=Lfde5_end - Lfde5_start
	.long LDIFF_SYM119
Lfde5_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioPlayer_add_FinishedPlaying_System_EventHandler

LDIFF_SYM120=Lme_5 - Plugin_AudioRecorder_AudioPlayer_add_FinishedPlaying_System_EventHandler
	.long LDIFF_SYM120
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioPlayer:remove_FinishedPlaying"
	.asciz "Plugin_AudioRecorder_AudioPlayer_remove_FinishedPlaying_System_EventHandler"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioPlayer_remove_FinishedPlaying_System_EventHandler
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM121=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM122=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM123=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM124=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM125=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM126=Lfde6_end - Lfde6_start
	.long LDIFF_SYM126
Lfde6_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioPlayer_remove_FinishedPlaying_System_EventHandler

LDIFF_SYM127=Lme_6 - Plugin_AudioRecorder_AudioPlayer_remove_FinishedPlaying_System_EventHandler
	.long LDIFF_SYM127
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_ConfigureAVAudioSession"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_ConfigureAVAudioSession"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_ConfigureAVAudioSession
	.quad Lme_7

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM128=Lfde7_end - Lfde7_start
	.long LDIFF_SYM128
Lfde7_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_ConfigureAVAudioSession

LDIFF_SYM129=Lme_7 - Plugin_AudioRecorder_AudioRecorderService_get_ConfigureAVAudioSession
	.long LDIFF_SYM129
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_ConfigureAVAudioSession"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_ConfigureAVAudioSession_bool"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_ConfigureAVAudioSession_bool
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "value"

LDIFF_SYM130=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM131=Lfde8_end - Lfde8_start
	.long LDIFF_SYM131
Lfde8_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_ConfigureAVAudioSession_bool

LDIFF_SYM132=Lme_8 - Plugin_AudioRecorder_AudioRecorderService_set_ConfigureAVAudioSession_bool
	.long LDIFF_SYM132
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_18:

	.byte 5
	.asciz "Foundation_NSString"

	.byte 40,16
LDIFF_SYM133=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,0,0,7
	.asciz "Foundation_NSString"

LDIFF_SYM134=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM134
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM135=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM135
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM136=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM136
LTDIE_22:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 24,16
LDIFF_SYM137=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,0,6
	.asciz "_identity"

LDIFF_SYM138=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,16,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM139=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM139
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM140=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM140
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM141=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_26:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM142=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM143=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM144=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM144
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM145=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM146=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM146
LTDIE_27:

	.byte 5
	.asciz "System_Threading_Tasks_TaskScheduler"

	.byte 20,16
LDIFF_SYM147=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 2,35,0,6
	.asciz "m_taskSchedulerId"

LDIFF_SYM148=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_TaskScheduler"

LDIFF_SYM149=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM149
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM150=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM151=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_30:

	.byte 5
	.asciz "System_Threading_SynchronizationContext"

	.byte 16,16
LDIFF_SYM152=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2,35,0,0,7
	.asciz "System_Threading_SynchronizationContext"

LDIFF_SYM153=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM153
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM154=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM154
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM155=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM155
LTDIE_33:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM156=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM157=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM158=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM158
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM159=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM159
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM160=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM160
LTDIE_34:

	.byte 17
	.asciz "System_Collections_ICollection"

	.byte 16,7
	.asciz "System_Collections_ICollection"

LDIFF_SYM161=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM161
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM162=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM162
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM163=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM163
LTDIE_35:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 16,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM164=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM164
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM165=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM166=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM166
LTDIE_32:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 80,16
LDIFF_SYM167=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM168=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,16,6
	.asciz "count"

LDIFF_SYM169=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,56,6
	.asciz "occupancy"

LDIFF_SYM170=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,60,6
	.asciz "loadsize"

LDIFF_SYM171=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,64,6
	.asciz "loadFactor"

LDIFF_SYM172=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,68,6
	.asciz "version"

LDIFF_SYM173=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,72,6
	.asciz "isWriterInProgress"

LDIFF_SYM174=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,76,6
	.asciz "keys"

LDIFF_SYM175=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,24,6
	.asciz "values"

LDIFF_SYM176=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,32,6
	.asciz "_keycomparer"

LDIFF_SYM177=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,40,6
	.asciz "_syncRoot"

LDIFF_SYM178=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,48,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM179=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM179
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM180=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM180
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM181=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM181
LTDIE_36:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

	.byte 16,16
LDIFF_SYM182=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

LDIFF_SYM183=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM183
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM184=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM184
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM185=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM185
LTDIE_37:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

	.byte 16,16
LDIFF_SYM186=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

LDIFF_SYM187=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM187
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM188=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM188
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM189=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM189
LTDIE_31:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

	.byte 56,16
LDIFF_SYM190=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 2,35,0,6
	.asciz "m_Datastore"

LDIFF_SYM191=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 2,35,16,6
	.asciz "m_RemotingData"

LDIFF_SYM192=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 2,35,24,6
	.asciz "m_SecurityData"

LDIFF_SYM193=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,35,32,6
	.asciz "m_HostContext"

LDIFF_SYM194=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,35,40,6
	.asciz "m_IsCorrelationMgr"

LDIFF_SYM195=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

LDIFF_SYM196=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM196
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM197=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM197
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM198=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM198
LTDIE_38:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

	.byte 16,16
LDIFF_SYM199=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

LDIFF_SYM200=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM200
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM201=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM201
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM202=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM202
LTDIE_39:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM203=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "IsNewCapture"

	.byte 1,9
	.asciz "IsFlowSuppressed"

	.byte 2,9
	.asciz "IsPreAllocatedDefault"

	.byte 4,0,7
	.asciz "_Flags"

LDIFF_SYM204=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM204
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM205=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM205
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM206=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM206
LTDIE_41:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM207=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM208=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM209=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_42:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM210=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM211=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM212=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM213=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM214=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_43:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM215=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM216=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM216
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM217=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM217
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM218=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM218
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM219=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM219
LTDIE_40:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM220=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,0,6
	.asciz "_buckets"

LDIFF_SYM221=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,16,6
	.asciz "_entries"

LDIFF_SYM222=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 2,35,24,6
	.asciz "_count"

LDIFF_SYM223=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,64,6
	.asciz "_freeList"

LDIFF_SYM224=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,68,6
	.asciz "_freeCount"

LDIFF_SYM225=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,72,6
	.asciz "_version"

LDIFF_SYM226=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,76,6
	.asciz "_comparer"

LDIFF_SYM227=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,32,6
	.asciz "_keys"

LDIFF_SYM228=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,35,40,6
	.asciz "_values"

LDIFF_SYM229=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM230=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM231=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM231
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM232=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM232
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM233=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM233
LTDIE_44:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM234=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM235=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM236=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM237=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM238=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM239=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM239
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM240=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM240
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM241=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_29:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 72,16
LDIFF_SYM242=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM242
	.byte 2,35,0,6
	.asciz "_syncContext"

LDIFF_SYM243=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 2,35,16,6
	.asciz "_syncContextNoFlow"

LDIFF_SYM244=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,35,24,6
	.asciz "_logicalCallContext"

LDIFF_SYM245=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,35,32,6
	.asciz "_illogicalCallContext"

LDIFF_SYM246=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,35,40,6
	.asciz "_flags"

LDIFF_SYM247=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 2,35,64,6
	.asciz "_localValues"

LDIFF_SYM248=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 2,35,48,6
	.asciz "_localChangeNotifications"

LDIFF_SYM249=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2,35,56,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM250=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM250
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM251=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM251
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM252=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM252
LTDIE_52:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
LDIFF_SYM253=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM253
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM254=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM255=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM255
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM256=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM256
LTDIE_51:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
LDIFF_SYM257=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM258=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,16,6
	.asciz "_state"

LDIFF_SYM259=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,24,6
	.asciz "_ownsHandle"

LDIFF_SYM260=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,35,28,6
	.asciz "_fullyInitialized"

LDIFF_SYM261=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,35,29,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM262=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM262
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM263=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM263
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM264=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM264
LTDIE_50:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
LDIFF_SYM265=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM266=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM266
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM267=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM267
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM268=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_49:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
LDIFF_SYM269=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM270=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM270
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM271=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM271
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM272=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM272
LTDIE_48:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 48,16
LDIFF_SYM273=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,35,0,6
	.asciz "waitHandle"

LDIFF_SYM274=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,35,24,6
	.asciz "safeWaitHandle"

LDIFF_SYM275=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,35,32,6
	.asciz "hasThreadAffinity"

LDIFF_SYM276=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 2,35,40,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM277=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM277
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM278=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM278
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM279=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM279
LTDIE_47:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 48,16
LDIFF_SYM280=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM281=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM281
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM282=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM282
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM283=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM283
LTDIE_46:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 48,16
LDIFF_SYM284=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM285=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM285
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM286=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM286
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM287=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM287
LTDIE_45:

	.byte 5
	.asciz "System_Threading_ManualResetEventSlim"

	.byte 40,16
LDIFF_SYM288=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,35,0,6
	.asciz "m_lock"

LDIFF_SYM289=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 2,35,16,6
	.asciz "m_eventObj"

LDIFF_SYM290=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,35,24,6
	.asciz "m_combinedState"

LDIFF_SYM291=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM291
	.byte 2,35,32,0,7
	.asciz "System_Threading_ManualResetEventSlim"

LDIFF_SYM292=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM293=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM293
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM294=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM294
LTDIE_54:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM295=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM296=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM297=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM298=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM299=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM299
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM300=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM300
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM301=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM301
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM302=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM302
LTDIE_57:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM303=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM303
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM304=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM304
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM305=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM305
LTDIE_59:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM306=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM306
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM307=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM307
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM308=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM308
LTDIE_62:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM309=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM309
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM310=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM310
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM311=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM311
LTDIE_63:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM312=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM313=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM314=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM314
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM315=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM315
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM316=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM316
LTDIE_64:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM317=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM318=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM319=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM319
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM320=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM320
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM321=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM321
LTDIE_61:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM322=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,0,6
	.asciz "_buckets"

LDIFF_SYM323=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2,35,16,6
	.asciz "_entries"

LDIFF_SYM324=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,35,24,6
	.asciz "_count"

LDIFF_SYM325=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 2,35,64,6
	.asciz "_freeList"

LDIFF_SYM326=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,35,68,6
	.asciz "_freeCount"

LDIFF_SYM327=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,35,72,6
	.asciz "_version"

LDIFF_SYM328=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,76,6
	.asciz "_comparer"

LDIFF_SYM329=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM329
	.byte 2,35,32,6
	.asciz "_keys"

LDIFF_SYM330=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM330
	.byte 2,35,40,6
	.asciz "_values"

LDIFF_SYM331=LTDIE_64_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM331
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM332=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM332
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM333=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM333
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM334=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM334
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM335=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM335
LTDIE_65:

	.byte 17
	.asciz "System_Runtime_Serialization_IFormatterConverter"

	.byte 16,7
	.asciz "System_Runtime_Serialization_IFormatterConverter"

LDIFF_SYM336=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM336
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM337=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM337
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM338=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM338
LTDIE_60:

	.byte 5
	.asciz "System_Runtime_Serialization_SerializationInfo"

	.byte 88,16
LDIFF_SYM339=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM339
	.byte 2,35,0,6
	.asciz "m_members"

LDIFF_SYM340=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2,35,16,6
	.asciz "m_data"

LDIFF_SYM341=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM341
	.byte 2,35,24,6
	.asciz "m_types"

LDIFF_SYM342=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM342
	.byte 2,35,32,6
	.asciz "m_nameToIndex"

LDIFF_SYM343=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2,35,40,6
	.asciz "m_currMember"

LDIFF_SYM344=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,35,80,6
	.asciz "m_converter"

LDIFF_SYM345=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,48,6
	.asciz "m_fullTypeName"

LDIFF_SYM346=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,56,6
	.asciz "m_assemName"

LDIFF_SYM347=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,64,6
	.asciz "objectType"

LDIFF_SYM348=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,35,72,6
	.asciz "isFullTypeNameSetExplicit"

LDIFF_SYM349=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,35,84,6
	.asciz "isAssemblyNameSetExplicit"

LDIFF_SYM350=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM350
	.byte 2,35,85,6
	.asciz "requireSameTokenInPartialTrust"

LDIFF_SYM351=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2,35,86,0,7
	.asciz "System_Runtime_Serialization_SerializationInfo"

LDIFF_SYM352=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM352
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM353=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM353
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM354=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM354
LTDIE_67:

	.byte 5
	.asciz "System_Reflection_TypeInfo"

	.byte 24,16
LDIFF_SYM355=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,0,0,7
	.asciz "System_Reflection_TypeInfo"

LDIFF_SYM356=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM356
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM357=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM357
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM358=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM358
LTDIE_71:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 16,16
LDIFF_SYM359=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM359
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM360=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM360
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM361=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM361
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM362=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM362
LTDIE_70:

	.byte 5
	.asciz "System_Reflection_RuntimeConstructorInfo"

	.byte 16,16
LDIFF_SYM363=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,35,0,0,7
	.asciz "System_Reflection_RuntimeConstructorInfo"

LDIFF_SYM364=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM364
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM365=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM365
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM366=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM366
LTDIE_69:

	.byte 5
	.asciz "System_Reflection_MonoCMethod"

	.byte 40,16
LDIFF_SYM367=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM367
	.byte 2,35,0,6
	.asciz "mhandle"

LDIFF_SYM368=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM368
	.byte 2,35,16,6
	.asciz "name"

LDIFF_SYM369=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 2,35,24,6
	.asciz "reftype"

LDIFF_SYM370=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 2,35,32,0,7
	.asciz "System_Reflection_MonoCMethod"

LDIFF_SYM371=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM371
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM372=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM372
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM373=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM373
LTDIE_68:

	.byte 5
	.asciz "System_MonoTypeInfo"

	.byte 32,16
LDIFF_SYM374=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,35,0,6
	.asciz "full_name"

LDIFF_SYM375=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM375
	.byte 2,35,16,6
	.asciz "default_ctor"

LDIFF_SYM376=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM376
	.byte 2,35,24,0,7
	.asciz "System_MonoTypeInfo"

LDIFF_SYM377=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM377
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM378=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM378
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM379=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM379
LTDIE_66:

	.byte 5
	.asciz "System_RuntimeType"

	.byte 48,16
LDIFF_SYM380=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM380
	.byte 2,35,0,6
	.asciz "type_info"

LDIFF_SYM381=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 2,35,24,6
	.asciz "GenericCache"

LDIFF_SYM382=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 2,35,32,6
	.asciz "m_serializationCtor"

LDIFF_SYM383=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 2,35,40,0,7
	.asciz "System_RuntimeType"

LDIFF_SYM384=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM384
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM385=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM385
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM386=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM386
LTDIE_72:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM387=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM387
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM388=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM388
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM389=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM389
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM390=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM390
LTDIE_58:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 56,16
LDIFF_SYM391=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM392=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM392
	.byte 2,35,16,6
	.asciz "m_savedSerializationInfo"

LDIFF_SYM393=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 2,35,24,6
	.asciz "m_realObject"

LDIFF_SYM394=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,32,6
	.asciz "m_realType"

LDIFF_SYM395=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 2,35,40,6
	.asciz "SerializeObjectState"

LDIFF_SYM396=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM397=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM397
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM398=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM398
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM399=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM399
LTDIE_56:

	.byte 5
	.asciz "System_Exception"

	.byte 136,1,16
LDIFF_SYM400=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM401=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM402=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM403=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM404=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM405=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 2,35,48,6
	.asciz "_stackTrace"

LDIFF_SYM406=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM406
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM407=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM408=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,35,72,6
	.asciz "_remoteStackIndex"

LDIFF_SYM409=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM410=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM410
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM411=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM411
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM412=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM412
	.byte 2,35,104,6
	.asciz "_safeSerializationManager"

LDIFF_SYM413=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 2,35,112,6
	.asciz "captured_traces"

LDIFF_SYM414=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM415=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 3,35,128,1,0,7
	.asciz "System_Exception"

LDIFF_SYM416=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM416
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM417=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM417
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM418=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_55:

	.byte 5
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 32,16
LDIFF_SYM419=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 2,35,0,6
	.asciz "m_Exception"

LDIFF_SYM420=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,35,16,6
	.asciz "m_stackTrace"

LDIFF_SYM421=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 2,35,24,0,7
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

LDIFF_SYM422=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM422
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM423=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM423
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM424=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM424
LTDIE_53:

	.byte 5
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

	.byte 48,16
LDIFF_SYM425=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM426=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 2,35,16,6
	.asciz "m_faultExceptions"

LDIFF_SYM427=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 2,35,24,6
	.asciz "m_cancellationException"

LDIFF_SYM428=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 2,35,32,6
	.asciz "m_isHandled"

LDIFF_SYM429=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

LDIFF_SYM430=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM430
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM431=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM431
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM432=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM432
LTDIE_73:

	.byte 5
	.asciz "System_Threading_Tasks_Shared`1"

	.byte 40,16
LDIFF_SYM433=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 2,35,0,6
	.asciz "Value"

LDIFF_SYM434=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM434
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_Shared`1"

LDIFF_SYM435=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM435
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM436=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM436
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM437=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM437
LTDIE_74:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM438=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM439=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM440=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM441=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM441
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM442=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM443=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM443
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM444=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM444
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM445=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM445
LTDIE_28:

	.byte 5
	.asciz "_ContingentProperties"

	.byte 72,16
LDIFF_SYM446=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM446
	.byte 2,35,0,6
	.asciz "m_capturedContext"

LDIFF_SYM447=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,35,16,6
	.asciz "m_completionEvent"

LDIFF_SYM448=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 2,35,24,6
	.asciz "m_exceptionsHolder"

LDIFF_SYM449=LTDIE_53_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM449
	.byte 2,35,32,6
	.asciz "m_cancellationToken"

LDIFF_SYM450=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM450
	.byte 2,35,40,6
	.asciz "m_cancellationRegistration"

LDIFF_SYM451=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM451
	.byte 2,35,48,6
	.asciz "m_internalCancellationRequested"

LDIFF_SYM452=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 2,35,64,6
	.asciz "m_completionCountdown"

LDIFF_SYM453=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM453
	.byte 2,35,68,6
	.asciz "m_exceptionalChildren"

LDIFF_SYM454=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 2,35,56,0,7
	.asciz "_ContingentProperties"

LDIFF_SYM455=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM455
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM456=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM456
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM457=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM457
LTDIE_25:

	.byte 5
	.asciz "System_Threading_Tasks_Task"

	.byte 72,16
LDIFF_SYM458=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2,35,0,6
	.asciz "m_taskId"

LDIFF_SYM459=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,35,64,6
	.asciz "m_action"

LDIFF_SYM460=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,35,16,6
	.asciz "m_stateObject"

LDIFF_SYM461=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,35,24,6
	.asciz "m_taskScheduler"

LDIFF_SYM462=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,32,6
	.asciz "m_parent"

LDIFF_SYM463=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 2,35,40,6
	.asciz "m_stateFlags"

LDIFF_SYM464=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM464
	.byte 2,35,68,6
	.asciz "m_continuationObject"

LDIFF_SYM465=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 2,35,48,6
	.asciz "m_contingentProperties"

LDIFF_SYM466=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2,35,56,0,7
	.asciz "System_Threading_Tasks_Task"

LDIFF_SYM467=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM467
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM468=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM468
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM469=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM469
LTDIE_24:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM470=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM470
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM471=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM472=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM472
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM473=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM473
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM474=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM474
LTDIE_75:

	.byte 5
	.asciz "System_AsyncCallback"

	.byte 112,16
LDIFF_SYM475=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 2,35,0,0,7
	.asciz "System_AsyncCallback"

LDIFF_SYM476=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM476
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM477=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM477
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM478=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM478
LTDIE_23:

	.byte 5
	.asciz "_ReadWriteTask"

	.byte 128,1,16
LDIFF_SYM479=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,0,6
	.asciz "_isRead"

LDIFF_SYM480=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 2,35,112,6
	.asciz "_stream"

LDIFF_SYM481=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM481
	.byte 2,35,80,6
	.asciz "_buffer"

LDIFF_SYM482=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM482
	.byte 2,35,88,6
	.asciz "_offset"

LDIFF_SYM483=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,35,116,6
	.asciz "_count"

LDIFF_SYM484=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 2,35,120,6
	.asciz "_callback"

LDIFF_SYM485=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 2,35,96,6
	.asciz "_context"

LDIFF_SYM486=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 2,35,104,0,7
	.asciz "_ReadWriteTask"

LDIFF_SYM487=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM487
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM488=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM488
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM489=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM489
LTDIE_78:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM490=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM491=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM492=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM492
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM493=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM493
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM494=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM494
LTDIE_77:

	.byte 5
	.asciz "_TaskNode"

	.byte 96,16
LDIFF_SYM495=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM495
	.byte 2,35,0,6
	.asciz "Prev"

LDIFF_SYM496=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 2,35,80,6
	.asciz "Next"

LDIFF_SYM497=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,35,88,0,7
	.asciz "_TaskNode"

LDIFF_SYM498=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM498
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM499=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM499
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM500=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM500
LTDIE_76:

	.byte 5
	.asciz "System_Threading_SemaphoreSlim"

	.byte 64,16
LDIFF_SYM501=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 2,35,0,6
	.asciz "m_currentCount"

LDIFF_SYM502=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM502
	.byte 2,35,48,6
	.asciz "m_maxCount"

LDIFF_SYM503=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM503
	.byte 2,35,52,6
	.asciz "m_waitCount"

LDIFF_SYM504=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM504
	.byte 2,35,56,6
	.asciz "m_lockObj"

LDIFF_SYM505=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM505
	.byte 2,35,16,6
	.asciz "m_waitHandle"

LDIFF_SYM506=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 2,35,24,6
	.asciz "m_asyncHead"

LDIFF_SYM507=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 2,35,32,6
	.asciz "m_asyncTail"

LDIFF_SYM508=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 2,35,40,0,7
	.asciz "System_Threading_SemaphoreSlim"

LDIFF_SYM509=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM509
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM510=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM510
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM511=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM511
LTDIE_21:

	.byte 5
	.asciz "System_IO_Stream"

	.byte 40,16
LDIFF_SYM512=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM512
	.byte 2,35,0,6
	.asciz "_activeReadWriteTask"

LDIFF_SYM513=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 2,35,24,6
	.asciz "_asyncActiveSemaphore"

LDIFF_SYM514=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM514
	.byte 2,35,32,0,7
	.asciz "System_IO_Stream"

LDIFF_SYM515=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM515
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM516=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM516
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM517=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM517
LTDIE_79:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeFileHandle"

	.byte 32,16
LDIFF_SYM518=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeFileHandle"

LDIFF_SYM519=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM519
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM520=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM520
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM521=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM521
LTDIE_80:

	.byte 5
	.asciz "System_Int64"

	.byte 24,16
LDIFF_SYM522=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM523=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM523
	.byte 2,35,16,0,7
	.asciz "System_Int64"

LDIFF_SYM524=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM524
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM525=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM525
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM526=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM526
LTDIE_81:

	.byte 8
	.asciz "System_IO_FileAccess"

	.byte 4
LDIFF_SYM527=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 9
	.asciz "Read"

	.byte 1,9
	.asciz "Write"

	.byte 2,9
	.asciz "ReadWrite"

	.byte 3,0,7
	.asciz "System_IO_FileAccess"

LDIFF_SYM528=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM528
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM529=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM529
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM530=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM530
LTDIE_20:

	.byte 5
	.asciz "System_IO_FileStream"

	.byte 112,16
LDIFF_SYM531=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM531
	.byte 2,35,0,6
	.asciz "buf"

LDIFF_SYM532=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,35,40,6
	.asciz "name"

LDIFF_SYM533=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM533
	.byte 2,35,48,6
	.asciz "safeHandle"

LDIFF_SYM534=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 2,35,56,6
	.asciz "isExposed"

LDIFF_SYM535=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,35,64,6
	.asciz "append_startpos"

LDIFF_SYM536=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 2,35,72,6
	.asciz "access"

LDIFF_SYM537=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM537
	.byte 2,35,80,6
	.asciz "owner"

LDIFF_SYM538=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 2,35,84,6
	.asciz "async"

LDIFF_SYM539=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM539
	.byte 2,35,85,6
	.asciz "canseek"

LDIFF_SYM540=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM540
	.byte 2,35,86,6
	.asciz "anonymous"

LDIFF_SYM541=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM541
	.byte 2,35,87,6
	.asciz "buf_dirty"

LDIFF_SYM542=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM542
	.byte 2,35,88,6
	.asciz "buf_size"

LDIFF_SYM543=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM543
	.byte 2,35,92,6
	.asciz "buf_length"

LDIFF_SYM544=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM544
	.byte 2,35,96,6
	.asciz "buf_offset"

LDIFF_SYM545=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 2,35,100,6
	.asciz "buf_start"

LDIFF_SYM546=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM546
	.byte 2,35,104,0,7
	.asciz "System_IO_FileStream"

LDIFF_SYM547=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM547
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM548=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM548
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM549=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM549
LTDIE_84:

	.byte 17
	.asciz "System_IFormatProvider"

	.byte 16,7
	.asciz "System_IFormatProvider"

LDIFF_SYM550=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM550
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM551=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM551
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM552=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM552
LTDIE_83:

	.byte 5
	.asciz "System_IO_TextWriter"

	.byte 40,16
LDIFF_SYM553=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 2,35,0,6
	.asciz "CoreNewLine"

LDIFF_SYM554=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM554
	.byte 2,35,24,6
	.asciz "InternalFormatProvider"

LDIFF_SYM555=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM555
	.byte 2,35,32,0,7
	.asciz "System_IO_TextWriter"

LDIFF_SYM556=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM556
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM557=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM557
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM558=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM558
LTDIE_87:

	.byte 5
	.asciz "System_UInt32"

	.byte 20,16
LDIFF_SYM559=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM560=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM560
	.byte 2,35,16,0,7
	.asciz "System_UInt32"

LDIFF_SYM561=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM561
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM562=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM562
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM563=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM563
LTDIE_86:

	.byte 5
	.asciz "System_Globalization_CodePageDataItem"

	.byte 40,16
LDIFF_SYM564=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM564
	.byte 2,35,0,6
	.asciz "m_dataIndex"

LDIFF_SYM565=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM565
	.byte 2,35,24,6
	.asciz "m_uiFamilyCodePage"

LDIFF_SYM566=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM566
	.byte 2,35,28,6
	.asciz "m_webName"

LDIFF_SYM567=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM567
	.byte 2,35,16,6
	.asciz "m_flags"

LDIFF_SYM568=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM568
	.byte 2,35,32,0,7
	.asciz "System_Globalization_CodePageDataItem"

LDIFF_SYM569=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM569
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM570=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM570
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM571=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM571
LTDIE_88:

	.byte 5
	.asciz "System_Text_EncoderFallback"

	.byte 17,16
LDIFF_SYM572=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM572
	.byte 2,35,0,6
	.asciz "bIsMicrosoftBestFitFallback"

LDIFF_SYM573=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM573
	.byte 2,35,16,0,7
	.asciz "System_Text_EncoderFallback"

LDIFF_SYM574=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM574
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM575=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM575
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM576=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM576
LTDIE_89:

	.byte 5
	.asciz "System_Text_DecoderFallback"

	.byte 17,16
LDIFF_SYM577=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM577
	.byte 2,35,0,6
	.asciz "bIsMicrosoftBestFitFallback"

LDIFF_SYM578=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM578
	.byte 2,35,16,0,7
	.asciz "System_Text_DecoderFallback"

LDIFF_SYM579=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM579
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM580=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM580
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM581=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM581
LTDIE_85:

	.byte 5
	.asciz "System_Text_Encoding"

	.byte 48,16
LDIFF_SYM582=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM582
	.byte 2,35,0,6
	.asciz "m_codePage"

LDIFF_SYM583=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM583
	.byte 2,35,40,6
	.asciz "dataItem"

LDIFF_SYM584=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM584
	.byte 2,35,16,6
	.asciz "m_deserializedFromEverett"

LDIFF_SYM585=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 2,35,44,6
	.asciz "m_isReadOnly"

LDIFF_SYM586=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM586
	.byte 2,35,45,6
	.asciz "encoderFallback"

LDIFF_SYM587=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM587
	.byte 2,35,24,6
	.asciz "decoderFallback"

LDIFF_SYM588=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM588
	.byte 2,35,32,0,7
	.asciz "System_Text_Encoding"

LDIFF_SYM589=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM589
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM590=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM590
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM591=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM591
LTDIE_93:

	.byte 5
	.asciz "System_Char"

	.byte 18,16
LDIFF_SYM592=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM592
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM593=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM593
	.byte 2,35,16,0,7
	.asciz "System_Char"

LDIFF_SYM594=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM594
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM595=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM595
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM596=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM596
LTDIE_92:

	.byte 5
	.asciz "System_Text_EncoderNLS"

	.byte 48,16
LDIFF_SYM597=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 2,35,0,6
	.asciz "charLeftOver"

LDIFF_SYM598=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,35,40,6
	.asciz "m_encoding"

LDIFF_SYM599=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 2,35,32,6
	.asciz "m_mustFlush"

LDIFF_SYM600=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM600
	.byte 2,35,42,6
	.asciz "m_throwOnOverflow"

LDIFF_SYM601=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 2,35,43,6
	.asciz "m_charsUsed"

LDIFF_SYM602=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM602
	.byte 2,35,44,0,7
	.asciz "System_Text_EncoderNLS"

LDIFF_SYM603=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM603
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM604=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM604
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM605=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM605
LTDIE_91:

	.byte 5
	.asciz "System_Text_EncoderFallbackBuffer"

	.byte 48,16
LDIFF_SYM606=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM606
	.byte 2,35,0,6
	.asciz "charStart"

LDIFF_SYM607=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 2,35,24,6
	.asciz "charEnd"

LDIFF_SYM608=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 2,35,32,6
	.asciz "encoder"

LDIFF_SYM609=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 2,35,16,6
	.asciz "setEncoder"

LDIFF_SYM610=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 2,35,40,6
	.asciz "bUsedEncoder"

LDIFF_SYM611=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 2,35,41,6
	.asciz "bFallingBack"

LDIFF_SYM612=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 2,35,42,6
	.asciz "iRecursionCount"

LDIFF_SYM613=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 2,35,44,0,7
	.asciz "System_Text_EncoderFallbackBuffer"

LDIFF_SYM614=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM614
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM615=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM615
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM616=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM616
LTDIE_90:

	.byte 5
	.asciz "System_Text_Encoder"

	.byte 32,16
LDIFF_SYM617=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM617
	.byte 2,35,0,6
	.asciz "m_fallback"

LDIFF_SYM618=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,35,16,6
	.asciz "m_fallbackBuffer"

LDIFF_SYM619=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 2,35,24,0,7
	.asciz "System_Text_Encoder"

LDIFF_SYM620=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM620
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM621=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM621
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM622=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM622
LTDIE_82:

	.byte 5
	.asciz "System_IO_StreamWriter"

	.byte 104,16
LDIFF_SYM623=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM623
	.byte 2,35,0,6
	.asciz "stream"

LDIFF_SYM624=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM624
	.byte 2,35,40,6
	.asciz "encoding"

LDIFF_SYM625=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 2,35,48,6
	.asciz "encoder"

LDIFF_SYM626=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 2,35,56,6
	.asciz "byteBuffer"

LDIFF_SYM627=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM627
	.byte 2,35,64,6
	.asciz "charBuffer"

LDIFF_SYM628=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM628
	.byte 2,35,72,6
	.asciz "charPos"

LDIFF_SYM629=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM629
	.byte 2,35,88,6
	.asciz "charLen"

LDIFF_SYM630=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM630
	.byte 2,35,92,6
	.asciz "autoFlush"

LDIFF_SYM631=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM631
	.byte 2,35,96,6
	.asciz "haveWrittenPreamble"

LDIFF_SYM632=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM632
	.byte 2,35,97,6
	.asciz "closable"

LDIFF_SYM633=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM633
	.byte 2,35,98,6
	.asciz "_asyncWriteTask"

LDIFF_SYM634=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 2,35,80,0,7
	.asciz "System_IO_StreamWriter"

LDIFF_SYM635=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM635
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM636=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM636
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM637=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM637
LTDIE_94:

	.byte 5
	.asciz "System_IO_BinaryWriter"

	.byte 64,16
LDIFF_SYM638=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 2,35,0,6
	.asciz "OutStream"

LDIFF_SYM639=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM639
	.byte 2,35,16,6
	.asciz "_buffer"

LDIFF_SYM640=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM640
	.byte 2,35,24,6
	.asciz "_encoding"

LDIFF_SYM641=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM641
	.byte 2,35,32,6
	.asciz "_encoder"

LDIFF_SYM642=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM642
	.byte 2,35,40,6
	.asciz "_leaveOpen"

LDIFF_SYM643=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM643
	.byte 2,35,56,6
	.asciz "_largeByteBuffer"

LDIFF_SYM644=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM644
	.byte 2,35,48,6
	.asciz "_maxChars"

LDIFF_SYM645=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM645
	.byte 2,35,60,0,7
	.asciz "System_IO_BinaryWriter"

LDIFF_SYM646=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM646
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM647=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM647
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM648=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM648
LTDIE_95:

	.byte 17
	.asciz "Plugin_AudioRecorder_IAudioStream"

	.byte 16,7
	.asciz "Plugin_AudioRecorder_IAudioStream"

LDIFF_SYM649=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM649
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM650=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM650
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM651=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM651
LTDIE_19:

	.byte 5
	.asciz "Plugin_AudioRecorder_WaveRecorder"

	.byte 64,16
LDIFF_SYM652=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 2,35,0,6
	.asciz "audioFilePath"

LDIFF_SYM653=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 2,35,16,6
	.asciz "fileStream"

LDIFF_SYM654=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM654
	.byte 2,35,24,6
	.asciz "streamWriter"

LDIFF_SYM655=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM655
	.byte 2,35,32,6
	.asciz "writer"

LDIFF_SYM656=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM656
	.byte 2,35,40,6
	.asciz "byteCount"

LDIFF_SYM657=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM657
	.byte 2,35,56,6
	.asciz "audioStream"

LDIFF_SYM658=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM658
	.byte 2,35,48,0,7
	.asciz "Plugin_AudioRecorder_WaveRecorder"

LDIFF_SYM659=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM659
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM660=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM660
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM661=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM661
LTDIE_97:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM662=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM662
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM663=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM663
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM664=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM664
LTDIE_97_POINTER:

	.byte 13
LDIFF_SYM665=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM665
LTDIE_97_REFERENCE:

	.byte 14
LDIFF_SYM666=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM666
LTDIE_96:

	.byte 5
	.asciz "System_Threading_Tasks_TaskCompletionSource`1"

	.byte 24,16
LDIFF_SYM667=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM667
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM668=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM668
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_TaskCompletionSource`1"

LDIFF_SYM669=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM669
LTDIE_96_POINTER:

	.byte 13
LDIFF_SYM670=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM670
LTDIE_96_REFERENCE:

	.byte 14
LDIFF_SYM671=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM671
LTDIE_98:

	.byte 5
	.asciz "Plugin_AudioRecorder_AudioStreamDetails"

	.byte 28,16
LDIFF_SYM672=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM672
	.byte 2,35,0,6
	.asciz "<SampleRate>k__BackingField"

LDIFF_SYM673=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM673
	.byte 2,35,16,6
	.asciz "<ChannelCount>k__BackingField"

LDIFF_SYM674=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM674
	.byte 2,35,20,6
	.asciz "<BitsPerSample>k__BackingField"

LDIFF_SYM675=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM675
	.byte 2,35,24,0,7
	.asciz "Plugin_AudioRecorder_AudioStreamDetails"

LDIFF_SYM676=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM676
LTDIE_98_POINTER:

	.byte 13
LDIFF_SYM677=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM677
LTDIE_98_REFERENCE:

	.byte 14
LDIFF_SYM678=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM678
LTDIE_99:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM679=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM679
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM680=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM680
LTDIE_99_POINTER:

	.byte 13
LDIFF_SYM681=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM681
LTDIE_99_REFERENCE:

	.byte 14
LDIFF_SYM682=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM682
LTDIE_17:

	.byte 5
	.asciz "Plugin_AudioRecorder_AudioRecorderService"

	.byte 144,1,16
LDIFF_SYM683=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM683
	.byte 2,35,0,6
	.asciz "currentAVAudioSessionCategory"

LDIFF_SYM684=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 2,35,16,6
	.asciz "recorder"

LDIFF_SYM685=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM685
	.byte 2,35,24,6
	.asciz "audioStream"

LDIFF_SYM686=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM686
	.byte 2,35,32,6
	.asciz "audioDetected"

LDIFF_SYM687=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM687
	.byte 2,35,72,6
	.asciz "silenceTime"

LDIFF_SYM688=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM688
	.byte 2,35,80,6
	.asciz "startTime"

LDIFF_SYM689=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM689
	.byte 2,35,96,6
	.asciz "recordTask"

LDIFF_SYM690=LTDIE_96_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM690
	.byte 2,35,40,6
	.asciz "<AudioStreamDetails>k__BackingField"

LDIFF_SYM691=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM691
	.byte 2,35,48,6
	.asciz "<FilePath>k__BackingField"

LDIFF_SYM692=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM692
	.byte 2,35,56,6
	.asciz "<PreferredSampleRate>k__BackingField"

LDIFF_SYM693=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM693
	.byte 2,35,112,6
	.asciz "<AudioSilenceTimeout>k__BackingField"

LDIFF_SYM694=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 2,35,120,6
	.asciz "<TotalAudioTimeout>k__BackingField"

LDIFF_SYM695=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM695
	.byte 3,35,128,1,6
	.asciz "<StopRecordingOnSilence>k__BackingField"

LDIFF_SYM696=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM696
	.byte 3,35,136,1,6
	.asciz "<StopRecordingAfterTimeout>k__BackingField"

LDIFF_SYM697=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM697
	.byte 3,35,137,1,6
	.asciz "<SilenceThreshold>k__BackingField"

LDIFF_SYM698=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM698
	.byte 3,35,140,1,6
	.asciz "AudioInputReceived"

LDIFF_SYM699=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM699
	.byte 2,35,64,0,7
	.asciz "Plugin_AudioRecorder_AudioRecorderService"

LDIFF_SYM700=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM700
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM701=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM701
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM702=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM702
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:GetDefaultFilePath"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM703=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM704=Lfde9_end - Lfde9_start
	.long LDIFF_SYM704
Lfde9_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath

LDIFF_SYM705=Lme_9 - Plugin_AudioRecorder_AudioRecorderService_GetDefaultFilePath
	.long LDIFF_SYM705
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_100:

	.byte 5
	.asciz "AVFoundation_AVAudioSession"

	.byte 40,16
LDIFF_SYM706=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 2,35,0,0,7
	.asciz "AVFoundation_AVAudioSession"

LDIFF_SYM707=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM707
LTDIE_100_POINTER:

	.byte 13
LDIFF_SYM708=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM708
LTDIE_100_REFERENCE:

	.byte 14
LDIFF_SYM709=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM709
LTDIE_101:

	.byte 5
	.asciz "Foundation_NSError"

	.byte 40,16
LDIFF_SYM710=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM710
	.byte 2,35,0,0,7
	.asciz "Foundation_NSError"

LDIFF_SYM711=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM711
LTDIE_101_POINTER:

	.byte 13
LDIFF_SYM712=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM712
LTDIE_101_REFERENCE:

	.byte 14
LDIFF_SYM713=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM713
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:OnRecordingStarting"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM714=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM715=LTDIE_100_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM715
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM716=LTDIE_101_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM716
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM717=Lfde10_end - Lfde10_start
	.long LDIFF_SYM717
Lfde10_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting

LDIFF_SYM718=Lme_a - Plugin_AudioRecorder_AudioRecorderService_OnRecordingStarting
	.long LDIFF_SYM718
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:OnRecordingStopped"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM719=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM719
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM720=LTDIE_101_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM720
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM721=Lfde11_end - Lfde11_start
	.long LDIFF_SYM721
Lfde11_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped

LDIFF_SYM722=Lme_b - Plugin_AudioRecorder_AudioRecorderService_OnRecordingStopped
	.long LDIFF_SYM722
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_AudioStreamDetails"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_AudioStreamDetails"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_AudioStreamDetails
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM723=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM723
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM724=Lfde12_end - Lfde12_start
	.long LDIFF_SYM724
Lfde12_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_AudioStreamDetails

LDIFF_SYM725=Lme_c - Plugin_AudioRecorder_AudioRecorderService_get_AudioStreamDetails
	.long LDIFF_SYM725
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_AudioStreamDetails"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_AudioStreamDetails_Plugin_AudioRecorder_AudioStreamDetails"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_AudioStreamDetails_Plugin_AudioRecorder_AudioStreamDetails
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM726=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM726
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM727=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM727
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM728=Lfde13_end - Lfde13_start
	.long LDIFF_SYM728
Lfde13_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_AudioStreamDetails_Plugin_AudioRecorder_AudioStreamDetails

LDIFF_SYM729=Lme_d - Plugin_AudioRecorder_AudioRecorderService_set_AudioStreamDetails_Plugin_AudioRecorder_AudioStreamDetails
	.long LDIFF_SYM729
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_FilePath"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_FilePath"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_FilePath
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM730=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM730
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM731=Lfde14_end - Lfde14_start
	.long LDIFF_SYM731
Lfde14_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_FilePath

LDIFF_SYM732=Lme_e - Plugin_AudioRecorder_AudioRecorderService_get_FilePath
	.long LDIFF_SYM732
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_FilePath"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_FilePath_string"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_FilePath_string
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM733=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM733
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM734=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM734
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM735=Lfde15_end - Lfde15_start
	.long LDIFF_SYM735
Lfde15_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_FilePath_string

LDIFF_SYM736=Lme_f - Plugin_AudioRecorder_AudioRecorderService_set_FilePath_string
	.long LDIFF_SYM736
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_PreferredSampleRate"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_PreferredSampleRate"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_PreferredSampleRate
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM737=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM737
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM738=Lfde16_end - Lfde16_start
	.long LDIFF_SYM738
Lfde16_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_PreferredSampleRate

LDIFF_SYM739=Lme_10 - Plugin_AudioRecorder_AudioRecorderService_get_PreferredSampleRate
	.long LDIFF_SYM739
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_PreferredSampleRate"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_PreferredSampleRate_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_PreferredSampleRate_int
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM740=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM740
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM741=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM741
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM742=Lfde17_end - Lfde17_start
	.long LDIFF_SYM742
Lfde17_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_PreferredSampleRate_int

LDIFF_SYM743=Lme_11 - Plugin_AudioRecorder_AudioRecorderService_set_PreferredSampleRate_int
	.long LDIFF_SYM743
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_IsRecording"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_IsRecording"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_IsRecording
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM744=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM744
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM745=Lfde18_end - Lfde18_start
	.long LDIFF_SYM745
Lfde18_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_IsRecording

LDIFF_SYM746=Lme_12 - Plugin_AudioRecorder_AudioRecorderService_get_IsRecording
	.long LDIFF_SYM746
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_AudioSilenceTimeout"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_AudioSilenceTimeout"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_AudioSilenceTimeout
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM747=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM747
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM748=Lfde19_end - Lfde19_start
	.long LDIFF_SYM748
Lfde19_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_AudioSilenceTimeout

LDIFF_SYM749=Lme_13 - Plugin_AudioRecorder_AudioRecorderService_get_AudioSilenceTimeout
	.long LDIFF_SYM749
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_AudioSilenceTimeout"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_AudioSilenceTimeout_System_TimeSpan"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_AudioSilenceTimeout_System_TimeSpan
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM750=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM750
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM751=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM751
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM752=Lfde20_end - Lfde20_start
	.long LDIFF_SYM752
Lfde20_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_AudioSilenceTimeout_System_TimeSpan

LDIFF_SYM753=Lme_14 - Plugin_AudioRecorder_AudioRecorderService_set_AudioSilenceTimeout_System_TimeSpan
	.long LDIFF_SYM753
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_TotalAudioTimeout"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_TotalAudioTimeout"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_TotalAudioTimeout
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM754=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM754
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM755=Lfde21_end - Lfde21_start
	.long LDIFF_SYM755
Lfde21_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_TotalAudioTimeout

LDIFF_SYM756=Lme_15 - Plugin_AudioRecorder_AudioRecorderService_get_TotalAudioTimeout
	.long LDIFF_SYM756
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_TotalAudioTimeout"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_TotalAudioTimeout_System_TimeSpan"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_TotalAudioTimeout_System_TimeSpan
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM757=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM757
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM758=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM758
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM759=Lfde22_end - Lfde22_start
	.long LDIFF_SYM759
Lfde22_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_TotalAudioTimeout_System_TimeSpan

LDIFF_SYM760=Lme_16 - Plugin_AudioRecorder_AudioRecorderService_set_TotalAudioTimeout_System_TimeSpan
	.long LDIFF_SYM760
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_StopRecordingOnSilence"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingOnSilence"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingOnSilence
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM761=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM761
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM762=Lfde23_end - Lfde23_start
	.long LDIFF_SYM762
Lfde23_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingOnSilence

LDIFF_SYM763=Lme_17 - Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingOnSilence
	.long LDIFF_SYM763
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_StopRecordingOnSilence"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingOnSilence_bool"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingOnSilence_bool
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM764=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM765=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM765
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM766=Lfde24_end - Lfde24_start
	.long LDIFF_SYM766
Lfde24_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingOnSilence_bool

LDIFF_SYM767=Lme_18 - Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingOnSilence_bool
	.long LDIFF_SYM767
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_StopRecordingAfterTimeout"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingAfterTimeout"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingAfterTimeout
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM768=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM768
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM769=Lfde25_end - Lfde25_start
	.long LDIFF_SYM769
Lfde25_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingAfterTimeout

LDIFF_SYM770=Lme_19 - Plugin_AudioRecorder_AudioRecorderService_get_StopRecordingAfterTimeout
	.long LDIFF_SYM770
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_StopRecordingAfterTimeout"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingAfterTimeout_bool"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingAfterTimeout_bool
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM771=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM771
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM772=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM772
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM773=Lfde26_end - Lfde26_start
	.long LDIFF_SYM773
Lfde26_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingAfterTimeout_bool

LDIFF_SYM774=Lme_1a - Plugin_AudioRecorder_AudioRecorderService_set_StopRecordingAfterTimeout_bool
	.long LDIFF_SYM774
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:get_SilenceThreshold"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_get_SilenceThreshold"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_get_SilenceThreshold
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM775=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM775
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM776=Lfde27_end - Lfde27_start
	.long LDIFF_SYM776
Lfde27_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_get_SilenceThreshold

LDIFF_SYM777=Lme_1b - Plugin_AudioRecorder_AudioRecorderService_get_SilenceThreshold
	.long LDIFF_SYM777
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:set_SilenceThreshold"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_set_SilenceThreshold_single"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_set_SilenceThreshold_single
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM778=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM779=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM779
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM780=Lfde28_end - Lfde28_start
	.long LDIFF_SYM780
Lfde28_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_set_SilenceThreshold_single

LDIFF_SYM781=Lme_1c - Plugin_AudioRecorder_AudioRecorderService_set_SilenceThreshold_single
	.long LDIFF_SYM781
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:add_AudioInputReceived"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_add_AudioInputReceived_System_EventHandler_1_string"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_add_AudioInputReceived_System_EventHandler_1_string
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM782=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM782
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM783=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM784=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM784
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM785=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM785
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM786=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM786
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM787=Lfde29_end - Lfde29_start
	.long LDIFF_SYM787
Lfde29_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_add_AudioInputReceived_System_EventHandler_1_string

LDIFF_SYM788=Lme_1d - Plugin_AudioRecorder_AudioRecorderService_add_AudioInputReceived_System_EventHandler_1_string
	.long LDIFF_SYM788
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:remove_AudioInputReceived"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_remove_AudioInputReceived_System_EventHandler_1_string"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_remove_AudioInputReceived_System_EventHandler_1_string
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM789=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM789
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM790=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM790
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM791=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM791
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM792=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM792
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM793=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM793
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM794=Lfde30_end - Lfde30_start
	.long LDIFF_SYM794
Lfde30_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_remove_AudioInputReceived_System_EventHandler_1_string

LDIFF_SYM795=Lme_1e - Plugin_AudioRecorder_AudioRecorderService_remove_AudioInputReceived_System_EventHandler_1_string
	.long LDIFF_SYM795
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:Init"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_Init"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_Init
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM796=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM796
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM797=Lfde31_end - Lfde31_start
	.long LDIFF_SYM797
Lfde31_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_Init

LDIFF_SYM798=Lme_1f - Plugin_AudioRecorder_AudioRecorderService_Init
	.long LDIFF_SYM798
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:.ctor"
	.asciz "Plugin_AudioRecorder_AudioRecorderService__ctor"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService__ctor
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM799=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM799
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM800=Lfde32_end - Lfde32_start
	.long LDIFF_SYM800
Lfde32_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService__ctor

LDIFF_SYM801=Lme_20 - Plugin_AudioRecorder_AudioRecorderService__ctor
	.long LDIFF_SYM801
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:StartRecording"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_StartRecording"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_StartRecording
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM802=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM802
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM803=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM803
	.byte 3,141,200,0,11
	.asciz "V_1"

LDIFF_SYM804=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM804
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM805=Lfde33_end - Lfde33_start
	.long LDIFF_SYM805
Lfde33_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_StartRecording

LDIFF_SYM806=Lme_21 - Plugin_AudioRecorder_AudioRecorderService_StartRecording
	.long LDIFF_SYM806
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:GetAudioFileStream"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_GetAudioFileStream"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_GetAudioFileStream
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM807=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM807
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM808=Lfde34_end - Lfde34_start
	.long LDIFF_SYM808
Lfde34_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_GetAudioFileStream

LDIFF_SYM809=Lme_22 - Plugin_AudioRecorder_AudioRecorderService_GetAudioFileStream
	.long LDIFF_SYM809
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:ResetAudioDetection"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM810=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM810
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM811=Lfde35_end - Lfde35_start
	.long LDIFF_SYM811
Lfde35_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection

LDIFF_SYM812=Lme_23 - Plugin_AudioRecorder_AudioRecorderService_ResetAudioDetection
	.long LDIFF_SYM812
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:AudioStream_OnBroadcast"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_AudioStream_OnBroadcast_object_byte__"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_AudioStream_OnBroadcast_object_byte__
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM813=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM813
	.byte 1,105,3
	.asciz "sender"

LDIFF_SYM814=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM814
	.byte 0,3
	.asciz "bytes"

LDIFF_SYM815=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM815
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM816=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM816
	.byte 3,141,128,2,11
	.asciz "V_1"

LDIFF_SYM817=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM817
	.byte 3,141,240,1,11
	.asciz "V_2"

LDIFF_SYM818=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM818
	.byte 3,141,232,1,11
	.asciz "V_3"

LDIFF_SYM819=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM819
	.byte 3,141,216,1,11
	.asciz "V_4"

LDIFF_SYM820=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM820
	.byte 3,141,200,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM821=Lfde36_end - Lfde36_start
	.long LDIFF_SYM821
Lfde36_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_AudioStream_OnBroadcast_object_byte__

LDIFF_SYM822=Lme_24 - Plugin_AudioRecorder_AudioRecorderService_AudioStream_OnBroadcast_object_byte__
	.long LDIFF_SYM822
	.long 0
	.byte 12,31,0,68,14,176,2,157,38,158,37,68,13,29,68,153,36,154,35
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:Timeout"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_Timeout_string"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_Timeout_string
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM823=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM823
	.byte 1,106,3
	.asciz "reason"

LDIFF_SYM824=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM824
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM825=Lfde37_end - Lfde37_start
	.long LDIFF_SYM825
Lfde37_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_Timeout_string

LDIFF_SYM826=Lme_25 - Plugin_AudioRecorder_AudioRecorderService_Timeout_string
	.long LDIFF_SYM826
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:StopRecording"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM827=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM827
	.byte 2,141,16,3
	.asciz "continueProcessing"

LDIFF_SYM828=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM828
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM829=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM829
	.byte 3,141,208,0,11
	.asciz "V_1"

LDIFF_SYM830=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM830
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM831=Lfde38_end - Lfde38_start
	.long LDIFF_SYM831
Lfde38_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool

LDIFF_SYM832=Lme_26 - Plugin_AudioRecorder_AudioRecorderService_StopRecording_bool
	.long LDIFF_SYM832
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:InitializeStream"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM833=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM833
	.byte 1,105,3
	.asciz "sampleRate"

LDIFF_SYM834=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM834
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM835=Lfde39_end - Lfde39_start
	.long LDIFF_SYM835
Lfde39_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int

LDIFF_SYM836=Lme_27 - Plugin_AudioRecorder_AudioRecorderService_InitializeStream_int
	.long LDIFF_SYM836
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:GetAudioFilePath"
	.asciz "Plugin_AudioRecorder_AudioRecorderService_GetAudioFilePath"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService_GetAudioFilePath
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM837=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM837
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM838=Lfde40_end - Lfde40_start
	.long LDIFF_SYM838
Lfde40_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService_GetAudioFilePath

LDIFF_SYM839=Lme_28 - Plugin_AudioRecorder_AudioRecorderService_GetAudioFilePath
	.long LDIFF_SYM839
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService:<Timeout>b__58_0"
	.asciz "Plugin_AudioRecorder_AudioRecorderService__Timeoutb__58_0"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService__Timeoutb__58_0
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM840=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM840
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM841=Lfde41_end - Lfde41_start
	.long LDIFF_SYM841
Lfde41_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService__Timeoutb__58_0

LDIFF_SYM842=Lme_29 - Plugin_AudioRecorder_AudioRecorderService__Timeoutb__58_0
	.long LDIFF_SYM842
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_104:

	.byte 5
	.asciz "AudioToolbox_AudioQueue"

	.byte 40,16
LDIFF_SYM843=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM843
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM844=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM844
	.byte 2,35,24,6
	.asciz "gch"

LDIFF_SYM845=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM845
	.byte 2,35,32,6
	.asciz "listeners"

LDIFF_SYM846=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM846
	.byte 2,35,16,0,7
	.asciz "AudioToolbox_AudioQueue"

LDIFF_SYM847=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM847
LTDIE_104_POINTER:

	.byte 13
LDIFF_SYM848=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM848
LTDIE_104_REFERENCE:

	.byte 14
LDIFF_SYM849=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM849
LTDIE_105:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM850=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM850
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM851=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM851
LTDIE_105_POINTER:

	.byte 13
LDIFF_SYM852=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM852
LTDIE_105_REFERENCE:

	.byte 14
LDIFF_SYM853=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM853
LTDIE_103:

	.byte 5
	.asciz "AudioToolbox_InputAudioQueue"

	.byte 48,16
LDIFF_SYM854=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM854
	.byte 2,35,0,6
	.asciz "InputCompleted"

LDIFF_SYM855=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM855
	.byte 2,35,40,0,7
	.asciz "AudioToolbox_InputAudioQueue"

LDIFF_SYM856=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM856
LTDIE_103_POINTER:

	.byte 13
LDIFF_SYM857=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM857
LTDIE_103_REFERENCE:

	.byte 14
LDIFF_SYM858=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM858
LTDIE_106:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM859=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM859
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM860=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM860
LTDIE_106_POINTER:

	.byte 13
LDIFF_SYM861=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM861
LTDIE_106_REFERENCE:

	.byte 14
LDIFF_SYM862=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM862
LTDIE_107:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM863=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM863
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM864=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM864
LTDIE_107_POINTER:

	.byte 13
LDIFF_SYM865=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM865
LTDIE_107_REFERENCE:

	.byte 14
LDIFF_SYM866=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM866
LTDIE_108:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM867=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM867
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM868=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM868
LTDIE_108_POINTER:

	.byte 13
LDIFF_SYM869=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM869
LTDIE_108_REFERENCE:

	.byte 14
LDIFF_SYM870=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM870
LTDIE_102:

	.byte 5
	.asciz "Plugin_AudioRecorder_AudioStream"

	.byte 56,16
LDIFF_SYM871=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM871
	.byte 2,35,0,6
	.asciz "bufferSize"

LDIFF_SYM872=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM872
	.byte 2,35,48,6
	.asciz "audioQueue"

LDIFF_SYM873=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM873
	.byte 2,35,16,6
	.asciz "OnBroadcast"

LDIFF_SYM874=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM874
	.byte 2,35,24,6
	.asciz "OnActiveChanged"

LDIFF_SYM875=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM875
	.byte 2,35,32,6
	.asciz "OnException"

LDIFF_SYM876=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM876
	.byte 2,35,40,6
	.asciz "<SampleRate>k__BackingField"

LDIFF_SYM877=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM877
	.byte 2,35,52,0,7
	.asciz "Plugin_AudioRecorder_AudioStream"

LDIFF_SYM878=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM878
LTDIE_102_POINTER:

	.byte 13
LDIFF_SYM879=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM879
LTDIE_102_REFERENCE:

	.byte 14
LDIFF_SYM880=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM880
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:add_OnBroadcast"
	.asciz "Plugin_AudioRecorder_AudioStream_add_OnBroadcast_System_EventHandler_1_byte__"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_add_OnBroadcast_System_EventHandler_1_byte__
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM881=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM881
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM882=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM882
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM883=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM883
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM884=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM884
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM885=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM885
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM886=Lfde42_end - Lfde42_start
	.long LDIFF_SYM886
Lfde42_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_add_OnBroadcast_System_EventHandler_1_byte__

LDIFF_SYM887=Lme_2a - Plugin_AudioRecorder_AudioStream_add_OnBroadcast_System_EventHandler_1_byte__
	.long LDIFF_SYM887
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:remove_OnBroadcast"
	.asciz "Plugin_AudioRecorder_AudioStream_remove_OnBroadcast_System_EventHandler_1_byte__"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_remove_OnBroadcast_System_EventHandler_1_byte__
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM888=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM888
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM889=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM889
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM890=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM890
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM891=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM891
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM892=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM892
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM893=Lfde43_end - Lfde43_start
	.long LDIFF_SYM893
Lfde43_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_remove_OnBroadcast_System_EventHandler_1_byte__

LDIFF_SYM894=Lme_2b - Plugin_AudioRecorder_AudioStream_remove_OnBroadcast_System_EventHandler_1_byte__
	.long LDIFF_SYM894
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:add_OnActiveChanged"
	.asciz "Plugin_AudioRecorder_AudioStream_add_OnActiveChanged_System_EventHandler_1_bool"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_add_OnActiveChanged_System_EventHandler_1_bool
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM895=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM895
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM896=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM896
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM897=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM897
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM898=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM898
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM899=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM899
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM900=Lfde44_end - Lfde44_start
	.long LDIFF_SYM900
Lfde44_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_add_OnActiveChanged_System_EventHandler_1_bool

LDIFF_SYM901=Lme_2c - Plugin_AudioRecorder_AudioStream_add_OnActiveChanged_System_EventHandler_1_bool
	.long LDIFF_SYM901
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:remove_OnActiveChanged"
	.asciz "Plugin_AudioRecorder_AudioStream_remove_OnActiveChanged_System_EventHandler_1_bool"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_remove_OnActiveChanged_System_EventHandler_1_bool
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM902=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM902
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM903=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM903
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM904=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM904
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM905=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM905
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM906=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM906
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM907=Lfde45_end - Lfde45_start
	.long LDIFF_SYM907
Lfde45_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_remove_OnActiveChanged_System_EventHandler_1_bool

LDIFF_SYM908=Lme_2d - Plugin_AudioRecorder_AudioStream_remove_OnActiveChanged_System_EventHandler_1_bool
	.long LDIFF_SYM908
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:add_OnException"
	.asciz "Plugin_AudioRecorder_AudioStream_add_OnException_System_EventHandler_1_System_Exception"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_add_OnException_System_EventHandler_1_System_Exception
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM909=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM909
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM910=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM910
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM911=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM911
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM912=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM912
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM913=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM913
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM914=Lfde46_end - Lfde46_start
	.long LDIFF_SYM914
Lfde46_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_add_OnException_System_EventHandler_1_System_Exception

LDIFF_SYM915=Lme_2e - Plugin_AudioRecorder_AudioStream_add_OnException_System_EventHandler_1_System_Exception
	.long LDIFF_SYM915
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:remove_OnException"
	.asciz "Plugin_AudioRecorder_AudioStream_remove_OnException_System_EventHandler_1_System_Exception"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_remove_OnException_System_EventHandler_1_System_Exception
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM916=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM916
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM917=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM917
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM918=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM918
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM919=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM919
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM920=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM920
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM921=Lfde47_end - Lfde47_start
	.long LDIFF_SYM921
Lfde47_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_remove_OnException_System_EventHandler_1_System_Exception

LDIFF_SYM922=Lme_2f - Plugin_AudioRecorder_AudioStream_remove_OnException_System_EventHandler_1_System_Exception
	.long LDIFF_SYM922
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:get_SampleRate"
	.asciz "Plugin_AudioRecorder_AudioStream_get_SampleRate"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_get_SampleRate
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM923=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM923
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM924=Lfde48_end - Lfde48_start
	.long LDIFF_SYM924
Lfde48_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_get_SampleRate

LDIFF_SYM925=Lme_30 - Plugin_AudioRecorder_AudioStream_get_SampleRate
	.long LDIFF_SYM925
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:set_SampleRate"
	.asciz "Plugin_AudioRecorder_AudioStream_set_SampleRate_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_set_SampleRate_int
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM926=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM926
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM927=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM927
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM928=Lfde49_end - Lfde49_start
	.long LDIFF_SYM928
Lfde49_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_set_SampleRate_int

LDIFF_SYM929=Lme_31 - Plugin_AudioRecorder_AudioStream_set_SampleRate_int
	.long LDIFF_SYM929
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:get_ChannelCount"
	.asciz "Plugin_AudioRecorder_AudioStream_get_ChannelCount"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_get_ChannelCount
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM930=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM930
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM931=Lfde50_end - Lfde50_start
	.long LDIFF_SYM931
Lfde50_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_get_ChannelCount

LDIFF_SYM932=Lme_32 - Plugin_AudioRecorder_AudioStream_get_ChannelCount
	.long LDIFF_SYM932
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:get_BitsPerSample"
	.asciz "Plugin_AudioRecorder_AudioStream_get_BitsPerSample"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_get_BitsPerSample
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM933=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM933
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM934=Lfde51_end - Lfde51_start
	.long LDIFF_SYM934
Lfde51_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_get_BitsPerSample

LDIFF_SYM935=Lme_33 - Plugin_AudioRecorder_AudioStream_get_BitsPerSample
	.long LDIFF_SYM935
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:get_Active"
	.asciz "Plugin_AudioRecorder_AudioStream_get_Active"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_get_Active
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM936=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM936
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM937=Lfde52_end - Lfde52_start
	.long LDIFF_SYM937
Lfde52_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_get_Active

LDIFF_SYM938=Lme_34 - Plugin_AudioRecorder_AudioStream_get_Active
	.long LDIFF_SYM938
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_109:

	.byte 8
	.asciz "AudioToolbox_AudioQueueStatus"

	.byte 4
LDIFF_SYM939=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM939
	.byte 9
	.asciz "Ok"

	.byte 0,9
	.asciz "InvalidBuffer"

	.byte 129,247,251,255,15,9
	.asciz "BufferEmpty"

	.byte 130,247,251,255,15,9
	.asciz "DisposalPending"

	.byte 131,247,251,255,15,9
	.asciz "InvalidProperty"

	.byte 132,247,251,255,15,9
	.asciz "InvalidPropertySize"

	.byte 133,247,251,255,15,9
	.asciz "InvalidParameter"

	.byte 134,247,251,255,15,9
	.asciz "CannotStart"

	.byte 135,247,251,255,15,9
	.asciz "InvalidDevice"

	.byte 136,247,251,255,15,9
	.asciz "BufferInQueue"

	.byte 137,247,251,255,15,9
	.asciz "InvalidRunState"

	.byte 138,247,251,255,15,9
	.asciz "InvalidQueueType"

	.byte 139,247,251,255,15,9
	.asciz "Permissions"

	.byte 140,247,251,255,15,9
	.asciz "InvalidPropertyValue"

	.byte 141,247,251,255,15,9
	.asciz "PrimeTimedOut"

	.byte 142,247,251,255,15,9
	.asciz "CodecNotFound"

	.byte 143,247,251,255,15,9
	.asciz "InvalidCodecAccess"

	.byte 144,247,251,255,15,9
	.asciz "QueueInvalidated"

	.byte 145,247,251,255,15,9
	.asciz "TooManyTaps"

	.byte 146,247,251,255,15,9
	.asciz "InvalidTapContext"

	.byte 147,247,251,255,15,9
	.asciz "RecordUnderrun"

	.byte 148,247,251,255,15,9
	.asciz "InvalidTapType"

	.byte 149,247,251,255,15,9
	.asciz "EnqueueDuringReset"

	.byte 184,247,251,255,15,9
	.asciz "InvalidOfflineMode"

	.byte 190,247,251,255,15,9
	.asciz "BufferEnqueuedTwice"

	.byte 150,247,251,255,15,9
	.asciz "CannotStartYet"

	.byte 151,247,251,255,15,9
	.asciz "QueueStopped"

	.byte 240,222,209,155,7,9
	.asciz "DataFormatError"

	.byte 191,232,181,179,6,9
	.asciz "UnsupportedProperty"

	.byte 240,222,201,131,7,9
	.asciz "GeneralParamError"

	.byte 206,255,255,255,15,0,7
	.asciz "AudioToolbox_AudioQueueStatus"

LDIFF_SYM940=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM940
LTDIE_109_POINTER:

	.byte 13
LDIFF_SYM941=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM941
LTDIE_109_REFERENCE:

	.byte 14
LDIFF_SYM942=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM942
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:Start"
	.asciz "Plugin_AudioRecorder_AudioStream_Start"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_Start
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM943=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM943
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM944=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM944
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM945=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM945
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM946=Lfde53_end - Lfde53_start
	.long LDIFF_SYM946
Lfde53_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_Start

LDIFF_SYM947=Lme_35 - Plugin_AudioRecorder_AudioStream_Start
	.long LDIFF_SYM947
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,153,12,154,11
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:Stop"
	.asciz "Plugin_AudioRecorder_AudioStream_Stop"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_Stop
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM948=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM948
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM949=Lfde54_end - Lfde54_start
	.long LDIFF_SYM949
Lfde54_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_Stop

LDIFF_SYM950=Lme_36 - Plugin_AudioRecorder_AudioStream_Stop
	.long LDIFF_SYM950
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:.ctor"
	.asciz "Plugin_AudioRecorder_AudioStream__ctor_int_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream__ctor_int_int
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM951=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM951
	.byte 2,141,16,3
	.asciz "sampleRate"

LDIFF_SYM952=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM952
	.byte 2,141,24,3
	.asciz "bufferSize"

LDIFF_SYM953=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM953
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM954=Lfde55_end - Lfde55_start
	.long LDIFF_SYM954
Lfde55_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream__ctor_int_int

LDIFF_SYM955=Lme_37 - Plugin_AudioRecorder_AudioStream__ctor_int_int
	.long LDIFF_SYM955
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde55_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:InitAudioQueue"
	.asciz "Plugin_AudioRecorder_AudioStream_InitAudioQueue"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_InitAudioQueue
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM956=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM956
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM957=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM957
	.byte 3,141,160,1,11
	.asciz "V_1"

LDIFF_SYM958=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM958
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM959=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM959
	.byte 3,141,248,0,11
	.asciz "V_3"

LDIFF_SYM960=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM960
	.byte 1,104,11
	.asciz "V_4"

LDIFF_SYM961=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM961
	.byte 3,141,200,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM962=Lfde56_end - Lfde56_start
	.long LDIFF_SYM962
Lfde56_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_InitAudioQueue

LDIFF_SYM963=Lme_38 - Plugin_AudioRecorder_AudioStream_InitAudioQueue
	.long LDIFF_SYM963
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,152,26,153,25,68,154,24
	.align 3
Lfde56_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_110:

	.byte 5
	.asciz "AudioToolbox_InputCompletedEventArgs"

	.byte 96,16
LDIFF_SYM964=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM964
	.byte 2,35,0,6
	.asciz "<IntPtrBuffer>k__BackingField"

LDIFF_SYM965=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM965
	.byte 2,35,24,6
	.asciz "<TimeStamp>k__BackingField"

LDIFF_SYM966=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM966
	.byte 2,35,32,6
	.asciz "<PacketDescriptions>k__BackingField"

LDIFF_SYM967=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM967
	.byte 2,35,16,0,7
	.asciz "AudioToolbox_InputCompletedEventArgs"

LDIFF_SYM968=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM968
LTDIE_110_POINTER:

	.byte 13
LDIFF_SYM969=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM969
LTDIE_110_REFERENCE:

	.byte 14
LDIFF_SYM970=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM970
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStream:QueueInputCompleted"
	.asciz "Plugin_AudioRecorder_AudioStream_QueueInputCompleted_object_AudioToolbox_InputCompletedEventArgs"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStream_QueueInputCompleted_object_AudioToolbox_InputCompletedEventArgs
	.quad Lme_39

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM971=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM971
	.byte 1,105,3
	.asciz "sender"

LDIFF_SYM972=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM972
	.byte 0,3
	.asciz "e"

LDIFF_SYM973=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM973
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM974=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM974
	.byte 2,141,56,11
	.asciz "V_1"

LDIFF_SYM975=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM975
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM976=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM976
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM977=Lfde57_end - Lfde57_start
	.long LDIFF_SYM977
Lfde57_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStream_QueueInputCompleted_object_AudioToolbox_InputCompletedEventArgs

LDIFF_SYM978=Lme_39 - Plugin_AudioRecorder_AudioStream_QueueInputCompleted_object_AudioToolbox_InputCompletedEventArgs
	.long LDIFF_SYM978
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,151,26,152,25,68,153,24,154,23
	.align 3
Lfde57_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioFunctions:WriteWavHeader"
	.asciz "Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_Stream_int_int_int_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_Stream_int_int_int_int
	.quad Lme_3a

	.byte 2,118,16,3
	.asciz "stream"

LDIFF_SYM979=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM979
	.byte 2,141,16,3
	.asciz "channelCount"

LDIFF_SYM980=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM980
	.byte 2,141,24,3
	.asciz "sampleRate"

LDIFF_SYM981=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM981
	.byte 2,141,32,3
	.asciz "bitsPerSample"

LDIFF_SYM982=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM982
	.byte 2,141,40,3
	.asciz "audioLength"

LDIFF_SYM983=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM983
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM984=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM984
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM985=Lfde58_end - Lfde58_start
	.long LDIFF_SYM985
Lfde58_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_Stream_int_int_int_int

LDIFF_SYM986=Lme_3a - Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_Stream_int_int_int_int
	.long LDIFF_SYM986
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
Lfde58_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioFunctions:WriteWavHeader"
	.asciz "Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int
	.quad Lme_3b

	.byte 2,118,16,3
	.asciz "writer"

LDIFF_SYM987=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM987
	.byte 1,102,3
	.asciz "channelCount"

LDIFF_SYM988=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM988
	.byte 2,141,32,3
	.asciz "sampleRate"

LDIFF_SYM989=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM989
	.byte 2,141,40,3
	.asciz "bitsPerSample"

LDIFF_SYM990=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM990
	.byte 2,141,48,3
	.asciz "audioLength"

LDIFF_SYM991=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM991
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM992=Lfde59_end - Lfde59_start
	.long LDIFF_SYM992
Lfde59_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int

LDIFF_SYM993=Lme_3b - Plugin_AudioRecorder_AudioFunctions_WriteWavHeader_System_IO_BinaryWriter_int_int_int_int
	.long LDIFF_SYM993
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,68,154,5
	.align 3
Lfde59_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioFunctions:CalculateLevel"
	.asciz "Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool
	.quad Lme_3c

	.byte 2,118,16,3
	.asciz "buffer"

LDIFF_SYM994=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM994
	.byte 1,101,3
	.asciz "readPoint"

LDIFF_SYM995=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM995
	.byte 1,102,3
	.asciz "leftOver"

LDIFF_SYM996=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM996
	.byte 1,103,3
	.asciz "use16Bit"

LDIFF_SYM997=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM997
	.byte 3,141,200,0,3
	.asciz "signed"

LDIFF_SYM998=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM998
	.byte 3,141,208,0,3
	.asciz "bigEndian"

LDIFF_SYM999=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM999
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1000=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1000
	.byte 3,141,216,0,11
	.asciz "V_1"

LDIFF_SYM1001=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1001
	.byte 1,100,11
	.asciz "V_2"

LDIFF_SYM1002=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1002
	.byte 1,99,11
	.asciz "V_3"

LDIFF_SYM1003=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1003
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1004=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1004
	.byte 3,141,224,0,11
	.asciz "V_5"

LDIFF_SYM1005=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1005
	.byte 1,105,11
	.asciz "V_6"

LDIFF_SYM1006=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1006
	.byte 1,106,11
	.asciz "V_7"

LDIFF_SYM1007=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1007
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1008=Lfde60_end - Lfde60_start
	.long LDIFF_SYM1008
Lfde60_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool

LDIFF_SYM1009=Lme_3c - Plugin_AudioRecorder_AudioFunctions_CalculateLevel_byte___int_int_bool_bool_bool
	.long LDIFF_SYM1009
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,147,12,148,11,68,149,10,150,9,68,151,8,68,153,7,154,6
	.align 3
Lfde60_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioFunctions:.cctor"
	.asciz "Plugin_AudioRecorder_AudioFunctions__cctor"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioFunctions__cctor
	.quad Lme_3d

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1010=Lfde61_end - Lfde61_start
	.long LDIFF_SYM1010
Lfde61_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioFunctions__cctor

LDIFF_SYM1011=Lme_3d - Plugin_AudioRecorder_AudioFunctions__cctor
	.long LDIFF_SYM1011
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde61_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStreamDetails:get_SampleRate"
	.asciz "Plugin_AudioRecorder_AudioStreamDetails_get_SampleRate"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStreamDetails_get_SampleRate
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1012=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1012
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1013=Lfde62_end - Lfde62_start
	.long LDIFF_SYM1013
Lfde62_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStreamDetails_get_SampleRate

LDIFF_SYM1014=Lme_3e - Plugin_AudioRecorder_AudioStreamDetails_get_SampleRate
	.long LDIFF_SYM1014
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde62_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStreamDetails:set_SampleRate"
	.asciz "Plugin_AudioRecorder_AudioStreamDetails_set_SampleRate_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStreamDetails_set_SampleRate_int
	.quad Lme_3f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1015=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1015
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1016=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1016
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1017=Lfde63_end - Lfde63_start
	.long LDIFF_SYM1017
Lfde63_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStreamDetails_set_SampleRate_int

LDIFF_SYM1018=Lme_3f - Plugin_AudioRecorder_AudioStreamDetails_set_SampleRate_int
	.long LDIFF_SYM1018
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde63_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStreamDetails:get_ChannelCount"
	.asciz "Plugin_AudioRecorder_AudioStreamDetails_get_ChannelCount"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStreamDetails_get_ChannelCount
	.quad Lme_40

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1019=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1019
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1020=Lfde64_end - Lfde64_start
	.long LDIFF_SYM1020
Lfde64_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStreamDetails_get_ChannelCount

LDIFF_SYM1021=Lme_40 - Plugin_AudioRecorder_AudioStreamDetails_get_ChannelCount
	.long LDIFF_SYM1021
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde64_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStreamDetails:set_ChannelCount"
	.asciz "Plugin_AudioRecorder_AudioStreamDetails_set_ChannelCount_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStreamDetails_set_ChannelCount_int
	.quad Lme_41

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1022=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1022
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1023=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1023
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1024=Lfde65_end - Lfde65_start
	.long LDIFF_SYM1024
Lfde65_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStreamDetails_set_ChannelCount_int

LDIFF_SYM1025=Lme_41 - Plugin_AudioRecorder_AudioStreamDetails_set_ChannelCount_int
	.long LDIFF_SYM1025
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde65_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStreamDetails:get_BitsPerSample"
	.asciz "Plugin_AudioRecorder_AudioStreamDetails_get_BitsPerSample"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStreamDetails_get_BitsPerSample
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1026=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1026
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1027=Lfde66_end - Lfde66_start
	.long LDIFF_SYM1027
Lfde66_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStreamDetails_get_BitsPerSample

LDIFF_SYM1028=Lme_42 - Plugin_AudioRecorder_AudioStreamDetails_get_BitsPerSample
	.long LDIFF_SYM1028
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde66_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStreamDetails:set_BitsPerSample"
	.asciz "Plugin_AudioRecorder_AudioStreamDetails_set_BitsPerSample_int"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStreamDetails_set_BitsPerSample_int
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1029=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1029
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1030=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1030
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1031=Lfde67_end - Lfde67_start
	.long LDIFF_SYM1031
Lfde67_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStreamDetails_set_BitsPerSample_int

LDIFF_SYM1032=Lme_43 - Plugin_AudioRecorder_AudioStreamDetails_set_BitsPerSample_int
	.long LDIFF_SYM1032
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde67_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioStreamDetails:.ctor"
	.asciz "Plugin_AudioRecorder_AudioStreamDetails__ctor"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioStreamDetails__ctor
	.quad Lme_44

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1033=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1033
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1034=Lfde68_end - Lfde68_start
	.long LDIFF_SYM1034
Lfde68_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioStreamDetails__ctor

LDIFF_SYM1035=Lme_44 - Plugin_AudioRecorder_AudioStreamDetails__ctor
	.long LDIFF_SYM1035
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde68_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder:StartRecorder"
	.asciz "Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string
	.quad Lme_51

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1036=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1036
	.byte 2,141,16,3
	.asciz "stream"

LDIFF_SYM1037=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1037
	.byte 2,141,24,3
	.asciz "filePath"

LDIFF_SYM1038=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1038
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1039=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1039
	.byte 3,141,216,0,11
	.asciz "V_1"

LDIFF_SYM1040=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1040
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1041=Lfde69_end - Lfde69_start
	.long LDIFF_SYM1041
Lfde69_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string

LDIFF_SYM1042=Lme_51 - Plugin_AudioRecorder_WaveRecorder_StartRecorder_Plugin_AudioRecorder_IAudioStream_string
	.long LDIFF_SYM1042
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde69_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder:GetAudioFileStream"
	.asciz "Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1043=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1043
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1044=Lfde70_end - Lfde70_start
	.long LDIFF_SYM1044
Lfde70_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream

LDIFF_SYM1045=Lme_52 - Plugin_AudioRecorder_WaveRecorder_GetAudioFileStream
	.long LDIFF_SYM1045
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde70_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder:StreamActiveChanged"
	.asciz "Plugin_AudioRecorder_WaveRecorder_StreamActiveChanged_object_bool"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder_StreamActiveChanged_object_bool
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1046=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1046
	.byte 2,141,16,3
	.asciz "sender"

LDIFF_SYM1047=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1047
	.byte 0,3
	.asciz "active"

LDIFF_SYM1048=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1048
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1049=Lfde71_end - Lfde71_start
	.long LDIFF_SYM1049
Lfde71_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder_StreamActiveChanged_object_bool

LDIFF_SYM1050=Lme_53 - Plugin_AudioRecorder_WaveRecorder_StreamActiveChanged_object_bool
	.long LDIFF_SYM1050
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde71_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder:OnStreamBroadcast"
	.asciz "Plugin_AudioRecorder_WaveRecorder_OnStreamBroadcast_object_byte__"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder_OnStreamBroadcast_object_byte__
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1051=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1051
	.byte 2,141,16,3
	.asciz "sender"

LDIFF_SYM1052=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1052
	.byte 0,3
	.asciz "bytes"

LDIFF_SYM1053=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1053
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1054=Lfde72_end - Lfde72_start
	.long LDIFF_SYM1054
Lfde72_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder_OnStreamBroadcast_object_byte__

LDIFF_SYM1055=Lme_54 - Plugin_AudioRecorder_WaveRecorder_OnStreamBroadcast_object_byte__
	.long LDIFF_SYM1055
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde72_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder:StopRecorder"
	.asciz "Plugin_AudioRecorder_WaveRecorder_StopRecorder"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder_StopRecorder
	.quad Lme_55

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1056=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1056
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1057=Lfde73_end - Lfde73_start
	.long LDIFF_SYM1057
Lfde73_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder_StopRecorder

LDIFF_SYM1058=Lme_55 - Plugin_AudioRecorder_WaveRecorder_StopRecorder
	.long LDIFF_SYM1058
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde73_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder:Dispose"
	.asciz "Plugin_AudioRecorder_WaveRecorder_Dispose"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder_Dispose
	.quad Lme_56

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1059=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1059
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1060=Lfde74_end - Lfde74_start
	.long LDIFF_SYM1060
Lfde74_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder_Dispose

LDIFF_SYM1061=Lme_56 - Plugin_AudioRecorder_WaveRecorder_Dispose
	.long LDIFF_SYM1061
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde74_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder:.ctor"
	.asciz "Plugin_AudioRecorder_WaveRecorder__ctor"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder__ctor
	.quad Lme_57

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1062=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1062
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1063=Lfde75_end - Lfde75_start
	.long LDIFF_SYM1063
Lfde75_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder__ctor

LDIFF_SYM1064=Lme_57 - Plugin_AudioRecorder_WaveRecorder__ctor
	.long LDIFF_SYM1064
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde75_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_111:

	.byte 5
	.asciz "_<StartRecording>d__54"

	.byte 72,16
LDIFF_SYM1065=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1065
	.byte 2,35,0,6
	.asciz "<>1__state"

LDIFF_SYM1066=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1066
	.byte 2,35,0,6
	.asciz "<>t__builder"

LDIFF_SYM1067=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1067
	.byte 2,35,8,6
	.asciz "<>4__this"

LDIFF_SYM1068=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1068
	.byte 2,35,32,6
	.asciz "<>u__1"

LDIFF_SYM1069=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1069
	.byte 2,35,40,6
	.asciz "<>u__2"

LDIFF_SYM1070=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1070
	.byte 2,35,48,0,7
	.asciz "_<StartRecording>d__54"

LDIFF_SYM1071=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1071
LTDIE_111_POINTER:

	.byte 13
LDIFF_SYM1072=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1072
LTDIE_111_REFERENCE:

	.byte 14
LDIFF_SYM1073=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1073
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService/<StartRecording>d__54:MoveNext"
	.asciz "Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext
	.quad Lme_58

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1074=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1074
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1075=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1075
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM1076=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1076
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1077=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1077
	.byte 1,106,11
	.asciz "V_3"

LDIFF_SYM1078=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1078
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM1079=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1079
	.byte 3,141,240,0,11
	.asciz "V_5"

LDIFF_SYM1080=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1080
	.byte 3,141,232,0,11
	.asciz "V_6"

LDIFF_SYM1081=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1081
	.byte 3,141,248,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1082=Lfde76_end - Lfde76_start
	.long LDIFF_SYM1082
Lfde76_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext

LDIFF_SYM1083=Lme_58 - Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_MoveNext
	.long LDIFF_SYM1083
	.long 0
	.byte 12,31,0,68,14,144,2,157,34,158,33,68,13,29,68,153,32,154,31
	.align 3
Lfde76_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_112:

	.byte 17
	.asciz "System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 16,7
	.asciz "System_Runtime_CompilerServices_IAsyncStateMachine"

LDIFF_SYM1084=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM1084
LTDIE_112_POINTER:

	.byte 13
LDIFF_SYM1085=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM1085
LTDIE_112_REFERENCE:

	.byte 14
LDIFF_SYM1086=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM1086
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService/<StartRecording>d__54:SetStateMachine"
	.asciz "Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.quad Lme_59

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1087=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1087
	.byte 2,141,16,3
	.asciz "stateMachine"

LDIFF_SYM1088=LTDIE_112_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1088
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1089=Lfde77_end - Lfde77_start
	.long LDIFF_SYM1089
Lfde77_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine

LDIFF_SYM1090=Lme_59 - Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.long LDIFF_SYM1090
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde77_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_113:

	.byte 5
	.asciz "_<StopRecording>d__59"

	.byte 72,16
LDIFF_SYM1091=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1091
	.byte 2,35,0,6
	.asciz "<>1__state"

LDIFF_SYM1092=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1092
	.byte 2,35,0,6
	.asciz "<>t__builder"

LDIFF_SYM1093=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1093
	.byte 2,35,8,6
	.asciz "<>4__this"

LDIFF_SYM1094=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1094
	.byte 2,35,32,6
	.asciz "continueProcessing"

LDIFF_SYM1095=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1095
	.byte 2,35,40,6
	.asciz "<>u__1"

LDIFF_SYM1096=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1096
	.byte 2,35,48,0,7
	.asciz "_<StopRecording>d__59"

LDIFF_SYM1097=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM1097
LTDIE_113_POINTER:

	.byte 13
LDIFF_SYM1098=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM1098
LTDIE_113_REFERENCE:

	.byte 14
LDIFF_SYM1099=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM1099
	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService/<StopRecording>d__59:MoveNext"
	.asciz "Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext
	.quad Lme_5a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1100=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1100
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1101=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1101
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM1102=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1102
	.byte 2,141,56,11
	.asciz "V_2"

LDIFF_SYM1103=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1103
	.byte 3,141,192,0,11
	.asciz "V_3"

LDIFF_SYM1104=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1104
	.byte 2,141,48,11
	.asciz "V_4"

LDIFF_SYM1105=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1105
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1106=Lfde78_end - Lfde78_start
	.long LDIFF_SYM1106
Lfde78_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext

LDIFF_SYM1107=Lme_5a - Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_MoveNext
	.long LDIFF_SYM1107
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,154,26
	.align 3
Lfde78_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.AudioRecorderService/<StopRecording>d__59:SetStateMachine"
	.asciz "Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 0,0
	.quad Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.quad Lme_5b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1108=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1108
	.byte 2,141,16,3
	.asciz "stateMachine"

LDIFF_SYM1109=LTDIE_112_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1109
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1110=Lfde79_end - Lfde79_start
	.long LDIFF_SYM1110
Lfde79_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine

LDIFF_SYM1111=Lme_5b - Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.long LDIFF_SYM1111
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde79_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_114:

	.byte 5
	.asciz "_<StartRecorder>d__6"

	.byte 80,16
LDIFF_SYM1112=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1112
	.byte 2,35,0,6
	.asciz "<>1__state"

LDIFF_SYM1113=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1113
	.byte 2,35,0,6
	.asciz "<>t__builder"

LDIFF_SYM1114=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1114
	.byte 2,35,8,6
	.asciz "stream"

LDIFF_SYM1115=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1115
	.byte 2,35,32,6
	.asciz "<>4__this"

LDIFF_SYM1116=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1116
	.byte 2,35,40,6
	.asciz "filePath"

LDIFF_SYM1117=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1117
	.byte 2,35,48,6
	.asciz "<>u__1"

LDIFF_SYM1118=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1118
	.byte 2,35,56,0,7
	.asciz "_<StartRecorder>d__6"

LDIFF_SYM1119=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM1119
LTDIE_114_POINTER:

	.byte 13
LDIFF_SYM1120=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM1120
LTDIE_114_REFERENCE:

	.byte 14
LDIFF_SYM1121=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM1121
	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder/<StartRecorder>d__6:MoveNext"
	.asciz "Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext
	.quad Lme_5c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1122=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1122
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1123=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1123
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM1124=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1124
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1125=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1125
	.byte 3,141,200,0,11
	.asciz "V_3"

LDIFF_SYM1126=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1126
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1127=Lfde80_end - Lfde80_start
	.long LDIFF_SYM1127
Lfde80_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext

LDIFF_SYM1128=Lme_5c - Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_MoveNext
	.long LDIFF_SYM1128
	.long 0
	.byte 12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,153,28,154,27
	.align 3
Lfde80_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.AudioRecorder.WaveRecorder/<StartRecorder>d__6:SetStateMachine"
	.asciz "Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 0,0
	.quad Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.quad Lme_5d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1129=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1129
	.byte 2,141,16,3
	.asciz "stateMachine"

LDIFF_SYM1130=LTDIE_112_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1130
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1131=Lfde81_end - Lfde81_start
	.long LDIFF_SYM1131
Lfde81_start:

	.long 0
	.align 3
	.quad Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine

LDIFF_SYM1132=Lme_5d - Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.long LDIFF_SYM1132
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde81_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_115:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM1133=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM1133
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM1134=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM1134
LTDIE_115_POINTER:

	.byte 13
LDIFF_SYM1135=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM1135
LTDIE_115_REFERENCE:

	.byte 14
LDIFF_SYM1136=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM1136
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.EventHandler`1<string>:invoke_void_object_TEventArgs"
	.asciz "wrapper_delegate_invoke_System_EventHandler_1_string_invoke_void_object_TEventArgs_object_string"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_EventHandler_1_string_invoke_void_object_TEventArgs_object_string
	.quad Lme_5f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1137=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1137
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM1138=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1138
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM1139=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1139
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1140=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1140
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM1141=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1141
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1142=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1142
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1143=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1143
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1144=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1144
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1145=Lfde82_end - Lfde82_start
	.long LDIFF_SYM1145
Lfde82_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_EventHandler_1_string_invoke_void_object_TEventArgs_object_string

LDIFF_SYM1146=Lme_5f - wrapper_delegate_invoke_System_EventHandler_1_string_invoke_void_object_TEventArgs_object_string
	.long LDIFF_SYM1146
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde82_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.EventHandler`1<byte[]>:invoke_void_object_TEventArgs"
	.asciz "wrapper_delegate_invoke_System_EventHandler_1_byte___invoke_void_object_TEventArgs_object_byte__"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_EventHandler_1_byte___invoke_void_object_TEventArgs_object_byte__
	.quad Lme_60

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1147=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1147
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM1148=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1148
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM1149=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1149
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1150=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1150
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM1151=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1151
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1152=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1152
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1153=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1153
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1154=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1154
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1155=Lfde83_end - Lfde83_start
	.long LDIFF_SYM1155
Lfde83_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_EventHandler_1_byte___invoke_void_object_TEventArgs_object_byte__

LDIFF_SYM1156=Lme_60 - wrapper_delegate_invoke_System_EventHandler_1_byte___invoke_void_object_TEventArgs_object_byte__
	.long LDIFF_SYM1156
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde83_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.EventHandler`1<bool>:invoke_void_object_TEventArgs"
	.asciz "wrapper_delegate_invoke_System_EventHandler_1_bool_invoke_void_object_TEventArgs_object_bool"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_EventHandler_1_bool_invoke_void_object_TEventArgs_object_bool
	.quad Lme_65

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1157=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1157
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM1158=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1158
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM1159=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1159
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1160=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1160
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM1161=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1161
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1162=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1162
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1163=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1163
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1164=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1164
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1165=Lfde84_end - Lfde84_start
	.long LDIFF_SYM1165
Lfde84_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_EventHandler_1_bool_invoke_void_object_TEventArgs_object_bool

LDIFF_SYM1166=Lme_65 - wrapper_delegate_invoke_System_EventHandler_1_bool_invoke_void_object_TEventArgs_object_bool
	.long LDIFF_SYM1166
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde84_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.EventHandler`1<System.Exception>:invoke_void_object_TEventArgs"
	.asciz "wrapper_delegate_invoke_System_EventHandler_1_System_Exception_invoke_void_object_TEventArgs_object_System_Exception"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_EventHandler_1_System_Exception_invoke_void_object_TEventArgs_object_System_Exception
	.quad Lme_66

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1167=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1167
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM1168=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1168
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM1169=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1169
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1170=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1170
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM1171=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1171
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1172=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1172
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1173=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1173
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1174=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1174
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1175=Lfde85_end - Lfde85_start
	.long LDIFF_SYM1175
Lfde85_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_EventHandler_1_System_Exception_invoke_void_object_TEventArgs_object_System_Exception

LDIFF_SYM1176=Lme_66 - wrapper_delegate_invoke_System_EventHandler_1_System_Exception_invoke_void_object_TEventArgs_object_System_Exception
	.long LDIFF_SYM1176
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde85_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_116:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM1177=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1177
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM1178=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM1178
LTDIE_116_POINTER:

	.byte 13
LDIFF_SYM1179=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM1179
LTDIE_116_REFERENCE:

	.byte 14
LDIFF_SYM1180=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM1180
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.EventHandler`1<AVFoundation.AVStatusEventArgs>:invoke_void_object_TEventArgs"
	.asciz "wrapper_delegate_invoke_System_EventHandler_1_AVFoundation_AVStatusEventArgs_invoke_void_object_TEventArgs_object_AVFoundation_AVStatusEventArgs"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_EventHandler_1_AVFoundation_AVStatusEventArgs_invoke_void_object_TEventArgs_object_AVFoundation_AVStatusEventArgs
	.quad Lme_67

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1181=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1181
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM1182=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1182
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM1183=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1183
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1184=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1184
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM1185=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1185
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1186=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1186
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1187=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1187
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1188=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1188
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1189=Lfde86_end - Lfde86_start
	.long LDIFF_SYM1189
Lfde86_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_EventHandler_1_AVFoundation_AVStatusEventArgs_invoke_void_object_TEventArgs_object_AVFoundation_AVStatusEventArgs

LDIFF_SYM1190=Lme_67 - wrapper_delegate_invoke_System_EventHandler_1_AVFoundation_AVStatusEventArgs_invoke_void_object_TEventArgs_object_AVFoundation_AVStatusEventArgs
	.long LDIFF_SYM1190
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde86_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_117:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM1191=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1191
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM1192=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM1192
LTDIE_117_POINTER:

	.byte 13
LDIFF_SYM1193=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM1193
LTDIE_117_REFERENCE:

	.byte 14
LDIFF_SYM1194=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM1194
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`1<string>:invoke_TResult"
	.asciz "wrapper_delegate_invoke_System_Func_1_string_invoke_TResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_1_string_invoke_TResult
	.quad Lme_68

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1195=LTDIE_117_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1195
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1196=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1196
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1197=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1197
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM1198=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1198
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM1199=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1199
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM1200=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1200
	.byte 1,105,11
	.asciz "V_5"

LDIFF_SYM1201=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1201
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1202=Lfde87_end - Lfde87_start
	.long LDIFF_SYM1202
Lfde87_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_1_string_invoke_TResult

LDIFF_SYM1203=Lme_68 - wrapper_delegate_invoke_System_Func_1_string_invoke_TResult
	.long LDIFF_SYM1203
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde87_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_118:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1204=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1204
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1205=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM1205
LTDIE_118_POINTER:

	.byte 13
LDIFF_SYM1206=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM1206
LTDIE_118_REFERENCE:

	.byte 14
LDIFF_SYM1207=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM1207
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<object,_string>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object
	.quad Lme_69

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1208=LTDIE_118_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1208
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1209=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1209
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1210=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1210
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1211=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1211
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1212=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1212
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1213=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1213
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1214=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1214
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1215=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1215
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1216=Lfde88_end - Lfde88_start
	.long LDIFF_SYM1216
Lfde88_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object

LDIFF_SYM1217=Lme_69 - wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object
	.long LDIFF_SYM1217
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde88_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_119:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM1218=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1218
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM1219=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM1219
LTDIE_119_POINTER:

	.byte 13
LDIFF_SYM1220=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM1220
LTDIE_119_REFERENCE:

	.byte 14
LDIFF_SYM1221=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM1221
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<System.Threading.Tasks.Task`1<string>>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_string"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_string
	.quad Lme_6a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1222=LTDIE_119_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1222
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1223=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1223
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1224=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1224
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1225=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1225
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1226=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1226
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1227=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1227
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1228=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1228
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1229=Lfde89_end - Lfde89_start
	.long LDIFF_SYM1229
Lfde89_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_string

LDIFF_SYM1230=Lme_6a - wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_string
	.long LDIFF_SYM1230
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde89_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_120:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1231=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1231
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1232=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM1232
LTDIE_120_POINTER:

	.byte 13
LDIFF_SYM1233=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM1233
LTDIE_120_REFERENCE:

	.byte 14
LDIFF_SYM1234=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM1234
LTDIE_121:

	.byte 17
	.asciz "System_IAsyncResult"

	.byte 16,7
	.asciz "System_IAsyncResult"

LDIFF_SYM1235=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM1235
LTDIE_121_POINTER:

	.byte 13
LDIFF_SYM1236=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM1236
LTDIE_121_REFERENCE:

	.byte 14
LDIFF_SYM1237=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM1237
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.IAsyncResult,_string>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult
	.quad Lme_6b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1238=LTDIE_120_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1238
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1239=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1239
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1240=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1240
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1241=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1241
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1242=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1242
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1243=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1243
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1244=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1244
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1245=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1245
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1246=Lfde90_end - Lfde90_start
	.long LDIFF_SYM1246
Lfde90_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult

LDIFF_SYM1247=Lme_6b - wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult
	.long LDIFF_SYM1247
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde90_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_122:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM1248=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1248
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM1249=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM1249
LTDIE_122_POINTER:

	.byte 13
LDIFF_SYM1250=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM1250
LTDIE_122_REFERENCE:

	.byte 14
LDIFF_SYM1251=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM1251
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<System.IAsyncResult>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
	.quad Lme_6c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1252=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1252
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1253=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1253
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1254=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1254
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1255=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1255
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1256=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1256
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1257=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1257
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1258=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1258
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1259=Lfde91_end - Lfde91_start
	.long LDIFF_SYM1259
Lfde91_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult

LDIFF_SYM1260=Lme_6c - wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
	.long LDIFF_SYM1260
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde91_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_123:

	.byte 5
	.asciz "System_Func`3"

	.byte 112,16
LDIFF_SYM1261=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1261
	.byte 2,35,0,0,7
	.asciz "System_Func`3"

LDIFF_SYM1262=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM1262
LTDIE_123_POINTER:

	.byte 13
LDIFF_SYM1263=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM1263
LTDIE_123_REFERENCE:

	.byte 14
LDIFF_SYM1264=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM1264
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`3<System.AsyncCallback,_object,_System.IAsyncResult>:invoke_TResult_T1_T2"
	.asciz "wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
	.quad Lme_6d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1265=LTDIE_123_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1265
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM1266=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1266
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM1267=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1267
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1268=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1268
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM1269=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1269
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1270=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1270
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1271=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1271
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1272=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1272
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM1273=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1273
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1274=Lfde92_end - Lfde92_start
	.long LDIFF_SYM1274
Lfde92_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object

LDIFF_SYM1275=Lme_6d - wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
	.long LDIFF_SYM1275
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde92_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_124:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM1276=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1276
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM1277=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM1277
LTDIE_124_POINTER:

	.byte 13
LDIFF_SYM1278=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM1278
LTDIE_124_REFERENCE:

	.byte 14
LDIFF_SYM1279=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM1279
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`1<System.Threading.Tasks.Task>:invoke_TResult"
	.asciz "wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
	.quad Lme_6e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1280=LTDIE_124_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1280
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1281=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1281
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1282=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1282
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM1283=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1283
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM1284=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1284
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM1285=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1285
	.byte 1,105,11
	.asciz "V_5"

LDIFF_SYM1286=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1286
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1287=Lfde93_end - Lfde93_start
	.long LDIFF_SYM1287
Lfde93_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult

LDIFF_SYM1288=Lme_6e - wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
	.long LDIFF_SYM1288
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde93_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_125:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1289=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1289
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1290=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM1290
LTDIE_125_POINTER:

	.byte 13
LDIFF_SYM1291=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM1291
LTDIE_125_REFERENCE:

	.byte 14
LDIFF_SYM1292=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM1292
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<object,_System.Threading.Tasks.Task>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
	.quad Lme_6f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1293=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1293
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1294=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1294
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1295=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1295
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1296=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1296
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1297=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1297
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1298=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1298
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1299=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1299
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1300=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1300
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1301=Lfde94_end - Lfde94_start
	.long LDIFF_SYM1301
Lfde94_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object

LDIFF_SYM1302=Lme_6f - wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
	.long LDIFF_SYM1302
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde94_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_126:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM1303=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1303
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM1304=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM1304
LTDIE_126_POINTER:

	.byte 13
LDIFF_SYM1305=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM1305
LTDIE_126_REFERENCE:

	.byte 14
LDIFF_SYM1306=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM1306
LTDIE_127:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM1307=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM1307
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM1308=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1308
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM1309=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM1309
LTDIE_127_POINTER:

	.byte 13
LDIFF_SYM1310=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM1310
LTDIE_127_REFERENCE:

	.byte 14
LDIFF_SYM1311=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM1311
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_70

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1312=LTDIE_126_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1312
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1313=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1313
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1314=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1314
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1315=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1315
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1316=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1316
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1317=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1317
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1318=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1318
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1319=Lfde95_end - Lfde95_start
	.long LDIFF_SYM1319
Lfde95_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM1320=Lme_70 - wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM1320
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde95_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_128:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1321=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1321
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1322=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM1322
LTDIE_128_POINTER:

	.byte 13
LDIFF_SYM1323=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM1323
LTDIE_128_REFERENCE:

	.byte 14
LDIFF_SYM1324=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM1324
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.IAsyncResult,_System.Threading.Tasks.Task>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
	.quad Lme_71

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1325=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1325
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1326=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1326
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1327=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1327
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1328=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1328
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1329=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1329
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1330=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1330
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1331=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1331
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1332=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1332
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1333=Lfde96_end - Lfde96_start
	.long LDIFF_SYM1333
Lfde96_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult

LDIFF_SYM1334=Lme_71 - wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
	.long LDIFF_SYM1334
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde96_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_129:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1335=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1335
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1336=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM1336
LTDIE_129_POINTER:

	.byte 13
LDIFF_SYM1337=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM1337
LTDIE_129_REFERENCE:

	.byte 14
LDIFF_SYM1338=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM1338
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>,_System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_72

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1339=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1339
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1340=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1340
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1341=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1341
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1342=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1342
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1343=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1343
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1344=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1344
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1345=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1345
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1346=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1346
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1347=Lfde97_end - Lfde97_start
	.long LDIFF_SYM1347
Lfde97_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM1348=Lme_72 - wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM1348
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde97_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_130:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1349=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1349
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1350=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM1350
LTDIE_130_POINTER:

	.byte 13
LDIFF_SYM1351=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM1351
LTDIE_130_REFERENCE:

	.byte 14
LDIFF_SYM1352=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM1352
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>,_System.Threading.Tasks.Task`1<string>>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_73

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1353=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1353
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1354=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1354
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1355=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1355
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1356=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1356
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1357=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1357
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1358=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1358
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1359=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1359
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1360=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1360
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1361=Lfde98_end - Lfde98_start
	.long LDIFF_SYM1361
Lfde98_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM1362=Lme_73 - wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM1362
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde98_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_131:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM1363=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1363
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM1364=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM1364
LTDIE_131_POINTER:

	.byte 13
LDIFF_SYM1365=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM1365
LTDIE_131_REFERENCE:

	.byte 14
LDIFF_SYM1366=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM1366
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`1<System.Threading.Tasks.Task`1<string>>:invoke_TResult"
	.asciz "wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_1_string_invoke_TResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_1_string_invoke_TResult
	.quad Lme_74

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1367=LTDIE_131_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1367
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1368=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1368
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1369=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1369
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM1370=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1370
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM1371=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1371
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM1372=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1372
	.byte 1,105,11
	.asciz "V_5"

LDIFF_SYM1373=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1373
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1374=Lfde99_end - Lfde99_start
	.long LDIFF_SYM1374
Lfde99_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_1_string_invoke_TResult

LDIFF_SYM1375=Lme_74 - wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_1_string_invoke_TResult
	.long LDIFF_SYM1375
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde99_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_132:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1376=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1376
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1377=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM1377
LTDIE_132_POINTER:

	.byte 13
LDIFF_SYM1378=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM1378
LTDIE_132_REFERENCE:

	.byte 14
LDIFF_SYM1379=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM1379
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<object,_System.Threading.Tasks.Task`1<string>>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_1_string_invoke_TResult_T_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_1_string_invoke_TResult_T_object
	.quad Lme_75

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1380=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1380
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1381=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1381
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1382=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1382
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1383=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1383
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1384=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1384
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1385=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1385
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1386=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1386
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1387=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1387
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1388=Lfde100_end - Lfde100_start
	.long LDIFF_SYM1388
Lfde100_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_1_string_invoke_TResult_T_object

LDIFF_SYM1389=Lme_75 - wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_1_string_invoke_TResult_T_object
	.long LDIFF_SYM1389
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde100_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_133:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM1390=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1390
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM1391=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM1391
LTDIE_133_POINTER:

	.byte 13
LDIFF_SYM1392=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM1392
LTDIE_133_REFERENCE:

	.byte 14
LDIFF_SYM1393=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM1393
LTDIE_134:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM1394=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM1394
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM1395=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1395
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM1396=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM1396
LTDIE_134_POINTER:

	.byte 13
LDIFF_SYM1397=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM1397
LTDIE_134_REFERENCE:

	.byte 14
LDIFF_SYM1398=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM1398
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task`1<string>>>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string
	.quad Lme_76

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1399=LTDIE_133_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1399
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1400=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1400
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1401=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1401
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1402=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1402
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1403=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1403
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1404=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1404
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1405=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1405
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1406=Lfde101_end - Lfde101_start
	.long LDIFF_SYM1406
Lfde101_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string

LDIFF_SYM1407=Lme_76 - wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string
	.long LDIFF_SYM1407
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde101_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_135:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1408=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1408
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1409=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM1409
LTDIE_135_POINTER:

	.byte 13
LDIFF_SYM1410=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM1410
LTDIE_135_REFERENCE:

	.byte 14
LDIFF_SYM1411=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM1411
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.IAsyncResult,_System.Threading.Tasks.Task`1<string>>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_IAsyncResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_IAsyncResult
	.quad Lme_77

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1412=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1412
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1413=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1413
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1414=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1414
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1415=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1415
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1416=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1416
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1417=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1417
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1418=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1418
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1419=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1419
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1420=Lfde102_end - Lfde102_start
	.long LDIFF_SYM1420
Lfde102_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_IAsyncResult

LDIFF_SYM1421=Lme_77 - wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_IAsyncResult
	.long LDIFF_SYM1421
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde102_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_136:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1422=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1422
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1423=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM1423
LTDIE_136_POINTER:

	.byte 13
LDIFF_SYM1424=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM1424
LTDIE_136_REFERENCE:

	.byte 14
LDIFF_SYM1425=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM1425
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>,_System.Threading.Tasks.Task`1<System.Threading.Tasks.Task`1<string>>>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_78

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1426=LTDIE_136_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1426
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1427=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1427
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1428=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1428
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1429=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1429
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1430=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1430
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1431=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1431
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1432=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1432
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1433=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1433
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1434=Lfde103_end - Lfde103_start
	.long LDIFF_SYM1434
Lfde103_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM1435=Lme_78 - wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM1435
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde103_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_137:

	.byte 5
	.asciz "System_Nullable`1"

	.byte 32,16
LDIFF_SYM1436=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1436
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM1437=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1437
	.byte 2,35,16,6
	.asciz "has_value"

LDIFF_SYM1438=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1438
	.byte 2,35,24,0,7
	.asciz "System_Nullable`1"

LDIFF_SYM1439=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM1439
LTDIE_137_POINTER:

	.byte 13
LDIFF_SYM1440=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM1440
LTDIE_137_REFERENCE:

	.byte 14
LDIFF_SYM1441=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM1441
	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:.ctor"
	.asciz "System_Nullable_1_System_DateTime__ctor_System_DateTime"

	.byte 1,94
	.quad System_Nullable_1_System_DateTime__ctor_System_DateTime
	.quad Lme_79

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1442=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1442
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1443=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1443
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1444=Lfde104_end - Lfde104_start
	.long LDIFF_SYM1444
Lfde104_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime__ctor_System_DateTime

LDIFF_SYM1445=Lme_79 - System_Nullable_1_System_DateTime__ctor_System_DateTime
	.long LDIFF_SYM1445
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde104_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:get_HasValue"
	.asciz "System_Nullable_1_System_DateTime_get_HasValue"

	.byte 1,99
	.quad System_Nullable_1_System_DateTime_get_HasValue
	.quad Lme_7a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1446=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1446
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1447=Lfde105_end - Lfde105_start
	.long LDIFF_SYM1447
Lfde105_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_get_HasValue

LDIFF_SYM1448=Lme_7a - System_Nullable_1_System_DateTime_get_HasValue
	.long LDIFF_SYM1448
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde105_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:get_Value"
	.asciz "System_Nullable_1_System_DateTime_get_Value"

	.byte 1,104
	.quad System_Nullable_1_System_DateTime_get_Value
	.quad Lme_7b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1449=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1449
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1450=Lfde106_end - Lfde106_start
	.long LDIFF_SYM1450
Lfde106_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_get_Value

LDIFF_SYM1451=Lme_7b - System_Nullable_1_System_DateTime_get_Value
	.long LDIFF_SYM1451
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde106_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:Equals"
	.asciz "System_Nullable_1_System_DateTime_Equals_object"

	.byte 1,113
	.quad System_Nullable_1_System_DateTime_Equals_object
	.quad Lme_7c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1452=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1452
	.byte 2,141,32,3
	.asciz "other"

LDIFF_SYM1453=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1453
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1454=Lfde107_end - Lfde107_start
	.long LDIFF_SYM1454
Lfde107_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_Equals_object

LDIFF_SYM1455=Lme_7c - System_Nullable_1_System_DateTime_Equals_object
	.long LDIFF_SYM1455
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,68,154,5
	.align 3
Lfde107_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:Equals"
	.asciz "System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime"

	.byte 1,123
	.quad System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
	.quad Lme_7d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1456=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1456
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM1457=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1457
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1458=Lfde108_end - Lfde108_start
	.long LDIFF_SYM1458
Lfde108_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime

LDIFF_SYM1459=Lme_7d - System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
	.long LDIFF_SYM1459
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde108_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:GetHashCode"
	.asciz "System_Nullable_1_System_DateTime_GetHashCode"

	.byte 1,134,1
	.quad System_Nullable_1_System_DateTime_GetHashCode
	.quad Lme_7e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1460=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1460
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1461=Lfde109_end - Lfde109_start
	.long LDIFF_SYM1461
Lfde109_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_GetHashCode

LDIFF_SYM1462=Lme_7e - System_Nullable_1_System_DateTime_GetHashCode
	.long LDIFF_SYM1462
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde109_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:GetValueOrDefault"
	.asciz "System_Nullable_1_System_DateTime_GetValueOrDefault"

	.byte 1,142,1
	.quad System_Nullable_1_System_DateTime_GetValueOrDefault
	.quad Lme_7f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1463=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1463
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1464=Lfde110_end - Lfde110_start
	.long LDIFF_SYM1464
Lfde110_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_GetValueOrDefault

LDIFF_SYM1465=Lme_7f - System_Nullable_1_System_DateTime_GetValueOrDefault
	.long LDIFF_SYM1465
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde110_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:GetValueOrDefault"
	.asciz "System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime"

	.byte 1,147,1
	.quad System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
	.quad Lme_80

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1466=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1466
	.byte 2,141,32,3
	.asciz "defaultValue"

LDIFF_SYM1467=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1467
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1468=Lfde111_end - Lfde111_start
	.long LDIFF_SYM1468
Lfde111_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime

LDIFF_SYM1469=Lme_80 - System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
	.long LDIFF_SYM1469
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde111_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:ToString"
	.asciz "System_Nullable_1_System_DateTime_ToString"

	.byte 1,152,1
	.quad System_Nullable_1_System_DateTime_ToString
	.quad Lme_81

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1470=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1470
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1471=Lfde112_end - Lfde112_start
	.long LDIFF_SYM1471
Lfde112_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_ToString

LDIFF_SYM1472=Lme_81 - System_Nullable_1_System_DateTime_ToString
	.long LDIFF_SYM1472
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde112_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:Box"
	.asciz "System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime"

	.byte 1,177,1
	.quad System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
	.quad Lme_82

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM1473=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1473
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1474=Lfde113_end - Lfde113_start
	.long LDIFF_SYM1474
Lfde113_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime

LDIFF_SYM1475=Lme_82 - System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
	.long LDIFF_SYM1475
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde113_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:Unbox"
	.asciz "System_Nullable_1_System_DateTime_Unbox_object"

	.byte 1,185,1
	.quad System_Nullable_1_System_DateTime_Unbox_object
	.quad Lme_83

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM1476=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1476
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1477=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1477
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1478=Lfde114_end - Lfde114_start
	.long LDIFF_SYM1478
Lfde114_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_Unbox_object

LDIFF_SYM1479=Lme_83 - System_Nullable_1_System_DateTime_Unbox_object
	.long LDIFF_SYM1479
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde114_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_138:

	.byte 5
	.asciz "System_Nullable`1"

	.byte 32,16
LDIFF_SYM1480=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1480
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM1481=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1481
	.byte 2,35,16,6
	.asciz "has_value"

LDIFF_SYM1482=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1482
	.byte 2,35,24,0,7
	.asciz "System_Nullable`1"

LDIFF_SYM1483=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1483
LTDIE_138_POINTER:

	.byte 13
LDIFF_SYM1484=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1484
LTDIE_138_REFERENCE:

	.byte 14
LDIFF_SYM1485=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1485
	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:.ctor"
	.asciz "System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan"

	.byte 1,94
	.quad System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan
	.quad Lme_84

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1486=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1486
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1487=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1487
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1488=Lfde115_end - Lfde115_start
	.long LDIFF_SYM1488
Lfde115_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan

LDIFF_SYM1489=Lme_84 - System_Nullable_1_System_TimeSpan__ctor_System_TimeSpan
	.long LDIFF_SYM1489
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde115_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:get_HasValue"
	.asciz "System_Nullable_1_System_TimeSpan_get_HasValue"

	.byte 1,99
	.quad System_Nullable_1_System_TimeSpan_get_HasValue
	.quad Lme_85

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1490=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1490
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1491=Lfde116_end - Lfde116_start
	.long LDIFF_SYM1491
Lfde116_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_get_HasValue

LDIFF_SYM1492=Lme_85 - System_Nullable_1_System_TimeSpan_get_HasValue
	.long LDIFF_SYM1492
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde116_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:get_Value"
	.asciz "System_Nullable_1_System_TimeSpan_get_Value"

	.byte 1,104
	.quad System_Nullable_1_System_TimeSpan_get_Value
	.quad Lme_86

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1493=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1493
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1494=Lfde117_end - Lfde117_start
	.long LDIFF_SYM1494
Lfde117_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_get_Value

LDIFF_SYM1495=Lme_86 - System_Nullable_1_System_TimeSpan_get_Value
	.long LDIFF_SYM1495
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde117_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:Equals"
	.asciz "System_Nullable_1_System_TimeSpan_Equals_object"

	.byte 1,113
	.quad System_Nullable_1_System_TimeSpan_Equals_object
	.quad Lme_87

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1496=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1496
	.byte 2,141,32,3
	.asciz "other"

LDIFF_SYM1497=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1497
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1498=Lfde118_end - Lfde118_start
	.long LDIFF_SYM1498
Lfde118_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_Equals_object

LDIFF_SYM1499=Lme_87 - System_Nullable_1_System_TimeSpan_Equals_object
	.long LDIFF_SYM1499
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,68,154,5
	.align 3
Lfde118_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:Equals"
	.asciz "System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan"

	.byte 1,123
	.quad System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan
	.quad Lme_88

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1500=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1500
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM1501=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1501
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1502=Lfde119_end - Lfde119_start
	.long LDIFF_SYM1502
Lfde119_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan

LDIFF_SYM1503=Lme_88 - System_Nullable_1_System_TimeSpan_Equals_System_Nullable_1_System_TimeSpan
	.long LDIFF_SYM1503
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde119_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:GetHashCode"
	.asciz "System_Nullable_1_System_TimeSpan_GetHashCode"

	.byte 1,134,1
	.quad System_Nullable_1_System_TimeSpan_GetHashCode
	.quad Lme_89

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1504=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1504
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1505=Lfde120_end - Lfde120_start
	.long LDIFF_SYM1505
Lfde120_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_GetHashCode

LDIFF_SYM1506=Lme_89 - System_Nullable_1_System_TimeSpan_GetHashCode
	.long LDIFF_SYM1506
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde120_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:GetValueOrDefault"
	.asciz "System_Nullable_1_System_TimeSpan_GetValueOrDefault"

	.byte 1,142,1
	.quad System_Nullable_1_System_TimeSpan_GetValueOrDefault
	.quad Lme_8a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1507=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1507
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1508=Lfde121_end - Lfde121_start
	.long LDIFF_SYM1508
Lfde121_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_GetValueOrDefault

LDIFF_SYM1509=Lme_8a - System_Nullable_1_System_TimeSpan_GetValueOrDefault
	.long LDIFF_SYM1509
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde121_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:GetValueOrDefault"
	.asciz "System_Nullable_1_System_TimeSpan_GetValueOrDefault_System_TimeSpan"

	.byte 1,147,1
	.quad System_Nullable_1_System_TimeSpan_GetValueOrDefault_System_TimeSpan
	.quad Lme_8b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1510=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1510
	.byte 2,141,32,3
	.asciz "defaultValue"

LDIFF_SYM1511=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1511
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1512=Lfde122_end - Lfde122_start
	.long LDIFF_SYM1512
Lfde122_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_GetValueOrDefault_System_TimeSpan

LDIFF_SYM1513=Lme_8b - System_Nullable_1_System_TimeSpan_GetValueOrDefault_System_TimeSpan
	.long LDIFF_SYM1513
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde122_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:ToString"
	.asciz "System_Nullable_1_System_TimeSpan_ToString"

	.byte 1,152,1
	.quad System_Nullable_1_System_TimeSpan_ToString
	.quad Lme_8c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1514=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1514
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1515=Lfde123_end - Lfde123_start
	.long LDIFF_SYM1515
Lfde123_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_ToString

LDIFF_SYM1516=Lme_8c - System_Nullable_1_System_TimeSpan_ToString
	.long LDIFF_SYM1516
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde123_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:Box"
	.asciz "System_Nullable_1_System_TimeSpan_Box_System_Nullable_1_System_TimeSpan"

	.byte 1,177,1
	.quad System_Nullable_1_System_TimeSpan_Box_System_Nullable_1_System_TimeSpan
	.quad Lme_8d

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM1517=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1517
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1518=Lfde124_end - Lfde124_start
	.long LDIFF_SYM1518
Lfde124_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_Box_System_Nullable_1_System_TimeSpan

LDIFF_SYM1519=Lme_8d - System_Nullable_1_System_TimeSpan_Box_System_Nullable_1_System_TimeSpan
	.long LDIFF_SYM1519
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde124_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.TimeSpan>:Unbox"
	.asciz "System_Nullable_1_System_TimeSpan_Unbox_object"

	.byte 1,185,1
	.quad System_Nullable_1_System_TimeSpan_Unbox_object
	.quad Lme_8e

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM1520=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1520
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1521=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1521
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1522=Lfde125_end - Lfde125_start
	.long LDIFF_SYM1522
Lfde125_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_TimeSpan_Unbox_object

LDIFF_SYM1523=Lme_8e - System_Nullable_1_System_TimeSpan_Unbox_object
	.long LDIFF_SYM1523
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde125_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.EventHandler`1<AudioToolbox.InputCompletedEventArgs>:invoke_void_object_TEventArgs"
	.asciz "wrapper_delegate_invoke_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs_invoke_void_object_TEventArgs_object_AudioToolbox_InputCompletedEventArgs"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs_invoke_void_object_TEventArgs_object_AudioToolbox_InputCompletedEventArgs
	.quad Lme_8f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1524=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1524
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM1525=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1525
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM1526=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1526
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1527=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1527
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM1528=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1528
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1529=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1529
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1530=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1530
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM1531=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1531
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1532=Lfde126_end - Lfde126_start
	.long LDIFF_SYM1532
Lfde126_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs_invoke_void_object_TEventArgs_object_AudioToolbox_InputCompletedEventArgs

LDIFF_SYM1533=Lme_8f - wrapper_delegate_invoke_System_EventHandler_1_AudioToolbox_InputCompletedEventArgs_invoke_void_object_TEventArgs_object_AudioToolbox_InputCompletedEventArgs
	.long LDIFF_SYM1533
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde126_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_139:

	.byte 5
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder`1"

	.byte 40,16
LDIFF_SYM1534=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1534
	.byte 2,35,0,6
	.asciz "m_coreState"

LDIFF_SYM1535=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1535
	.byte 2,35,16,6
	.asciz "m_task"

LDIFF_SYM1536=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1536
	.byte 2,35,32,0,7
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder`1"

LDIFF_SYM1537=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1537
LTDIE_139_POINTER:

	.byte 13
LDIFF_SYM1538=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1538
LTDIE_139_REFERENCE:

	.byte 14
LDIFF_SYM1539=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1539
	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.Task`1<string>>:Start<Plugin.AudioRecorder.AudioRecorderService/<StartRecording>d__54>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_"

	.byte 2,203,3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
	.quad Lme_90

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1540=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1540
	.byte 0,3
	.asciz "stateMachine"

LDIFF_SYM1541=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1541
	.byte 2,141,24,11
	.asciz "ecs"

LDIFF_SYM1542=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1542
	.byte 3,141,216,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1543=Lfde127_end - Lfde127_start
	.long LDIFF_SYM1543
Lfde127_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_

LDIFF_SYM1544=Lme_90 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_Start_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
	.long LDIFF_SYM1544
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde127_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_140:

	.byte 5
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder"

	.byte 40,16
LDIFF_SYM1545=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1545
	.byte 2,35,0,6
	.asciz "m_builder"

LDIFF_SYM1546=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1546
	.byte 2,35,0,0,7
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder"

LDIFF_SYM1547=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM1547
LTDIE_140_POINTER:

	.byte 13
LDIFF_SYM1548=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM1548
LTDIE_140_REFERENCE:

	.byte 14
LDIFF_SYM1549=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM1549
	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder:Start<Plugin.AudioRecorder.AudioRecorderService/<StopRecording>d__59>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_"

	.byte 2,176,2
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
	.quad Lme_91

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1550=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1550
	.byte 0,3
	.asciz "stateMachine"

LDIFF_SYM1551=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1551
	.byte 2,141,24,11
	.asciz "ecs"

LDIFF_SYM1552=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1552
	.byte 3,141,216,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1553=Lfde128_end - Lfde128_start
	.long LDIFF_SYM1553
Lfde128_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_

LDIFF_SYM1554=Lme_91 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
	.long LDIFF_SYM1554
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde128_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task:FromResult<TResult_BOOL>"
	.asciz "System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL"

	.byte 3,163,43
	.quad System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL
	.quad Lme_92

	.byte 2,118,16,3
	.asciz "result"

LDIFF_SYM1555=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1555
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1556=Lfde129_end - Lfde129_start
	.long LDIFF_SYM1556
Lfde129_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL

LDIFF_SYM1557=Lme_92 - System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL
	.long LDIFF_SYM1557
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde129_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder:Start<Plugin.AudioRecorder.WaveRecorder/<StartRecorder>d__6>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_"

	.byte 2,176,2
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
	.quad Lme_93

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1558=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1558
	.byte 0,3
	.asciz "stateMachine"

LDIFF_SYM1559=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1559
	.byte 2,141,24,11
	.asciz "ecs"

LDIFF_SYM1560=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1560
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1561=Lfde130_end - Lfde130_start
	.long LDIFF_SYM1561
Lfde130_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_

LDIFF_SYM1562=Lme_93 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
	.long LDIFF_SYM1562
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde130_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_141:

	.byte 5
	.asciz "System_Runtime_CompilerServices_TaskAwaiter"

	.byte 24,16
LDIFF_SYM1563=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1563
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM1564=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1564
	.byte 2,35,0,0,7
	.asciz "System_Runtime_CompilerServices_TaskAwaiter"

LDIFF_SYM1565=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM1565
LTDIE_141_POINTER:

	.byte 13
LDIFF_SYM1566=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM1566
LTDIE_141_REFERENCE:

	.byte 14
LDIFF_SYM1567=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM1567
LTDIE_142:

	.byte 5
	.asciz "_MoveNextRunner"

	.byte 32,16
LDIFF_SYM1568=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM1568
	.byte 2,35,0,6
	.asciz "m_context"

LDIFF_SYM1569=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1569
	.byte 2,35,16,6
	.asciz "m_stateMachine"

LDIFF_SYM1570=LTDIE_112_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1570
	.byte 2,35,24,0,7
	.asciz "_MoveNextRunner"

LDIFF_SYM1571=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM1571
LTDIE_142_POINTER:

	.byte 13
LDIFF_SYM1572=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM1572
LTDIE_142_REFERENCE:

	.byte 14
LDIFF_SYM1573=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM1573
LTDIE_143:

	.byte 5
	.asciz "System_Action"

	.byte 112,16
LDIFF_SYM1574=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1574
	.byte 2,35,0,0,7
	.asciz "System_Action"

LDIFF_SYM1575=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM1575
LTDIE_143_POINTER:

	.byte 13
LDIFF_SYM1576=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM1576
LTDIE_143_REFERENCE:

	.byte 14
LDIFF_SYM1577=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM1577
	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.Task`1<string>>:AwaitUnsafeOnCompleted<System.Runtime.CompilerServices.TaskAwaiter,_Plugin.AudioRecorder.AudioRecorderService/<StartRecording>d__54>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_"

	.byte 2,158,4
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
	.quad Lme_94

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1578=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1578
	.byte 1,104,3
	.asciz "awaiter"

LDIFF_SYM1579=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1579
	.byte 2,141,40,3
	.asciz "stateMachine"

LDIFF_SYM1580=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1580
	.byte 2,141,48,11
	.asciz "runnerToInitialize"

LDIFF_SYM1581=LTDIE_142_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1581
	.byte 3,141,240,0,11
	.asciz "continuation"

LDIFF_SYM1582=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1582
	.byte 1,103,11
	.asciz "builtTask"

LDIFF_SYM1583=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1583
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1584=Lfde131_end - Lfde131_start
	.long LDIFF_SYM1584
Lfde131_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_

LDIFF_SYM1585=Lme_94 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
	.long LDIFF_SYM1585
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,150,20,151,19,68,152,18
	.align 3
Lfde131_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_144:

	.byte 5
	.asciz "System_Runtime_CompilerServices_TaskAwaiter`1"

	.byte 24,16
LDIFF_SYM1586=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1586
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM1587=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1587
	.byte 2,35,16,0,7
	.asciz "System_Runtime_CompilerServices_TaskAwaiter`1"

LDIFF_SYM1588=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1588
LTDIE_144_POINTER:

	.byte 13
LDIFF_SYM1589=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1589
LTDIE_144_REFERENCE:

	.byte 14
LDIFF_SYM1590=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM1590
	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.Task`1<string>>:AwaitUnsafeOnCompleted<System.Runtime.CompilerServices.TaskAwaiter`1<string>,_Plugin.AudioRecorder.AudioRecorderService/<StartRecording>d__54>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_"

	.byte 2,158,4
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
	.quad Lme_95

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1591=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1591
	.byte 1,104,3
	.asciz "awaiter"

LDIFF_SYM1592=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1592
	.byte 2,141,40,3
	.asciz "stateMachine"

LDIFF_SYM1593=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1593
	.byte 2,141,48,11
	.asciz "runnerToInitialize"

LDIFF_SYM1594=LTDIE_142_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1594
	.byte 3,141,240,0,11
	.asciz "continuation"

LDIFF_SYM1595=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1595
	.byte 1,103,11
	.asciz "builtTask"

LDIFF_SYM1596=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1596
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1597=Lfde132_end - Lfde132_start
	.long LDIFF_SYM1597
Lfde132_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_

LDIFF_SYM1598=Lme_95 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_Task_1_string_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_1_string_Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_System_Runtime_CompilerServices_TaskAwaiter_1_string__Plugin_AudioRecorder_AudioRecorderService__StartRecordingd__54_
	.long LDIFF_SYM1598
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,150,20,151,19,68,152,18
	.align 3
Lfde132_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder:AwaitUnsafeOnCompleted<System.Runtime.CompilerServices.TaskAwaiter,_Plugin.AudioRecorder.AudioRecorderService/<StopRecording>d__59>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_"

	.byte 2,232,2
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
	.quad Lme_96

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1599=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1599
	.byte 2,141,16,3
	.asciz "awaiter"

LDIFF_SYM1600=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1600
	.byte 2,141,24,3
	.asciz "stateMachine"

LDIFF_SYM1601=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1601
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1602=Lfde133_end - Lfde133_start
	.long LDIFF_SYM1602
Lfde133_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_

LDIFF_SYM1603=Lme_96 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
	.long LDIFF_SYM1603
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde133_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder:AwaitUnsafeOnCompleted<System.Runtime.CompilerServices.TaskAwaiter,_Plugin.AudioRecorder.WaveRecorder/<StartRecorder>d__6>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_"

	.byte 2,232,2
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
	.quad Lme_97

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1604=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1604
	.byte 2,141,16,3
	.asciz "awaiter"

LDIFF_SYM1605=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1605
	.byte 2,141,24,3
	.asciz "stateMachine"

LDIFF_SYM1606=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1606
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1607=Lfde134_end - Lfde134_start
	.long LDIFF_SYM1607
Lfde134_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_

LDIFF_SYM1608=Lme_97 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
	.long LDIFF_SYM1608
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde134_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_145:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM1609=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM1609
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM1610=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1610
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM1611=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM1611
LTDIE_145_POINTER:

	.byte 13
LDIFF_SYM1612=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM1612
LTDIE_145_REFERENCE:

	.byte 14
LDIFF_SYM1613=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM1613
	.byte 2
	.asciz "System.Threading.Tasks.Task`1<TResult_BOOL>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL"

	.byte 4,104
	.quad System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL
	.quad Lme_98

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1614=LTDIE_145_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1614
	.byte 2,141,16,3
	.asciz "result"

LDIFF_SYM1615=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1615
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1616=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1616
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1617=Lfde135_end - Lfde135_start
	.long LDIFF_SYM1617
Lfde135_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL

LDIFF_SYM1618=Lme_98 - System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL
	.long LDIFF_SYM1618
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde135_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_147:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM1619=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM1619
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM1620=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1620
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM1621=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1621
LTDIE_147_POINTER:

	.byte 13
LDIFF_SYM1622=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1622
LTDIE_147_REFERENCE:

	.byte 14
LDIFF_SYM1623=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1623
LTDIE_146:

	.byte 5
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder`1"

	.byte 40,16
LDIFF_SYM1624=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM1624
	.byte 2,35,0,6
	.asciz "m_coreState"

LDIFF_SYM1625=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1625
	.byte 2,35,16,6
	.asciz "m_task"

LDIFF_SYM1626=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1626
	.byte 2,35,32,0,7
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder`1"

LDIFF_SYM1627=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM1627
LTDIE_146_POINTER:

	.byte 13
LDIFF_SYM1628=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM1628
LTDIE_146_REFERENCE:

	.byte 14
LDIFF_SYM1629=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM1629
	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:AwaitUnsafeOnCompleted<System.Runtime.CompilerServices.TaskAwaiter,_Plugin.AudioRecorder.AudioRecorderService/<StopRecording>d__59>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_"

	.byte 2,158,4
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
	.quad Lme_99

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1630=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1630
	.byte 1,104,3
	.asciz "awaiter"

LDIFF_SYM1631=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1631
	.byte 2,141,40,3
	.asciz "stateMachine"

LDIFF_SYM1632=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1632
	.byte 2,141,48,11
	.asciz "runnerToInitialize"

LDIFF_SYM1633=LTDIE_142_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1633
	.byte 3,141,240,0,11
	.asciz "continuation"

LDIFF_SYM1634=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1634
	.byte 1,103,11
	.asciz "builtTask"

LDIFF_SYM1635=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1635
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1636=Lfde136_end - Lfde136_start
	.long LDIFF_SYM1636
Lfde136_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_

LDIFF_SYM1637=Lme_99 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_AudioRecorderService__StopRecordingd__59_
	.long LDIFF_SYM1637
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,150,20,151,19,68,152,18
	.align 3
Lfde136_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor"

	.byte 4,91
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor
	.quad Lme_9a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1638=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1638
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1639=Lfde137_end - Lfde137_start
	.long LDIFF_SYM1639
Lfde137_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor

LDIFF_SYM1640=Lme_9a - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor
	.long LDIFF_SYM1640
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde137_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_148:

	.byte 8
	.asciz "System_Threading_Tasks_TaskCreationOptions"

	.byte 4
LDIFF_SYM1641=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1641
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "PreferFairness"

	.byte 1,9
	.asciz "LongRunning"

	.byte 2,9
	.asciz "AttachedToParent"

	.byte 4,9
	.asciz "DenyChildAttach"

	.byte 8,9
	.asciz "HideScheduler"

	.byte 16,9
	.asciz "RunContinuationsAsynchronously"

	.byte 192,0,0,7
	.asciz "System_Threading_Tasks_TaskCreationOptions"

LDIFF_SYM1642=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1642
LTDIE_148_POINTER:

	.byte 13
LDIFF_SYM1643=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1643
LTDIE_148_REFERENCE:

	.byte 14
LDIFF_SYM1644=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1644
	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions"

	.byte 4,97
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions
	.quad Lme_9b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1645=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1645
	.byte 2,141,16,3
	.asciz "state"

LDIFF_SYM1646=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1646
	.byte 2,141,24,3
	.asciz "options"

LDIFF_SYM1647=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1647
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1648=Lfde138_end - Lfde138_start
	.long LDIFF_SYM1648
Lfde138_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions

LDIFF_SYM1649=Lme_9b - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions
	.long LDIFF_SYM1649
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde138_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult"

	.byte 4,104
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult
	.quad Lme_9c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1650=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1650
	.byte 2,141,16,3
	.asciz "result"

LDIFF_SYM1651=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1651
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1652=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1652
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1653=Lfde139_end - Lfde139_start
	.long LDIFF_SYM1653
Lfde139_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM1654=Lme_9c - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM1654
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde139_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken"

	.byte 4,110
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken
	.quad Lme_9d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1655=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1655
	.byte 2,141,16,3
	.asciz "canceled"

LDIFF_SYM1656=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1656
	.byte 2,141,24,3
	.asciz "result"

LDIFF_SYM1657=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1657
	.byte 2,141,32,3
	.asciz "creationOptions"

LDIFF_SYM1658=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1658
	.byte 2,141,48,3
	.asciz "ct"

LDIFF_SYM1659=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1659
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1660=Lfde140_end - Lfde140_start
	.long LDIFF_SYM1660
Lfde140_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken

LDIFF_SYM1661=Lme_9d - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken
	.long LDIFF_SYM1661
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde140_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_149:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM1662=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1662
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM1663=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM1663
LTDIE_149_POINTER:

	.byte 13
LDIFF_SYM1664=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM1664
LTDIE_149_REFERENCE:

	.byte 14
LDIFF_SYM1665=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM1665
LTDIE_150:

	.byte 8
	.asciz "System_Threading_StackCrawlMark"

	.byte 4
LDIFF_SYM1666=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1666
	.byte 9
	.asciz "LookForMe"

	.byte 0,9
	.asciz "LookForMyCaller"

	.byte 1,9
	.asciz "LookForMyCallersCaller"

	.byte 2,9
	.asciz "LookForThread"

	.byte 3,0,7
	.asciz "System_Threading_StackCrawlMark"

LDIFF_SYM1667=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1667
LTDIE_150_POINTER:

	.byte 13
LDIFF_SYM1668=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1668
LTDIE_150_REFERENCE:

	.byte 14
LDIFF_SYM1669=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1669
	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken"

	.byte 4,161,1
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken
	.quad Lme_9e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1670=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1670
	.byte 2,141,16,3
	.asciz "function"

LDIFF_SYM1671=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1671
	.byte 2,141,24,3
	.asciz "cancellationToken"

LDIFF_SYM1672=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1672
	.byte 2,141,32,11
	.asciz "stackMark"

LDIFF_SYM1673=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1673
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1674=Lfde141_end - Lfde141_start
	.long LDIFF_SYM1674
Lfde141_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken

LDIFF_SYM1675=Lme_9e - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken
	.long LDIFF_SYM1675
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde141_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_151:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1676=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1676
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1677=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM1677
LTDIE_151_POINTER:

	.byte 13
LDIFF_SYM1678=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM1678
LTDIE_151_REFERENCE:

	.byte 14
LDIFF_SYM1679=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM1679
	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions"

	.byte 4,194,2
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions
	.quad Lme_9f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1680=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1680
	.byte 2,141,32,3
	.asciz "function"

LDIFF_SYM1681=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1681
	.byte 2,141,40,3
	.asciz "state"

LDIFF_SYM1682=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1682
	.byte 1,105,3
	.asciz "cancellationToken"

LDIFF_SYM1683=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1683
	.byte 2,141,48,3
	.asciz "creationOptions"

LDIFF_SYM1684=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1684
	.byte 3,141,192,0,11
	.asciz "stackMark"

LDIFF_SYM1685=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1685
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1686=Lfde142_end - Lfde142_start
	.long LDIFF_SYM1686
Lfde142_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions

LDIFF_SYM1687=Lme_9f - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions
	.long LDIFF_SYM1687
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9
	.align 3
Lfde142_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_152:

	.byte 8
	.asciz "System_Threading_Tasks_InternalTaskOptions"

	.byte 4
LDIFF_SYM1688=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1688
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "InternalOptionsMask"

	.byte 128,254,3,9
	.asciz "ChildReplica"

	.byte 128,2,9
	.asciz "ContinuationTask"

	.byte 128,4,9
	.asciz "PromiseTask"

	.byte 128,8,9
	.asciz "SelfReplicating"

	.byte 128,16,9
	.asciz "LazyCancellation"

	.byte 128,32,9
	.asciz "QueuedByRuntime"

	.byte 128,192,0,9
	.asciz "DoNotDispose"

	.byte 128,128,1,0,7
	.asciz "System_Threading_Tasks_InternalTaskOptions"

LDIFF_SYM1689=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1689
LTDIE_152_POINTER:

	.byte 13
LDIFF_SYM1690=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1690
LTDIE_152_REFERENCE:

	.byte 14
LDIFF_SYM1691=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1691
LTDIE_153:

	.byte 8
	.asciz "System_Threading_StackCrawlMark"

	.byte 4
LDIFF_SYM1692=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1692
	.byte 9
	.asciz "LookForMe"

	.byte 0,9
	.asciz "LookForMyCaller"

	.byte 1,9
	.asciz "LookForMyCallersCaller"

	.byte 2,9
	.asciz "LookForThread"

	.byte 3,0,7
	.asciz "System_Threading_StackCrawlMark"

LDIFF_SYM1693=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1693
LTDIE_153_POINTER:

	.byte 13
LDIFF_SYM1694=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1694
LTDIE_153_REFERENCE:

	.byte 14
LDIFF_SYM1695=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1695
	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_"

	.byte 4,205,2
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
	.quad Lme_a0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1696=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1696
	.byte 2,141,16,3
	.asciz "valueSelector"

LDIFF_SYM1697=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1697
	.byte 2,141,24,3
	.asciz "parent"

LDIFF_SYM1698=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1698
	.byte 2,141,32,3
	.asciz "cancellationToken"

LDIFF_SYM1699=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1699
	.byte 2,141,40,3
	.asciz "creationOptions"

LDIFF_SYM1700=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1700
	.byte 2,141,56,3
	.asciz "internalOptions"

LDIFF_SYM1701=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1701
	.byte 3,141,192,0,3
	.asciz "scheduler"

LDIFF_SYM1702=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1702
	.byte 3,141,200,0,3
	.asciz "stackMark"

LDIFF_SYM1703=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1703
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1704=Lfde143_end - Lfde143_start
	.long LDIFF_SYM1704
Lfde143_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_

LDIFF_SYM1705=Lme_a0 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
	.long LDIFF_SYM1705
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde143_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler"

	.byte 4,224,2
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
	.quad Lme_a1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1706=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1706
	.byte 2,141,16,3
	.asciz "valueSelector"

LDIFF_SYM1707=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1707
	.byte 2,141,24,3
	.asciz "parent"

LDIFF_SYM1708=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1708
	.byte 2,141,32,3
	.asciz "cancellationToken"

LDIFF_SYM1709=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1709
	.byte 2,141,40,3
	.asciz "creationOptions"

LDIFF_SYM1710=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1710
	.byte 2,141,56,3
	.asciz "internalOptions"

LDIFF_SYM1711=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1711
	.byte 3,141,192,0,3
	.asciz "scheduler"

LDIFF_SYM1712=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1712
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1713=Lfde144_end - Lfde144_start
	.long LDIFF_SYM1713
Lfde144_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler

LDIFF_SYM1714=Lme_a1 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
	.long LDIFF_SYM1714
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde144_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_"

	.byte 4,235,2
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
	.quad Lme_a2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1715=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1715
	.byte 2,141,24,3
	.asciz "valueSelector"

LDIFF_SYM1716=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1716
	.byte 2,141,32,3
	.asciz "state"

LDIFF_SYM1717=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1717
	.byte 2,141,40,3
	.asciz "parent"

LDIFF_SYM1718=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1718
	.byte 2,141,48,3
	.asciz "cancellationToken"

LDIFF_SYM1719=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1719
	.byte 2,141,56,3
	.asciz "creationOptions"

LDIFF_SYM1720=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1720
	.byte 3,141,200,0,3
	.asciz "internalOptions"

LDIFF_SYM1721=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1721
	.byte 3,141,208,0,3
	.asciz "scheduler"

LDIFF_SYM1722=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1722
	.byte 3,141,216,0,3
	.asciz "stackMark"

LDIFF_SYM1723=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1723
	.byte 2,140,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1724=Lfde145_end - Lfde145_start
	.long LDIFF_SYM1724
Lfde145_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_

LDIFF_SYM1725=Lme_a2 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
	.long LDIFF_SYM1725
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,156,10
	.align 3
Lfde145_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler"

	.byte 4,254,2
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
	.quad Lme_a3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1726=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1726
	.byte 2,141,16,3
	.asciz "valueSelector"

LDIFF_SYM1727=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1727
	.byte 2,141,24,3
	.asciz "state"

LDIFF_SYM1728=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1728
	.byte 2,141,32,3
	.asciz "parent"

LDIFF_SYM1729=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1729
	.byte 2,141,40,3
	.asciz "cancellationToken"

LDIFF_SYM1730=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1730
	.byte 2,141,48,3
	.asciz "creationOptions"

LDIFF_SYM1731=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1731
	.byte 3,141,192,0,3
	.asciz "internalOptions"

LDIFF_SYM1732=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1732
	.byte 3,141,200,0,3
	.asciz "scheduler"

LDIFF_SYM1733=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1733
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1734=Lfde146_end - Lfde146_start
	.long LDIFF_SYM1734
Lfde146_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler

LDIFF_SYM1735=Lme_a3 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
	.long LDIFF_SYM1735
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
Lfde146_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:StartNew"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_"

	.byte 4,139,3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
	.quad Lme_a4

	.byte 2,118,16,3
	.asciz "parent"

LDIFF_SYM1736=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1736
	.byte 2,141,16,3
	.asciz "function"

LDIFF_SYM1737=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1737
	.byte 2,141,24,3
	.asciz "cancellationToken"

LDIFF_SYM1738=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1738
	.byte 2,141,32,3
	.asciz "creationOptions"

LDIFF_SYM1739=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1739
	.byte 2,141,48,3
	.asciz "internalOptions"

LDIFF_SYM1740=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1740
	.byte 2,141,56,3
	.asciz "scheduler"

LDIFF_SYM1741=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1741
	.byte 3,141,192,0,3
	.asciz "stackMark"

LDIFF_SYM1742=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1742
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1743=Lfde147_end - Lfde147_start
	.long LDIFF_SYM1743
Lfde147_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_

LDIFF_SYM1744=Lme_a4 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
	.long LDIFF_SYM1744
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
Lfde147_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:StartNew"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_"

	.byte 4,164,3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
	.quad Lme_a5

	.byte 2,118,16,3
	.asciz "parent"

LDIFF_SYM1745=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1745
	.byte 2,141,16,3
	.asciz "function"

LDIFF_SYM1746=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1746
	.byte 2,141,24,3
	.asciz "state"

LDIFF_SYM1747=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1747
	.byte 2,141,32,3
	.asciz "cancellationToken"

LDIFF_SYM1748=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1748
	.byte 2,141,40,3
	.asciz "creationOptions"

LDIFF_SYM1749=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1749
	.byte 2,141,56,3
	.asciz "internalOptions"

LDIFF_SYM1750=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1750
	.byte 3,141,192,0,3
	.asciz "scheduler"

LDIFF_SYM1751=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1751
	.byte 3,141,200,0,3
	.asciz "stackMark"

LDIFF_SYM1752=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1752
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1753=Lfde148_end - Lfde148_start
	.long LDIFF_SYM1753
Lfde148_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_

LDIFF_SYM1754=Lme_a5 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
	.long LDIFF_SYM1754
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde148_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:TrySetResult"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult"

	.byte 4,207,3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult
	.quad Lme_a6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1755=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1755
	.byte 1,106,3
	.asciz "result"

LDIFF_SYM1756=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1756
	.byte 2,141,32,11
	.asciz "cp"

LDIFF_SYM1757=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1757
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1758=Lfde149_end - Lfde149_start
	.long LDIFF_SYM1758
Lfde149_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM1759=Lme_a6 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM1759
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde149_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:DangerousSetResult"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult"

	.byte 4,251,3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult
	.quad Lme_a7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1760=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1760
	.byte 1,106,3
	.asciz "result"

LDIFF_SYM1761=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1761
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1762=Lfde150_end - Lfde150_start
	.long LDIFF_SYM1762
Lfde150_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM1763=Lme_a7 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM1763
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde150_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:get_Result"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result"

	.byte 4,148,4
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result
	.quad Lme_a8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1764=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1764
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1765=Lfde151_end - Lfde151_start
	.long LDIFF_SYM1765
Lfde151_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result

LDIFF_SYM1766=Lme_a8 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result
	.long LDIFF_SYM1766
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde151_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:get_ResultOnSuccess"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess"

	.byte 4,164,4
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess
	.quad Lme_a9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1767=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1767
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1768=Lfde152_end - Lfde152_start
	.long LDIFF_SYM1768
Lfde152_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess

LDIFF_SYM1769=Lme_a9 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess
	.long LDIFF_SYM1769
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde152_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:GetResultCore"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool"

	.byte 4,172,4
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool
	.quad Lme_aa

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1770=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1770
	.byte 1,105,3
	.asciz "waitCompletionNotification"

LDIFF_SYM1771=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1771
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM1772=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1772
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1773=Lfde153_end - Lfde153_start
	.long LDIFF_SYM1773
Lfde153_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool

LDIFF_SYM1774=Lme_aa - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool
	.long LDIFF_SYM1774
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde153_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:TrySetException"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object"

	.byte 4,206,4
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object
	.quad Lme_ab

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1775=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1775
	.byte 1,105,3
	.asciz "exceptionObject"

LDIFF_SYM1776=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1776
	.byte 2,141,32,11
	.asciz "returnValue"

LDIFF_SYM1777=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1777
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1778=Lfde154_end - Lfde154_start
	.long LDIFF_SYM1778
Lfde154_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object

LDIFF_SYM1779=Lme_ab - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object
	.long LDIFF_SYM1779
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde154_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:TrySetCanceled"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken"

	.byte 4,234,4
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken
	.quad Lme_ac

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1780=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1780
	.byte 2,141,16,3
	.asciz "tokenToRecord"

LDIFF_SYM1781=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1781
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1782=Lfde155_end - Lfde155_start
	.long LDIFF_SYM1782
Lfde155_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken

LDIFF_SYM1783=Lme_ac - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken
	.long LDIFF_SYM1783
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde155_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:TrySetCanceled"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object"

	.byte 4,253,4
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object
	.quad Lme_ad

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1784=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1784
	.byte 2,141,24,3
	.asciz "tokenToRecord"

LDIFF_SYM1785=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1785
	.byte 2,141,32,3
	.asciz "cancellationException"

LDIFF_SYM1786=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1786
	.byte 2,141,48,11
	.asciz "returnValue"

LDIFF_SYM1787=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1787
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1788=Lfde156_end - Lfde156_start
	.long LDIFF_SYM1788
Lfde156_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object

LDIFF_SYM1789=Lme_ad - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object
	.long LDIFF_SYM1789
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.align 3
Lfde156_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:get_Factory"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory"

	.byte 4,156,5
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory
	.quad Lme_ae

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1790=Lfde157_end - Lfde157_start
	.long LDIFF_SYM1790
Lfde157_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory

LDIFF_SYM1791=Lme_ae - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory
	.long LDIFF_SYM1791
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde157_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:InnerInvoke"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke"

	.byte 4,165,5
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
	.quad Lme_af

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1792=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1792
	.byte 1,106,11
	.asciz "func"

LDIFF_SYM1793=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1793
	.byte 1,105,11
	.asciz "funcWithState"

LDIFF_SYM1794=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1794
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1795=Lfde158_end - Lfde158_start
	.long LDIFF_SYM1795
Lfde158_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke

LDIFF_SYM1796=Lme_af - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
	.long LDIFF_SYM1796
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.align 3
Lfde158_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:GetAwaiter"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter"

	.byte 4,187,5
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
	.quad Lme_b0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1797=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1797
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1798=Lfde159_end - Lfde159_start
	.long LDIFF_SYM1798
Lfde159_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter

LDIFF_SYM1799=Lme_b0 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
	.long LDIFF_SYM1799
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde159_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:ConfigureAwait"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool"

	.byte 4,197,5
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool
	.quad Lme_b1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1800=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1800
	.byte 2,141,32,3
	.asciz "continueOnCapturedContext"

LDIFF_SYM1801=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1801
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1802=Lfde160_end - Lfde160_start
	.long LDIFF_SYM1802
Lfde160_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool

LDIFF_SYM1803=Lme_b1 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool
	.long LDIFF_SYM1803
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde160_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_154:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM1804=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1804
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM1805=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM1805
LTDIE_154_POINTER:

	.byte 13
LDIFF_SYM1806=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM1806
LTDIE_154_REFERENCE:

	.byte 14
LDIFF_SYM1807=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM1807
	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:ContinueWith"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult"

	.byte 4,225,5
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
	.quad Lme_b2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1808=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1808
	.byte 2,141,16,3
	.asciz "continuationAction"

LDIFF_SYM1809=LTDIE_154_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1809
	.byte 2,141,24,11
	.asciz "stackMark"

LDIFF_SYM1810=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1810
	.byte 2,141,40,11
	.asciz "V_1"

LDIFF_SYM1811=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1811
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1812=Lfde161_end - Lfde161_start
	.long LDIFF_SYM1812
Lfde161_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM1813=Lme_b2 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM1813
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde161_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:ContinueWith"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler"

	.byte 4,155,6
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler
	.quad Lme_b3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1814=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1814
	.byte 2,141,16,3
	.asciz "continuationAction"

LDIFF_SYM1815=LTDIE_154_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1815
	.byte 2,141,24,3
	.asciz "scheduler"

LDIFF_SYM1816=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1816
	.byte 2,141,32,11
	.asciz "stackMark"

LDIFF_SYM1817=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1817
	.byte 2,141,48,11
	.asciz "V_1"

LDIFF_SYM1818=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1818
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1819=Lfde162_end - Lfde162_start
	.long LDIFF_SYM1819
Lfde162_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler

LDIFF_SYM1820=Lme_b3 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler
	.long LDIFF_SYM1820
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde162_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_155:

	.byte 8
	.asciz "System_Threading_Tasks_TaskContinuationOptions"

	.byte 4
LDIFF_SYM1821=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1821
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "PreferFairness"

	.byte 1,9
	.asciz "LongRunning"

	.byte 2,9
	.asciz "AttachedToParent"

	.byte 4,9
	.asciz "DenyChildAttach"

	.byte 8,9
	.asciz "HideScheduler"

	.byte 16,9
	.asciz "LazyCancellation"

	.byte 32,9
	.asciz "RunContinuationsAsynchronously"

	.byte 192,0,9
	.asciz "NotOnRanToCompletion"

	.byte 128,128,4,9
	.asciz "NotOnFaulted"

	.byte 128,128,8,9
	.asciz "NotOnCanceled"

	.byte 128,128,16,9
	.asciz "OnlyOnRanToCompletion"

	.byte 128,128,24,9
	.asciz "OnlyOnFaulted"

	.byte 128,128,20,9
	.asciz "OnlyOnCanceled"

	.byte 128,128,12,9
	.asciz "ExecuteSynchronously"

	.byte 128,128,32,0,7
	.asciz "System_Threading_Tasks_TaskContinuationOptions"

LDIFF_SYM1822=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1822
LTDIE_155_POINTER:

	.byte 13
LDIFF_SYM1823=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1823
LTDIE_155_REFERENCE:

	.byte 14
LDIFF_SYM1824=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1824
	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:ContinueWith"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler"

	.byte 4,236,6
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
	.quad Lme_b4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1825=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1825
	.byte 2,141,16,3
	.asciz "continuationAction"

LDIFF_SYM1826=LTDIE_154_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1826
	.byte 2,141,24,3
	.asciz "cancellationToken"

LDIFF_SYM1827=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1827
	.byte 2,141,32,3
	.asciz "continuationOptions"

LDIFF_SYM1828=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1828
	.byte 2,141,48,3
	.asciz "scheduler"

LDIFF_SYM1829=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1829
	.byte 2,141,56,11
	.asciz "stackMark"

LDIFF_SYM1830=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1830
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1831=Lfde163_end - Lfde163_start
	.long LDIFF_SYM1831
Lfde163_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler

LDIFF_SYM1832=Lme_b4 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
	.long LDIFF_SYM1832
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde163_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:ContinueWith"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_"

	.byte 4,244,6
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_
	.quad Lme_b5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1833=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1833
	.byte 2,141,24,3
	.asciz "continuationAction"

LDIFF_SYM1834=LTDIE_154_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1834
	.byte 2,141,32,3
	.asciz "scheduler"

LDIFF_SYM1835=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1835
	.byte 2,141,40,3
	.asciz "cancellationToken"

LDIFF_SYM1836=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1836
	.byte 2,141,48,3
	.asciz "continuationOptions"

LDIFF_SYM1837=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1837
	.byte 3,141,192,0,3
	.asciz "stackMark"

LDIFF_SYM1838=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1838
	.byte 1,106,11
	.asciz "creationOptions"

LDIFF_SYM1839=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1839
	.byte 3,141,200,0,11
	.asciz "internalOptions"

LDIFF_SYM1840=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM1840
	.byte 3,141,208,0,11
	.asciz "continuationTask"

LDIFF_SYM1841=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1841
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1842=Lfde164_end - Lfde164_start
	.long LDIFF_SYM1842
Lfde164_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_

LDIFF_SYM1843=Lme_b5 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ContinueWith_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskScheduler_System_Threading_CancellationToken_System_Threading_Tasks_TaskContinuationOptions_System_Threading_StackCrawlMark_
	.long LDIFF_SYM1843
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14
	.align 3
Lfde164_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>:.cctor"
	.asciz "System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor"

	.byte 4,81
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor
	.quad Lme_b6

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1844=Lfde165_end - Lfde165_start
	.long LDIFF_SYM1844
Lfde165_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor

LDIFF_SYM1845=Lme_b6 - System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor
	.long LDIFF_SYM1845
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde165_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_156:

	.byte 5
	.asciz "System_Threading_Tasks_TaskFactory`1"

	.byte 40,16
LDIFF_SYM1846=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM1846
	.byte 2,35,0,6
	.asciz "m_defaultCancellationToken"

LDIFF_SYM1847=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1847
	.byte 2,35,16,6
	.asciz "m_defaultScheduler"

LDIFF_SYM1848=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1848
	.byte 2,35,24,6
	.asciz "m_defaultCreationOptions"

LDIFF_SYM1849=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1849
	.byte 2,35,32,6
	.asciz "m_defaultContinuationOptions"

LDIFF_SYM1850=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1850
	.byte 2,35,36,0,7
	.asciz "System_Threading_Tasks_TaskFactory`1"

LDIFF_SYM1851=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM1851
LTDIE_156_POINTER:

	.byte 13
LDIFF_SYM1852=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM1852
LTDIE_156_REFERENCE:

	.byte 14
LDIFF_SYM1853=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM1853
	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor"

	.byte 5,93
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor
	.quad Lme_b7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1854=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1854
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1855=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1855
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1856=Lfde166_end - Lfde166_start
	.long LDIFF_SYM1856
Lfde166_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor

LDIFF_SYM1857=Lme_b7 - System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor
	.long LDIFF_SYM1857
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde166_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler"

	.byte 5,208,1
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
	.quad Lme_b8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1858=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1858
	.byte 1,103,3
	.asciz "cancellationToken"

LDIFF_SYM1859=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1859
	.byte 2,141,24,3
	.asciz "creationOptions"

LDIFF_SYM1860=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1860
	.byte 2,141,40,3
	.asciz "continuationOptions"

LDIFF_SYM1861=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM1861
	.byte 2,141,48,3
	.asciz "scheduler"

LDIFF_SYM1862=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1862
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1863=Lfde167_end - Lfde167_start
	.long LDIFF_SYM1863
Lfde167_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler

LDIFF_SYM1864=Lme_b8 - System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
	.long LDIFF_SYM1864
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6
	.align 3
Lfde167_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1<System.Threading.Tasks.VoidTaskResult>:StartNew"
	.asciz "System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler"

	.byte 5,132,3
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
	.quad Lme_b9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1865=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1865
	.byte 0,3
	.asciz "function"

LDIFF_SYM1866=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1866
	.byte 2,141,32,3
	.asciz "cancellationToken"

LDIFF_SYM1867=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1867
	.byte 2,141,40,3
	.asciz "creationOptions"

LDIFF_SYM1868=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1868
	.byte 2,141,56,3
	.asciz "scheduler"

LDIFF_SYM1869=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1869
	.byte 3,141,192,0,11
	.asciz "stackMark"

LDIFF_SYM1870=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1870
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1871=Lfde168_end - Lfde168_start
	.long LDIFF_SYM1871
Lfde168_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler

LDIFF_SYM1872=Lme_b9 - System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
	.long LDIFF_SYM1872
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8
	.align 3
Lfde168_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1<System.Threading.Tasks.VoidTaskResult>:StartNew"
	.asciz "System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler"

	.byte 5,139,4
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
	.quad Lme_ba

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1873=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1873
	.byte 0,3
	.asciz "function"

LDIFF_SYM1874=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1874
	.byte 2,141,32,3
	.asciz "state"

LDIFF_SYM1875=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1875
	.byte 2,141,40,3
	.asciz "cancellationToken"

LDIFF_SYM1876=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1876
	.byte 2,141,48,3
	.asciz "creationOptions"

LDIFF_SYM1877=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1877
	.byte 3,141,192,0,3
	.asciz "scheduler"

LDIFF_SYM1878=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1878
	.byte 3,141,200,0,11
	.asciz "stackMark"

LDIFF_SYM1879=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1879
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1880=Lfde169_end - Lfde169_start
	.long LDIFF_SYM1880
Lfde169_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler

LDIFF_SYM1881=Lme_ba - System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
	.long LDIFF_SYM1881
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10
	.align 3
Lfde169_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_157:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1882=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1882
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1883=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1883
LTDIE_157_POINTER:

	.byte 13
LDIFF_SYM1884=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1884
LTDIE_157_REFERENCE:

	.byte 14
LDIFF_SYM1885=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1885
LTDIE_159:

	.byte 5
	.asciz "System_SystemException"

	.byte 136,1,16
LDIFF_SYM1886=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM1886
	.byte 2,35,0,0,7
	.asciz "System_SystemException"

LDIFF_SYM1887=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1887
LTDIE_159_POINTER:

	.byte 13
LDIFF_SYM1888=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1888
LTDIE_159_REFERENCE:

	.byte 14
LDIFF_SYM1889=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1889
LTDIE_158:

	.byte 5
	.asciz "System_OperationCanceledException"

	.byte 144,1,16
LDIFF_SYM1890=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1890
	.byte 2,35,0,6
	.asciz "_cancellationToken"

LDIFF_SYM1891=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1891
	.byte 3,35,136,1,0,7
	.asciz "System_OperationCanceledException"

LDIFF_SYM1892=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1892
LTDIE_158_POINTER:

	.byte 13
LDIFF_SYM1893=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1893
LTDIE_158_REFERENCE:

	.byte 14
LDIFF_SYM1894=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1894
	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1<System.Threading.Tasks.VoidTaskResult>:FromAsyncCoreLogic"
	.asciz "System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool"

	.byte 5,158,4
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
	.quad Lme_bb

	.byte 2,118,16,3
	.asciz "iar"

LDIFF_SYM1895=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1895
	.byte 2,141,24,3
	.asciz "endFunction"

LDIFF_SYM1896=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1896
	.byte 1,105,3
	.asciz "endAction"

LDIFF_SYM1897=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1897
	.byte 2,141,32,3
	.asciz "promise"

LDIFF_SYM1898=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1898
	.byte 2,141,40,3
	.asciz "requiresSynchronization"

LDIFF_SYM1899=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1899
	.byte 2,141,48,11
	.asciz "ex"

LDIFF_SYM1900=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1900
	.byte 3,141,232,0,11
	.asciz "oce"

LDIFF_SYM1901=LTDIE_158_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1901
	.byte 3,141,240,0,11
	.asciz "result"

LDIFF_SYM1902=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1902
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1903=Lfde170_end - Lfde170_start
	.long LDIFF_SYM1903
Lfde170_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool

LDIFF_SYM1904=Lme_bb - System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
	.long LDIFF_SYM1904
	.long 0
	.byte 12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,153,30
	.align 3
Lfde170_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1<System.Threading.Tasks.VoidTaskResult>:FromAsync"
	.asciz "System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object"

	.byte 5,138,6
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object
	.quad Lme_bc

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1905=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1905
	.byte 2,141,16,3
	.asciz "beginMethod"

LDIFF_SYM1906=LTDIE_123_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1906
	.byte 2,141,24,3
	.asciz "endMethod"

LDIFF_SYM1907=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1907
	.byte 2,141,32,3
	.asciz "state"

LDIFF_SYM1908=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1908
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1909=Lfde171_end - Lfde171_start
	.long LDIFF_SYM1909
Lfde171_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object

LDIFF_SYM1910=Lme_bc - System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object
	.long LDIFF_SYM1910
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde171_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_160:

	.byte 5
	.asciz "_<>c__DisplayClass35_0"

	.byte 40,16
LDIFF_SYM1911=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM1911
	.byte 2,35,0,6
	.asciz "endFunction"

LDIFF_SYM1912=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1912
	.byte 2,35,16,6
	.asciz "endAction"

LDIFF_SYM1913=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1913
	.byte 2,35,24,6
	.asciz "promise"

LDIFF_SYM1914=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1914
	.byte 2,35,32,0,7
	.asciz "_<>c__DisplayClass35_0"

LDIFF_SYM1915=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1915
LTDIE_160_POINTER:

	.byte 13
LDIFF_SYM1916=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1916
LTDIE_160_REFERENCE:

	.byte 14
LDIFF_SYM1917=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1917
LTDIE_162:

	.byte 5
	.asciz "System_Threading_AtomicBoolean"

	.byte 20,16
LDIFF_SYM1918=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM1918
	.byte 2,35,0,6
	.asciz "flag"

LDIFF_SYM1919=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1919
	.byte 2,35,16,0,7
	.asciz "System_Threading_AtomicBoolean"

LDIFF_SYM1920=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1920
LTDIE_162_POINTER:

	.byte 13
LDIFF_SYM1921=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1921
LTDIE_162_REFERENCE:

	.byte 14
LDIFF_SYM1922=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1922
LTDIE_161:

	.byte 5
	.asciz "_<>c__DisplayClass35_1"

	.byte 32,16
LDIFF_SYM1923=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM1923
	.byte 2,35,0,6
	.asciz "invoked"

LDIFF_SYM1924=LTDIE_162_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1924
	.byte 2,35,16,6
	.asciz "CS$<>8__locals1"

LDIFF_SYM1925=LTDIE_160_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1925
	.byte 2,35,24,0,7
	.asciz "_<>c__DisplayClass35_1"

LDIFF_SYM1926=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1926
LTDIE_161_POINTER:

	.byte 13
LDIFF_SYM1927=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1927
LTDIE_161_REFERENCE:

	.byte 14
LDIFF_SYM1928=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1928
	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1<System.Threading.Tasks.VoidTaskResult>:FromAsyncImpl"
	.asciz "System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions"

	.byte 5,0
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions
	.quad Lme_bd

	.byte 2,118,16,3
	.asciz "beginMethod"

LDIFF_SYM1929=LTDIE_123_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1929
	.byte 1,102,3
	.asciz "endFunction"

LDIFF_SYM1930=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1930
	.byte 2,141,40,3
	.asciz "endAction"

LDIFF_SYM1931=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1931
	.byte 2,141,48,3
	.asciz "state"

LDIFF_SYM1932=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1932
	.byte 1,105,3
	.asciz "creationOptions"

LDIFF_SYM1933=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1933
	.byte 1,106,11
	.asciz "CS$<>8__locals0"

LDIFF_SYM1934=LTDIE_160_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1934
	.byte 3,141,192,0,11
	.asciz "CS$<>8__locals1"

LDIFF_SYM1935=LTDIE_161_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1935
	.byte 1,106,11
	.asciz "asyncResult"

LDIFF_SYM1936=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1936
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM1937=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1937
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1938=Lfde172_end - Lfde172_start
	.long LDIFF_SYM1938
Lfde172_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions

LDIFF_SYM1939=Lme_bd - System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions
	.long LDIFF_SYM1939
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,150,16,68,153,15,154,14
	.align 3
Lfde172_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_163:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM1940=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1940
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM1941=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1941
LTDIE_163_POINTER:

	.byte 13
LDIFF_SYM1942=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1942
LTDIE_163_REFERENCE:

	.byte 14
LDIFF_SYM1943=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1943
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>,_System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_be

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1944=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1944
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM1945=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1945
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1946=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1946
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1947=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1947
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1948=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1948
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1949=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1949
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM1950=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1950
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1951=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1951
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1952=Lfde173_end - Lfde173_start
	.long LDIFF_SYM1952
Lfde173_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM1953=Lme_be - wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM1953
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde173_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:Create"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create"

	.byte 2,188,3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create
	.quad Lme_bf

	.byte 2,118,16,11
	.asciz "V_0"

LDIFF_SYM1954=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1954
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1955=Lfde174_end - Lfde174_start
	.long LDIFF_SYM1955
Lfde174_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create

LDIFF_SYM1956=Lme_bf - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create
	.long LDIFF_SYM1956
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde174_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:SetStateMachine"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 2,229,3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.quad Lme_c0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1957=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1957
	.byte 2,141,16,3
	.asciz "stateMachine"

LDIFF_SYM1958=LTDIE_112_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1958
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1959=Lfde175_end - Lfde175_start
	.long LDIFF_SYM1959
Lfde175_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine

LDIFF_SYM1960=Lme_c0 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.long LDIFF_SYM1960
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde175_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:get_Task"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task"

	.byte 2,190,4
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task
	.quad Lme_c1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1961=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1961
	.byte 2,141,24,11
	.asciz "task"

LDIFF_SYM1962=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1962
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1963=Lfde176_end - Lfde176_start
	.long LDIFF_SYM1963
Lfde176_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task

LDIFF_SYM1964=Lme_c1 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task
	.long LDIFF_SYM1964
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde176_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:SetResult"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult"

	.byte 2,206,4
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult
	.quad Lme_c2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1965=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1965
	.byte 1,106,3
	.asciz "result"

LDIFF_SYM1966=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1966
	.byte 2,141,32,11
	.asciz "task"

LDIFF_SYM1967=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1967
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1968=Lfde177_end - Lfde177_start
	.long LDIFF_SYM1968
Lfde177_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM1969=Lme_c2 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM1969
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3
	.align 3
Lfde177_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:SetResult"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult"

	.byte 2,244,4
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
	.quad Lme_c3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1970=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1970
	.byte 1,105,3
	.asciz "completedTask"

LDIFF_SYM1971=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1971
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1972=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1972
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1973=Lfde178_end - Lfde178_start
	.long LDIFF_SYM1973
Lfde178_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM1974=Lme_c3 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM1974
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde178_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:SetException"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception"

	.byte 2,137,5
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception
	.quad Lme_c4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1975=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1975
	.byte 1,105,3
	.asciz "exception"

LDIFF_SYM1976=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1976
	.byte 1,106,11
	.asciz "task"

LDIFF_SYM1977=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1977
	.byte 1,104,11
	.asciz "oce"

LDIFF_SYM1978=LTDIE_158_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1978
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1979=Lfde179_end - Lfde179_start
	.long LDIFF_SYM1979
Lfde179_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception

LDIFF_SYM1980=Lme_c4 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception
	.long LDIFF_SYM1980
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde179_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:GetTaskForResult"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult"

	.byte 2,225,5
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult
	.quad Lme_c5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1981=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1981
	.byte 0,3
	.asciz "result"

LDIFF_SYM1982=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1982
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1983=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1983
	.byte 0,11
	.asciz "value"

LDIFF_SYM1984=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1984
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1985=Lfde180_end - Lfde180_start
	.long LDIFF_SYM1985
Lfde180_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM1986=Lme_c5 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM1986
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde180_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:.cctor"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor"

	.byte 2,171,3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor
	.quad Lme_c6

	.byte 2,118,16,11
	.asciz "V_0"

LDIFF_SYM1987=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1987
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1988=Lfde181_end - Lfde181_start
	.long LDIFF_SYM1988
Lfde181_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor

LDIFF_SYM1989=Lme_c6 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor
	.long LDIFF_SYM1989
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde181_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<System.Threading.Tasks.VoidTaskResult>:AwaitUnsafeOnCompleted<System.Runtime.CompilerServices.TaskAwaiter,_Plugin.AudioRecorder.WaveRecorder/<StartRecorder>d__6>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_"

	.byte 2,158,4
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
	.quad Lme_c7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1990=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1990
	.byte 1,104,3
	.asciz "awaiter"

LDIFF_SYM1991=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1991
	.byte 2,141,40,3
	.asciz "stateMachine"

LDIFF_SYM1992=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1992
	.byte 2,141,48,11
	.asciz "runnerToInitialize"

LDIFF_SYM1993=LTDIE_142_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1993
	.byte 3,141,248,0,11
	.asciz "continuation"

LDIFF_SYM1994=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1994
	.byte 1,103,11
	.asciz "builtTask"

LDIFF_SYM1995=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1995
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1996=Lfde182_end - Lfde182_start
	.long LDIFF_SYM1996
Lfde182_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_

LDIFF_SYM1997=Lme_c7 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_System_Runtime_CompilerServices_TaskAwaiter__Plugin_AudioRecorder_WaveRecorder__StartRecorderd__6_
	.long LDIFF_SYM1997
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,150,22,151,21,68,152,20
	.align 3
Lfde182_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`1<System.Threading.Tasks.VoidTaskResult>:invoke_TResult"
	.asciz "wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult
	.quad Lme_cc

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1998=LTDIE_149_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1998
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1999=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1999
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM2000=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2000
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM2001=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2001
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM2002=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2002
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM2003=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2003
	.byte 1,105,11
	.asciz "V_5"

LDIFF_SYM2004=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2004
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2005=Lfde183_end - Lfde183_start
	.long LDIFF_SYM2005
Lfde183_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult

LDIFF_SYM2006=Lme_cc - wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult
	.long LDIFF_SYM2006
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9
	.align 3
Lfde183_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<object,_System.Threading.Tasks.VoidTaskResult>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_object
	.quad Lme_d1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2007=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2007
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM2008=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2008
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2009=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2009
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM2010=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2010
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM2011=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2011
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM2012=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2012
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM2013=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2013
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM2014=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2014
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2015=Lfde184_end - Lfde184_start
	.long LDIFF_SYM2015
Lfde184_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_object

LDIFF_SYM2016=Lme_d1 - wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_object
	.long LDIFF_SYM2016
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,150,12,151,11,68,152,10,153,9,68,154,8
	.align 3
Lfde184_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_164:

	.byte 5
	.asciz "System_Runtime_CompilerServices_TaskAwaiter`1"

	.byte 24,16
LDIFF_SYM2017=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM2017
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM2018=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2018
	.byte 2,35,16,0,7
	.asciz "System_Runtime_CompilerServices_TaskAwaiter`1"

LDIFF_SYM2019=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM2019
LTDIE_164_POINTER:

	.byte 13
LDIFF_SYM2020=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM2020
LTDIE_164_REFERENCE:

	.byte 14
LDIFF_SYM2021=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM2021
	.byte 2
	.asciz "System.Runtime.CompilerServices.TaskAwaiter`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult"

	.byte 6,189,2
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
	.quad Lme_d2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2022=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2022
	.byte 2,141,16,3
	.asciz "task"

LDIFF_SYM2023=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2023
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2024=Lfde185_end - Lfde185_start
	.long LDIFF_SYM2024
Lfde185_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM2025=Lme_d2 - System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM2025
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde185_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.TaskAwaiter`1<System.Threading.Tasks.VoidTaskResult>:get_IsCompleted"
	.asciz "System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_get_IsCompleted"

	.byte 6,197,2
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
	.quad Lme_d3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2026=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2026
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2027=Lfde186_end - Lfde186_start
	.long LDIFF_SYM2027
Lfde186_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_get_IsCompleted

LDIFF_SYM2028=Lme_d3 - System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
	.long LDIFF_SYM2028
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde186_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.TaskAwaiter`1<System.Threading.Tasks.VoidTaskResult>:OnCompleted"
	.asciz "System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action"

	.byte 6,208,2
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
	.quad Lme_d4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2029=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2029
	.byte 2,141,16,3
	.asciz "continuation"

LDIFF_SYM2030=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2030
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2031=Lfde187_end - Lfde187_start
	.long LDIFF_SYM2031
Lfde187_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action

LDIFF_SYM2032=Lme_d4 - System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
	.long LDIFF_SYM2032
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde187_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.TaskAwaiter`1<System.Threading.Tasks.VoidTaskResult>:UnsafeOnCompleted"
	.asciz "System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action"

	.byte 6,219,2
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
	.quad Lme_d5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2033=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2033
	.byte 2,141,16,3
	.asciz "continuation"

LDIFF_SYM2034=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2034
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2035=Lfde188_end - Lfde188_start
	.long LDIFF_SYM2035
Lfde188_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action

LDIFF_SYM2036=Lme_d5 - System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
	.long LDIFF_SYM2036
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde188_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.TaskAwaiter`1<System.Threading.Tasks.VoidTaskResult>:GetResult"
	.asciz "System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_GetResult"

	.byte 6,229,2
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_GetResult
	.quad Lme_d6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2037=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2037
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2038=Lfde189_end - Lfde189_start
	.long LDIFF_SYM2038
Lfde189_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_GetResult

LDIFF_SYM2039=Lme_d6 - System_Runtime_CompilerServices_TaskAwaiter_1_System_Threading_Tasks_VoidTaskResult_GetResult
	.long LDIFF_SYM2039
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde189_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_165:

	.byte 5
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable`1"

	.byte 32,16
LDIFF_SYM2040=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM2040
	.byte 2,35,0,6
	.asciz "m_configuredTaskAwaiter"

LDIFF_SYM2041=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2041
	.byte 2,35,16,0,7
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable`1"

LDIFF_SYM2042=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM2042
LTDIE_165_POINTER:

	.byte 13
LDIFF_SYM2043=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM2043
LTDIE_165_REFERENCE:

	.byte 14
LDIFF_SYM2044=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM2044
	.byte 2
	.asciz "System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool"

	.byte 6,210,3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
	.quad Lme_d7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2045=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2045
	.byte 2,141,16,3
	.asciz "task"

LDIFF_SYM2046=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2046
	.byte 2,141,24,3
	.asciz "continueOnCapturedContext"

LDIFF_SYM2047=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2047
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2048=Lfde190_end - Lfde190_start
	.long LDIFF_SYM2048
Lfde190_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool

LDIFF_SYM2049=Lme_d7 - System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
	.long LDIFF_SYM2049
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde190_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1<System.Threading.Tasks.VoidTaskResult>:GetAwaiter"
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter"

	.byte 6,217,3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
	.quad Lme_d8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2050=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2050
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2051=Lfde191_end - Lfde191_start
	.long LDIFF_SYM2051
Lfde191_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter

LDIFF_SYM2052=Lme_d8 - System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
	.long LDIFF_SYM2052
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde191_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_166:

	.byte 5
	.asciz "_ConfiguredTaskAwaiter"

	.byte 32,16
LDIFF_SYM2053=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM2053
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM2054=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2054
	.byte 2,35,16,6
	.asciz "m_continueOnCapturedContext"

LDIFF_SYM2055=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2055
	.byte 2,35,24,0,7
	.asciz "_ConfiguredTaskAwaiter"

LDIFF_SYM2056=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM2056
LTDIE_166_POINTER:

	.byte 13
LDIFF_SYM2057=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM2057
LTDIE_166_REFERENCE:

	.byte 14
LDIFF_SYM2058=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM2058
	.byte 2
	.asciz "System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1/ConfiguredTaskAwaiter<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool"

	.byte 6,238,3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
	.quad Lme_d9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2059=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2059
	.byte 2,141,16,3
	.asciz "task"

LDIFF_SYM2060=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2060
	.byte 2,141,24,3
	.asciz "continueOnCapturedContext"

LDIFF_SYM2061=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2061
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2062=Lfde192_end - Lfde192_start
	.long LDIFF_SYM2062
Lfde192_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool

LDIFF_SYM2063=Lme_d9 - System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
	.long LDIFF_SYM2063
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde192_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1/ConfiguredTaskAwaiter<System.Threading.Tasks.VoidTaskResult>:get_IsCompleted"
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_get_IsCompleted"

	.byte 6,247,3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
	.quad Lme_da

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2064=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2064
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2065=Lfde193_end - Lfde193_start
	.long LDIFF_SYM2065
Lfde193_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_get_IsCompleted

LDIFF_SYM2066=Lme_da - System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_get_IsCompleted
	.long LDIFF_SYM2066
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde193_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1/ConfiguredTaskAwaiter<System.Threading.Tasks.VoidTaskResult>:OnCompleted"
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action"

	.byte 6,130,4
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
	.quad Lme_db

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2067=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2067
	.byte 2,141,16,3
	.asciz "continuation"

LDIFF_SYM2068=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2068
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2069=Lfde194_end - Lfde194_start
	.long LDIFF_SYM2069
Lfde194_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action

LDIFF_SYM2070=Lme_db - System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_OnCompleted_System_Action
	.long LDIFF_SYM2070
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde194_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1/ConfiguredTaskAwaiter<System.Threading.Tasks.VoidTaskResult>:UnsafeOnCompleted"
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action"

	.byte 6,141,4
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
	.quad Lme_dc

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2071=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2071
	.byte 2,141,16,3
	.asciz "continuation"

LDIFF_SYM2072=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2072
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2073=Lfde195_end - Lfde195_start
	.long LDIFF_SYM2073
Lfde195_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action

LDIFF_SYM2074=Lme_dc - System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_UnsafeOnCompleted_System_Action
	.long LDIFF_SYM2074
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde195_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1/ConfiguredTaskAwaiter<System.Threading.Tasks.VoidTaskResult>:GetResult"
	.asciz "System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_GetResult"

	.byte 6,151,4
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_GetResult
	.quad Lme_dd

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2075=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2075
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2076=Lfde196_end - Lfde196_start
	.long LDIFF_SYM2076
Lfde196_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_GetResult

LDIFF_SYM2077=Lme_dd - System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_System_Threading_Tasks_VoidTaskResult_GetResult
	.long LDIFF_SYM2077
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde196_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<System.Threading.Tasks.Task`1<System.Threading.Tasks.VoidTaskResult>>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
	.quad Lme_de

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2078=LTDIE_154_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2078
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM2079=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2079
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2080=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2080
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM2081=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2081
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM2082=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2082
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM2083=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2083
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM2084=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2084
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2085=Lfde197_end - Lfde197_start
	.long LDIFF_SYM2085
Lfde197_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM2086=Lme_de - wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM2086
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde197_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_167:

	.byte 5
	.asciz "System_Threading_Tasks_ContinuationTaskFromResultTask`1"

	.byte 80,16
LDIFF_SYM2087=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM2087
	.byte 2,35,0,6
	.asciz "m_antecedent"

LDIFF_SYM2088=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2088
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_ContinuationTaskFromResultTask`1"

LDIFF_SYM2089=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM2089
LTDIE_167_POINTER:

	.byte 13
LDIFF_SYM2090=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM2090
LTDIE_167_REFERENCE:

	.byte 14
LDIFF_SYM2091=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM2091
	.byte 2
	.asciz "System.Threading.Tasks.ContinuationTaskFromResultTask`1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_"

	.byte 7,131,1
	.quad System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_
	.quad Lme_df

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2092=LTDIE_167_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2092
	.byte 1,100,3
	.asciz "antecedent"

LDIFF_SYM2093=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2093
	.byte 2,141,32,3
	.asciz "action"

LDIFF_SYM2094=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2094
	.byte 2,141,40,3
	.asciz "state"

LDIFF_SYM2095=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2095
	.byte 1,103,3
	.asciz "creationOptions"

LDIFF_SYM2096=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM2096
	.byte 2,141,48,3
	.asciz "internalOptions"

LDIFF_SYM2097=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM2097
	.byte 2,141,56,3
	.asciz "stackMark"

LDIFF_SYM2098=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2098
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM2099=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2099
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2100=Lfde198_end - Lfde198_start
	.long LDIFF_SYM2100
Lfde198_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_

LDIFF_SYM2101=Lme_df - System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_System_Delegate_object_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_StackCrawlMark_
	.long LDIFF_SYM2101
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,68,151,11
	.align 3
Lfde198_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_168:

	.byte 5
	.asciz "System_Action`2"

	.byte 112,16
LDIFF_SYM2102=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM2102
	.byte 2,35,0,0,7
	.asciz "System_Action`2"

LDIFF_SYM2103=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM2103
LTDIE_168_POINTER:

	.byte 13
LDIFF_SYM2104=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM2104
LTDIE_168_REFERENCE:

	.byte 14
LDIFF_SYM2105=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM2105
	.byte 2
	.asciz "System.Threading.Tasks.ContinuationTaskFromResultTask`1<System.Threading.Tasks.VoidTaskResult>:InnerInvoke"
	.asciz "System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke"

	.byte 7,146,1
	.quad System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
	.quad Lme_e0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2106=LTDIE_167_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2106
	.byte 1,106,11
	.asciz "antecedent"

LDIFF_SYM2107=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2107
	.byte 1,105,11
	.asciz "action"

LDIFF_SYM2108=LTDIE_154_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2108
	.byte 1,104,11
	.asciz "actionWithState"

LDIFF_SYM2109=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2109
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2110=Lfde199_end - Lfde199_start
	.long LDIFF_SYM2110
Lfde199_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke

LDIFF_SYM2111=Lme_e0 - System_Threading_Tasks_ContinuationTaskFromResultTask_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
	.long LDIFF_SYM2111
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3,68,154,2
	.align 3
Lfde199_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1/<>c<System.Threading.Tasks.VoidTaskResult>:.cctor"
	.asciz "System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__cctor"

	.byte 0,0
	.quad System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__cctor
	.quad Lme_e1

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2112=Lfde200_end - Lfde200_start
	.long LDIFF_SYM2112
Lfde200_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__cctor

LDIFF_SYM2113=Lme_e1 - System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__cctor
	.long LDIFF_SYM2113
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde200_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.IAsyncResult,_System.Threading.Tasks.VoidTaskResult>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_IAsyncResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_IAsyncResult
	.quad Lme_e6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2114=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2114
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM2115=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2115
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2116=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2116
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM2117=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2117
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM2118=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2118
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM2119=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2119
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM2120=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2120
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM2121=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2121
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2122=Lfde201_end - Lfde201_start
	.long LDIFF_SYM2122
Lfde201_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_IAsyncResult

LDIFF_SYM2123=Lme_e6 - wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_IAsyncResult
	.long LDIFF_SYM2123
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,150,12,151,11,68,152,10,153,9,68,154,8
	.align 3
Lfde201_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1/<>c__DisplayClass35_0<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__ctor"

	.byte 0,0
	.quad System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__ctor
	.quad Lme_e7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2124=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2124
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2125=Lfde202_end - Lfde202_start
	.long LDIFF_SYM2125
Lfde202_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__ctor

LDIFF_SYM2126=Lme_e7 - System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__ctor
	.long LDIFF_SYM2126
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde202_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1/<>c__DisplayClass35_0<System.Threading.Tasks.VoidTaskResult>:<FromAsyncImpl>b__0"
	.asciz "System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__0_System_IAsyncResult"

	.byte 5,223,6
	.quad System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__0_System_IAsyncResult
	.quad Lme_e8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2127=LTDIE_160_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2127
	.byte 2,141,16,3
	.asciz "iar"

LDIFF_SYM2128=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2128
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2129=Lfde203_end - Lfde203_start
	.long LDIFF_SYM2129
Lfde203_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__0_System_IAsyncResult

LDIFF_SYM2130=Lme_e8 - System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__0_System_IAsyncResult
	.long LDIFF_SYM2130
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde203_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1/<>c__DisplayClass35_1<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__ctor"

	.byte 0,0
	.quad System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__ctor
	.quad Lme_e9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2131=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2131
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2132=Lfde204_end - Lfde204_start
	.long LDIFF_SYM2132
Lfde204_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__ctor

LDIFF_SYM2133=Lme_e9 - System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__ctor
	.long LDIFF_SYM2133
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde204_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.TaskFactory`1/<>c__DisplayClass35_1<System.Threading.Tasks.VoidTaskResult>:<FromAsyncImpl>b__1"
	.asciz "System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__1_System_IAsyncResult"

	.byte 5,209,6
	.quad System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__1_System_IAsyncResult
	.quad Lme_ea

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2134=LTDIE_161_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2134
	.byte 1,105,3
	.asciz "iar"

LDIFF_SYM2135=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2135
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2136=Lfde205_end - Lfde205_start
	.long LDIFF_SYM2136
Lfde205_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__1_System_IAsyncResult

LDIFF_SYM2137=Lme_ea - System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_System_Threading_Tasks_VoidTaskResult__FromAsyncImplb__1_System_IAsyncResult
	.long LDIFF_SYM2137
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2
	.align 3
Lfde205_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskCache:CreateCacheableTask<System.Threading.Tasks.VoidTaskResult>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult"

	.byte 2,193,6
	.quad System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult
	.quad Lme_eb

	.byte 2,118,16,3
	.asciz "result"

LDIFF_SYM2138=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2138
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM2139=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2139
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2140=Lfde206_end - Lfde206_start
	.long LDIFF_SYM2140
Lfde206_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult

LDIFF_SYM2141=Lme_eb - System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_VoidTaskResult
	.long LDIFF_SYM2141
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde206_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_169:

	.byte 5
	.asciz "_<>c"

	.byte 16,16
LDIFF_SYM2142=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM2142
	.byte 2,35,0,0,7
	.asciz "_<>c"

LDIFF_SYM2143=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM2143
LTDIE_169_POINTER:

	.byte 13
LDIFF_SYM2144=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM2144
LTDIE_169_REFERENCE:

	.byte 14
LDIFF_SYM2145=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM2145
	.byte 2
	.asciz "System.Threading.Tasks.Task`1/<>c<System.Threading.Tasks.VoidTaskResult>:.ctor"
	.asciz "System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__ctor"

	.byte 0,0
	.quad System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__ctor
	.quad Lme_ec

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2146=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2146
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2147=Lfde207_end - Lfde207_start
	.long LDIFF_SYM2147
Lfde207_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__ctor

LDIFF_SYM2148=Lme_ec - System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult__ctor
	.long LDIFF_SYM2148
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde207_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Threading.Tasks.Task`1/<>c<System.Threading.Tasks.VoidTaskResult>:<.cctor>b__64_0"
	.asciz "System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult___cctorb__64_0_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 4,87
	.quad System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult___cctorb__64_0_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_ed

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2149=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2149
	.byte 0,3
	.asciz "completed"

LDIFF_SYM2150=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2150
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2151=Lfde208_end - Lfde208_start
	.long LDIFF_SYM2151
Lfde208_start:

	.long 0
	.align 3
	.quad System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult___cctorb__64_0_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM2152=Lme_ed - System_Threading_Tasks_Task_1__c_System_Threading_Tasks_VoidTaskResult___cctorb__64_0_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM2152
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde208_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
