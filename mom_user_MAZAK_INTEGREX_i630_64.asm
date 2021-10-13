
_EXCEPTION_POINTERS struc ; (sizeof=0x10, standard type)
ExceptionRecord	dq ?	; offset
ContextRecord dq ?	; offset
_EXCEPTION_POINTERS ends


LEGACY_SAVE_AREA struc ; (sizeof=0x6C, standard	type)
ControlWord dw ?
Reserved0 dw ?
StatusWord dw ?
Reserved1 dw ?
TagWord	dw ?
Reserved2 dw ?
ErrorOffset dd ?
ErrorSelector dw ?
ErrorOpcode dw ?
DataOffset dd ?
DataSelector dw	?
Reserved3 dw ?
FloatRegisters db 80 dup(?)
LEGACY_SAVE_AREA ends


M128 struc ; (sizeof=0x10, standard type)
Low dq ?
High dq	?
M128 ends


_CONTEXT struc ; (sizeof=0x2A0,	standard type)
P1Home dq ?
P2Home dq ?
P3Home dq ?
P4Home dq ?
P5Home dq ?
P6Home dq ?
ContextFlags dd	?
_MxCsr dd ?
SegCs dw ?
SegDs dw ?
SegEs dw ?
SegFs dw ?
SegGs dw ?
SegSs dw ?
EFlags dd ?
Dr0 dq ?
Dr1 dq ?
Dr2 dq ?
Dr3 dq ?
Dr6 dq ?
Dr7 dq ?
_Rax dq	?
_Rcx dq	?
_Rdx dq	?
_Rbx dq	?
_Rsp dq	?
_Rbp dq	?
_Rsi dq	?
_Rdi dq	?
_R8 dq ?
_R9 dq ?
_R10 dq	?
_R11 dq	?
_R12 dq	?
_R13 dq	?
_R14 dq	?
_R15 dq	?
_Rip dq	?
_Xmm0 M128 ?
_Xmm1 M128 ?
_Xmm2 M128 ?
_Xmm3 M128 ?
_Xmm4 M128 ?
_Xmm5 M128 ?
_Xmm6 M128 ?
_Xmm7 M128 ?
_Xmm8 M128 ?
_Xmm9 M128 ?
_Xmm10 M128 ?
_Xmm11 M128 ?
_Xmm12 M128 ?
_Xmm13 M128 ?
_Xmm14 M128 ?
_Xmm15 M128 ?
FltSave	LEGACY_SAVE_AREA ?
Fill dd	?
DebugControl dq	?
LastBranchToRip	dq ?
LastBranchFromRip dq ?
LastExceptionToRip dq ?
LastExceptionFromRip dq	?
Fill1 dq ?
_CONTEXT ends


_LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E struc	; (sizeof=0x8, standard	type)
LowPart	dd ?
HighPart dd ?
_LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ends


LARGE_INTEGER union ; (sizeof=0x8, standard type)
anonymous_0 _LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ?
u _LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ?
QuadPart dq ?
LARGE_INTEGER ends


_FILETIME struc	; (sizeof=0x8, standard	type)
dwLowDateTime dd ?
dwHighDateTime dd ?
_FILETIME ends


RUNTIME_FUNCTION struc ; (sizeof=0xC)
FunctionStart dd ?	; offset rva
FunctionEnd dd ?	; offset rva pastend
UnwindInfo dd ?		; offset rva
RUNTIME_FUNCTION ends


UNWIND_INFO struc ; (sizeof=0x4)
Ver3_Flags db ?		; base 16
PrologSize db ?		; base 16
CntUnwindCodes db ?	; base 16
FrReg_FrRegOff db ?	; base 16
UNWIND_INFO ends


UNWIND_CODE struc ; (sizeof=0x2)
PrologOff db ?		; base 16
OpCode_OpInfo db ?	; base 16
UNWIND_CODE ends


C_SCOPE_TABLE struc ; (sizeof=0x10)
Begin dd ?		; offset rva
End dd ?		; offset rva pastend
Handler	dd ?		; offset rva
Target dd ?		; offset rva
C_SCOPE_TABLE ends


_msEhRef struc ; (sizeof=0x20)
Id dd ?			; base 16
Cnt1 dd	?		; base 10
Tbl1 dd	?		; offset rva
Cnt2 dd	?		; base 10
Tbl2 dd	?		; offset rva
Cnt3 dd	?		; base 10
Tbl3 dd	?		; offset rva
_unk dd	?		; base 16
_msEhRef ends


_msEhDsc1 struc	; (sizeof=0x8)
Mode dd	?		; base 10
Entry dd ?		; offset rva
_msEhDsc1 ends


_msEhDsc2 struc	; (sizeof=0x8)
Entry dd ?		; offset rva
Mode dd	?		; base 10
_msEhDsc2 ends


;
; Input	MD5   :	9EB90B5BC79F440899B92FA9A256E21C
; Input	CRC32 :	57FF161F

; File Name   :	F:\Mazak_Integrex_i630V_2017\mom_user_MAZAK_INTEGREX_i630_64.dll
; Format      :	Portable executable for	AMD64 (PE)
; Imagebase   :	180000000
; Section 1. (virtual address 00001000)
; Virtual size			: 00003272 (  12914.)
; Section size in file		: 00003400 (  13312.)
; Offset to raw	data for section: 00000400
; Flags	60000020: Text Executable Readable
; Alignment	: default
; Exported entry   1. NXSigningResource
; OS type	  :  MS	Windows
; Application type:  DLL

.686p
.mmx
.model flat


; Segment type:	Pure code
; Segment permissions: Read/Execute
_text segment para public 'CODE' use64
assume cs:_text
;org 180001000h
assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing



public NXSigningResource
NXSigningResource proc near
retn	0
NXSigningResource endp

align 10h
; Exported entry   2. entry_rtv_mom_cp_part_attr



public entry_rtv_mom_cp_part_attr
entry_rtv_mom_cp_part_attr proc	near

var_18=	qword ptr -18h
arg_0= qword ptr  8
arg_8= qword ptr  10h
arg_18=	qword ptr  20h

mov	[rsp+arg_0], rbx
mov	[rsp+arg_8], rsi
push	rdi
sub	rsp, 30h
mov	rdi, rdx
mov	rsi, rcx
mov	[rsp+38h+var_18], 0
xor	bl, bl
call	cs:UF_is_initialized
test	eax, eax
jnz	short loc_18000104A
call	cs:UF_initialize
test	eax, eax
jnz	loc_1800010D6
mov	bl, 1

loc_18000104A:
lea	rdx, [rsp+38h+var_18]
mov	rcx, rsi
call	cs:UF_MOM_ask_interp_from_param
lea	rdx, [rsp+38h+arg_18]
mov	rcx, rsi
call	cs:UF_MOM_ask_mom
call	sub_180003730
cmp	eax, 1
jz	short loc_1800010AC
lea	rdx, unk_1800052B0
lea	rcx, aAsRasx	; "¬ÌËÏ‡ÌËÂ!"
mov	r8d, 3
call	cs:UF_UI_display_nonmodal_msg
mov	rcx, [rsp+38h+arg_18]
lea	rdx, aMom_abort	; "MOM_abort \"\""
call	cs:UF_MOM_execute_command
mov	cs:dword_180009820, 1
call	cs:UF_terminate

loc_1800010AC:
mov	rcx, [rsp+38h+arg_18]
lea	r8, sub_1800010F0
lea	rdx, aExtn_rtv_mom_c ; "EXTN_rtv_mom_cp_part_attr"
call	cs:UF_MOM_extend_xlator
mov	dword ptr [rdi], 0
cmp	bl, 1
jnz	short loc_1800010D6
call	cs:UF_terminate

loc_1800010D6:
mov	rbx, [rsp+38h+arg_0]
mov	rsi, [rsp+38h+arg_8]
add	rsp, 30h
pop	rdi
retn
entry_rtv_mom_cp_part_attr endp

algn_1800010E6:
align 10h


; Attributes: bp-based frame fpd=2B0h

sub_1800010F0 proc near

var_360= dword ptr -360h
var_35C= dword ptr -35Ch
var_348= dword ptr -348h
var_344= dword ptr -344h
var_340= qword ptr -340h
var_338= qword ptr -338h
var_A0=	dword ptr -0A0h
var_9C=	word ptr -9Ch
var_9A=	qword ptr -9Ah
var_92=	word ptr -92h
var_90=	qword ptr -90h
var_88=	byte ptr -88h
var_87=	dword ptr -87h
var_83=	word ptr -83h
var_81=	byte ptr -81h
var_58=	qword ptr -58h
arg_8= qword ptr  18h
arg_10=	qword ptr  20h

mov	[rsp-8+arg_8], rbx
mov	[rsp-8+arg_10],	rdi
push	rbp
lea	rbp, [rsp-2B0h]
sub	rsp, 3B0h
mov	rax, cs:qword_180009000
xor	rax, rsp
mov	[rbp+2B0h+var_58], rax
mov	eax, cs:dword_1800053EC
movsd	xmm0, cs:qword_180007978
movsd	xmm1, cs:qword_180007970
mov	[rbp+2B0h+var_A0], eax
movzx	eax, cs:word_1800053F0
mov	rdi, r9
movsd	[rsp+3B0h+var_340], xmm0
movsd	[rsp+3B0h+var_338], xmm1
mov	[rbp+2B0h+var_9C], ax
xor	eax, eax
mov	rbx, rcx
mov	[rbp+2B0h+var_9A], rax
mov	[rbp+2B0h+var_92], ax
mov	rax, cs:qword_1800053F8
mov	[rbp+2B0h+var_90], rax
movzx	eax, cs:byte_180005400
mov	[rsp+3B0h+var_348], 1
mov	[rbp+2B0h+var_88], al
xor	eax, eax
mov	[rsp+3B0h+var_344], 1
mov	[rsp+3B0h+var_360], 1
mov	[rsp+3B0h+var_35C], 1
mov	[rbp+2B0h+var_87], eax
mov	[rbp+2B0h+var_83], ax
mov	[rbp+2B0h+var_81], al
call	sub_180003730
cmp	eax, 1
jz	short loc_1800011DD
lea	rdx, unk_1800052B0
lea	rcx, aAsRasx	; "¬ÌËÏ‡ÌËÂ!"
xor	r8d, r8d
call	cs:UF_UI_display_nonmodal_msg
jmp	sub_180003590

loc_1800011DD:
mov	rcx, [rdi+8]
sub_1800010F0 endp ; sp-analysis failed




sub_1800011E1 proc near

arg_18=	qword ptr  20h
arg_20=	qword ptr  28h
arg_48=	byte ptr  50h
arg_60=	byte ptr  68h
arg_68=	qword ptr  70h
arg_70=	qword ptr  78h
arg_368= xmmword ptr  370h
arg_378= xmmword ptr  380h
arg_388= xmmword ptr  390h
arg_398= xmmword ptr  3A0h

movaps	[rsp+arg_398], xmm6
movaps	[rsp+arg_388], xmm7
movaps	[rsp+arg_378], xmm8
movaps	[rsp+arg_368], xmm9
call	cs:atoi
dec	eax
cmp	eax, 0CDh	; switch 206 cases
ja	loc_180003557	; jumptable 0000000180001231 default case
lea	rdx, cs:180000000h
cdqe
movzx	eax, ds:(byte_180003648	- 180000000h)[rdx+rax]
mov	ecx, dword ptr ds:(loc_1800035C8 - 180000000h)[rdx+rax*4]
add	rcx, rdx
jmp	rcx		; switch jump
lea	r9, qword_1800098C8 ; jumptable	0000000180001231 case 0
lea	r8, unk_180005404
lea	rdx, aPost_point ; "post_point"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_1800098D0
lea	r8, a1		; "1"
lea	rdx, aPost_point ; "post_point"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_1800098D8
lea	r8, a2		; "2"
lea	rdx, aPost_point ; "post_point"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
mov	r8d, 3
lea	r9, qword_1800098C8
lea	ecx, [r8-2]
lea	rdx, qword_1800098C8
call	cs:UF_CSYS_map_point
lea	r8, unk_180005404
lea	rdx, aPost_point_pos ; "post_point_pos"
movsd	xmm3, cs:qword_1800098C8
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a1		; "1"
lea	rdx, aPost_point_pos ; "post_point_pos"
movsd	xmm3, cs:qword_1800098D0
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a2		; "2"
lea	rdx, aPost_point_pos ; "post_point_pos"
movsd	xmm3, cs:qword_1800098D8
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
jmp	loc_180003557	; jumptable 0000000180001231 default case

loc_18000130D:		; jumptable 0000000180001231 case 1
lea	r9, qword_180009838
lea	r8, unk_180005404
lea	rdx, aContact_normal ; "contact_normal"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009840
lea	r8, a1		; "1"
lea	rdx, aContact_normal ; "contact_normal"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009848
lea	r8, a2		; "2"
lea	rdx, aContact_normal ; "contact_normal"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009890
lea	r8, unk_180005404
lea	rdx, aTool_axis	; "tool_axis"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009898
lea	r8, a1		; "1"
lea	rdx, aTool_axis	; "tool_axis"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_1800098A0
lea	r8, a2		; "2"
lea	rdx, aTool_axis	; "tool_axis"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009880
lea	r8, unk_180005404
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009888
lea	r8, a1		; "1"
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
movsd	xmm6, cs:qword_180009880
movsd	xmm8, cs:qword_180009888
mulsd	xmm6, cs:qword_180007968
mulsd	xmm8, cs:qword_180007960
divsd	xmm6, cs:qword_180007958
divsd	xmm8, cs:qword_180007958
movapd	xmm0, xmm6
movsd	cs:qword_1800098E0, xmm6
movsd	cs:qword_1800098E8, xmm8
call	cos
movapd	xmm7, xmm0
movapd	xmm0, xmm6
call	sin
movapd	xmm9, xmm7
movapd	xmm1, xmm0
mulsd	xmm0, cs:qword_180009838
mulsd	xmm1, cs:qword_180009848
mulsd	xmm7, cs:qword_180009848
addsd	xmm0, xmm7
movsd	cs:qword_180009860, xmm0
movapd	xmm0, xmm8
mulsd	xmm9, cs:qword_180009838
subsd	xmm9, xmm1
call	cos
movapd	xmm6, xmm0
movapd	xmm0, xmm8
call	sin
movapd	xmm2, xmm6
lea	r8, qword_1800098F0
lea	rdx, qword_180009890
lea	rcx, qword_180009850
movapd	xmm1, xmm0
mulsd	xmm6, xmm9
mulsd	xmm2, cs:qword_180009840
mulsd	xmm0, cs:qword_180009840
subsd	xmm6, xmm0
movsd	cs:qword_180009850, xmm6
mulsd	xmm1, xmm9
addsd	xmm2, xmm1
movsd	cs:qword_180009858, xmm2
call	cs:UF_VEC3_dot
movsd	xmm2, cs:qword_1800098F0
movsd	xmm1, cs:qword_1800098A0
movsd	xmm5, cs:qword_180009890
lea	r9, qword_1800098A8
lea	r8, unk_1800098C0
lea	rcx, qword_1800098A8
mulsd	xmm1, xmm2
mulsd	xmm5, xmm2
subsd	xmm1, cs:qword_180009860
movsd	xmm0, cs:qword_180009898
subsd	xmm5, cs:qword_180009850
mulsd	xmm0, xmm2
subsd	xmm0, cs:qword_180009858
movsd	cs:qword_1800098B8, xmm1
movsd	xmm1, cs:qword_180007950
movsd	cs:qword_1800098A8, xmm5
movsd	cs:qword_1800098B0, xmm0
call	cs:UF_VEC3_unitize
lea	r8, unk_180005404
lea	rdx, aV_vector	; "v_vector"
movsd	xmm3, cs:qword_1800098A8
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a1		; "1"
lea	rdx, aV_vector	; "v_vector"
movsd	xmm3, cs:qword_1800098B0
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a2		; "2"
lea	rdx, aV_vector	; "v_vector"
movsd	xmm3, cs:qword_1800098B8
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, unk_180005404
lea	rdx, aContact_normal ; "contact_normal"
movsd	xmm3, cs:qword_180009850
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a1		; "1"
lea	rdx, aContact_normal ; "contact_normal"
movsd	xmm3, cs:qword_180009858
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a2		; "2"
lea	rdx, aContact_normal ; "contact_normal"
movsd	xmm3, cs:qword_180009860
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, unk_180005404
lea	rdx, aComp_vector ; "comp_vector"
movsd	xmm3, cs:qword_180009890
subsd	xmm3, cs:qword_180009850
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a1		; "1"
lea	rdx, aComp_vector ; "comp_vector"
movsd	xmm3, cs:qword_180009898
subsd	xmm3, cs:qword_180009858
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a2		; "2"
lea	rdx, aComp_vector ; "comp_vector"
movsd	xmm3, cs:qword_1800098A0
subsd	xmm3, cs:qword_180009860
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
jmp	loc_180003557	; jumptable 0000000180001231 default case

loc_1800016B2:		; jumptable 0000000180001231 case 2
lea	r9, unk_180009058
lea	r8, unk_180005404
lea	rdx, aPos	; "pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, unk_180009060
lea	r8, a1		; "1"
lea	rdx, aPos	; "pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+0C8h]
lea	r8, qword_180009830
xorpd	xmm5, xmm5
movsd	xmm1, cs:qword_180007950
lea	rcx, unk_180009058
movsd	cs:qword_180009068, xmm5
call	cs:UF_VEC3_unitize
lea	r9, qword_180009828
lea	r8, unk_180009040
lea	rdx, unk_180009058
lea	rcx, unk_180009028
call	cs:UF_VEC3_angle_between
movsd	xmm2, cs:qword_180009828
mulsd	xmm2, cs:qword_180007958
divsd	xmm2, cs:qword_180007960
comisd	xmm2, cs:qword_180007958
movsd	cs:qword_180009828, xmm2
jbe	short loc_180001779
subsd	xmm2, cs:qword_180007948
movsd	cs:qword_180009828, xmm2

loc_180001779:		; "poly_ang"
lea	rdx, aPoly_ang
mov	rcx, rbx
call	cs:UF_MOM_set_double
lea	rdx, aPoly_dlina ; "poly_dlina"
mov	rcx, rbx
movsd	xmm2, cs:qword_180009830
call	cs:UF_MOM_set_double
jmp	loc_180003557	; jumptable 0000000180001231 default case

loc_1800017A6:		; jumptable 0000000180001231 case 3
call	cs:UF_UI_close_listing_window
mov	ecx, 1
call	cs:UF_UI_lock_ug_access
lea	r11, [rsp+arg_48]
lea	rax, [rsp+arg_68]
mov	[rsp+arg_20], r11
lea	r9, [rsp+arg_60]
lea	rdx, [rbp+210h]
lea	rcx, unk_1800054A0
mov	r8d, 2
mov	[rsp+arg_18], rax
call	cs:uc1608
lea	rdx, aKin_retract_di ; "kin_retract_distance"
mov	rcx, rbx
movsd	xmm2, [rsp+arg_68]
call	cs:UF_MOM_set_double
lea	rdx, aKin_reengage_d ; "kin_reengage_distance"
mov	rcx, rbx
movsd	xmm2, [rsp+arg_70]
call	cs:UF_MOM_set_double
mov	ecx, 1
call	cs:UF_UI_unlock_ug_access
jmp	loc_180003557	; jumptable 0000000180001231 default case

loc_180001826:		; jumptable 0000000180001231 case 4
lea	rcx, unk_180005500
xor	edx, edx
sub_1800011E1 endp ; sp-analysis failed




sub_18000182F proc near

String=	qword ptr  58h
arg_358= xmmword ptr  360h

movaps	[rsp+arg_358], xmm10
call	cs:uc1601
lea	r9, [rbp+18h]
lea	r8, unk_180005404
lea	rdx, aPrev_mcs_goto ; "prev_mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+20h]
lea	r8, a1		; "1"
lea	rdx, aPrev_mcs_goto ; "prev_mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+28h]
lea	r8, a2		; "2"
lea	rdx, aPrev_mcs_goto ; "prev_mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+0]
lea	r8, unk_180005404
lea	rdx, aPrev_tool_axis ; "prev_tool_axis"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+8]
lea	r8, a1		; "1"
lea	rdx, aPrev_tool_axis ; "prev_tool_axis"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+10h]
lea	r8, a2		; "2"
lea	rdx, aPrev_tool_axis ; "prev_tool_axis"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r8, [rsp+String]
lea	rdx, aKin_retract_di ; "kin_retract_distance"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
lea	r8, [rbp-78h]
lea	rdx, aKin_reengage_d ; "kin_reengage_distance"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
mov	rcx, [rsp+String] ; String
call	cs:atof
mov	rcx, [rbp-78h]	; String
movapd	xmm6, xmm0
call	cs:atof
mov	rcx, [rsp+String]
movapd	xmm7, xmm0
call	cs:UF_free
lea	r8, unk_180005404
movsd	xmm10, qword ptr [rbp+0]
movsd	xmm9, qword ptr	[rbp+8]
movsd	xmm8, qword ptr	[rbp+10h]
lea	rdx, aPos	; "pos"
mov	rcx, rbx
movapd	xmm3, xmm10
movapd	xmm1, xmm9
movapd	xmm0, xmm8
mulsd	xmm10, xmm7
mulsd	xmm9, xmm7
mulsd	xmm8, xmm7
addsd	xmm10, qword ptr [rbp+18h]
addsd	xmm9, qword ptr	[rbp+20h]
addsd	xmm8, qword ptr	[rbp+28h]
mulsd	xmm3, xmm6
mulsd	xmm1, xmm6
mulsd	xmm0, xmm6
addsd	xmm3, qword ptr	[rbp+18h]
addsd	xmm1, qword ptr	[rbp+20h]
addsd	xmm0, qword ptr	[rbp+28h]
movsd	qword ptr [rbp-30h], xmm3
movsd	qword ptr [rbp-28h], xmm1
movsd	qword ptr [rbp-20h], xmm0
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a1		; "1"
lea	rdx, aPos	; "pos"
mov	rcx, rbx
movsd	xmm3, qword ptr	[rbp-28h]
call	cs:UF_MOM_set_assoc_double_array
movsd	xmm3, qword ptr	[rbp-20h]
lea	r8, a2		; "2"
lea	rdx, aPos	; "pos"
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, unk_180005404
lea	rdx, aPos_reen	; "pos_reen"
movapd	xmm3, xmm10
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a1		; "1"
lea	rdx, aPos_reen	; "pos_reen"
movapd	xmm3, xmm9
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a2		; "2"
lea	rdx, aPos_reen	; "pos_reen"
movapd	xmm3, xmm8
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
movaps	xmm10, [rsp+arg_358]
jmp	loc_180003557	; jumptable 0000000180001231 default case
sub_18000182F endp



; jumptable 0000000180001231 case 5

sub_180001A4E proc near

arg_18=	qword ptr  20h
arg_20=	qword ptr  28h
arg_28=	qword ptr  30h
arg_30=	qword ptr  38h
String=	qword ptr  40h
arg_40=	dword ptr  48h
arg_44=	dword ptr  4Ch
arg_58=	byte ptr  60h
arg_368= xmmword ptr  370h
arg_378= xmmword ptr  380h
arg_388= xmmword ptr  390h
arg_398= xmmword ptr  3A0h

lea	r9, [rbp+30h]
lea	r8, unk_180005404
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+38h]
lea	r8, a1		; "1"
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
movsd	xmm0, qword ptr	[rbp+30h]
mulsd	xmm0, cs:qword_180007960
divsd	xmm0, cs:qword_180007958
call	cos
lea	r8, aMom_output_lit ; "MOM_output_literal \"\\043600=\\133\\133\\04"...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
movapd	xmm3, xmm0
movq	r9, xmm3
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001ACC:		; jumptable 0000000180001231 case 6
lea	r8, [rsp+String]
lea	rdx, aAngle_tool_new ; "angle_tool_new"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
lea	r8, [rsp+arg_58]
lea	rdx, aInput_zero_int ; "input_zero_int"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
mov	rcx, [rsp+String] ; String
call	cs:atof
lea	r8, aMom_output_l_0 ; "MOM_output_literal \"G0 B%.3lf\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
movapd	xmm3, xmm0
movq	r9, xmm3
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output_l_1 ; "MOM_output_literal \"M107\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001B58:		; jumptable 0000000180001231 case 7
lea	r8, [rsp+String]
lea	rdx, aAngle_tool_new ; "angle_tool_new"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
lea	r8, [rsp+arg_58]
lea	rdx, aInput_zero_int ; "input_zero_int"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
mov	rcx, [rsp+String] ; String
call	cs:atof
lea	r8, aMom_output_l_0 ; "MOM_output_literal \"G0 B%.3lf\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
movapd	xmm3, xmm0
movq	r9, xmm3
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output_l_1 ; "MOM_output_literal \"M107\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aPutsOfile60060 ; "puts $ofile  \"#600=[[#[60000+#3020]+300"...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
jmp	loc_180003557	; jumptable 0000000180001231 default case

loc_180001C06:		; jumptable 0000000180001231 case 8
mov	cs:dword_180009820, 0
jmp	loc_180003557	; jumptable 0000000180001231 default case

loc_180001C15:		; jumptable 0000000180001231 case 9
lea	rdx, aMom_output_l_2
jmp	loc_18000354E

loc_180001C21:		; jumptable 0000000180001231 case 17
lea	r8, [rsp+String]
lea	rdx, aAngle_tool_new ; "angle_tool_new"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
lea	r8, [rsp+arg_58]
lea	rdx, aInput_zero_int ; "input_zero_int"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
mov	rcx, [rsp+String] ; String
call	cs:atof
lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
mov	rcx, rbx
movapd	xmm6, xmm0
call	cs:UF_MOM_execute_command
lea	r8, aMom_output_l_0 ; "MOM_output_literal \"G0 B%.3lf\""
movapd	xmm3, xmm6
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
movq	r9, xmm3
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output_l_1 ; "MOM_output_literal \"M107\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output_l_4 ; "MOM_output_literal \"G43 P1 H$mom_tool_n"...
jmp	loc_18000354E

loc_180001CD1:		; jumptable 0000000180001231 case 18
lea	r9, [rbp+30h]
lea	r8, unk_180005404
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+38h]
lea	r8, a1		; "1"
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+0B0h]
lea	r8, unk_180005404
lea	rdx, aPrev_out_angle ; "prev_out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+0B8h]
lea	r8, a1		; "1"
lea	rdx, aPrev_out_angle ; "prev_out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-30h]
lea	r8, unk_180005404
lea	rdx, aPos	; "pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-28h]
lea	r8, a1		; "1"
lea	rdx, aPos	; "pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-20h]
lea	r8, a2		; "2"
lea	rdx, aPos	; "pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r8, [rbp-68h]
lea	rdx, aP_num	; "P_num"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
mov	rcx, [rbp-68h]	; String
call	cs:atof
movsd	xmm0, qword ptr	[rbp+30h]
mulsd	xmm0, cs:qword_180007960
divsd	xmm0, cs:qword_180007958
call	cos
lea	r8, aMom_output_l_5 ; "MOM_output_literal \"\\043600=\\133\\133\\04"...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
movapd	xmm3, xmm0
movq	r9, xmm3
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001DFA:		; jumptable 0000000180001231 case 19
lea	r8, aPb_cmd_output_
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001E1F:		; jumptable 0000000180001231 case 20
lea	r8, aMom_output_l_6
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output_l_7 ; "MOM_output_literal \"G18\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output_l_8 ; "MOM_output_literal \"M202\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output_l_9 ; "MOM_output_literal \"G123.1\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001EBF:		; jumptable 0000000180001231 case 21
lea	r8, aMom_output__10
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001EE4:		; jumptable 0000000180001231 case 22
lea	r8, aMom_output__11
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__12 ; "MOM_output_literal \"\\043702=0\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__13 ; "MOM_output_literal \"\\043751 = \\0439101\""...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001F5B:		; jumptable 0000000180001231 case 23
lea	r8, aMom_output_l_6
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001F80:		; jumptable 0000000180001231 case 24
lea	r8, aMom_output__14
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__15 ; "MOM_output_literal \"G12.1 (INTERPOLYAZI"...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001FCE:		; jumptable 0000000180001231 case 25
lea	r8, aMom_output__16
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180001FF3:		; jumptable 0000000180001231 case 26
lea	r8, aMom_output__17
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_180002018:		; jumptable 0000000180001231 case 29
lea	r8, aMom_output__18
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__19 ; "MOM_output_literal \"G0 G53 X0.\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__20 ; "MOM_output_literal \"G0 G53 Y-125. Z0.\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_18000208F:		; jumptable 0000000180001231 case 30
lea	r8, [rbp-70h]
lea	rdx, aC_val	; "C_VAL"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
lea	r8, [rbp-58h]
lea	rdx, aU_val	; "U_VAL"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
mov	rcx, [rbp-70h]	; String
call	cs:atof
mov	rcx, [rbp-58h]	; String
movapd	xmm7, xmm0
call	cs:atof
lea	r8, aMom_output__21 ; "MOM_output_literal \"M00\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
movapd	xmm6, xmm0
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__22 ; "MOM_output_literal \"M202 M302\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__23 ; "MOM_output_literal \"M205 M305\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__24 ; "MOM_output_literal \"M902\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__25 ; "MOM_output_literal \"M300\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__26 ; "MOM_output_literal \"G55	G0 G90 U%.3lf\""
lea	rcx, [rbp+0E0h]	; char *
movapd	xmm3, xmm6
movq	r9, xmm3
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__27 ; "MOM_output_literal \"M901\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__28 ; "MOM_output_literal \"M200\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__29 ; "MOM_output_literal \"G54	G0 G90 C%.3lf\""
lea	rcx, [rbp+0E0h]	; char *
movapd	xmm3, xmm7
movq	r9, xmm3
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__30 ; "MOM_output_literal \"M306\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__31 ; "MOM_output_literal \"M542\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__32 ; "MOM_output_literal \"G0 W\\133\\043750\\135"...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__33 ; "MOM_output_literal \"M508\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__34 ; "MOM_output_literal \"G1 G94 W\\133-\\04375"...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_18000231F:		; jumptable 0000000180001231 case 31
lea	r8, asc_180005B98
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__35 ; "MOM_output_literal \"\\0435243 =	\\0435223"...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__36 ; "MOM_output_literal \"\\0435248 =	\\0435228"...
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__37 ; "MOM_output_literal \"G10.9X0\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__38 ; "MOM_output_literal \"\\0435241 =	-490.\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_1800023E8:		; jumptable 0000000180001231 case 32
lea	r8, [rbp-60h]
lea	rdx, aAlt_x	; "alt_X"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
lea	r8, [rbp-50h]
lea	rdx, aAlt_y	; "alt_Y"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
lea	r8, [rbp-80h]
lea	rdx, aAlt_z	; "alt_Z"
mov	rcx, rbx
call	cs:UF_MOM_ask_string
mov	rcx, [rbp-60h]	; String
call	cs:atof
mov	rcx, [rbp-50h]	; String
movapd	xmm6, xmm0
call	cs:atof
mov	rcx, [rbp-80h]	; String
movapd	xmm8, xmm0
call	cs:atof
lea	r8, aMom_output__18 ; "MOM_output_literal \"G10.9X1\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
movapd	xmm7, xmm0
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__39 ; "MOM_output_literal \"G0 G53 X%.3lf\""
lea	rcx, [rbp+0E0h]	; char *
movapd	xmm3, xmm6
movq	r9, xmm3
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__40 ; "MOM_output_literal \"G0 G53 Y%.3lf Z%.3l"...
lea	rcx, [rbp+0E0h]	; char *
movapd	xmm3, xmm8
movsd	[rsp+arg_18], xmm7
movq	r9, xmm3
mov	edx, 1F4h	; size_t
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
jmp	loc_18000354E

loc_1800024DF:		; jumptable 0000000180001231 case 199
lea	rcx, aHttpWww_postpr
mov	edx, 1
call	cs:uc1601
lea	r9, [rbp-48h]
lea	r8, unk_180005404
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-40h]
lea	r8, a1		; "1"
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-38h]
lea	r8, a2		; "2"
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009880
lea	r8, unk_180005404
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009888
lea	r8, a1		; "1"
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	rdx, aSetG43_4_flag0 ; "set G43_4_flag 0"
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__41 ; "MOM_output_literal \"G68.2 P1 X%.3lf Y%."...
lea	rcx, [rbp+0E0h]	; char *
movsd	xmm0, cs:qword_180009880
movsd	xmm5, cs:qword_180009888
movsd	xmm3, qword ptr	[rbp-48h]
movq	r9, xmm3
mov	edx, 1F4h	; size_t
movsd	xmm1, qword ptr	[rbp-38h]
movsd	[rsp+arg_30], xmm5
movsd	[rsp+arg_28], xmm0
movsd	xmm0, qword ptr	[rbp-40h]
movsd	[rsp+arg_20], xmm1
movsd	[rsp+arg_18], xmm0
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+#30"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__46 ; "MOM_output_literal \"G31 X0 Y0 Z0 F[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__47 ; "MOM_output_literal \"#501 = #5061 - #600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__48 ; "MOM_output_literal \"#502 = #5062\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__49 ; "MOM_output_literal \"#504 = 2.0*SQRT\\[#5"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
movsd	xmm1, qword ptr	[rbp-40h]
movsd	xmm0, qword ptr	[rbp-48h]
mulsd	xmm0, xmm0
mulsd	xmm1, xmm1
addsd	xmm0, xmm1
call	sqrt
mulsd	xmm0, cs:qword_180007940
lea	r8, aMom_output__50 ; "MOM_output_literal \"#500 = %.3lf\""
lea	rcx, [rbp+0E0h]	; char *
mov	edx, 1F4h	; size_t
movapd	xmm3, xmm0
movq	r9, xmm3
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__51 ; "MOM_output_literal \"DPRNT\\[------------"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__52 ; "MOM_output_literal \"DPRNT\\[MEASURED*DIA"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__53 ; "MOM_output_literal \"DPRNT\\[NOMINAL*DIAM"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__54 ; "MOM_output_literal \"#501 = #500-#504\""

loc_18000270F:
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__55 ; "MOM_output_literal \"DPRNT\\[------------"...

loc_18000271F:
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__56 ; "MOM_output_literal \"G69\""
jmp	loc_18000354E

loc_180002734:		; jumptable 0000000180001231 case 200
lea	rcx, aHttpWww_postpr
xor	edx, edx
call	cs:uc1601
lea	r9, [rbp-48h]
lea	r8, unk_180005404
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-40h]
lea	r8, a1		; "1"
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-38h]
lea	r8, a2		; "2"
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009880
lea	r8, unk_180005404
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009888
lea	r8, a1		; "1"
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	rdx, aSetG43_4_flag0 ; "set G43_4_flag 0"
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__41 ; "MOM_output_literal \"G68.2 P1 X%.3lf Y%."...
lea	rcx, [rbp+0E0h]	; char *
movsd	xmm0, cs:qword_180009880
movsd	xmm5, cs:qword_180009888
movsd	xmm3, qword ptr	[rbp-48h]
movq	r9, xmm3
mov	edx, 1F4h	; size_t
movsd	xmm1, qword ptr	[rbp-38h]
movsd	[rsp+arg_30], xmm5
movsd	[rsp+arg_28], xmm0
movsd	xmm0, qword ptr	[rbp-40h]
movsd	[rsp+arg_20], xmm1
movsd	[rsp+arg_18], xmm0
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+#30"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__46 ; "MOM_output_literal \"G31 X0 Y0 Z0 F[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__57 ; "MOM_output_literal \"#511 = #5061 - #600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__58 ; "MOM_output_literal \"#512 = #5062\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__59 ; "MOM_output_literal \"#501 = #511*COS\\[[f"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__60 ; "MOM_output_literal \"#502 = #511*SIN\\[[f"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__61 ; "MOM_output_literal \"#503 = #5063 - #600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__62 ; "MOM_output_literal \"#504 = SQRT\\[\\[#501"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__63 ; "MOM_output_literal \"DPRNT\\[------------"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__64 ; "MOM_output_literal \"DPRNT\\[DATA**#3011\\"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__65 ; "MOM_output_literal \"DPRNT\\[MEASURED**X*"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__66 ; "MOM_output_literal \"DPRNT\\[ERROR*******"...
jmp	loc_18000270F

loc_180002941:		; jumptable 0000000180001231 case 201
lea	rcx, aHttpWww_postpr
xor	edx, edx
call	cs:uc1601
lea	r9, [rbp-48h]
lea	r8, unk_180005404
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-40h]
lea	r8, a1		; "1"
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-38h]
lea	r8, a2		; "2"
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009880
lea	r8, unk_180005404
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009888
lea	r8, a1		; "1"
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	rdx, aSetMeas_pt10Mo ; "set meas_pt1(0)	$mom_mcs_goto(0)"
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aSetMeas_pt11Mo ; "set meas_pt1(1)	$mom_mcs_goto(1)"
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aSetMeas_pt12Mo ; "set meas_pt1(2)	$mom_mcs_goto(2)"
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aSetG43_4_flag0 ; "set G43_4_flag 0"
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__41 ; "MOM_output_literal \"G68.2 P1 X%.3lf Y%."...
lea	rcx, [rbp+0E0h]	; char *
movsd	xmm0, cs:qword_180009880
movsd	xmm5, cs:qword_180009888
movsd	xmm3, qword ptr	[rbp-48h]
movq	r9, xmm3
mov	edx, 1F4h	; size_t
movsd	xmm1, qword ptr	[rbp-38h]
movsd	[rsp+arg_30], xmm5
movsd	[rsp+arg_28], xmm0
movsd	xmm0, qword ptr	[rbp-40h]
movsd	[rsp+arg_20], xmm1
movsd	[rsp+arg_18], xmm0
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+#30"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__67 ; "MOM_output_literal \"G31 X0 Y0 Z0 F[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__47 ; "MOM_output_literal \"#501 = #5061 - #600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__48 ; "MOM_output_literal \"#502 = #5062\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__61 ; "MOM_output_literal \"#503 = #5063 - #600"...
jmp	loc_18000271F

loc_180002B0E:		; jumptable 0000000180001231 case 202
lea	rcx, aHttpWww_postpr
xor	edx, edx
call	cs:uc1601
lea	r9, [rbp-48h]
lea	r8, unk_180005404
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-40h]
lea	r8, a1		; "1"
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-38h]
lea	r8, a2		; "2"
lea	rdx, aMcs_goto	; "mcs_goto"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009880
lea	r8, unk_180005404
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, qword_180009888
lea	r8, a1		; "1"
lea	rdx, aOut_angle_pos ; "out_angle_pos"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	rdx, aSetG43_4_flag0 ; "set G43_4_flag 0"
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	r8, aMom_output__41 ; "MOM_output_literal \"G68.2 P1 X%.3lf Y%."...
lea	rcx, [rbp+0E0h]	; char *
movsd	xmm0, cs:qword_180009880
movsd	xmm5, cs:qword_180009888
movsd	xmm3, qword ptr	[rbp-48h]
movq	r9, xmm3
mov	edx, 1F4h	; size_t
movsd	xmm1, qword ptr	[rbp-38h]
movsd	[rsp+arg_30], xmm5
movsd	[rsp+arg_28], xmm0
movsd	xmm0, qword ptr	[rbp-40h]
movsd	[rsp+arg_20], xmm1
movsd	[rsp+arg_18], xmm0
call	cs:sprintf_s
lea	rdx, [rbp+0E0h]
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+#30"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__67 ; "MOM_output_literal \"G31 X0 Y0 Z0 F[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__57 ; "MOM_output_literal \"#511 = #5061 - #600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__58 ; "MOM_output_literal \"#512 = #5062\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__68 ; "MOM_output_literal \"#513 = #5063 - #600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aIfMom_programm ; "if {$mom_programmed_feed_rate >	0.0} { "...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aIfMom_progra_0 ; "if {$mom_programmed_feed_rate <	0.0} { "...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__69 ; "MOM_output_literal \"#505 = [format %.3f"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__70 ; "MOM_output_literal \"DPRNT\\[------------"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__71 ; "MOM_output_literal \"DPRNT\\[MEASURED*AT*"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__72 ; "MOM_output_literal \"DPRNT\\[NOMINAL *THI"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__73 ; "MOM_output_literal \"DPRNT\\[MEASURED*THI"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__74 ; "MOM_output_literal \"#506 = #505-#504\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__75 ; "MOM_output_literal \"DPRNT\\[ERROR*******"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__76 ; "MOM_output_literal \"DPRNT\\[------------"...
jmp	loc_18000271F

loc_180002D4B:		; jumptable 0000000180001231 case 203
lea	rcx, unk_180006B58
xor	edx, edx
call	cs:uc1601
lea	r9, [rbp+60h]
lea	r8, unk_180005404
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+68h]
lea	r8, a1		; "1"
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+70h]
lea	r8, a2		; "2"
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+78h]
lea	r8, a3		; "3"
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+80h]
lea	r8, a4		; "4"
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+88h]
lea	r8, a5		; "5"
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+90h]
lea	r8, a6		; "6"
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+98h]
lea	r8, a7		; "7"
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+0A0h]
lea	r8, a8		; "8"
lea	rdx, aMsys_matrix ; "msys_matrix"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+48h]
lea	r8, unk_180005404
lea	rdx, aMsys_origin ; "msys_origin"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+50h]
lea	r8, a1		; "1"
lea	rdx, aMsys_origin ; "msys_origin"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp+58h]
lea	r8, a2		; "2"
lea	rdx, aMsys_origin ; "msys_origin"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	rdx, [rsp+arg_44]
lea	rcx, [rbp+60h]
call	cs:UF_CSYS_create_matrix
mov	edx, [rsp+arg_44]
lea	r8, [rsp+arg_40]
lea	rcx, [rbp+48h]
call	cs:UF_CSYS_create_csys
mov	ecx, [rsp+arg_40]
call	cs:UF_CSYS_set_wcs
lea	r9, [rbp-18h]
lea	r8, unk_180005404
lea	rdx, aPost_arc_cente ; "post_arc_center"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-10h]
lea	r8, a1		; "1"
lea	rdx, aPost_arc_cente ; "post_arc_center"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
lea	r9, [rbp-8]
lea	r8, a2		; "2"
lea	rdx, aPost_arc_cente ; "post_arc_center"
mov	rcx, rbx
call	cs:UF_MOM_ask_assoc_double_array
mov	r8d, 3
lea	r9, [rbp-18h]
lea	ecx, [r8-2]
lea	rdx, [rbp-18h]
call	cs:UF_CSYS_map_point
lea	r8, unk_180005404
lea	rdx, aPost_arc_cente ; "post_arc_center"
movsd	xmm3, qword ptr	[rbp-18h]
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a1		; "1"
lea	rdx, aPost_arc_cente ; "post_arc_center"
movsd	xmm3, qword ptr	[rbp-10h]
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
lea	r8, a2		; "2"
lea	rdx, aPost_arc_cente ; "post_arc_center"
movsd	xmm3, qword ptr	[rbp-8]
mov	rcx, rbx
call	cs:UF_MOM_set_assoc_double_array
jmp	loc_180003557	; jumptable 0000000180001231 default case

loc_180002F9B:		; jumptable 0000000180001231 case 204
lea	rdx, aSetG43_4_flag0
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__77 ; "MOM_output_literal \"G68.2 P1 X[format %"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+#30"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__79 ; "MOM_output_literal \"G31 X[format %.3f ["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__80 ; "MOM_output_literal \"#501=#5161\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__81 ; "MOM_output_literal \"#502=#5162\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__82 ; "MOM_output_literal \"#503=#5163\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__83 ; "MOM_output_literal \"G31 X0.0 Y[format %"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__84 ; "MOM_output_literal \"#511=#5161\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__85 ; "MOM_output_literal \"#512=#5162\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__86 ; "MOM_output_literal \"#513=#5163\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__87 ; "MOM_output_literal \"G31 X[format %.3f ["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__88 ; "MOM_output_literal \"#521=#5161\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__89 ; "MOM_output_literal \"#522=#5162\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__90 ; "MOM_output_literal \"#523=#5163\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__91 ; "MOM_output_literal \"#1=\\[#501-#511\\]*\\["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__92 ; "MOM_output_literal \"#2=\\[#501-#521\\]*\\["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__93 ; "MOM_output_literal \"#3=\\[#511-#521\\]*\\["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__94 ; "MOM_output_literal \"#4=SQRT\\[2.0*#1*#2+"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__95 ; "MOM_output_literal \"#4=2.0*2.978+2.0*SQ"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__96 ; "MOM_output_literal \"#514=[format %.4f $"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__97 ; "MOM_output_literal \"#515=[format %.4f $"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__98 ; "MOM_output_literal \"#516=[format %.4f $"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007228 ; "MOM_output_literal \"#5=#3*\\[#1+#2-#3\\]\""...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007250 ; "MOM_output_literal \"#6=#2*\\[#1+#3-#2\\]\""...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007278 ; "MOM_output_literal \"#7=#1*\\[#2+#3-#1\\]\""...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800072A0 ; "MOM_output_literal \"#8=#5+#6+#7\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800072C8 ; "MOM_output_literal \"#517=\\[#501*#5 + #5"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007308 ; "MOM_output_literal \"#518=\\[#502*#5 + #5"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007348 ; "MOM_output_literal \"#519=\\[#503*#5 + #5"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007388 ; "MOM_output_literal \"#520=SQRT\\[#517*#51"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800073C0 ; "MOM_output_literal \"DPRNT\\[------------"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007410 ; "MOM_output_literal \"DPRNT\\[MEASURED*DIA"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007460 ; "MOM_output_literal \"DPRNT\\[ARC\\]\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007490 ; "MOM_output_literal \"DPRNT\\[POINT***#501"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800074E0 ; "MOM_output_literal \"DPRNT\\[POINT***#511"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007530 ; "MOM_output_literal \"DPRNT\\[POINT***#521"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007580 ; "MOM_output_literal \"DPRNT\\[XC*#517\\[44\\"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800075C0 ; "MOM_output_literal \"DPRNT\\[CENTER*DEVIA"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007600 ; "MOM_output_literal \"DPRNT\\[********#600"...
jmp	loc_18000354E

loc_180003297:		; jumptable 0000000180001231 case 205
lea	rdx, aSetMom_post_zM
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__79 ; "MOM_output_literal \"G31 X[format %.3f ["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__80 ; "MOM_output_literal \"#501=#5161\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__81 ; "MOM_output_literal \"#502=#5162\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__82 ; "MOM_output_literal \"#503=#5163\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__83 ; "MOM_output_literal \"G31 X0.0 Y[format %"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__84 ; "MOM_output_literal \"#511=#5161\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__85 ; "MOM_output_literal \"#512=#5162\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__86 ; "MOM_output_literal \"#513=#5163\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__87 ; "MOM_output_literal \"G31 X[format %.3f ["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__88 ; "MOM_output_literal \"#521=#5161\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__89 ; "MOM_output_literal \"#522=#5162\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__90 ; "MOM_output_literal \"#523=#5163\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[form"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__91 ; "MOM_output_literal \"#1=\\[#501-#511\\]*\\["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__92 ; "MOM_output_literal \"#2=\\[#501-#521\\]*\\["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__93 ; "MOM_output_literal \"#3=\\[#511-#521\\]*\\["...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__94 ; "MOM_output_literal \"#4=SQRT\\[2.0*#1*#2+"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__95 ; "MOM_output_literal \"#4=2.0*2.978+2.0*SQ"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, aMom_output__98 ; "MOM_output_literal \"#516=[format %.4f $"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007228 ; "MOM_output_literal \"#5=#3*\\[#1+#2-#3\\]\""...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007250 ; "MOM_output_literal \"#6=#2*\\[#1+#3-#2\\]\""...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007278 ; "MOM_output_literal \"#7=#1*\\[#2+#3-#1\\]\""...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800072A0 ; "MOM_output_literal \"#8=#5+#6+#7\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007678 ; "MOM_output_literal \"#527=\\[#501*#5 + #5"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800076B8 ; "MOM_output_literal \"#528=\\[#502*#5 + #5"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800076F8 ; "MOM_output_literal \"#529=\\[#503*#5 + #5"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007738 ; "MOM_output_literal \"#520=SQRT\\[#527*#52"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007770 ; "MOM_output_literal \"#530=SQRT\\[\\[#527-#"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800077F0 ; "MOM_output_literal \"#531=ACOS\\[\\[#519 -"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007828 ; "MOM_output_literal \"+++++++++++++++++++"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007410 ; "MOM_output_literal \"DPRNT\\[MEASURED*DIA"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007460 ; "MOM_output_literal \"DPRNT\\[ARC\\]\""
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007490 ; "MOM_output_literal \"DPRNT\\[POINT***#501"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800074E0 ; "MOM_output_literal \"DPRNT\\[POINT***#511"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007530 ; "MOM_output_literal \"DPRNT\\[POINT***#521"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007860 ; "MOM_output_literal \"DPRNT\\[XC*#527\\[44\\"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800075C0 ; "MOM_output_literal \"DPRNT\\[CENTER*DEVIA"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800078A0 ; "MOM_output_literal \"DPRNT\\[AXIS***DEVIA"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_180007600 ; "MOM_output_literal \"DPRNT\\[********#600"...
mov	rcx, rbx
call	cs:UF_MOM_execute_command
lea	rdx, asc_1800078E0 ; "MOM_output_literal \"++++++++\""

loc_18000354E:
mov	rcx, rbx
call	cs:UF_MOM_execute_command

loc_180003557:		; jumptable 0000000180001231 default case
lea	r8, [rbp+0E0h]
lea	rdx, [rbp+230h]
mov	rcx, rbx
call	cs:UF_MOM_set_string
movaps	xmm9, [rsp+arg_368]
movaps	xmm8, [rsp+arg_378]
movaps	xmm7, [rsp+arg_388]
movaps	xmm6, [rsp+arg_398]
sub_180001A4E endp ; sp-analysis failed




sub_180003590 proc near

arg_3A8= byte ptr  3B0h

lea	rcx, aUf_terminate ; "UF_terminate"
xor	edx, edx
call	cs:uc1601
xor	eax, eax
mov	rcx, [rbp+258h]
xor	rcx, rsp
call	__security_check_cookie
lea	r11, [rsp+arg_3A8]
mov	rbx, [r11+18h]
mov	rdi, [r11+20h]
mov	rsp, r11
pop	rbp
retn
sub_180003590 endp

align 8

loc_1800035C8:		; jump table for switch	statement
xor	edx, [rdx]
dw 0
dd 130Dh
dq 17A6000016B2h, 1A4E00001826h, 1B5800001ACCh
dq 1C1500001C06h, 1CD100001C21h, 1E1F00001DFAh
dq 1EE400001EBFh, 1F8000001F5Bh, 1FF300001FCEh
dq 208F00002018h, 23E80000231Fh, 2734000024DFh
dq 2B0E00002941h, 2F9B00002D4Bh, 355700003297h
byte_180003648 db 0, 1,	2, 3, 4, 5, 6, 7, 8, 9,	1Fh, 1Fh ; indirect table for switch statement
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 0Ah, 0Bh, 0Ch
db 0Dh,	0Eh, 0Fh, 10h, 11h, 12h, 13h, 1Fh
db 1Fh,	14h, 15h, 16h, 17h, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
db 1Fh,	1Fh, 1Fh, 18h, 19h, 1Ah, 1Bh, 1Ch
db 1Dh,	1Eh
algn_180003716:
align 20h
; Exported entry   3. ufusr_ask_unload



public ufusr_ask_unload
ufusr_ask_unload proc near
mov	eax, cs:dword_180009820
neg	eax
sbb	eax, eax
add	eax, 2
retn
ufusr_ask_unload endp

align 10h



sub_180003730 proc near

var_58=	qword ptr -58h
var_50=	qword ptr -50h
var_48=	qword ptr -48h
var_38=	byte ptr -38h
var_30=	byte ptr -30h
var_28=	byte ptr -28h
arg_0= dword ptr  8
arg_8= dword ptr  10h
arg_10=	byte ptr  18h
arg_18=	qword ptr  20h

push	rbx
push	rsi
push	rdi
sub	rsp, 60h
xor	edi, edi
mov	esi, 7FFD4240h
mov	[rsp+78h+arg_18], rdi
call	cs:UF_ASSEM_ask_work_part
lea	rcx, [rsp+78h+arg_18]
mov	ebx, eax
call	cs:UF_PART_create_history_list
mov	rdx, [rsp+78h+arg_18]
mov	ecx, ebx
call	cs:UF_PART_ask_part_history
mov	rcx, [rsp+78h+arg_18]
lea	rdx, [rsp+78h+arg_0]
call	cs:UF_PART_ask_num_histories
cmp	[rsp+78h+arg_0], edi
jle	short loc_1800037FE
nop	dword ptr [rax+00h]

loc_180003790:
mov	rcx, [rsp+78h+arg_18]
lea	rax, [rsp+78h+arg_8]
lea	r9, [rsp+78h+var_30]
mov	[rsp+78h+var_48], rax
lea	rax, [rsp+78h+arg_10]
lea	r8, [rsp+78h+var_28]
mov	[rsp+78h+var_50], rax
lea	rax, [rsp+78h+var_38]
mov	edx, edi
mov	[rsp+78h+var_58], rax
call	cs:UF_PART_ask_nth_history
mov	r11d, [rsp+78h+arg_8]
cmp	r11d, esi
jle	short loc_1800037E7
mov	eax, r11d
sub	eax, esi
cmp	eax, 2BF20h
jge	short loc_18000383F

loc_1800037E7:
mov	esi, r11d
cmp	r11d, 58676355h
jg	short loc_18000381E
inc	edi
cmp	edi, [rsp+78h+arg_0]
jl	short loc_180003790

loc_1800037FE:
mov	rcx, [rsp+78h+arg_18]
test	rcx, rcx
jz	short loc_180003811
call	cs:UF_PART_delete_history_list

loc_180003811:
mov	eax, 1
add	rsp, 60h
pop	rdi
pop	rsi
pop	rbx
retn

loc_18000381E:		; "info@postprocessor.ru"
lea	rdx, aInfo@postproce
lea	rcx, aMon31Dec2015 ; "Mon, 31 Dec 2015"
xor	r8d, r8d
call	cs:UF_UI_display_nonmodal_msg
xor	eax, eax
add	rsp, 60h
pop	rdi
pop	rsi
pop	rbx
retn

loc_18000383F:		; "Mon,	31 Dec 2015"
lea	rcx, aMon31Dec2015
mov	edx, 1
call	cs:uc1601
xor	eax, eax
add	rsp, 60h
pop	rdi
pop	rsi
pop	rbx
retn
sub_180003730 endp

byte_18000385B db 0Bh dup(0CCh)
align 10h
; [0000001F BYTES: COLLAPSED FUNCTION __security_check_cookie. PRESS KEYPAD "+"	TO EXPAND]
algn_18000388F:
align 10h
; [0000005E BYTES: COLLAPSED FUNCTION pre_c_init. PRESS	KEYPAD "+" TO EXPAND]
algn_1800038EE:
align 10h
; [00000259 BYTES: COLLAPSED FUNCTION _CRT_INIT. PRESS KEYPAD "+" TO EXPAND]
algn_180003B49:
align 4
; [00000139 BYTES: COLLAPSED FUNCTION __DllMainCRTStartup. PRESS KEYPAD	"+" TO EXPAND]
algn_180003C85:
align 8
; [0000003D BYTES: COLLAPSED FUNCTION DllEntryPoint. PRESS KEYPAD "+" TO EXPAND]
algn_180003CC5:
align 8
; [0000014A BYTES: COLLAPSED FUNCTION __report_gsfailure. PRESS	KEYPAD "+" TO EXPAND]
algn_180003E12:
align 4



; void __cdecl sub_180003E14()
sub_180003E14 proc near

; FUNCTION CHUNK AT 000000018000411E SIZE 00000006 BYTES

lea	rcx, unk_180009810
jmp	loc_18000411E
sub_180003E14 endp

; [000000B0 BYTES: COLLAPSED FUNCTION _onexit_0. PRESS KEYPAD "+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION atexit. PRESS KEYPAD "+" TO EXPAND]
algn_180003EE7:
align 8



sub_180003EE8 proc near

arg_0= qword ptr  8

mov	[rsp+arg_0], rbx
push	rdi
sub	rsp, 20h
lea	rbx, unk_180007A28
lea	rdi, unk_180007A28
jmp	short loc_180003F10

loc_180003F02:
mov	rax, [rbx]
test	rax, rax
jz	short loc_180003F0C
call	rax

loc_180003F0C:
add	rbx, 8

loc_180003F10:
cmp	rbx, rdi
jb	short loc_180003F02
mov	rbx, [rsp+28h+arg_0]
add	rsp, 20h
pop	rdi
retn
sub_180003EE8 endp




; void __cdecl sub_180003F20()
sub_180003F20 proc near

arg_0= qword ptr  8

mov	[rsp+arg_0], rbx
push	rdi
sub	rsp, 20h
lea	rbx, unk_180007A38
lea	rdi, unk_180007A38
jmp	short loc_180003F48

loc_180003F3A:
mov	rax, [rbx]
test	rax, rax
jz	short loc_180003F44
call	rax

loc_180003F44:
add	rbx, 8

loc_180003F48:
cmp	rbx, rdi
jb	short loc_180003F3A
mov	rbx, [rsp+28h+arg_0]
add	rsp, 20h
pop	rdi
retn
sub_180003F20 endp

algn_180003F58:
align 20h
; [0000002F BYTES: COLLAPSED FUNCTION _ValidateImageBase. PRESS	KEYPAD "+" TO EXPAND]
align 10h
; [00000046 BYTES: COLLAPSED FUNCTION _FindPESection. PRESS KEYPAD "+" TO EXPAND]
align 20h
; [00000041 BYTES: COLLAPSED FUNCTION _IsNonwritableInCurrentImage. PRESS KEYPAD "+" TO	EXPAND]
algn_180004021:
align 2
; [00000006 BYTES: COLLAPSED FUNCTION _initterm. PRESS KEYPAD "+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _initterm_e. PRESS KEYPAD	"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _amsg_exit. PRESS	KEYPAD "+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __C_specific_handler. PRESS KEYPAD "+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __CppXcptFilter. PRESS KEYPAD "+"	TO EXPAND]



; BOOL __stdcall DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
DllMain	proc near
sub	rsp, 28h
cmp	edx, 1
jnz	short loc_180004059
cmp	cs:qword_180005290, 0
jnz	short loc_180004059
call	cs:DisableThreadLibraryCalls

loc_180004059:
mov	eax, 1
add	rsp, 28h
retn
DllMain	endp

algn_180004063:
align 4
; [000000B3 BYTES: COLLAPSED FUNCTION __security_init_cookie. PRESS KEYPAD "+" TO EXPAND]
algn_180004117:
align 8
; [00000006 BYTES: COLLAPSED FUNCTION __crt_debugger_hook. PRESS KEYPAD	"+" TO EXPAND]
; START	OF FUNCTION CHUNK FOR sub_180003E14

loc_18000411E:
jmp	cs:__clean_type_info_names_internal
; END OF FUNCTION CHUNK	FOR sub_180003E14
; [00000006 BYTES: COLLAPSED FUNCTION _unlock. PRESS KEYPAD "+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __dllonexit. PRESS KEYPAD	"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _lock. PRESS KEYPAD "+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION RtlVirtualUnwind.	PRESS KEYPAD "+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION RtlLookupFunctionEntry. PRESS KEYPAD "+" TO EXPAND]
align 4
; [00000063 BYTES: COLLAPSED FUNCTION __GSHandlerCheckCommon. PRESS KEYPAD "+" TO EXPAND]
algn_1800041A7:
align 8
; [0000001D BYTES: COLLAPSED FUNCTION __GSHandlerCheck.	PRESS KEYPAD "+" TO EXPAND]
algn_1800041C5:
align 2
; [00000006 BYTES: COLLAPSED FUNCTION sin. PRESS KEYPAD	"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION cos. PRESS KEYPAD	"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION sqrt. PRESS KEYPAD "+" TO	EXPAND]
align 20h
; [00000024 BYTES: COLLAPSED FUNCTION __DllMainCRTStartup$filt$0. PRESS	KEYPAD "+" TO EXPAND]
algn_180004204:
align 10h
; [00000019 BYTES: COLLAPSED FUNCTION __DllMainCRTStartup$fin$1. PRESS KEYPAD "+" TO EXPAND]
align 2
; [0000001A BYTES: COLLAPSED FUNCTION _onexit$fin$0. PRESS KEYPAD "+" TO EXPAND]
algn_180004244:
align 10h
; [00000021 BYTES: COLLAPSED FUNCTION unknown_libname_1. PRESS KEYPAD "+" TO EXPAND]
db 0CCh
algn_180004272:
align 8
dq 31h dup(0)
dq 180h	dup(?)
_text ends

; Section 2. (virtual address 00005000)
; Virtual size			: 000034B8 (  13496.)
; Section size in file		: 00003600 (  13824.)
; Offset to raw	data for section: 00003800
; Flags	40000040: Data Readable
; Alignment	: default
;
; Imports from KERNEL32.dll
;

; Segment type:	Externs
; _idata
; void __stdcall RtlCaptureContext(PCONTEXT ContextRecord)
extrn RtlCaptureContext:qword
extrn DecodePointer:qword
; void __stdcall Sleep(DWORD dwMilliseconds)
extrn Sleep:qword
; void __stdcall GetSystemTimeAsFileTime(LPFILETIME lpSystemTimeAsFileTime)
extrn GetSystemTimeAsFileTime:qword
; DWORD	__stdcall GetCurrentProcessId()
extrn GetCurrentProcessId:qword
; DWORD	__stdcall GetCurrentThreadId()
extrn GetCurrentThreadId:qword
; DWORD	__stdcall GetTickCount()
extrn GetTickCount:qword
; BOOL __stdcall QueryPerformanceCounter(LARGE_INTEGER *lpPerformanceCount)
extrn QueryPerformanceCounter:qword
; BOOL __stdcall DisableThreadLibraryCalls(HMODULE hLibModule)
extrn DisableThreadLibraryCalls:qword
extrn EncodePointer:qword
extrn __imp_RtlLookupFunctionEntry:qword
extrn __imp_RtlVirtualUnwind:qword
; BOOL __stdcall IsDebuggerPresent()
extrn IsDebuggerPresent:qword
; LPTOP_LEVEL_EXCEPTION_FILTER __stdcall SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
extrn SetUnhandledExceptionFilter:qword
; LONG __stdcall UnhandledExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo)
extrn UnhandledExceptionFilter:qword
; HANDLE __stdcall GetCurrentProcess()
extrn GetCurrentProcess:qword
; BOOL __stdcall TerminateProcess(HANDLE hProcess, UINT	uExitCode)
extrn TerminateProcess:qword

;
; Imports from MSVCR100.dll
;
; double __cdecl cos(double)
extrn __imp_cos:qword
; double __cdecl atof(const char *String)
extrn atof:qword
; double __cdecl sin(double)
extrn __imp_sin:qword
; _onexit_t __cdecl onexit(_onexit_t)
extrn _onexit:qword
extrn __imp__lock:qword
extrn __imp___dllonexit:qword
extrn __imp__unlock:qword
extrn __clean_type_info_names_internal:qword
extrn __imp___crt_debugger_hook:qword
extrn __imp___CppXcptFilter:qword
extrn __imp___C_specific_handler:qword
extrn __imp__amsg_exit:qword
extrn _encoded_null:qword
; void __cdecl free(void *)
extrn free:qword
extrn __imp__initterm_e:qword
; int sprintf_s(char *,	size_t,	const char *, ...)
extrn sprintf_s:qword
; int __cdecl atoi(const char *String)
extrn atoi:qword
; double __cdecl sqrt(double)
extrn __imp_sqrt:qword
extrn _malloc_crt:qword
extrn __imp__initterm:qword

;
; Imports from libufun.dll
;
extrn UF_PART_ask_nth_history:qword
extrn UF_PART_create_history_list:qword
extrn UF_MOM_extend_xlator:qword
extrn UF_CSYS_create_csys:qword
extrn UF_terminate:qword
extrn UF_MOM_ask_mom:qword
extrn UF_CSYS_map_point:qword
extrn UF_MOM_set_double:qword
extrn UF_PART_delete_history_list:qword
extrn UF_MOM_execute_command:qword
extrn UF_VEC3_unitize:qword
extrn UF_MOM_set_assoc_double_array:qword
extrn UF_MOM_set_string:qword
extrn UF_CSYS_set_wcs:qword
extrn UF_PART_ask_num_histories:qword
extrn UF_MOM_ask_string:qword
extrn UF_VEC3_angle_between:qword
extrn UF_initialize:qword
extrn UF_is_initialized:qword
extrn UF_ASSEM_ask_work_part:qword
extrn UF_UI_close_listing_window:qword
extrn UF_VEC3_dot:qword
extrn UF_MOM_ask_assoc_double_array:qword
extrn UF_CSYS_create_matrix:qword
extrn UF_PART_ask_part_history:qword
extrn UF_MOM_ask_interp_from_param:qword
extrn UF_free:qword

;
; Imports from libugopenint.dll
;
extrn uc1608:qword
extrn UF_UI_display_nonmodal_msg:qword
extrn uc1601:qword
extrn UF_UI_unlock_ug_access:qword
extrn UF_UI_lock_ug_access:qword



; Segment type:	Pure data
; Segment permissions: Read
_rdata segment para public 'DATA' use64
assume cs:_rdata
;org 180005248h
unk_180005248 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
unk_180005250 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
unk_180005258 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
dq offset pre_c_init
unk_180005268 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db 0CDh	; Õ
db  65h	; e
db  45h	; E
db  58h	; X
db    0
db    0
db    0
db    0
db    2
db    0
db    0
db    0
db  9Ah	; ö
db    0
db    0
db    0
db  80h	; Ä
db  79h	; y
db    0
db    0
db  80h	; Ä
db  61h	; a
db    0
db    0
db    0
db    0
db    0
db    0
qword_180005290	dq 0
; struct _EXCEPTION_POINTERS ExceptionInfo
ExceptionInfo _EXCEPTION_POINTERS <offset dword_1800092A0,\
		     offset ContextRecord>
align 10h
unk_1800052B0 db 0CDh ;	Õ
db 0C0h	; ¿
db  20h
db 0DDh	; ›
db 0D2h	; “
db 0CEh	; Œ
db 0CCh	; Ã
db  20h
db 0D0h	; –
db 0C0h	; ¿
db 0C1h	; ¡
db 0CEh	; Œ
db 0D7h	; ◊
db 0C5h	; ≈
db 0CCh	; Ã
db  20h
db 0CCh	; Ã
db 0C5h	; ≈
db 0D1h	; —
db 0D2h	; “
db 0C5h	; ≈
db  20h
db 0CFh	; œ
db 0CEh	; Œ
db 0D1h	; —
db 0D2h	; “
db 0CFh	; œ
db 0D0h	; –
db 0CEh	; Œ
db 0D6h	; ÷
db 0C5h	; ≈
db 0D1h	; —
db 0D1h	; —
db 0CEh	; Œ
db 0D0h	; –
db  20h
db 0CDh	; Õ
db 0C5h	; ≈
db  20h
db 0CCh	; Ã
db 0CEh	; Œ
db 0C6h	; ∆
db 0C5h	; ≈
db 0D2h	; “
db  20h
db 0C1h	; ¡
db 0DBh	; €
db 0D2h	; “
db 0DCh	; ‹
db  20h
db 0C7h	; «
db 0C0h	; ¿
db 0CFh	; œ
db 0D3h	; ”
db 0D9h	; Ÿ
db 0C5h	; ≈
db 0CDh	; Õ
db  0Ah
db  0Ah
db  0Ah
db 0CCh	; Ã
db 0EEh	; Ó
db 0F1h	; Ò
db 0EAh	; Í
db 0E2h	; ‚
db 0E0h	; ‡
db  2Ch	; ,
db  20h
db  28h	; (
db 0C7h	; «
db 0C0h	; ¿
db 0CEh	; Œ
db  20h
db  22h	; "
db 0CFh	; œ
db 0EEh	; Ó
db 0F1h	; Ò
db 0F2h	; Ú
db 0EFh	; Ô
db 0F0h	; 
db 0EEh	; Ó
db 0F6h	; ˆ
db 0E5h	; Â
db 0F1h	; Ò
db 0F1h	; Ò
db 0EEh	; Ó
db 0F0h	; 
db  22h	; "
db  29h	; )
db  2Ch	; ,
db  0Ah
db 0D2h	; “
db 0E5h	; Â
db 0EBh	; Î
db 0E5h	; Â
db 0F4h	; Ù
db 0EEh	; Ó
db 0EDh	; Ì
db  3Ah	; :
db  20h
db  2Bh	; +
db  37h	; 7
db  20h
db  28h	; (
db  34h	; 4
db  39h	; 9
db  39h	; 9
db  29h	; )
db  20h
db  37h	; 7
db  30h	; 0
db  32h	; 2
db  2Dh	; -
db  38h	; 8
db  33h	; 3
db  2Dh	; -
db  34h	; 4
db  39h	; 9
db  20h
db  0Ah
db  65h	; e
db  2Dh	; -
db  6Dh	; m
db  61h	; a
db  69h	; i
db  6Ch	; l
db  3Ah	; :
db  20h
db  62h	; b
db  61h	; a
db  74h	; t
db  61h	; a
db  72h	; r
db  65h	; e
db  76h	; v
db  40h	; @
db  70h	; p
db  6Fh	; o
db  73h	; s
db  74h	; t
db  70h	; p
db  72h	; r
db  6Fh	; o
db  63h	; c
db  65h	; e
db  73h	; s
db  73h	; s
db  6Fh	; o
db  72h	; r
db  2Eh	; .
db  72h	; r
db  75h	; u
db  2Ch	; ,
db  20h
db  63h	; c
db  68h	; h
db  69h	; i
db  67h	; g
db  69h	; i
db  73h	; s
db  68h	; h
db  65h	; e
db  76h	; v
db  40h	; @
db  70h	; p
db  6Fh	; o
db  73h	; s
db  74h	; t
db  70h	; p
db  72h	; r
db  6Fh	; o
db  63h	; c
db  65h	; e
db  73h	; s
db  73h	; s
db  6Fh	; o
db  72h	; r
db  2Eh	; .
db  72h	; r
db  75h	; u
db  20h
db  0Ah
db  48h	; H
db  54h	; T
db  54h	; T
db  50h	; P
db  3Ah	; :
db  20h
db  68h	; h
db  74h	; t
db  74h	; t
db  70h	; p
db  3Ah	; :
db  2Fh	; /
db  2Fh	; /
db  77h	; w
db  77h	; w
db  77h	; w
db  2Eh	; .
db  70h	; p
db  6Fh	; o
db  73h	; s
db  74h	; t
db  70h	; p
db  72h	; r
db  6Fh	; o
db  63h	; c
db  65h	; e
db  73h	; s
db  73h	; s
db  6Fh	; o
db  72h	; r
db  2Eh	; .
db  72h	; r
db  75h	; u
db  0Ah
db  0Ah
db  28h	; (
db  63h	; c
db  29h	; )
db  20h
db  32h	; 2
db  30h	; 0
db  31h	; 1
db  32h	; 2
db  2Eh	; .
db  0Ah
db  0Ah
db  0Ah
db 0CFh	; œ
db 0EEh	; Ó
db 0F1h	; Ò
db 0EBh	; Î
db 0E5h	; Â
db 0E4h	; ‰
db 0EDh	; Ì
db 0FFh
db 0FFh
db  20h
db 0F0h	; 
db 0E5h	; Â
db 0E4h	; ‰
db 0E0h	; ‡
db 0EAh	; Í
db 0F6h	; ˆ
db 0E8h	; Ë
db 0FFh
db  20h
db  32h	; 2
db  30h	; 0
db  31h	; 1
db  35h	; 5
db    0
db    0
db    0
db    0
aAsRasx	db '¬ÌËÏ‡ÌËÂ!',0
align 20h
aMom_abort db 'MOM_abort ""',0
align 10h
aExtn_rtv_mom_c	db 'EXTN_rtv_mom_cp_part_attr',0
align 4
dword_1800053EC	dd 0EEE2F2CEh
word_1800053F0 dw 0E4h
align 8
qword_1800053F8	dq 65E8EDE0E7E5F0C2h
byte_180005400 db 0
align 4
unk_180005404 db  30h ;	0
db    0
db    0
db    0
aPost_point db 'post_point',0
align 4
a1 db '1',0
align 8
a2 db '2',0
align 20h
aPost_point_pos	db 'post_point_pos',0
align 10h
aContact_normal	db 'contact_normal',0
align 20h
aTool_axis db 'tool_axis',0
align 10h
aOut_angle_pos db 'out_angle_pos',0
align 20h
aV_vector db 'v_vector',0
align 10h
aComp_vector db	'comp_vector',0
aPos db	'pos',0
aPoly_ang db 'poly_ang',0
align 10h
aPoly_dlina db 'poly_dlina',0
align 20h
unk_1800054A0 db 0C2h ;	¬
db 0E2h	; ‚
db 0E5h	; Â
db 0E4h	; ‰
db 0E8h	; Ë
db 0F2h	; Ú
db 0E5h	; Â
db  20h
db 0E7h	; Á
db 0EDh	; Ì
db 0E0h	; ‡
db 0F7h	; ˜
db 0E5h	; Â
db 0EDh	; Ì
db 0E8h	; Ë
db 0FFh
db  20h
db 0EEh	; Ó
db 0F2h	; Ú
db 0E2h	; ‚
db 0EEh	; Ó
db 0E4h	; ‰
db 0E0h	; ‡
db  20h
db 0E8h	; Ë
db  20h
db 0E2h	; ‚
db 0F0h	; 
db 0E5h	; Â
db 0E7h	; Á
db 0E0h	; ‡
db 0EDh	; Ì
db 0E8h	; Ë
db 0FFh
db  20h
db 0E8h	; Ë
db 0EDh	; Ì
db 0F1h	; Ò
db 0F2h	; Ú
db 0F0h	; 
db 0F3h	; Û
db 0ECh	; Ï
db 0E5h	; Â
db 0EDh	; Ì
db 0F2h	; Ú
db 0E0h	; ‡
db    0
db    0
aKin_retract_di	db 'kin_retract_distance',0
align 8
aKin_reengage_d	db 'kin_reengage_distance',0
align 20h
unk_180005500 db 0C2h ;	¬
db 0E2h	; ‚
db 0EEh	; Ó
db 0E4h	; ‰
db  20h
db 0E4h	; ‰
db 0E8h	; Ë
db 0F1h	; Ò
db 0F2h	; Ú
db 0E0h	; ‡
db 0EDh	; Ì
db 0F6h	; ˆ
db 0E8h	; Ë
db 0E9h	; È
db  20h
db 0EEh	; Ó
db 0F2h	; Ú
db 0E2h	; ‚
db 0EEh	; Ó
db 0E4h	; ‰
db 0E0h	; ‡
db  20h
db 0E8h	; Ë
db  20h
db 0E2h	; ‚
db 0F0h	; 
db 0E5h	; Â
db 0E7h	; Á
db 0E0h	; ‡
db 0EDh	; Ì
db 0E8h	; Ë
db 0FFh
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
aPrev_mcs_goto db 'prev_mcs_goto',0
align 8
aPrev_tool_axis	db 'prev_tool_axis',0
align 8
aPos_reen db 'pos_reen',0
align 20h
; char aMom_output_lit[]
aMom_output_lit	db 'MOM_output_literal "\043600=\133\13'
db '3\043\13360000+\0433020\135+\043582'
db '03\135*\133%.8lf\135\135"',0
aAngle_tool_new	db 'angle_tool_new',0
align 10h
aInput_zero_int	db 'input_zero_int',0
align 20h
; char aMom_output_l_0[]
aMom_output_l_0	db 'MOM_output_literal "G0 B%.3lf"',0
align 20h
; char aMom_output_l_1[]
aMom_output_l_1	db 'MOM_output_literal "M107"',0
align 20h
; char aPutsOfile60060[]
aPutsOfile60060	db 'puts $ofile  "#600=[[#[60000+#3020]'
db '+300.086]]"',0
align 10h
aMom_output_l_2	db 'MOM_output_literal "(DLL VERSION 24'
db '.02.2015)"',0
align 20h
aMom_output_l_3	db 'MOM_output_literal "G49"',0
align 20h
aMom_output_l_4	db 'MOM_output_literal "G43 P1 H$mom_to'
db 'ol_number"',0
align 10h
aPrev_out_angle	db 'prev_out_angle_pos',0
align 4
aP_num db 'P_num',0
align 10h
; char aMom_output_l_5[]
aMom_output_l_5	db 'MOM_output_literal "\043600=\133\13'
db '3\043\13360000+\0433020\135+300.086'
db '\135*\133%.8lf\135\135"',0
align 10h
; char aPb_cmd_output_[]
aPb_cmd_output_	db 'PB_CMD_output_spindle',0
align 8
; char aMom_output_l_6[]
aMom_output_l_6	db 'MOM_output_literal "G53.5 Z\133\043'
db '751\135"',0
align 8
; char aMom_output_l_7[]
aMom_output_l_7	db 'MOM_output_literal "G18"',0
align 8
; char aMom_output_l_8[]
aMom_output_l_8	db 'MOM_output_literal "M202"',0
align 8
; char aMom_output_l_9[]
aMom_output_l_9	db 'MOM_output_literal "G123.1"',0
align 8
; char aMom_output__10[]
aMom_output__10	db 'MOM_output_literal "G0 G53 X0.0"',0
align 20h
; char aMom_output__11[]
aMom_output__11	db 'MOM_output_literal "\043701=0"',0
align 20h
; char aMom_output__12[]
aMom_output__12	db 'MOM_output_literal "\043702=0"',0
align 20h
; char aMom_output__13[]
aMom_output__13	db 'MOM_output_literal "\043751 = \0439'
db '101"',0
; char aMom_output__14[]
aMom_output__14	db 'MOM_output_literal "G17 U0.0 H0.0"',0
align 10h
; char aMom_output__15[]
aMom_output__15	db 'MOM_output_literal "G12.1 (INTERPOL'
db 'YAZIA VKL)"',0
align 20h
; char aMom_output__16[]
aMom_output__16	db 'MOM_output_literal "G18 W0.0 H0.0"',0
align 8
; char aMom_output__17[]
aMom_output__17	db 'MOM_output_literal "G122.1"',0
align 8
; char aMom_output__18[]
aMom_output__18	db 'MOM_output_literal "G10.9X1"',0
align 8
; char aMom_output__19[]
aMom_output__19	db 'MOM_output_literal "G0 G53 X0."',0
; char aMom_output__20[]
aMom_output__20	db 'MOM_output_literal "G0 G53 Y-125. Z'
db '0."',0
align 10h
aC_val db 'C_VAL',0
align 8
aU_val db 'U_VAL',0
align 20h
; char aMom_output__21[]
aMom_output__21	db 'MOM_output_literal "M00"',0
align 20h
; char aMom_output__22[]
aMom_output__22	db 'MOM_output_literal "M202 M302"',0
align 20h
; char aMom_output__23[]
aMom_output__23	db 'MOM_output_literal "M205 M305"',0
align 20h
; char aMom_output__24[]
aMom_output__24	db 'MOM_output_literal "M902"',0
align 20h
; char aMom_output__25[]
aMom_output__25	db 'MOM_output_literal "M300"',0
align 20h
; char aMom_output__26[]
aMom_output__26	db 'MOM_output_literal "G55 G0 G90 U%.3'
db 'lf"',0
align 8
; char aMom_output__27[]
aMom_output__27	db 'MOM_output_literal "M901"',0
align 8
; char aMom_output__28[]
aMom_output__28	db 'MOM_output_literal "M200"',0
align 8
; char aMom_output__29[]
aMom_output__29	db 'MOM_output_literal "G54 G0 G90 C%.3'
db 'lf"',0
align 10h
; char aMom_output__30[]
aMom_output__30	db 'MOM_output_literal "M306"',0
align 10h
; char aMom_output__31[]
aMom_output__31	db 'MOM_output_literal "M542"',0
align 10h
; char aMom_output__32[]
aMom_output__32	db 'MOM_output_literal "G0 W\133\043750'
db '\135"',0
align 20h
; char aMom_output__33[]
aMom_output__33	db 'MOM_output_literal "M508"',0
align 20h
; char aMom_output__34[]
aMom_output__34	db 'MOM_output_literal "G1 G94 W\133-\0'
db '43751\135 F500."',0
align 8
; char asc_180005B98[23]
asc_180005B98 db 'MOM_output_literal "(œÂ'
db 0F0h	; 
db 0E5h	; Â
db 0EDh	; Ì
db 0EEh	; Ó
db 0F1h	; Ò
db  20h
db 0EDh	; Ì
db 0F3h	; Û
db 0EBh	; Î
db 0FFh
db  21h	; !
db  21h	; !
db  21h	; !
db  29h	; )
db  22h	; "
db    0
db    0
; char aMom_output__35[]
aMom_output__35	db 'MOM_output_literal "\0435243 = \043'
db '5223 - \133\0435226 - \043751\135"',0
align 10h
; char aMom_output__36[]
aMom_output__36	db 'MOM_output_literal "\0435248 = \043'
db '5228 - \133\0435226 - \043751\135"',0
align 8
; char aMom_output__37[]
aMom_output__37	db 'MOM_output_literal "G10.9X0"',0
align 8
; char aMom_output__38[]
aMom_output__38	db 'MOM_output_literal "\0435241 = -490'
db '."',0
align 20h
aAlt_x db 'alt_X',0
align 8
aAlt_y db 'alt_Y',0
align 10h
aAlt_z db 'alt_Z',0
align 8
; char aMom_output__39[]
aMom_output__39	db 'MOM_output_literal "G0 G53 X%.3lf"',0
align 20h
; char aMom_output__40[]
aMom_output__40	db 'MOM_output_literal "G0 G53 Y%.3lf Z'
db '%.3lf"',0
align 10h
aHttpWww_postpr	db 'http://www.postprocessor.ru, «¿Œ  √'
db ' "œŒ—“œ–Œ÷≈——Œ–"',0
align 8
aMcs_goto db 'mcs_goto',0
align 8
aSetG43_4_flag0	db 'set G43_4_flag 0',0
align 10h
; char aMom_output__41[]
aMom_output__41	db 'MOM_output_literal "G68.2 P1 X%.3lf'
db ' Y%.3lf Z%.3lf I0.0 J%.3lf K%.3lf"',0
align 8
aMom_output__42	db 'MOM_output_literal "G53.1"',0
align 8
aMom_output__43	db 'MOM_output_literal "#600=\[#\[60000'
db '+#3020\]+#58203\]"',0
align 10h
aMom_output__44	db 'MOM_output_literal "G1 G43 G91 Z\[-'
db '#600\] F5.0 H$mom_tool_number"',0
align 8
aMom_output__45	db 'MOM_output_literal "G90"',0
align 20h
aMom_output__46	db 'MOM_output_literal "G31 X0 Y0 Z0 F['
db 'format %.3f $mom_feed_rate]"',0
aMom_output__47	db 'MOM_output_literal "#501 = #5061 - '
db '#600*SIN\[[format %.3f $mom_out_ang'
db 'le_pos(0)]\]"',0
align 8
aMom_output__48	db 'MOM_output_literal "#502 = #5062"',0
align 20h
aMom_output__49	db 'MOM_output_literal "#504 = 2.0*SQRT'
db '\[#501*#501+#502*#502\]-2.0*2.978"',0
align 8
; char aMom_output__50[]
aMom_output__50	db 'MOM_output_literal "#500 = %.3lf"',0
align 10h
aMom_output__51	db 'MOM_output_literal "DPRNT\[--------'
db '-------ONE*POINT*DIAMETER*MEASUREME'
db 'NT----------------\]"',0
align 10h
aMom_output__52	db 'MOM_output_literal "DPRNT\[MEASURED'
db '*DIAMETER*#504\[53\]\]"',0
align 10h
aMom_output__53	db 'MOM_output_literal "DPRNT\[NOMINAL*'
db 'DIAMETER *#500\[53\]\]"',0
align 10h
aMom_output__54	db 'MOM_output_literal "#501 = #500-#50'
db '4"',0
align 20h
aMom_output__55	db 'MOM_output_literal "DPRNT\[--------'
db '-----------------------------------'
db '------------------\]"',0
align 20h
aMom_output__56	db 'MOM_output_literal "G69"',0
align 20h
aMom_output__57	db 'MOM_output_literal "#511 = #5061 - '
db '#600*SIN\[[format %.3f $mom_out_ang'
db 'le_pos(0)]\]"',0
align 8
aMom_output__58	db 'MOM_output_literal "#512 = #5062"',0
align 20h
aMom_output__59	db 'MOM_output_literal "#501 = #511*COS'
db '\[[format %.3f $mom_out_angle_pos(1'
db ')]\] - #512*SIN\[[format %.3f $mom_'
db 'out_angle_pos(1)]\]"',0
align 20h
aMom_output__60	db 'MOM_output_literal "#502 = #511*SIN'
db '\[[format %.3f $mom_out_angle_pos(1'
db ')]\] + #512*COS\[[format %.3f $mom_'
db 'out_angle_pos(1)]\]"',0
align 20h
aMom_output__61	db 'MOM_output_literal "#503 = #5063 - '
db '#600*COS\[[format %.3f $mom_out_ang'
db 'le_pos(0)]\]"',0
align 20h
aMom_output__62	db 'MOM_output_literal "#504 = SQRT\[\['
db '#501-\[[format %.3f $mom_mcs_goto(0'
db ')]\]\]*\[#501-\[[format %.3f $mom_m'
db 'cs_goto(0)]\]\]+\[#502-\[[format %.'
db '3f $mom_mcs_goto(1)]\]\]*\[#502-\[['
db 'format %.3f $mom_mcs_goto(1)]\]\]+ '
db '\[#503-\[[format %.3f $mom_mcs_goto'
db '(2)]\]\]*\[#503-\[[format %.3f $mom'
db '_mcs_goto(2)]\]\]\]-2.978"',0
align 20h
aMom_output__63	db 'MOM_output_literal "DPRNT\[--------'
db '-------SURFACE*POINT*MEASUREMENT---'
db '------------------\]"',0
align 20h
aMom_output__64	db 'MOM_output_literal "DPRNT\[DATA**#3'
db '011\[80\]***TIME**#3012\[60\]------'
db '--------------\]"',0
align 20h
aMom_output__65	db 'MOM_output_literal "DPRNT\[MEASURED'
db '**X**#501\[43\]***Y*=*#502\[43\]***'
db 'Z*=*#503\[43\]\]"',0
aMom_output__66	db 'MOM_output_literal "DPRNT\[ERROR***'
db '*****#504\[43\]\]"',0
align 10h
aSetMeas_pt10Mo	db 'set meas_pt1(0) $mom_mcs_goto(0)',0
align 8
aSetMeas_pt11Mo	db 'set meas_pt1(1) $mom_mcs_goto(1)',0
align 20h
aSetMeas_pt12Mo	db 'set meas_pt1(2) $mom_mcs_goto(2)',0
align 10h
aMom_output__67	db 'MOM_output_literal "G31 X0 Y0 Z0 F['
db 'format %.3f [expr abs($mom_programm'
db 'ed_feed_rate)]]"',0
align 10h
aMom_output__68	db 'MOM_output_literal "#513 = #5063 - '
db '#600*COS\[[format %.3f $mom_out_ang'
db 'le_pos(0)]\]"',0
align 10h
aIfMom_programm	db 'if {$mom_programmed_feed_rate > 0.0'
db '} { MOM_output_literal "#504 = SQRT'
db '\[\[#501-#511\]*\[#501-#511\]+\[#50'
db '2-#512\]*\[#502-#512\]+\[#503-#513\'
db ']*\[#503-#513\]\]-2.0*2.978" } ',0
align 20h
aIfMom_progra_0	db 'if {$mom_programmed_feed_rate < 0.0'
db '} { MOM_output_literal "#504 = SQRT'
db '\[\[#501-#511\]*\[#501-#511\]+\[#50'
db '2-#512\]*\[#502-#512\]+\[#503-#513\'
db ']*\[#503-#513\]\]+2.0*2.978" } ',0
align 10h
aMom_output__69	db 'MOM_output_literal "#505 = [format '
db '%.3f [expr sqrt(($mom_mcs_goto(0)-$'
db 'meas_pt1(0))*($mom_mcs_goto(0)-$mea'
db 's_pt1(0)) + ($mom_mcs_goto(1)-$meas'
db '_pt1(1))*($mom_mcs_goto(1)-$meas_pt'
db '1(1)) + ($mom_mcs_goto(2)-$meas_pt1'
db '(2))*($mom_mcs_goto(2)-$meas_pt1(2)'
db '))]]"',0
align 10h
aMom_output__70	db 'MOM_output_literal "DPRNT\[--------'
db '-------WALL*THICKNESS*MEASUREMENT--'
db '--------------\]"',0
align 10h
aMom_output__71	db 'MOM_output_literal "DPRNT\[MEASURED'
db '*AT*POINT***X=#501\[53\]*Y=#502\[53'
db '\]*Z=#503\[53\]\]"',0
align 10h
aMom_output__72	db 'MOM_output_literal "DPRNT\[NOMINAL '
db '*THICKNESS****#505\[53\]\]"',0
align 10h
aMom_output__73	db 'MOM_output_literal "DPRNT\[MEASURED'
db '*THICKNESS****#504\[53\]\]"',0
align 10h
aMom_output__74	db 'MOM_output_literal "#506 = #505-#50'
db '4"',0
align 8
aMom_output__75	db 'MOM_output_literal "DPRNT\[ERROR***'
db '**************#506\[34\]\]"',0
align 20h
aMom_output__76	db 'MOM_output_literal "DPRNT\[--------'
db '-----------------------------------'
db '--------------\]"',0
unk_180006B58 db 0C2h ;	¬
db 0FBh	; ˚
db 0F7h	; ˜
db 0E8h	; Ë
db 0F1h	; Ò
db 0EBh	; Î
db 0E5h	; Â
db 0EDh	; Ì
db 0E8h	; Ë
db 0E5h	; Â
db  20h
db 0EAh	; Í
db 0EEh	; Ó
db 0EEh	; Ó
db 0F0h	; 
db 0E4h	; ‰
db 0E8h	; Ë
db 0EDh	; Ì
db 0E0h	; ‡
db 0F2h	; Ú
db  20h
db 0F6h	; ˆ
db 0E5h	; Â
db 0EDh	; Ì
db 0F2h	; Ú
db 0F0h	; 
db 0E0h	; ‡
db  20h
db 0EEh	; Ó
db 0F2h	; Ú
db 0E2h	; ‚
db 0E5h	; Â
db 0F0h	; 
db 0F1h	; Ò
db 0F2h	; Ú
db 0E8h	; Ë
db 0FFh
db    0
db    0
db    0
aMsys_matrix db	'msys_matrix',0
a3 db '3',0
align 10h
a4 db '4',0
align 4
a5 db '5',0
align 8
a6 db '6',0
align 4
a7 db '7',0
align 20h
a8 db '8',0
align 8
aMsys_origin db	'msys_origin',0
align 8
aPost_arc_cente	db 'post_arc_center',0
align 10h
aMom_output__77	db 'MOM_output_literal "G68.2 P1 X[form'
db 'at %.3f $mom_post_arc_center(0)] Y['
db 'format %.3f $mom_post_arc_center(1)'
db '] Z[format %.3f $mom_post_arc_cente'
db 'r(2)] I0.0 J[format %.3f $mom_out_a'
db 'ngle_pos(0)] K[format %.3f $mom_out'
db '_angle_pos(1)]"',0
align 20h
aMom_output__78	db 'MOM_output_literal "G1 X0.0 Y0.0 Z['
db 'format %.3f $mom_post_z] F[format %'
db '.3f $mom_post_f]"',0
align 20h
aMom_output__79	db 'MOM_output_literal "G31 X[format %.'
db '3f [expr 0.5*$mom_post_d]] Y0.0 Z[f'
db 'ormat %.3f $mom_post_z] F100.0"',0
align 8
aMom_output__80	db 'MOM_output_literal "#501=#5161"',0
aMom_output__81	db 'MOM_output_literal "#502=#5162"',0
aMom_output__82	db 'MOM_output_literal "#503=#5163"',0
align 10h
aMom_output__83	db 'MOM_output_literal "G31 X0.0 Y[form'
db 'at %.3f [expr 0.5*$mom_post_d]] Z[f'
db 'ormat %.3f $mom_post_z] F100.0"',0
align 8
aMom_output__84	db 'MOM_output_literal "#511=#5161"',0
aMom_output__85	db 'MOM_output_literal "#512=#5162"',0
aMom_output__86	db 'MOM_output_literal "#513=#5163"',0
align 20h
aMom_output__87	db 'MOM_output_literal "G31 X[format %.'
db '3f [expr -0.5*$mom_post_d]] Y0.0 Z['
db 'format %.3f $mom_post_z] F100.0"',0
align 8
aMom_output__88	db 'MOM_output_literal "#521=#5161"',0
aMom_output__89	db 'MOM_output_literal "#522=#5162"',0
aMom_output__90	db 'MOM_output_literal "#523=#5163"',0
align 10h
aMom_output__91	db 'MOM_output_literal "#1=\[#501-#511\'
db ']*\[#501-#511\]+\[#502-#512\]*\[#50'
db '2-#512\]+\[#503-#513\]*\[#503-#513\'
db ']"',0
align 20h
aMom_output__92	db 'MOM_output_literal "#2=\[#501-#521\'
db ']*\[#501-#521\]+\[#502-#522\]*\[#50'
db '2-#522\]+\[#503-#523\]*\[#503-#523\'
db ']"',0
align 10h
aMom_output__93	db 'MOM_output_literal "#3=\[#511-#521\'
db ']*\[#511-#521\]+\[#512-#522\]*\[#51'
db '2-#522\]+\[#513-#523\]*\[#513-#523\'
db ']"',0
align 20h
aMom_output__94	db 'MOM_output_literal "#4=SQRT\[2.0*#1'
db '*#2+2.0*#1*#3+2.0*#3*#2-#1*#1-#2*#2'
db '-#3*#3\]"',0
aMom_output__95	db 'MOM_output_literal "#4=2.0*2.978+2.'
db '0*SQRT\[#1*#2*#3\]/#4"',0
align 10h
aMom_output__96	db 'MOM_output_literal "#514=[format %.'
db '4f $mom_out_angle_pos(0)]"',0
align 10h
aMom_output__97	db 'MOM_output_literal "#515=[format %.'
db '4f $mom_out_angle_pos(1)]"',0
align 10h
aMom_output__98	db 'MOM_output_literal "#516=[format %.'
db '4f $mom_post_z]"',0
align 8
asc_180007228 db 'MOM_output_literal "#5=#3*\[#1+#2-#'
db '3\]"',0
asc_180007250 db 'MOM_output_literal "#6=#2*\[#1+#3-#'
db '2\]"',0
asc_180007278 db 'MOM_output_literal "#7=#1*\[#2+#3-#'
db '1\]"',0
asc_1800072A0 db 'MOM_output_literal "#8=#5+#6+#7"',0
align 8
asc_1800072C8 db 'MOM_output_literal "#517=\[#501*#5 '
db '+ #511*#6 + #521*#7\]/#8"',0
align 8
asc_180007308 db 'MOM_output_literal "#518=\[#502*#5 '
db '+ #512*#6 + #522*#7\]/#8"',0
align 8
asc_180007348 db 'MOM_output_literal "#519=\[#503*#5 '
db '+ #513*#6 + #523*#7\]/#8"',0
align 8
asc_180007388 db 'MOM_output_literal "#520=SQRT\[#517'
db '*#517+#518*#518\]"',0
align 20h
asc_1800073C0 db 'MOM_output_literal "DPRNT\[--------'
db '-------BOSS*BORE*MEAS--------------'
db '--\]"',0
align 10h
asc_180007410 db 'MOM_output_literal "DPRNT\[MEASURED'
db '*DIAMETER*FOR*Z=#516\[44\]*=*#4\[44'
db '\]\]"',0
align 20h
asc_180007460 db 'MOM_output_literal "DPRNT\[ARC\]"',0
align 10h
asc_180007490 db 'MOM_output_literal "DPRNT\[POINT***'
db '#501\[44\]***#502\[44\]***#503\[44\'
db ']\]"',0
align 20h
asc_1800074E0 db 'MOM_output_literal "DPRNT\[POINT***'
db '#511\[44\]***#512\[44\]***#513\[44\'
db ']\]"',0
align 10h
asc_180007530 db 'MOM_output_literal "DPRNT\[POINT***'
db '#521\[44\]***#522\[44\]***#523\[44\'
db ']\]"',0
align 20h
asc_180007580 db 'MOM_output_literal "DPRNT\[XC*#517\'
db '[44\]***YC*#518\[44\]\]"',0
align 20h
asc_1800075C0 db 'MOM_output_literal "DPRNT\[CENTER*D'
db 'EVIATION***#520\[44\]\]"',0
align 20h
asc_180007600 db 'MOM_output_literal "DPRNT\[********'
db '#600\[44\]***#514\[44\]***#515\[44\'
db ']\]"',0
align 10h
aSetMom_post_zM	db 'set mom_post_z $mom_post_second_dep'
db 'th',0
align 8
asc_180007678 db 'MOM_output_literal "#527=\[#501*#5 '
db '+ #511*#6 + #521*#7\]/#8"',0
align 8
asc_1800076B8 db 'MOM_output_literal "#528=\[#502*#5 '
db '+ #512*#6 + #522*#7\]/#8"',0
align 8
asc_1800076F8 db 'MOM_output_literal "#529=\[#503*#5 '
db '+ #513*#6 + #523*#7\]/#8"',0
align 8
asc_180007738 db 'MOM_output_literal "#520=SQRT\[#527'
db '*#527+#528*#528\]"',0
align 10h
asc_180007770 db 'MOM_output_literal "#530=SQRT\[\[#5'
db '27-#517\]*\[#527-#517\] + \[#528-#5'
db '18\]*\[#528-#518\] + \[#529-#519\]*'
db '\[#529-#519\]\]"',0
align 10h
asc_1800077F0 db 'MOM_output_literal "#531=ACOS\[\[#5'
db '19 - #529\]/#530\]"',0
align 8
asc_180007828 db 'MOM_output_literal "+++++++++++++++'
db '++++++++++++++++++"',0
align 20h
asc_180007860 db 'MOM_output_literal "DPRNT\[XC*#527\'
db '[44\]***YC*#528\[44\]\]"',0
align 20h
asc_1800078A0 db 'MOM_output_literal "DPRNT\[AXIS***D'
db 'EVIATION***#531\[44\]\]"',0
align 20h
asc_1800078E0 db 'MOM_output_literal "++++++++"',0
align 20h
aUf_terminate db 'UF_terminate',0
align 10h
aInfo@postproce	db 'info@postprocessor.ru',0
align 8
aMon31Dec2015 db 'Mon, 31 Dec 2015',0
align 20h
qword_180007940	dq 4000000000000000h
qword_180007948	dq 4076800000000000h
qword_180007950	dq 3C32725DD1D243ACh
qword_180007958	dq 4066800000000000h
qword_180007960	dq 400921FB54442D18h
qword_180007968	dq 0C00921FB54442D18h
qword_180007970	dq 4024000000000000h
qword_180007978	dq 4059000000000000h
db  52h	; R
db  53h	; S
db  44h	; D
db  53h	; S
db  96h	; ñ
db 0B1h	; ±
db 0A7h	; ß
db  17h
db 0B9h	; π
db  81h	; Å
db  52h	; R
db  47h	; G
db 0A1h	; °
db 0CFh	; œ
db  2Dh	; -
db  95h	; ï
db  72h	; r
db  59h	; Y
db 0D6h	; ÷
db 0ACh	; ¨
db  1Dh
db    0
db    0
db    0
db  44h	; D
db  3Ah	; :
db  5Ch	; \
db  56h	; V
db  43h	; C
db  5Fh	; _
db  6Eh	; n
db  65h	; e
db  77h	; w
db  5Ch	; \
db  4Dh	; M
db  79h	; y
db  50h	; P
db  72h	; r
db  6Fh	; o
db  6Ah	; j
db  65h	; e
db  63h	; c
db  74h	; t
db  73h	; s
db  5Ch	; \
db  6Dh	; m
db  6Fh	; o
db  6Dh	; m
db  5Fh	; _
db  75h	; u
db  73h	; s
db  65h	; e
db  72h	; r
db  5Fh	; _
db  4Dh	; M
db  41h	; A
db  5Ah	; Z
db  41h	; A
db  4Bh	; K
db  5Fh	; _
db  49h	; I
db  4Eh	; N
db  54h	; T
db  45h	; E
db  47h	; G
db  52h	; R
db  45h	; E
db  58h	; X
db  5Fh	; _
db  69h	; i
db  36h	; 6
db  33h	; 3
db  30h	; 0
db  5Ch	; \
db  6Dh	; m
db  6Fh	; o
db  6Dh	; m
db  5Fh	; _
db  75h	; u
db  73h	; s
db  65h	; e
db  72h	; r
db  5Fh	; _
db  4Dh	; M
db  41h	; A
db  5Ah	; Z
db  41h	; A
db  4Bh	; K
db  5Fh	; _
db  49h	; I
db  4Eh	; N
db  54h	; T
db  45h	; E
db  47h	; G
db  52h	; R
db  45h	; E
db  58h	; X
db  5Fh	; _
db  69h	; i
db  36h	; 6
db  33h	; 3
db  30h	; 0
db  5Fh	; _
db  36h	; 6
db  34h	; 4
db  5Ch	; \
db  78h	; x
db  36h	; 6
db  34h	; 4
db  5Ch	; \
db  52h	; R
db  65h	; e
db  6Ch	; l
db  65h	; e
db  61h	; a
db  73h	; s
db  65h	; e
db  5Ch	; \
db  6Dh	; m
db  6Fh	; o
db  6Dh	; m
db  5Fh	; _
db  75h	; u
db  73h	; s
db  65h	; e
db  72h	; r
db  5Fh	; _
db  4Dh	; M
db  41h	; A
db  5Ah	; Z
db  41h	; A
db  4Bh	; K
db  5Fh	; _
db  49h	; I
db  4Eh	; N
db  54h	; T
db  45h	; E
db  47h	; G
db  52h	; R
db  45h	; E
db  58h	; X
db  5Fh	; _
db  69h	; i
db  36h	; 6
db  33h	; 3
db  30h	; 0
db  5Fh	; _
db  36h	; 6
db  34h	; 4
db  2Eh	; .
db  70h	; p
db  64h	; d
db  62h	; b
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
unk_180007A28 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
unk_180007A38 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
stru_180007A40 UNWIND_INFO <1, 0, 0, 0>
stru_180007A44 UNWIND_INFO <1, 6, 2, 0>
UNWIND_CODE <6,	32h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <2,	30h>	; UWOP_PUSH_NONVOL
stru_180007A4C UNWIND_INFO <1, 1Dh, 0Ch, 0>
UNWIND_CODE <1Dh, 0C4h>	; UWOP_SAVE_NONVOL
dw 0Bh
UNWIND_CODE <1Dh, 74h>	; UWOP_SAVE_NONVOL
dw 0Ah
UNWIND_CODE <1Dh, 54h>	; UWOP_SAVE_NONVOL
dw 9
UNWIND_CODE <1Dh, 34h>	; UWOP_SAVE_NONVOL
dw 8
UNWIND_CODE <1Dh, 32h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <19h, 0F0h>	; UWOP_PUSH_NONVOL
UNWIND_CODE <17h, 0E0h>	; UWOP_PUSH_NONVOL
UNWIND_CODE <15h, 0D0h>	; UWOP_PUSH_NONVOL
stru_180007A68 UNWIND_INFO <19h, 15h, 8, 0>
UNWIND_CODE <15h, 74h>	; UWOP_SAVE_NONVOL
dw 0Ah
UNWIND_CODE <15h, 64h>	; UWOP_SAVE_NONVOL
dw 9
UNWIND_CODE <15h, 34h>	; UWOP_SAVE_NONVOL
dw 8
UNWIND_CODE <15h, 52h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <11h, 0C0h>	; UWOP_PUSH_NONVOL
dd rva __C_specific_handler
dd 2
C_SCOPE_TABLE <rva loc_180003B77, \
	       rva $LN23, \
	       rva __DllMainCRTStartup$filt$0,\
	       rva $LN23>
C_SCOPE_TABLE <rva loc_180003B71, \
	       rva $LN21, \
	       rva __DllMainCRTStartup$fin$1,\
	       0>
stru_180007AA4 UNWIND_INFO <1, 0Fh, 6, 0>
UNWIND_CODE <0Fh, 64h>	; UWOP_SAVE_NONVOL
dw 7
UNWIND_CODE <0Fh, 34h>	; UWOP_SAVE_NONVOL
dw 6
UNWIND_CODE <0Fh, 32h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <0Bh, 70h>	; UWOP_PUSH_NONVOL
stru_180007AB4 UNWIND_INFO <1, 0Ch, 2, 0>
UNWIND_CODE <0Ch, 1>	; UWOP_ALLOC_LARGE
dw 11h
stru_180007ABC UNWIND_INFO <11h, 6, 2, 0>
UNWIND_CODE <6,	32h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <2,	30h>	; UWOP_PUSH_NONVOL
dd rva __C_specific_handler
dd 1
C_SCOPE_TABLE <rva loc_180003E57, \
	       rva $LN9, \
	       rva _onexit$fin$0, 0>
stru_180007ADC UNWIND_INFO <1, 0Ah, 4, 0>
UNWIND_CODE <0Ah, 34h>	; UWOP_SAVE_NONVOL
dw 6
UNWIND_CODE <0Ah, 32h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <6,	70h>	; UWOP_PUSH_NONVOL
stru_180007AE8 UNWIND_INFO <1, 6, 2, 0>
UNWIND_CODE <6,	32h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <2,	50h>	; UWOP_PUSH_NONVOL
stru_180007AF0 UNWIND_INFO <9, 4, 1, 0>
UNWIND_CODE <4,	42h>	; UWOP_ALLOC_SMALL
align 4
dd rva __C_specific_handler
dd 1
C_SCOPE_TABLE <rva loc_180003FE7, \ ; Microsoft	VisualC	v7/10 64bit runtime
	       rva $LN8, \
	       rva unknown_libname_1, \
	       rva $LN8>
stru_180007B10 UNWIND_INFO <1, 0Ah, 4, 0>
UNWIND_CODE <0Ah, 34h>	; UWOP_SAVE_NONVOL
dw 8
UNWIND_CODE <0Ah, 32h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <6,	70h>	; UWOP_PUSH_NONVOL
stru_180007B1C UNWIND_INFO <1, 8, 4, 0>
UNWIND_CODE <8,	0B2h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <4,	70h>	; UWOP_PUSH_NONVOL
UNWIND_CODE <3,	60h>	; UWOP_PUSH_NONVOL
UNWIND_CODE <2,	30h>	; UWOP_PUSH_NONVOL
stru_180007B28 UNWIND_INFO <21h, 0, 8, 0>
UNWIND_CODE <0,	98h>	; UWOP_SAVE_XMM128
dw 37h
UNWIND_CODE <0,	88h>	; UWOP_SAVE_XMM128
dw 38h
UNWIND_CODE <0,	78h>	; UWOP_SAVE_XMM128
dw 39h
UNWIND_CODE <0,	68h>	; UWOP_SAVE_XMM128
dw 3Ah
RUNTIME_FUNCTION <rva sub_1800010F0, \
		  rva sub_1800011E1, \
		  rva stru_180007B9C>
stru_180007B48 UNWIND_INFO <21h, 0, 0, 0>
RUNTIME_FUNCTION <rva sub_1800010F0, \
		  rva sub_1800011E1, \
		  rva stru_180007B9C>
stru_180007B58 UNWIND_INFO <21h, 0, 0, 0>
RUNTIME_FUNCTION <rva sub_1800011E1, \
		  rva sub_18000182F, \
		  rva stru_180007B7C>
stru_180007B68 UNWIND_INFO <21h, 9, 2, 0>
UNWIND_CODE <9,	0A8h>	; UWOP_SAVE_XMM128
dw 36h
RUNTIME_FUNCTION <rva sub_1800011E1, \
		  rva sub_18000182F, \
		  rva stru_180007B7C>
stru_180007B7C UNWIND_INFO <21h, 22h, 8, 0>
UNWIND_CODE <22h, 98h>	; UWOP_SAVE_XMM128
dw 37h
UNWIND_CODE <19h, 88h>	; UWOP_SAVE_XMM128
dw 38h
UNWIND_CODE <10h, 78h>	; UWOP_SAVE_XMM128
dw 39h
UNWIND_CODE <8,	68h>	; UWOP_SAVE_XMM128
dw 3Ah
RUNTIME_FUNCTION <rva sub_1800010F0, \
		  rva sub_1800011E1, \
		  rva stru_180007B9C>
stru_180007B9C UNWIND_INFO <19h, 2Bh, 7, 0>
UNWIND_CODE <1Ah, 74h>	; UWOP_SAVE_NONVOL
dw 7Ah
UNWIND_CODE <1Ah, 34h>	; UWOP_SAVE_NONVOL
dw 79h
UNWIND_CODE <1Ah, 1>	; UWOP_ALLOC_LARGE
dw 76h
UNWIND_CODE <0Bh, 50h>	; UWOP_PUSH_NONVOL
align 4
dd rva __GSHandlerCheck
dd 358h
stru_180007BB8 UNWIND_INFO <1, 0Fh, 6, 0>
UNWIND_CODE <0Fh, 64h>	; UWOP_SAVE_NONVOL
dw 9
UNWIND_CODE <0Fh, 34h>	; UWOP_SAVE_NONVOL
dw 8
UNWIND_CODE <0Fh, 52h>	; UWOP_ALLOC_SMALL
UNWIND_CODE <0Bh, 70h>	; UWOP_PUSH_NONVOL
stru_180007BC8 UNWIND_INFO <1, 4, 1, 0>
UNWIND_CODE <4,	42h>	; UWOP_ALLOC_SMALL
align 4
__IMPORT_DESCRIPTOR_libufun dd rva off_180007D70 ; Import Name Table
dd 0			; Time stamp
dd 0			; Forwarder Chain
dd rva aLibufun_dll	; DLL Name
dd rva UF_PART_ask_nth_history ; Import	Address	Table
__IMPORT_DESCRIPTOR_libugopenint dd rva	off_180007E50 ;	Import Name Table
dd 0			; Time stamp
dd 0			; Forwarder Chain
dd rva aLibugopenint_d	; DLL Name
dd rva uc1608		; Import Address Table
__IMPORT_DESCRIPTOR_MSVCR100 dd	rva off_180007CC8 ; Import Name	Table
dd 0			; Time stamp
dd 0			; Forwarder Chain
dd rva aMsvcr100_dll	; DLL Name
dd rva __imp_cos	; Import Address Table
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_180007C38 ; Import Name	Table
dd 0			; Time stamp
dd 0			; Forwarder Chain
dd rva aKernel32_dll	; DLL Name
dd rva RtlCaptureContext ; Import Address Table
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
;
; Import names for KERNEL32.dll
;
off_180007C38 dq rva word_180008344
dq rva word_180008288
dq rva word_180008298
dq rva word_1800083CA
dq rva word_1800083B4
dq rva word_18000839E
dq rva word_18000838E
dq rva word_180008374
dq rva word_180008358
dq rva word_180008278
dq rva word_18000832A
dq rva word_180008316
dq rva word_180008302
dq rva word_1800082E4
dq rva word_1800082C8
dq rva word_1800082B4
dq rva word_1800082A0
dq 0
;
; Import names for MSVCR100.dll
;
off_180007CC8 dq rva word_1800083F8
dq rva word_180008186
dq rva word_1800083F2
dq rva word_18000826E
dq rva word_180008266
dq rva word_180008258
dq rva word_18000824E
dq rva word_18000822A
dq rva word_180008214
dq rva word_180008202
dq rva word_1800081EA
dq rva word_1800081DC
dq rva word_1800081CC
dq rva word_1800081C4
dq rva word_1800081B6
dq rva word_180008172
dq rva word_18000817E
dq rva word_1800083FE
dq rva word_18000819C
dq rva word_1800081AA
dq 0
;
; Import names for libufun.dll
;
off_180007D70 dq rva word_180007FEE
dq rva word_180007E98
dq rva word_180007EB6
dq rva word_180007ECE
dq rva word_180007EE4
dq rva word_180007EF4
dq rva word_1800080DC
dq rva word_1800080C8
dq rva word_1800080AA
dq rva word_180008090
dq rva word_18000807E
dq rva word_18000805E
dq rva word_18000804A
dq rva word_180008038
dq rva word_18000801C
dq rva word_180008008
dq rva word_180007E80
dq rva word_180007FDE
dq rva word_180007FCA
dq rva word_180007FB0
dq rva word_180007F92
dq rva word_180007F84
dq rva word_180007F64
dq rva word_180007F4C
dq rva word_180007F30
dq rva word_180007F10
dq rva word_180007F06
dq 0
;
; Import names for libugopenint.dll
;
off_180007E50 dq rva word_180008114
dq rva word_18000811E
dq rva word_18000813C
dq rva word_180008146
dq rva word_1800080FC
dq 0
word_180007E80 dw 12A7h
db 'UF_VEC3_angle_between',0
word_180007E98 dw 0D92h
db 'UF_PART_create_history_list',0
word_180007EB6 dw 0C2Dh
db 'UF_MOM_extend_xlator',0
align 2
word_180007ECE dw 3AAh
db 'UF_CSYS_create_csys',0
word_180007EE4 dw 13B4h
db 'UF_terminate',0
align 4
word_180007EF4 dw 0C29h
db 'UF_MOM_ask_mom',0
align 2
word_180007F06 dw 139Ch
db 'UF_free',0
word_180007F10 dw 0C28h
db 'UF_MOM_ask_interp_from_param',0
align 10h
word_180007F30 dw 0D80h
db 'UF_PART_ask_part_history',0
align 4
word_180007F4C dw 3ABh
db 'UF_CSYS_create_matrix',0
word_180007F64 dw 0C22h
db 'UF_MOM_ask_assoc_double_array',0
word_180007F84 dw 12AEh
db 'UF_VEC3_dot',0
word_180007F92 dw 1266h
db 'UF_UI_close_listing_window',0
align 10h
word_180007FB0 dw 1D2h
db 'UF_ASSEM_ask_work_part',0
align 2
word_180007FCA dw 13A6h
db 'UF_is_initialized',0
word_180007FDE dw 13A4h
db 'UF_initialize',0
word_180007FEE dw 0D7Ch
db 'UF_PART_ask_nth_history',0
word_180008008 dw 0C2Ah
db 'UF_MOM_ask_string',0
word_18000801C dw 0D7Eh
db 'UF_PART_ask_num_histories',0
word_180008038 dw 3B0h
db 'UF_CSYS_set_wcs',0
word_18000804A dw 0C35h
db 'UF_MOM_set_string',0
word_18000805E dw 0C2Eh
db 'UF_MOM_set_assoc_double_array',0
word_18000807E dw 12BAh
db 'UF_VEC3_unitize',0
word_180008090 dw 0C2Ch
db 'UF_MOM_execute_command',0
align 2
word_1800080AA dw 0D93h
db 'UF_PART_delete_history_list',0
word_1800080C8 dw 0C31h
db 'UF_MOM_set_double',0
word_1800080DC dw 3AEh
db 'UF_CSYS_map_point',0
aLibufun_dll db	'libufun.dll',0
word_1800080FC dw 0CBh
db 'UF_UI_lock_ug_access',0
align 4
word_180008114 dw 127h
db 'uc1608',0
align 2
word_18000811E dw 0BFh
db 'UF_UI_display_nonmodal_msg',0
align 4
word_18000813C dw 123h
db 'uc1601',0
align 2
word_180008146 dw 0FEh
db 'UF_UI_unlock_ug_access',0
align 20h
aLibugopenint_d	db 'libugopenint.dll',0
align 2
word_180008172 dw 5CFh
db 'sprintf_s',0
word_18000817E dw 538h
db 'atoi',0
align 2
word_180008186 dw 537h
db 'atof',0
align 2
aMsvcr100_dll db 'MSVCR100.dll',0
align 4
word_18000819C dw 307h
db '_malloc_crt',0
word_1800081AA dw 286h
db '_initterm',0
word_1800081B6 dw 287h
db '_initterm_e',0
word_1800081C4 dw 563h
db 'free',0
align 4
word_1800081CC dw 1F2h
db '_encoded_null',0
word_1800081DC dw 19Eh
db '_amsg_exit',0
align 2
word_1800081EA dw 11Eh
db '__C_specific_handler',0
align 2
word_180008202 dw 11Fh
db '__CppXcptFilter',0
word_180008214 dw 146h
db '__crt_debugger_hook',0
word_18000822A dw 140h
db '__clean_type_info_names_internal',0
align 2
word_18000824E dw 45Bh
db '_unlock',0
word_180008258 dw 148h
db '__dllonexit',0
word_180008266 dw 2F6h
db '_lock',0
word_18000826E dw 39Dh
db '_onexit',0
word_180008278 dw 0EEh
db 'EncodePointer',0
word_180008288 dw 0CBh
db 'DecodePointer',0
word_180008298 dw 4C0h
db 'Sleep',0
word_1800082A0 dw 4CEh
db 'TerminateProcess',0
align 4
word_1800082B4 dw 1C6h
db 'GetCurrentProcess',0
word_1800082C8 dw 4E2h
db 'UnhandledExceptionFilter',0
align 4
word_1800082E4 dw 4B3h
db 'SetUnhandledExceptionFilter',0
word_180008302 dw 302h
db 'IsDebuggerPresent',0
word_180008316 dw 426h
db 'RtlVirtualUnwind',0
align 2
word_18000832A dw 41Fh
db 'RtlLookupFunctionEntry',0
align 4
word_180008344 dw 418h
db 'RtlCaptureContext',0
word_180008358 dw 0E2h
db 'DisableThreadLibraryCalls',0
word_180008374 dw 3A9h
db 'QueryPerformanceCounter',0
word_18000838E dw 29Ah
db 'GetTickCount',0
align 2
word_18000839E dw 1CBh
db 'GetCurrentThreadId',0
align 4
word_1800083B4 dw 1C7h
db 'GetCurrentProcessId',0
word_1800083CA dw 280h
db 'GetSystemTimeAsFileTime',0
aKernel32_dll db 'KERNEL32.dll',0
align 2
word_1800083F2 dw 5CAh
db 'sin',0
word_1800083F8 dw 543h
db 'cos',0
word_1800083FE dw 5D0h
db 'sqrt',0
align 10h
;
; Export directory for mom_user_MAZAK_INTEGREX_i630_64.dll
;
dd 0			; Characteristics
dd 584565CDh		; TimeDateStamp: Mon Dec 05 20:04:13 2016
dw 0			; MajorVersion
dw 0			; MinorVersion
dd rva aMom_user_mazak	; Name
dd 1			; Base
dd 3			; NumberOfFunctions
dd 3			; NumberOfNames
dd rva off_180008438	; AddressOfFunctions
dd rva off_180008444	; AddressOfNames
dd rva word_180008450	; AddressOfNameOrdinals
;
; Export Address Table for mom_user_MAZAK_INTEGREX_i630_64.dll
;
off_180008438 dd rva NXSigningResource,	rva entry_rtv_mom_cp_part_attr
dd rva ufusr_ask_unload
;
; Export Names Table for mom_user_MAZAK_INTEGREX_i630_64.dll
;
off_180008444 dd rva aNxsigningresou, rva aEntry_rtv_mom_ ; "NXSigningResource"
dd rva aUfusr_ask_unlo
;
; Export Ordinals Table	for mom_user_MAZAK_INTEGREX_i630_64.dll
;
word_180008450 dw 0, 1,	2
aMom_user_mazak	db 'mom_user_MAZAK_INTEGREX_i630_64.dll'
db 0
aNxsigningresou	db 'NXSigningResource',0
aEntry_rtv_mom_	db 'entry_rtv_mom_cp_part_attr',0
aUfusr_ask_unlo	db 'ufusr_ask_unload',0
align 1000h
_rdata ends

; Section 3. (virtual address 00009000)
; Virtual size			: 00000920 (   2336.)
; Section size in file		: 00000400 (   1024.)
; Offset to raw	data for section: 00006E00
; Flags	C0000040: Data Readable	Writable
; Alignment	: default

; Segment type:	Pure data
; Segment permissions: Read/Write
_data segment para public 'DATA' use64
assume cs:_data
;org 180009000h
qword_180009000	dq 2B992DDFA232h
qword_180009008	dq 0FFFFD466D2205DCDh
dword_180009010	dd 0FFFFFFFFh
db 0FFh
db 0FFh
db 0FFh
db 0FFh
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
dq offset unk_1800052B0
unk_180009028 db    0
db    0
db    0
db    0
db    0
db    0
db 0F0h	; 
db  3Fh	; ?
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
unk_180009040 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db 0F0h	; 
db  3Fh	; ?
unk_180009058 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
unk_180009060 db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
qword_180009068	dq 3FF0000000000000h
db  4Eh	; N
db  58h	; X
db  41h	; A
db  55h	; U
db  54h	; T
db  48h	; H
db  42h	; B
db  4Ch	; L
db  4Fh	; O
db  43h	; C
db  4Bh	; K
db  2Dh	; -
db    1
db  31h	; 1
db  20h
db  31h	; 1
db  33h	; 3
db  30h	; 0
db  36h	; 6
db  33h	; 3
db  38h	; 8
db  34h	; 4
db  20h
db  2Dh	; -
db  20h
db  43h	; C
db  4Ah	; J
db  53h	; S
db  43h	; C
db  20h
db  43h	; C
db  6Fh	; o
db  6Eh	; n
db  73h	; s
db  75h	; u
db  6Ch	; l
db  74h	; t
db  69h	; i
db  6Eh	; n
db  67h	; g
db  20h
db  67h	; g
db  72h	; r
db  6Fh	; o
db  75h	; u
db  70h	; p
db  20h
db  35h	; 5
db  41h	; A
db  37h	; 7
db  34h	; 4
db  54h	; T
db  34h	; 4
db  31h	; 1
db  4Fh	; O
db  39h	; 9
db  4Eh	; N
db  58h	; X
db  30h	; 0
db  56h	; V
db    2
db  29h	; )
db    0
db  92h	; í
db  8Ch	; å
db 0B9h	; π
db  35h	; 5
db  50h	; P
db  40h	; @
db  84h	; Ñ
db 0B8h	; ∏
db  72h	; r
db 0D8h	; ÿ
db  36h	; 6
db 0B7h	; ∑
db    3
db    9
db 0DAh	; ⁄
db  54h	; T
db 0E0h	; ‡
db  40h	; @
db 0FFh
db 0ECh	; Ï
db 0A6h	; ¶
db  26h	; &
db  0Eh
db 0B4h	; ¥
db  94h	; î
db 0EEh	; Ó
db  7Ah	; z
db  96h	; ñ
db    1
db 0B8h	; ∏
db 0EDh	; Ì
db  12h
db  0Ch
db 0E6h	; Ê
db 0FAh	; ˙
db  16h
db 0A4h	; §
db  42h	; B
db  18h
db  10h
db    2
db  29h	; )
db    0
db 0ABh	; ´
db 0EAh	; Í
db  58h	; X
db  42h	; B
db 0F2h	; Ú
db 0D6h	; ÷
db  7Dh	; }
db 0C3h	; √
db 0F2h	; Ú
db  70h	; p
db  32h	; 2
db 0E7h	; Á
db 0D7h	; ◊
db 0AEh	; Æ
db 0DFh	; ﬂ
db  48h	; H
db  44h	; D
db    6
db  30h	; 0
db  28h	; (
db 0DFh	; ﬂ
db  2Ah	; *
db  9Ah	; ö
db  2Ah	; *
db  51h	; Q
db  9Eh	; û
db 0DCh	; ‹
db 0EEh	; Ó
db  1Bh
db  46h	; F
db  8Ah	; ä
db  5Bh	; [
db  13h
db  8Fh	; è
db 0ACh	; ¨
db    3
db  78h	; x
db  53h	; S
db  9Ch	; ú
db  9Ch	; ú
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  20h
db  4Eh	; N
db  58h	; X
db  41h	; A
db  55h	; U
db  54h	; T
db  48h	; H
db  42h	; B
db  4Ch	; L
db  4Fh	; O
db  43h	; C
db  4Bh	; K
db    0
db    0
db  75h	; u
db  98h	; ò
db    0
db    0
db    0
db    0
db    0
db    0
dword_180009290	dd 0
align 20h
dword_1800092A0	dd 0
dword_1800092A4	dd 0
align 10h
qword_1800092B0	dq 0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
dword_180009338	dd 0
align 20h
; struct _CONTEXT ContextRecord
ContextRecord _CONTEXT <?>
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
unk_180009810 db    ? ;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
dword_180009820	dd ?
align 8
qword_180009828	dq ?
qword_180009830	dq ?
qword_180009838	dq ?
qword_180009840	dq ?
qword_180009848	dq ?
qword_180009850	dq ?
qword_180009858	dq ?
qword_180009860	dq ?
align 20h
qword_180009880	dq ?
qword_180009888	dq ?
qword_180009890	dq ?
qword_180009898	dq ?
qword_1800098A0	dq ?
qword_1800098A8	dq ?
qword_1800098B0	dq ?
qword_1800098B8	dq ?
unk_1800098C0 db    ? ;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
db    ?	;
qword_1800098C8	dq ?
qword_1800098D0	dq ?
qword_1800098D8	dq ?
qword_1800098E0	dq ?
qword_1800098E8	dq ?
qword_1800098F0	dq ?
dword_1800098F8	dd ?
align 20h
qword_180009900	dq ?
qword_180009908	dq ?
qword_180009910	dq ?
qword_180009918	dq ?
align 800h
_data ends

; Section 4. (virtual address 0000A000)
; Virtual size			: 00000144 (	324.)
; Section size in file		: 00000200 (	512.)
; Offset to raw	data for section: 00007200
; Flags	40000040: Data Readable
; Alignment	: default

; Segment type:	Pure data
; Segment permissions: Read
_pdata segment para public 'DATA' use64
assume cs:_pdata
;org 18000A000h
ExceptionDir RUNTIME_FUNCTION <rva entry_rtv_mom_cp_part_attr,\
		  rva algn_1800010E6, \
		  rva stru_180007BB8>
RUNTIME_FUNCTION <rva sub_1800010F0, \
		  rva sub_1800011E1, \
		  rva stru_180007B9C>
RUNTIME_FUNCTION <rva sub_1800011E1, \
		  rva sub_18000182F, \
		  rva stru_180007B7C>
RUNTIME_FUNCTION <rva sub_18000182F, \ ; jumptable 0000000180001231 case 5
		  rva sub_180001A4E, \
		  rva stru_180007B68>
RUNTIME_FUNCTION <rva sub_180001A4E, \ ; jumptable 0000000180001231 case 5
		  rva sub_180003590, \
		  rva stru_180007B58>
RUNTIME_FUNCTION <rva sub_180003590, \
		  rva loc_1800035C8, \
		  rva stru_180007B48>
RUNTIME_FUNCTION <rva loc_1800035C8, \
		  rva algn_180003716, \
		  rva stru_180007B28>
RUNTIME_FUNCTION <rva sub_180003730, \
		  rva byte_18000385B, \
		  rva stru_180007B1C>
RUNTIME_FUNCTION <rva __security_check_cookie,\
		  rva algn_18000388F, \
		  rva stru_180007A40>
RUNTIME_FUNCTION <rva pre_c_init, \
		  rva algn_1800038EE, \
		  rva stru_180007A44>
RUNTIME_FUNCTION <rva _CRT_INIT, \
		  rva algn_180003B49, \
		  rva stru_180007A4C>
RUNTIME_FUNCTION <rva __DllMainCRTStartup,\
		  rva algn_180003C85, \
		  rva stru_180007A68>
RUNTIME_FUNCTION <rva DllEntryPoint, \
		  rva algn_180003CC5, \
		  rva stru_180007AA4>
RUNTIME_FUNCTION <rva __report_gsfailure,\
		  rva algn_180003E12, \
		  rva stru_180007AB4>
RUNTIME_FUNCTION <rva _onexit_0, \
		  rva atexit, \
		  rva stru_180007ABC>
RUNTIME_FUNCTION <rva atexit, \
		  rva algn_180003EE7, \
		  rva stru_180007BC8>
RUNTIME_FUNCTION <rva sub_180003EE8, \
		  rva sub_180003F20, \
		  rva stru_180007ADC>
RUNTIME_FUNCTION <rva sub_180003F20, \
		  rva algn_180003F58, \
		  rva stru_180007ADC>
RUNTIME_FUNCTION <rva _IsNonwritableInCurrentImage,\
		  rva algn_180004021, \
		  rva stru_180007AF0>
RUNTIME_FUNCTION <rva DllMain, \
		  rva algn_180004063, \
		  rva stru_180007BC8>
RUNTIME_FUNCTION <rva __security_init_cookie,\
		  rva algn_180004117, \
		  rva stru_180007B10>
RUNTIME_FUNCTION <rva __GSHandlerCheckCommon,\
		  rva algn_1800041A7, \
		  rva stru_180007A44>
RUNTIME_FUNCTION <rva __GSHandlerCheck,	\
		  rva algn_1800041C5, \
		  rva stru_180007BC8>
RUNTIME_FUNCTION <rva __DllMainCRTStartup$filt$0,\
		  rva algn_180004204+1,	\
		  rva stru_180007AE8>
RUNTIME_FUNCTION <rva __DllMainCRTStartup$fin$1,\
		  rva _onexit$fin$0, \
		  rva stru_180007AE8>
RUNTIME_FUNCTION <rva _onexit$fin$0, \
		  rva algn_180004244+1,	\
		  rva stru_180007AE8>
RUNTIME_FUNCTION <rva unknown_libname_1,\ ; Microsoft VisualC v7/10 64bit runtime
		  rva algn_180004272, \
		  rva stru_180007AE8>
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
db    0
align 1000h
_pdata ends


end DllEntryPoint
