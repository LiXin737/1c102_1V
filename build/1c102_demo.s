
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800af 	lu12i.w	$r15,114693(0x1c005)
1c00000c:	03b4d1ef 	ori	$r15,$r15,0xd34
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038081ef 	ori	$r15,$r15,0x20
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038991ad 	ori	$r13,$r13,0x264
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	54363800 	bl	13880(0x3638) # 1c0046c8 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54368000 	bl	13952(0x3680) # 1c004718 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54370c00 	bl	14092(0x370c) # 1c0047ac <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54374000 	bl	14144(0x3740) # 1c0047e8 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54356000 	bl	13664(0x3560) # 1c004610 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54391000 	bl	14608(0x3910) # 1c0049c8 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5437f800 	bl	14328(0x37f8) # 1c0048c0 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b62084 	ld.w	$r4,$r4,-632(0xd88)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017c00 	bl	380(0x17c) # 1c0014cc <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54016400 	bl	356(0x164) # 1c0014cc <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014c00 	bl	332(0x14c) # 1c0014cc <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54013800 	bl	312(0x138) # 1c0014cc <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012000 	bl	288(0x120) # 1c0014cc <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541cfc00 	bl	7420(0x1cfc) # 1c0030d0 <DisableInt>
1c0013d8:	541c5c00 	bl	7260(0x1c5c) # 1c003034 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5423e400 	bl	9188(0x23e4) # 1c0037c4 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54232400 	bl	8996(0x2324) # 1c00370c <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54150800 	bl	5384(0x1508) # 1c0028fc <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	5415c000 	bl	5568(0x15c0) # 1c0029c0 <Uart1_init>
1c001404:	541ec000 	bl	7872(0x1ec0) # 1c0032c4 <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	541ccc00 	bl	7372(0x1ccc) # 1c0030f4 <EnableInt>
1c00142c:	541f6000 	bl	8032(0x1f60) # 1c00338c <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	541d2800 	bl	7464(0x1d28) # 1c00315c <Wake_Set>
1c001438:	54236000 	bl	9056(0x2360) # 1c003798 <WDG_DogFeed>
1c00143c:	541dcc00 	bl	7628(0x1dcc) # 1c003208 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c001450:	02b0c084 	addi.w	$r4,$r4,-976(0xc30)
1c001454:	54085800 	bl	2136(0x858) # 1c001cac <myprintf>
1c001458:	541e1c00 	bl	7708(0x1e1c) # 1c003274 <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c000084 	pcaddu12i	$r4,4(0x4)
1c001468:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c00146c:	54084000 	bl	2112(0x840) # 1c001cac <myprintf>
1c001470:	54359000 	bl	13712(0x3590) # 1c004a00 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c000084 	pcaddu12i	$r4,4(0x4)
1c001488:	02b05084 	addi.w	$r4,$r4,-1004(0xc14)
1c00148c:	54082000 	bl	2080(0x820) # 1c001cac <myprintf>
1c001490:	54357000 	bl	13680(0x3570) # 1c004a00 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0014a8:	02b01084 	addi.w	$r4,$r4,-1020(0xc04)
1c0014ac:	54080000 	bl	2048(0x800) # 1c001cac <myprintf>
1c0014b0:	57fd37ff 	bl	-716(0xffffd34) # 1c0011e4 <cpu_sleep>
1c0014b4:	0015000c 	move	$r12,$r0
1c0014b8:	00150184 	move	$r4,$r12
1c0014bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014dc:	001500ac 	move	$r12,$r5
1c0014e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014e4:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001500:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001504:	50006c00 	b	108(0x6c) # 1c001570 <AFIO_RemapConfig+0xa4>
1c001508:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00150c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001510:	001831ac 	sra.w	$r12,$r13,$r12
1c001514:	0340058c 	andi	$r12,$r12,0x1
1c001518:	40004d80 	beqz	$r12,76(0x4c) # 1c001564 <AFIO_RemapConfig+0x98>
1c00151c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001520:	0040858c 	slli.w	$r12,$r12,0x1
1c001524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00152c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001530:	001731ac 	sll.w	$r12,$r13,$r12
1c001534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001538:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00153c:	0014300c 	nor	$r12,$r0,$r12
1c001540:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001544:	0014b1ac 	and	$r12,$r13,$r12
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001550:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001554:	001731ac 	sll.w	$r12,$r13,$r12
1c001558:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00155c:	001531ac 	or	$r12,$r13,$r12
1c001560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001564:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00156c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001570:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001574:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001578:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001508 <AFIO_RemapConfig+0x3c>
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001584:	2980018d 	st.w	$r13,$r12,0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001590:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001594:	4c000020 	jirl	$r0,$r1,0

1c001598 <gpio_write_pin>:
gpio_write_pin():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a4:	0015008c 	move	$r12,$r4
1c0015a8:	001500ad 	move	$r13,$r5
1c0015ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015b0:	001501ac 	move	$r12,$r13
1c0015b4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015b8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0015bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0015c0:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0015e4 <gpio_write_pin+0x4c>
1c0015c4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015cc:	0382018c 	ori	$r12,$r12,0x80
1c0015d0:	001031ac 	add.w	$r12,$r13,$r12
1c0015d4:	0015018d 	move	$r13,$r12
1c0015d8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0015dc:	290001ac 	st.b	$r12,$r13,0
1c0015e0:	50002000 	b	32(0x20) # 1c001600 <gpio_write_pin+0x68>
1c0015e4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015ec:	0382018c 	ori	$r12,$r12,0x80
1c0015f0:	001031ac 	add.w	$r12,$r13,$r12
1c0015f4:	0015018d 	move	$r13,$r12
1c0015f8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0015fc:	290001ac 	st.b	$r12,$r13,0
1c001600:	03400000 	andi	$r0,$r0,0x0
1c001604:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001608:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00160c:	4c000020 	jirl	$r0,$r1,0

1c001610 <gpio_pin_remap>:
gpio_pin_remap():
1c001610:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001614:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001618:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00161c:	0015008c 	move	$r12,$r4
1c001620:	001500ad 	move	$r13,$r5
1c001624:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001628:	001501ac 	move	$r12,$r13
1c00162c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001630:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001634:	0044918c 	srli.w	$r12,$r12,0x4
1c001638:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00163c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001640:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001644:	03403d8c 	andi	$r12,$r12,0xf
1c001648:	0040858c 	slli.w	$r12,$r12,0x1
1c00164c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001650:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001654:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c001658:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c00180c <gpio_pin_remap+0x1fc>
1c00165c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001660:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001664:	580089ac 	beq	$r13,$r12,136(0x88) # 1c0016ec <gpio_pin_remap+0xdc>
1c001668:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00166c:	40002180 	beqz	$r12,32(0x20) # 1c00168c <gpio_pin_remap+0x7c>
1c001670:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001674:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001678:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c00174c <gpio_pin_remap+0x13c>
1c00167c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001680:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001684:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017ac <gpio_pin_remap+0x19c>
1c001688:	50018800 	b	392(0x188) # 1c001810 <gpio_pin_remap+0x200>
1c00168c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001690:	0380418c 	ori	$r12,$r12,0x10
1c001694:	2880018d 	ld.w	$r13,$r12,0
1c001698:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00169c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016a0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016a4:	0014300c 	nor	$r12,$r0,$r12
1c0016a8:	0015018e 	move	$r14,$r12
1c0016ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016b0:	0380418c 	ori	$r12,$r12,0x10
1c0016b4:	0014b9ad 	and	$r13,$r13,$r14
1c0016b8:	2980018d 	st.w	$r13,$r12,0
1c0016bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016c0:	0380418c 	ori	$r12,$r12,0x10
1c0016c4:	2880018d 	ld.w	$r13,$r12,0
1c0016c8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0016cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016d0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016d4:	0015018e 	move	$r14,$r12
1c0016d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016dc:	0380418c 	ori	$r12,$r12,0x10
1c0016e0:	001539ad 	or	$r13,$r13,$r14
1c0016e4:	2980018d 	st.w	$r13,$r12,0
1c0016e8:	50012800 	b	296(0x128) # 1c001810 <gpio_pin_remap+0x200>
1c0016ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f0:	0380518c 	ori	$r12,$r12,0x14
1c0016f4:	2880018d 	ld.w	$r13,$r12,0
1c0016f8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001700:	001731cc 	sll.w	$r12,$r14,$r12
1c001704:	0014300c 	nor	$r12,$r0,$r12
1c001708:	0015018e 	move	$r14,$r12
1c00170c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001710:	0380518c 	ori	$r12,$r12,0x14
1c001714:	0014b9ad 	and	$r13,$r13,$r14
1c001718:	2980018d 	st.w	$r13,$r12,0
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380518c 	ori	$r12,$r12,0x14
1c001724:	2880018d 	ld.w	$r13,$r12,0
1c001728:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00172c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001730:	001731cc 	sll.w	$r12,$r14,$r12
1c001734:	0015018e 	move	$r14,$r12
1c001738:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00173c:	0380518c 	ori	$r12,$r12,0x14
1c001740:	001539ad 	or	$r13,$r13,$r14
1c001744:	2980018d 	st.w	$r13,$r12,0
1c001748:	5000c800 	b	200(0xc8) # 1c001810 <gpio_pin_remap+0x200>
1c00174c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001750:	0380618c 	ori	$r12,$r12,0x18
1c001754:	2880018d 	ld.w	$r13,$r12,0
1c001758:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00175c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001760:	001731cc 	sll.w	$r12,$r14,$r12
1c001764:	0014300c 	nor	$r12,$r0,$r12
1c001768:	0015018e 	move	$r14,$r12
1c00176c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001770:	0380618c 	ori	$r12,$r12,0x18
1c001774:	0014b9ad 	and	$r13,$r13,$r14
1c001778:	2980018d 	st.w	$r13,$r12,0
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380618c 	ori	$r12,$r12,0x18
1c001784:	2880018d 	ld.w	$r13,$r12,0
1c001788:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00178c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001790:	001731cc 	sll.w	$r12,$r14,$r12
1c001794:	0015018e 	move	$r14,$r12
1c001798:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00179c:	0380618c 	ori	$r12,$r12,0x18
1c0017a0:	001539ad 	or	$r13,$r13,$r14
1c0017a4:	2980018d 	st.w	$r13,$r12,0
1c0017a8:	50006800 	b	104(0x68) # 1c001810 <gpio_pin_remap+0x200>
1c0017ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b0:	0380718c 	ori	$r12,$r12,0x1c
1c0017b4:	2880018d 	ld.w	$r13,$r12,0
1c0017b8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017c0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017c4:	0014300c 	nor	$r12,$r0,$r12
1c0017c8:	0015018e 	move	$r14,$r12
1c0017cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d0:	0380718c 	ori	$r12,$r12,0x1c
1c0017d4:	0014b9ad 	and	$r13,$r13,$r14
1c0017d8:	2980018d 	st.w	$r13,$r12,0
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380718c 	ori	$r12,$r12,0x1c
1c0017e4:	2880018d 	ld.w	$r13,$r12,0
1c0017e8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017f0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017f4:	0015018e 	move	$r14,$r12
1c0017f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017fc:	0380718c 	ori	$r12,$r12,0x1c
1c001800:	001539ad 	or	$r13,$r13,$r14
1c001804:	2980018d 	st.w	$r13,$r12,0
1c001808:	50000800 	b	8(0x8) # 1c001810 <gpio_pin_remap+0x200>
1c00180c:	03400000 	andi	$r0,$r0,0x0
1c001810:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001814:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001818:	4c000020 	jirl	$r0,$r1,0

1c00181c <myputchar>:
myputchar():
1c00181c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001820:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001824:	29806076 	st.w	$r22,$r3,24(0x18)
1c001828:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00182c:	0015008c 	move	$r12,$r4
1c001830:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001834:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001838:	00150185 	move	$r5,$r12
1c00183c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001840:	54102400 	bl	4132(0x1024) # 1c002864 <UART_SendData>
1c001844:	03400000 	andi	$r0,$r0,0x0
1c001848:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00184c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001850:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001854:	4c000020 	jirl	$r0,$r1,0

1c001858 <myputchar2>:
myputchar2():
1c001858:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00185c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001860:	29806076 	st.w	$r22,$r3,24(0x18)
1c001864:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001868:	0015008c 	move	$r12,$r4
1c00186c:	001500ad 	move	$r13,$r5
1c001870:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001874:	001501ac 	move	$r12,$r13
1c001878:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00187c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001880:	44001580 	bnez	$r12,20(0x14) # 1c001894 <myputchar2+0x3c>
1c001884:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c001888:	00150184 	move	$r4,$r12
1c00188c:	5411b800 	bl	4536(0x11b8) # 1c002a44 <Uart0_send>
1c001890:	50003800 	b	56(0x38) # 1c0018c8 <myputchar2+0x70>
1c001894:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001898:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00189c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0018b0 <myputchar2+0x58>
1c0018a0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018a4:	00150184 	move	$r4,$r12
1c0018a8:	5411d800 	bl	4568(0x11d8) # 1c002a80 <Uart1_send>
1c0018ac:	50001c00 	b	28(0x1c) # 1c0018c8 <myputchar2+0x70>
1c0018b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018b4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0018b8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0018c8 <myputchar2+0x70>
1c0018bc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018c0:	00150184 	move	$r4,$r12
1c0018c4:	5411f800 	bl	4600(0x11f8) # 1c002abc <Uart2_send>
1c0018c8:	03400000 	andi	$r0,$r0,0x0
1c0018cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0018d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0018d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018d8:	4c000020 	jirl	$r0,$r1,0

1c0018dc <printbase>:
printbase():
1c0018dc:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0018e0:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0018e4:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0018e8:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0018ec:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0018f0:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0018f4:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0018f8:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0018fc:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001900:	40002580 	beqz	$r12,36(0x24) # 1c001924 <printbase+0x48>
1c001904:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001908:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001924 <printbase+0x48>
1c00190c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001910:	0011300c 	sub.w	$r12,$r0,$r12
1c001914:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001918:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c00191c:	57ff03ff 	bl	-256(0xfffff00) # 1c00181c <myputchar>
1c001920:	50000c00 	b	12(0xc) # 1c00192c <printbase+0x50>
1c001924:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001928:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00192c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001930:	50005000 	b	80(0x50) # 1c001980 <printbase+0xa4>
1c001934:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001938:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00193c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001940:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001948 <printbase+0x6c>
1c001944:	002a0007 	break	0x7
1c001948:	00005dcc 	ext.w.b	$r12,$r14
1c00194c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001950:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001954:	001035cd 	add.w	$r13,$r14,$r13
1c001958:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00195c:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001960:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001964:	002135cc 	div.wu	$r12,$r14,$r13
1c001968:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001970 <printbase+0x94>
1c00196c:	002a0007 	break	0x7
1c001970:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001974:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001978:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00197c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001980:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001984:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001934 <printbase+0x58>
1c001988:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c00198c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001990:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001994:	001231ad 	slt	$r13,$r13,$r12
1c001998:	0013b5ce 	masknez	$r14,$r14,$r13
1c00199c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0019a0:	001531cc 	or	$r12,$r14,$r12
1c0019a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0019a8:	50007400 	b	116(0x74) # 1c001a1c <printbase+0x140>
1c0019ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0019b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0019d0 <printbase+0xf4>
1c0019b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0019c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0019c4:	001031ac 	add.w	$r12,$r13,$r12
1c0019c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0019cc:	50000800 	b	8(0x8) # 1c0019d4 <printbase+0xf8>
1c0019d0:	0015000c 	move	$r12,$r0
1c0019d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0019d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0019dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0019e0:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0019f8 <printbase+0x11c>
1c0019e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0019f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019f4:	50001400 	b	20(0x14) # 1c001a08 <printbase+0x12c>
1c0019f8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a00:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001a04:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a08:	00150184 	move	$r4,$r12
1c001a0c:	57fe13ff 	bl	-496(0xffffe10) # 1c00181c <myputchar>
1c001a10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a14:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a18:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a20:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0019ac <printbase+0xd0>
1c001a24:	0015000c 	move	$r12,$r0
1c001a28:	00150184 	move	$r4,$r12
1c001a2c:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001a30:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001a34:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001a38:	4c000020 	jirl	$r0,$r1,0

1c001a3c <printbase2>:
printbase2():
1c001a3c:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001a40:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001a44:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001a48:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001a4c:	0015008c 	move	$r12,$r4
1c001a50:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001a54:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001a58:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001a5c:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001a60:	293e7ecc 	st.b	$r12,$r22,-97(0xf9f)
1c001a64:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001a68:	40002d80 	beqz	$r12,44(0x2c) # 1c001a94 <printbase2+0x58>
1c001a6c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a70:	64002580 	bge	$r12,$r0,36(0x24) # 1c001a94 <printbase2+0x58>
1c001a74:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a78:	0011300c 	sub.w	$r12,$r0,$r12
1c001a7c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a80:	2a3e7ecc 	ld.bu	$r12,$r22,-97(0xf9f)
1c001a84:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c001a88:	00150184 	move	$r4,$r12
1c001a8c:	57fdcfff 	bl	-564(0xffffdcc) # 1c001858 <myputchar2>
1c001a90:	50000c00 	b	12(0xc) # 1c001a9c <printbase2+0x60>
1c001a94:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a98:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001aa0:	50005000 	b	80(0x50) # 1c001af0 <printbase2+0xb4>
1c001aa4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001aa8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001aac:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001ab0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ab8 <printbase2+0x7c>
1c001ab4:	002a0007 	break	0x7
1c001ab8:	00005dcc 	ext.w.b	$r12,$r14
1c001abc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ac0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001ac4:	001035cd 	add.w	$r13,$r14,$r13
1c001ac8:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001acc:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c001ad0:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001ad4:	002135cc 	div.wu	$r12,$r14,$r13
1c001ad8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001ae0 <printbase2+0xa4>
1c001adc:	002a0007 	break	0x7
1c001ae0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ae4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001aec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001af0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001af4:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001aa4 <printbase2+0x68>
1c001af8:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001afc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b00:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001b04:	001231ad 	slt	$r13,$r13,$r12
1c001b08:	0013b5ce 	masknez	$r14,$r14,$r13
1c001b0c:	0013358c 	maskeqz	$r12,$r12,$r13
1c001b10:	001531cc 	or	$r12,$r14,$r12
1c001b14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b18:	50007c00 	b	124(0x7c) # 1c001b94 <printbase2+0x158>
1c001b1c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001b20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b24:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001b40 <printbase2+0x104>
1c001b28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b2c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b30:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001b34:	001031ac 	add.w	$r12,$r13,$r12
1c001b38:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001b3c:	50000800 	b	8(0x8) # 1c001b44 <printbase2+0x108>
1c001b40:	0015000c 	move	$r12,$r0
1c001b44:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b48:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001b4c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001b50:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001b68 <printbase2+0x12c>
1c001b54:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b58:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b5c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001b60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b64:	50001400 	b	20(0x14) # 1c001b78 <printbase2+0x13c>
1c001b68:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b70:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001b74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b78:	2a3e7ecd 	ld.bu	$r13,$r22,-97(0xf9f)
1c001b7c:	00150185 	move	$r5,$r12
1c001b80:	001501a4 	move	$r4,$r13
1c001b84:	57fcd7ff 	bl	-812(0xffffcd4) # 1c001858 <myputchar2>
1c001b88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b8c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b90:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b98:	63ff840c 	blt	$r0,$r12,-124(0x3ff84) # 1c001b1c <printbase2+0xe0>
1c001b9c:	0015000c 	move	$r12,$r0
1c001ba0:	00150184 	move	$r4,$r12
1c001ba4:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c001ba8:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c001bac:	02820063 	addi.w	$r3,$r3,128(0x80)
1c001bb0:	4c000020 	jirl	$r0,$r1,0

1c001bb4 <puts>:
puts():
1c001bb4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001bb8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001bbc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001bc0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001bc4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001bc8:	50003000 	b	48(0x30) # 1c001bf8 <puts+0x44>
1c001bcc:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001bd0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001bd4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001be0 <puts+0x2c>
1c001bd8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001bdc:	57fc43ff 	bl	-960(0xffffc40) # 1c00181c <myputchar>
1c001be0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001be4:	00150184 	move	$r4,$r12
1c001be8:	57fc37ff 	bl	-972(0xffffc34) # 1c00181c <myputchar>
1c001bec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bf0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bf4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bf8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bfc:	2a00018c 	ld.bu	$r12,$r12,0
1c001c00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c04:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c08:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001bcc <puts+0x18>
1c001c0c:	0015000c 	move	$r12,$r0
1c001c10:	00150184 	move	$r4,$r12
1c001c14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001c1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c20:	4c000020 	jirl	$r0,$r1,0

1c001c24 <puts2>:
puts2():
1c001c24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c34:	0015008c 	move	$r12,$r4
1c001c38:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001c3c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001c40:	50004000 	b	64(0x40) # 1c001c80 <puts2+0x5c>
1c001c44:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001c48:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001c4c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c001c60 <puts2+0x3c>
1c001c50:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c54:	02803405 	addi.w	$r5,$r0,13(0xd)
1c001c58:	00150184 	move	$r4,$r12
1c001c5c:	57fbffff 	bl	-1028(0xffffbfc) # 1c001858 <myputchar2>
1c001c60:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001c64:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c68:	001501a5 	move	$r5,$r13
1c001c6c:	00150184 	move	$r4,$r12
1c001c70:	57fbebff 	bl	-1048(0xffffbe8) # 1c001858 <myputchar2>
1c001c74:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c7c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001c80:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c84:	2a00018c 	ld.bu	$r12,$r12,0
1c001c88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c8c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c90:	47ffb59f 	bnez	$r12,-76(0x7fffb4) # 1c001c44 <puts2+0x20>
1c001c94:	0015000c 	move	$r12,$r0
1c001c98:	00150184 	move	$r4,$r12
1c001c9c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001ca0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001ca4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ca8:	4c000020 	jirl	$r0,$r1,0

1c001cac <myprintf>:
myprintf():
1c001cac:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001cb0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001cb4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001cb8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001cbc:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001cc0:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001cc4:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001cc8:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001ccc:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001cd0:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001cd4:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001cd8:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001cdc:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001ce0:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001ce4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001ce8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001cec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cf0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001cf4:	50033000 	b	816(0x330) # 1c002024 <myprintf+0x378>
1c001cf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cfc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d00:	001031ac 	add.w	$r12,$r13,$r12
1c001d04:	2a00018c 	ld.bu	$r12,$r12,0
1c001d08:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001d0c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001d10:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001d14:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ff8 <myprintf+0x34c>
1c001d18:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001d1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d28:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d2c:	001031ac 	add.w	$r12,$r13,$r12
1c001d30:	2800018c 	ld.b	$r12,$r12,0
1c001d34:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001d38:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001d3c:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001fe8 <myprintf+0x33c>
1c001d40:	0040898d 	slli.w	$r13,$r12,0x2
1c001d44:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c001d48:	028dc18c 	addi.w	$r12,$r12,880(0x370)
1c001d4c:	001031ac 	add.w	$r12,$r13,$r12
1c001d50:	2880018c 	ld.w	$r12,$r12,0
1c001d54:	4c000180 	jirl	$r0,$r12,0
1c001d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d5c:	2880018c 	ld.w	$r12,$r12,0
1c001d60:	00150184 	move	$r4,$r12
1c001d64:	57fe53ff 	bl	-432(0xffffe50) # 1c001bb4 <puts>
1c001d68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d6c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d70:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d80:	50029800 	b	664(0x298) # 1c002018 <myprintf+0x36c>
1c001d84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d88:	2880018c 	ld.w	$r12,$r12,0
1c001d8c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fa8bff 	bl	-1400(0xffffa88) # 1c00181c <myputchar>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50026800 	b	616(0x268) # 1c002018 <myprintf+0x36c>
1c001db4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001db8:	2880018c 	ld.w	$r12,$r12,0
1c001dbc:	00150007 	move	$r7,$r0
1c001dc0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001dc4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001dc8:	00150184 	move	$r4,$r12
1c001dcc:	57fb13ff 	bl	-1264(0xffffb10) # 1c0018dc <printbase>
1c001dd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dd4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ddc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001de0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de8:	50023000 	b	560(0x230) # 1c002018 <myprintf+0x36c>
1c001dec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001df0:	2880018c 	ld.w	$r12,$r12,0
1c001df4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001df8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001dfc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e00:	00150184 	move	$r4,$r12
1c001e04:	57fadbff 	bl	-1320(0xffffad8) # 1c0018dc <printbase>
1c001e08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e0c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e10:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e20:	5001f800 	b	504(0x1f8) # 1c002018 <myprintf+0x36c>
1c001e24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e28:	2880018c 	ld.w	$r12,$r12,0
1c001e2c:	00150007 	move	$r7,$r0
1c001e30:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001e34:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e38:	00150184 	move	$r4,$r12
1c001e3c:	57faa3ff 	bl	-1376(0xffffaa0) # 1c0018dc <printbase>
1c001e40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e44:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e58:	5001c000 	b	448(0x1c0) # 1c002018 <myprintf+0x36c>
1c001e5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e60:	2880018c 	ld.w	$r12,$r12,0
1c001e64:	00150007 	move	$r7,$r0
1c001e68:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001e6c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e70:	00150184 	move	$r4,$r12
1c001e74:	57fa6bff 	bl	-1432(0xffffa68) # 1c0018dc <printbase>
1c001e78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e7c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e80:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e90:	50018800 	b	392(0x188) # 1c002018 <myprintf+0x36c>
1c001e94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e98:	2880018c 	ld.w	$r12,$r12,0
1c001e9c:	00150007 	move	$r7,$r0
1c001ea0:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001ea4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ea8:	00150184 	move	$r4,$r12
1c001eac:	57fa33ff 	bl	-1488(0xffffa30) # 1c0018dc <printbase>
1c001eb0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001eb4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001eb8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ec4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ec8:	50015000 	b	336(0x150) # 1c002018 <myprintf+0x36c>
1c001ecc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed0:	57f94fff 	bl	-1716(0xffff94c) # 1c00181c <myputchar>
1c001ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ed8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001edc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ee0:	50013800 	b	312(0x138) # 1c002018 <myprintf+0x36c>
1c001ee4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ee8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ef0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ef4:	50003c00 	b	60(0x3c) # 1c001f30 <myprintf+0x284>
1c001ef8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001efc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f00:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f0c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f10:	001031cc 	add.w	$r12,$r14,$r12
1c001f14:	2800018c 	ld.b	$r12,$r12,0
1c001f18:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f1c:	001031ac 	add.w	$r12,$r13,$r12
1c001f20:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f38:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f3c:	001031ac 	add.w	$r12,$r13,$r12
1c001f40:	2800018d 	ld.b	$r13,$r12,0
1c001f44:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001f48:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001d20 <myprintf+0x74>
1c001f4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f54:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f58:	001031ac 	add.w	$r12,$r13,$r12
1c001f5c:	2800018d 	ld.b	$r13,$r12,0
1c001f60:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001f64:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001ef8 <myprintf+0x24c>
1c001f68:	53fdbbff 	b	-584(0xffffdb8) # 1c001d20 <myprintf+0x74>
1c001f6c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f70:	50003c00 	b	60(0x3c) # 1c001fac <myprintf+0x300>
1c001f74:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f78:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f7c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f88:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f8c:	001031cc 	add.w	$r12,$r14,$r12
1c001f90:	2800018c 	ld.b	$r12,$r12,0
1c001f94:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f98:	001031ac 	add.w	$r12,$r13,$r12
1c001f9c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fb8:	001031ac 	add.w	$r12,$r13,$r12
1c001fbc:	2800018d 	ld.b	$r13,$r12,0
1c001fc0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001fc4:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001d20 <myprintf+0x74>
1c001fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fd0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fd4:	001031ac 	add.w	$r12,$r13,$r12
1c001fd8:	2800018d 	ld.b	$r13,$r12,0
1c001fdc:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001fe0:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001f74 <myprintf+0x2c8>
1c001fe4:	53fd3fff 	b	-708(0xffffd3c) # 1c001d20 <myprintf+0x74>
1c001fe8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001fec:	57f833ff 	bl	-2000(0xffff830) # 1c00181c <myputchar>
1c001ff0:	03400000 	andi	$r0,$r0,0x0
1c001ff4:	50002400 	b	36(0x24) # 1c002018 <myprintf+0x36c>
1c001ff8:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ffc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002000:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c00200c <myprintf+0x360>
1c002004:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002008:	57f817ff 	bl	-2028(0xffff814) # 1c00181c <myputchar>
1c00200c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c002010:	00150184 	move	$r4,$r12
1c002014:	57f80bff 	bl	-2040(0xffff808) # 1c00181c <myputchar>
1c002018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00201c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002020:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002024:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002028:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00202c:	001031ac 	add.w	$r12,$r13,$r12
1c002030:	2800018c 	ld.b	$r12,$r12,0
1c002034:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001cf8 <myprintf+0x4c>
1c002038:	0015000c 	move	$r12,$r0
1c00203c:	00150184 	move	$r4,$r12
1c002040:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002044:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002048:	02818063 	addi.w	$r3,$r3,96(0x60)
1c00204c:	4c000020 	jirl	$r0,$r1,0

1c002050 <myprintf2>:
myprintf2():
1c002050:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c002054:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c002058:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00205c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c002060:	0015008c 	move	$r12,$r4
1c002064:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c002068:	298022c6 	st.w	$r6,$r22,8(0x8)
1c00206c:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002070:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002074:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002078:	298062ca 	st.w	$r10,$r22,24(0x18)
1c00207c:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002080:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c002084:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002088:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00208c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002090:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002094:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002098:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00209c:	50039c00 	b	924(0x39c) # 1c002438 <myprintf2+0x3e8>
1c0020a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020a4:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020a8:	001031ac 	add.w	$r12,$r13,$r12
1c0020ac:	2a00018c 	ld.bu	$r12,$r12,0
1c0020b0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0020b4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0020b8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0020bc:	5c0341ac 	bne	$r13,$r12,832(0x340) # 1c0023fc <myprintf2+0x3ac>
1c0020c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0020c4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020d0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020d4:	001031ac 	add.w	$r12,$r13,$r12
1c0020d8:	2800018c 	ld.b	$r12,$r12,0
1c0020dc:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0020e0:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0020e4:	680301ac 	bltu	$r13,$r12,768(0x300) # 1c0023e4 <myprintf2+0x394>
1c0020e8:	0040898d 	slli.w	$r13,$r12,0x2
1c0020ec:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c0020f0:	0284618c 	addi.w	$r12,$r12,280(0x118)
1c0020f4:	001031ac 	add.w	$r12,$r13,$r12
1c0020f8:	2880018c 	ld.w	$r12,$r12,0
1c0020fc:	4c000180 	jirl	$r0,$r12,0
1c002100:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002104:	2880018d 	ld.w	$r13,$r12,0
1c002108:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00210c:	001501a5 	move	$r5,$r13
1c002110:	00150184 	move	$r4,$r12
1c002114:	57fb13ff 	bl	-1264(0xffffb10) # 1c001c24 <puts2>
1c002118:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00211c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002120:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002124:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002128:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00212c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002130:	5002fc00 	b	764(0x2fc) # 1c00242c <myprintf2+0x3dc>
1c002134:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002138:	2880018c 	ld.w	$r12,$r12,0
1c00213c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002140:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002144:	001501a5 	move	$r5,$r13
1c002148:	00150184 	move	$r4,$r12
1c00214c:	57f70fff 	bl	-2292(0xffff70c) # 1c001858 <myputchar2>
1c002150:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002154:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002158:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00215c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002160:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002164:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002168:	5002c400 	b	708(0x2c4) # 1c00242c <myprintf2+0x3dc>
1c00216c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002170:	2880018c 	ld.w	$r12,$r12,0
1c002174:	0015018d 	move	$r13,$r12
1c002178:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00217c:	00150008 	move	$r8,$r0
1c002180:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002184:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002188:	001501a5 	move	$r5,$r13
1c00218c:	00150184 	move	$r4,$r12
1c002190:	57f8afff 	bl	-1876(0xffff8ac) # 1c001a3c <printbase2>
1c002194:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002198:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021ac:	50028000 	b	640(0x280) # 1c00242c <myprintf2+0x3dc>
1c0021b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021b4:	2880018c 	ld.w	$r12,$r12,0
1c0021b8:	0015018d 	move	$r13,$r12
1c0021bc:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0021c0:	02800408 	addi.w	$r8,$r0,1(0x1)
1c0021c4:	02802807 	addi.w	$r7,$r0,10(0xa)
1c0021c8:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0021cc:	001501a5 	move	$r5,$r13
1c0021d0:	00150184 	move	$r4,$r12
1c0021d4:	57f86bff 	bl	-1944(0xffff868) # 1c001a3c <printbase2>
1c0021d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021dc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0021e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021f0:	50023c00 	b	572(0x23c) # 1c00242c <myprintf2+0x3dc>
1c0021f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021f8:	2880018c 	ld.w	$r12,$r12,0
1c0021fc:	0015018d 	move	$r13,$r12
1c002200:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002204:	00150008 	move	$r8,$r0
1c002208:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00220c:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002210:	001501a5 	move	$r5,$r13
1c002214:	00150184 	move	$r4,$r12
1c002218:	57f827ff 	bl	-2012(0xffff824) # 1c001a3c <printbase2>
1c00221c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002220:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002224:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002228:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00222c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002230:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002234:	5001f800 	b	504(0x1f8) # 1c00242c <myprintf2+0x3dc>
1c002238:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00223c:	2880018c 	ld.w	$r12,$r12,0
1c002240:	0015018d 	move	$r13,$r12
1c002244:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002248:	00150008 	move	$r8,$r0
1c00224c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002250:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002254:	001501a5 	move	$r5,$r13
1c002258:	00150184 	move	$r4,$r12
1c00225c:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c001a3c <printbase2>
1c002260:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002264:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002268:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00226c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002270:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002274:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002278:	5001b400 	b	436(0x1b4) # 1c00242c <myprintf2+0x3dc>
1c00227c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002280:	2880018c 	ld.w	$r12,$r12,0
1c002284:	0015018d 	move	$r13,$r12
1c002288:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00228c:	00150008 	move	$r8,$r0
1c002290:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002294:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002298:	001501a5 	move	$r5,$r13
1c00229c:	00150184 	move	$r4,$r12
1c0022a0:	57f79fff 	bl	-2148(0xffff79c) # 1c001a3c <printbase2>
1c0022a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022a8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0022b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022bc:	50017000 	b	368(0x170) # 1c00242c <myprintf2+0x3dc>
1c0022c0:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0022c4:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0022c8:	00150184 	move	$r4,$r12
1c0022cc:	57f58fff 	bl	-2676(0xffff58c) # 1c001858 <myputchar2>
1c0022d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022dc:	50015000 	b	336(0x150) # 1c00242c <myprintf2+0x3dc>
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0022f0:	50003c00 	b	60(0x3c) # 1c00232c <myprintf2+0x2dc>
1c0022f4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0022f8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0022fc:	001c31ad 	mul.w	$r13,$r13,$r12
1c002300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002308:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c00230c:	001031cc 	add.w	$r12,$r14,$r12
1c002310:	2800018c 	ld.b	$r12,$r12,0
1c002314:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002318:	001031ac 	add.w	$r12,$r13,$r12
1c00231c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002320:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002324:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002328:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00232c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002330:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002334:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002338:	001031ac 	add.w	$r12,$r13,$r12
1c00233c:	2800018d 	ld.b	$r13,$r12,0
1c002340:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002344:	67fd858d 	bge	$r12,$r13,-636(0x3fd84) # 1c0020c8 <myprintf2+0x78>
1c002348:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00234c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002350:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002354:	001031ac 	add.w	$r12,$r13,$r12
1c002358:	2800018d 	ld.b	$r13,$r12,0
1c00235c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002360:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0022f4 <myprintf2+0x2a4>
1c002364:	53fd67ff 	b	-668(0xffffd64) # 1c0020c8 <myprintf2+0x78>
1c002368:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00236c:	50003c00 	b	60(0x3c) # 1c0023a8 <myprintf2+0x358>
1c002370:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002374:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002378:	001c31ad 	mul.w	$r13,$r13,$r12
1c00237c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002380:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002384:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c002388:	001031cc 	add.w	$r12,$r14,$r12
1c00238c:	2800018c 	ld.b	$r12,$r12,0
1c002390:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002394:	001031ac 	add.w	$r12,$r13,$r12
1c002398:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00239c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023b4:	001031ac 	add.w	$r12,$r13,$r12
1c0023b8:	2800018d 	ld.b	$r13,$r12,0
1c0023bc:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023c0:	67fd098d 	bge	$r12,$r13,-760(0x3fd08) # 1c0020c8 <myprintf2+0x78>
1c0023c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023cc:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023d0:	001031ac 	add.w	$r12,$r13,$r12
1c0023d4:	2800018d 	ld.b	$r13,$r12,0
1c0023d8:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0023dc:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002370 <myprintf2+0x320>
1c0023e0:	53fcebff 	b	-792(0xffffce8) # 1c0020c8 <myprintf2+0x78>
1c0023e4:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0023e8:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0023ec:	00150184 	move	$r4,$r12
1c0023f0:	57f46bff 	bl	-2968(0xffff468) # 1c001858 <myputchar2>
1c0023f4:	03400000 	andi	$r0,$r0,0x0
1c0023f8:	50003400 	b	52(0x34) # 1c00242c <myprintf2+0x3dc>
1c0023fc:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002400:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002404:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c002418 <myprintf2+0x3c8>
1c002408:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00240c:	02803405 	addi.w	$r5,$r0,13(0xd)
1c002410:	00150184 	move	$r4,$r12
1c002414:	57f447ff 	bl	-3004(0xffff444) # 1c001858 <myputchar2>
1c002418:	2a3f8ecd 	ld.bu	$r13,$r22,-29(0xfe3)
1c00241c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002420:	001501a5 	move	$r5,$r13
1c002424:	00150184 	move	$r4,$r12
1c002428:	57f433ff 	bl	-3024(0xffff430) # 1c001858 <myputchar2>
1c00242c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002430:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002434:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00243c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002440:	001031ac 	add.w	$r12,$r13,$r12
1c002444:	2800018c 	ld.b	$r12,$r12,0
1c002448:	47fc599f 	bnez	$r12,-936(0x7ffc58) # 1c0020a0 <myprintf2+0x50>
1c00244c:	0015000c 	move	$r12,$r0
1c002450:	00150184 	move	$r4,$r12
1c002454:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002458:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00245c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c002460:	4c000020 	jirl	$r0,$r1,0

1c002464 <UART_Init>:
UART_Init():
1c002464:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002468:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00246c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002470:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002474:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002478:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00247c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002480:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002484:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002488:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00248c:	03403d8c 	andi	$r12,$r12,0xf
1c002490:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002494:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002498:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00249c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024a0:	0044918c 	srli.w	$r12,$r12,0x4
1c0024a4:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0024a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024ac:	40000d80 	beqz	$r12,12(0xc) # 1c0024b8 <UART_Init+0x54>
1c0024b0:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0024b4:	44001980 	bnez	$r12,24(0x18) # 1c0024cc <UART_Init+0x68>
1c0024b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024bc:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0024c0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024c4:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0024c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024d0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0024d4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0024ec <UART_Init+0x88>
1c0024d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024dc:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c0024e0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024e4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0024e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024f0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0024f4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0024f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024fc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002500:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002510 <UART_Init+0xac>
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00250c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c00256c <UART_Init+0x108>
1c002510:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002514:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002518:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00251c:	2880018c 	ld.w	$r12,$r12,0
1c002520:	002131ae 	div.wu	$r14,$r13,$r12
1c002524:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00252c <UART_Init+0xc8>
1c002528:	002a0007 	break	0x7
1c00252c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002530:	002135cc 	div.wu	$r12,$r14,$r13
1c002534:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00253c <UART_Init+0xd8>
1c002538:	002a0007 	break	0x7
1c00253c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002540:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002544:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002548:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00254c:	2880018e 	ld.w	$r14,$r12,0
1c002550:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002554:	001c31ce 	mul.w	$r14,$r14,$r12
1c002558:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00255c:	001c31cc 	mul.w	$r12,$r14,$r12
1c002560:	001131ac 	sub.w	$r12,$r13,$r12
1c002564:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002568:	50005400 	b	84(0x54) # 1c0025bc <UART_Init+0x158>
1c00256c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002570:	2880018c 	ld.w	$r12,$r12,0
1c002574:	1400010d 	lu12i.w	$r13,8(0x8)
1c002578:	002131ae 	div.wu	$r14,$r13,$r12
1c00257c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002584 <UART_Init+0x120>
1c002580:	002a0007 	break	0x7
1c002584:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002588:	002135cc 	div.wu	$r12,$r14,$r13
1c00258c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002594 <UART_Init+0x130>
1c002590:	002a0007 	break	0x7
1c002594:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002598:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00259c:	2880018d 	ld.w	$r13,$r12,0
1c0025a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025ac:	001c31ac 	mul.w	$r12,$r13,$r12
1c0025b0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0025b4:	001131ac 	sub.w	$r12,$r13,$r12
1c0025b8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025bc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0025c0:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0025c4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025c8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025cc:	2880018c 	ld.w	$r12,$r12,0
1c0025d0:	002131ae 	div.wu	$r14,$r13,$r12
1c0025d4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0025dc <UART_Init+0x178>
1c0025d8:	002a0007 	break	0x7
1c0025dc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0025e0:	002135cc 	div.wu	$r12,$r14,$r13
1c0025e4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0025ec <UART_Init+0x188>
1c0025e8:	002a0007 	break	0x7
1c0025ec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025f4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0025f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0025fc:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002600:	001531ac 	or	$r12,$r13,$r12
1c002604:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002608:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00260c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002610:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002614:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	2900018d 	st.b	$r13,$r12,0
1c002620:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002624:	0044a18c 	srli.w	$r12,$r12,0x8
1c002628:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00262c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002630:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002634:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002638:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00263c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002640:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002644:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002648:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00264c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002650:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002654:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002658:	0341fd8c 	andi	$r12,$r12,0x7f
1c00265c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002660:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002664:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002668:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00266c:	29000580 	st.b	$r0,$r12,1(0x1)
1c002670:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002674:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002678:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00267c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002680:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002684:	001531ac 	or	$r12,$r13,$r12
1c002688:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00268c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002690:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002694:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002698:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00269c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026a4:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0026a8:	001531ac 	or	$r12,$r13,$r12
1c0026ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026b4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026bc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0026cc:	001531ac 	or	$r12,$r13,$r12
1c0026d0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026d8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026e0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026ec:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0026f0:	001531ac 	or	$r12,$r13,$r12
1c0026f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026fc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002700:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002704:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002708:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00270c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002710:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002714:	001531ac 	or	$r12,$r13,$r12
1c002718:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002724:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002728:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00272c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002730:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002734:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002738:	001531ac 	or	$r12,$r13,$r12
1c00273c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002740:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002744:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002748:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00274c:	2a00018c 	ld.bu	$r12,$r12,0
1c002750:	03400000 	andi	$r0,$r0,0x0
1c002754:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002758:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00275c:	4c000020 	jirl	$r0,$r1,0

1c002760 <UART_StructInit>:
UART_StructInit():
1c002760:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002764:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002768:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00276c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002774:	1400038d 	lu12i.w	$r13,28(0x1c)
1c002778:	038801ad 	ori	$r13,$r13,0x200
1c00277c:	2980018d 	st.w	$r13,$r12,0
1c002780:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002784:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002788:	038801ad 	ori	$r13,$r13,0x200
1c00278c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002790:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002794:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002798:	2900298d 	st.b	$r13,$r12,10(0xa)
1c00279c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a0:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0027a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a8:	29003580 	st.b	$r0,$r12,13(0xd)
1c0027ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b0:	29003180 	st.b	$r0,$r12,12(0xc)
1c0027b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b8:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0027bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c0:	29003980 	st.b	$r0,$r12,14(0xe)
1c0027c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c8:	29402180 	st.h	$r0,$r12,8(0x8)
1c0027cc:	03400000 	andi	$r0,$r0,0x0
1c0027d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0027d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0027d8:	4c000020 	jirl	$r0,$r1,0

1c0027dc <UART_ITConfig>:
UART_ITConfig():
1c0027dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027ec:	001500ac 	move	$r12,$r5
1c0027f0:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0027f4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0027f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0027fc:	40002980 	beqz	$r12,40(0x28) # 1c002824 <UART_ITConfig+0x48>
1c002800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002804:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002808:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00280c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002810:	001531ac 	or	$r12,$r13,$r12
1c002814:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002818:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00281c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002820:	50003400 	b	52(0x34) # 1c002854 <UART_ITConfig+0x78>
1c002824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002828:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00282c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002830:	00005d8d 	ext.w.b	$r13,$r12
1c002834:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002838:	0014300c 	nor	$r12,$r0,$r12
1c00283c:	00005d8c 	ext.w.b	$r12,$r12
1c002840:	0014b1ac 	and	$r12,$r13,$r12
1c002844:	00005d8c 	ext.w.b	$r12,$r12
1c002848:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00284c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002850:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002854:	03400000 	andi	$r0,$r0,0x0
1c002858:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00285c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002860:	4c000020 	jirl	$r0,$r1,0

1c002864 <UART_SendData>:
UART_SendData():
1c002864:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002868:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00286c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002870:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002874:	001500ac 	move	$r12,$r5
1c002878:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002884:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002888:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00288c:	0340818c 	andi	$r12,$r12,0x20
1c002890:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002880 <UART_SendData+0x1c>
1c002894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002898:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00289c:	2900018d 	st.b	$r13,$r12,0
1c0028a0:	03400000 	andi	$r0,$r0,0x0
1c0028a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0028a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028ac:	4c000020 	jirl	$r0,$r1,0

1c0028b0 <UART_ReceiveData>:
UART_ReceiveData():
1c0028b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028b4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0028b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028c0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0028c4:	03400000 	andi	$r0,$r0,0x0
1c0028c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028cc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0028d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028d4:	0340058c 	andi	$r12,$r12,0x1
1c0028d8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0028c8 <UART_ReceiveData+0x18>
1c0028dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0028e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0028ec:	00150184 	move	$r4,$r12
1c0028f0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0028f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0028f8:	4c000020 	jirl	$r0,$r1,0

1c0028fc <Uart0_init>:
Uart0_init():
1c0028fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002900:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002904:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002908:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00290c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002910:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002914:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002918:	57ecfbff 	bl	-4872(0xfffecf8) # 1c001610 <gpio_pin_remap>
1c00291c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002920:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002924:	57ecefff 	bl	-4884(0xfffecec) # 1c001610 <gpio_pin_remap>
1c002928:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00292c:	00150184 	move	$r4,$r12
1c002930:	57fe33ff 	bl	-464(0xffffe30) # 1c002760 <UART_StructInit>
1c002934:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002938:	289b618c 	ld.w	$r12,$r12,1752(0x6d8)
1c00293c:	2880018c 	ld.w	$r12,$r12,0
1c002940:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002944:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002948:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00294c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002950:	00150185 	move	$r5,$r12
1c002954:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002958:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002464 <UART_Init>
1c00295c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002960:	0380098c 	ori	$r12,$r12,0x2
1c002964:	2a00018c 	ld.bu	$r12,$r12,0
1c002968:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00296c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002970:	0380098c 	ori	$r12,$r12,0x2
1c002974:	038021ad 	ori	$r13,$r13,0x8
1c002978:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00297c:	2900018d 	st.b	$r13,$r12,0
1c002980:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002984:	2a00018c 	ld.bu	$r12,$r12,0
1c002988:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00298c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002990:	038021ad 	ori	$r13,$r13,0x8
1c002994:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002998:	2900018d 	st.b	$r13,$r12,0
1c00299c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0029a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029a4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0029a8:	57fe37ff 	bl	-460(0xffffe34) # 1c0027dc <UART_ITConfig>
1c0029ac:	03400000 	andi	$r0,$r0,0x0
1c0029b0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029b4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029bc:	4c000020 	jirl	$r0,$r1,0

1c0029c0 <Uart1_init>:
Uart1_init():
1c0029c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029d8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0029dc:	57ec37ff 	bl	-5068(0xfffec34) # 1c001610 <gpio_pin_remap>
1c0029e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029e4:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0029e8:	57ec2bff 	bl	-5080(0xfffec28) # 1c001610 <gpio_pin_remap>
1c0029ec:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0029f0:	00150184 	move	$r4,$r12
1c0029f4:	57fd6fff 	bl	-660(0xffffd6c) # 1c002760 <UART_StructInit>
1c0029f8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0029fc:	2898518c 	ld.w	$r12,$r12,1556(0x614)
1c002a00:	2880018c 	ld.w	$r12,$r12,0
1c002a04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a0c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a10:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a14:	00150185 	move	$r5,$r12
1c002a18:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a1c:	57fa4bff 	bl	-1464(0xffffa48) # 1c002464 <UART_Init>
1c002a20:	00150006 	move	$r6,$r0
1c002a24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a28:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a2c:	57fdb3ff 	bl	-592(0xffffdb0) # 1c0027dc <UART_ITConfig>
1c002a30:	03400000 	andi	$r0,$r0,0x0
1c002a34:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a38:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a40:	4c000020 	jirl	$r0,$r1,0

1c002a44 <Uart0_send>:
Uart0_send():
1c002a44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a54:	0015008c 	move	$r12,$r4
1c002a58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a60:	00150185 	move	$r5,$r12
1c002a64:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002a68:	57fdffff 	bl	-516(0xffffdfc) # 1c002864 <UART_SendData>
1c002a6c:	03400000 	andi	$r0,$r0,0x0
1c002a70:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a74:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a7c:	4c000020 	jirl	$r0,$r1,0

1c002a80 <Uart1_send>:
Uart1_send():
1c002a80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a88:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a90:	0015008c 	move	$r12,$r4
1c002a94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a9c:	00150185 	move	$r5,$r12
1c002aa0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002aa4:	57fdc3ff 	bl	-576(0xffffdc0) # 1c002864 <UART_SendData>
1c002aa8:	03400000 	andi	$r0,$r0,0x0
1c002aac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ab0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002ab4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ab8:	4c000020 	jirl	$r0,$r1,0

1c002abc <Uart2_send>:
Uart2_send():
1c002abc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ac0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002ac4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002ac8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002acc:	0015008c 	move	$r12,$r4
1c002ad0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002ad4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002ad8:	00150185 	move	$r5,$r12
1c002adc:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002ae0:	57fd87ff 	bl	-636(0xffffd84) # 1c002864 <UART_SendData>
1c002ae4:	03400000 	andi	$r0,$r0,0x0
1c002ae8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002aec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002af0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002af4:	4c000020 	jirl	$r0,$r1,0

1c002af8 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002af8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002afc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b04:	1400006c 	lu12i.w	$r12,3(0x3)
1c002b08:	03ba018c 	ori	$r12,$r12,0xe80
1c002b0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b10:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b18:	2880018d 	ld.w	$r13,$r12,0
1c002b1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b20:	038101ad 	ori	$r13,$r13,0x40
1c002b24:	2980018d 	st.w	$r13,$r12,0
1c002b28:	03400000 	andi	$r0,$r0,0x0
1c002b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b34:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b38:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002b2c <CLOCK_WaitForHSEStartUp+0x34>
1c002b3c:	50001c00 	b	28(0x1c) # 1c002b58 <CLOCK_WaitForHSEStartUp+0x60>
1c002b40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b44:	2880018e 	ld.w	$r14,$r12,0
1c002b48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b4c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002b50:	0014b5cd 	and	$r13,$r14,$r13
1c002b54:	2980018d 	st.w	$r13,$r12,0
1c002b58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b5c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002b60:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002b40 <CLOCK_WaitForHSEStartUp+0x48>
1c002b64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b68:	2880018d 	ld.w	$r13,$r12,0
1c002b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b70:	038201ad 	ori	$r13,$r13,0x80
1c002b74:	2980018d 	st.w	$r13,$r12,0
1c002b78:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b84:	00150184 	move	$r4,$r12
1c002b88:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002b8c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b90:	4c000020 	jirl	$r0,$r1,0

1c002b94 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002b94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b98:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ba0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ba4:	50008800 	b	136(0x88) # 1c002c2c <CLOCK_WaitForLSEStartUp+0x98>
1c002ba8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bac:	2880018e 	ld.w	$r14,$r12,0
1c002bb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002bb8:	0014b5cd 	and	$r13,$r14,$r13
1c002bbc:	2980018d 	st.w	$r13,$r12,0
1c002bc0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002bc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002bc8:	50001400 	b	20(0x14) # 1c002bdc <CLOCK_WaitForLSEStartUp+0x48>
1c002bcc:	03400000 	andi	$r0,$r0,0x0
1c002bd0:	03400000 	andi	$r0,$r0,0x0
1c002bd4:	03400000 	andi	$r0,$r0,0x0
1c002bd8:	03400000 	andi	$r0,$r0,0x0
1c002bdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002be0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002be4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002be8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002bcc <CLOCK_WaitForLSEStartUp+0x38>
1c002bec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf0:	2880018d 	ld.w	$r13,$r12,0
1c002bf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf8:	038081ad 	ori	$r13,$r13,0x20
1c002bfc:	2980018d 	st.w	$r13,$r12,0
1c002c00:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c08:	50001400 	b	20(0x14) # 1c002c1c <CLOCK_WaitForLSEStartUp+0x88>
1c002c0c:	03400000 	andi	$r0,$r0,0x0
1c002c10:	03400000 	andi	$r0,$r0,0x0
1c002c14:	03400000 	andi	$r0,$r0,0x0
1c002c18:	03400000 	andi	$r0,$r0,0x0
1c002c1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c24:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c28:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c0c <CLOCK_WaitForLSEStartUp+0x78>
1c002c2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c30:	0380118c 	ori	$r12,$r12,0x4
1c002c34:	2880018d 	ld.w	$r13,$r12,0
1c002c38:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002c3c:	0014b1ac 	and	$r12,$r13,$r12
1c002c40:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002ba8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	0380118c 	ori	$r12,$r12,0x4
1c002c4c:	2880018d 	ld.w	$r13,$r12,0
1c002c50:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002c54:	0014b1ac 	and	$r12,$r13,$r12
1c002c58:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002ba8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c60:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002c64:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002c68:	00150184 	move	$r4,$r12
1c002c6c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c74:	4c000020 	jirl	$r0,$r1,0

1c002c78 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002c78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c7c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c80:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c84:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c88:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002c8c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c94:	2880018e 	ld.w	$r14,$r12,0
1c002c98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c9c:	0014300d 	nor	$r13,$r0,$r12
1c002ca0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca4:	0014b5cd 	and	$r13,$r14,$r13
1c002ca8:	2980018d 	st.w	$r13,$r12,0
1c002cac:	1400002c 	lu12i.w	$r12,1(0x1)
1c002cb0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002cb4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cb8:	50001400 	b	20(0x14) # 1c002ccc <CLOCK_HSEConfig+0x54>
1c002cbc:	03400000 	andi	$r0,$r0,0x0
1c002cc0:	03400000 	andi	$r0,$r0,0x0
1c002cc4:	03400000 	andi	$r0,$r0,0x0
1c002cc8:	03400000 	andi	$r0,$r0,0x0
1c002ccc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cd0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cd4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002cd8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cbc <CLOCK_HSEConfig+0x44>
1c002cdc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002ce0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002ce4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002cf4 <CLOCK_HSEConfig+0x7c>
1c002ce8:	57fe13ff 	bl	-496(0xffffe10) # 1c002af8 <CLOCK_WaitForHSEStartUp>
1c002cec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002cf0:	50002400 	b	36(0x24) # 1c002d14 <CLOCK_HSEConfig+0x9c>
1c002cf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cf8:	2880018e 	ld.w	$r14,$r12,0
1c002cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d00:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002d04:	0014b5cd 	and	$r13,$r14,$r13
1c002d08:	2980018d 	st.w	$r13,$r12,0
1c002d0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d18:	00150184 	move	$r4,$r12
1c002d1c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d20:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d24:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d28:	4c000020 	jirl	$r0,$r1,0

1c002d2c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002d2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d3c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d48:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002d4c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d5c <CLOCK_LSEConfig+0x30>
1c002d50:	57fe47ff 	bl	-444(0xffffe44) # 1c002b94 <CLOCK_WaitForLSEStartUp>
1c002d54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d58:	50002400 	b	36(0x24) # 1c002d7c <CLOCK_LSEConfig+0x50>
1c002d5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d60:	2880018e 	ld.w	$r14,$r12,0
1c002d64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d68:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002d6c:	0014b5cd 	and	$r13,$r14,$r13
1c002d70:	2980018d 	st.w	$r13,$r12,0
1c002d74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d80:	00150184 	move	$r4,$r12
1c002d84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d90:	4c000020 	jirl	$r0,$r1,0

1c002d94 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002d94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d98:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002da0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002da8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002dac:	2980018d 	st.w	$r13,$r12,0
1c002db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002db4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002db8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dc0:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002dc4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dcc:	29803180 	st.w	$r0,$r12,12(0xc)
1c002dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dd4:	29804180 	st.w	$r0,$r12,16(0x10)
1c002dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ddc:	29805180 	st.w	$r0,$r12,20(0x14)
1c002de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de4:	29806180 	st.w	$r0,$r12,24(0x18)
1c002de8:	03400000 	andi	$r0,$r0,0x0
1c002dec:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002df0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002df4:	4c000020 	jirl	$r0,$r1,0

1c002df8 <CLOCK_Init>:
CLOCK_Init():
1c002df8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002dfc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e00:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e04:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e08:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e0c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e14:	2880018e 	ld.w	$r14,$r12,0
1c002e18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e1c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002e20:	0014b5cd 	and	$r13,$r14,$r13
1c002e24:	2980018d 	st.w	$r13,$r12,0
1c002e28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e2c:	2880018e 	ld.w	$r14,$r12,0
1c002e30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e34:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e3c:	001535cd 	or	$r13,$r14,$r13
1c002e40:	2980018d 	st.w	$r13,$r12,0
1c002e44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e48:	2880018e 	ld.w	$r14,$r12,0
1c002e4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e50:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002e54:	0014b5cd 	and	$r13,$r14,$r13
1c002e58:	2980018d 	st.w	$r13,$r12,0
1c002e5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e60:	2880018e 	ld.w	$r14,$r12,0
1c002e64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e68:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002e6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e70:	001535cd 	or	$r13,$r14,$r13
1c002e74:	2980018d 	st.w	$r13,$r12,0
1c002e78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e7c:	2880018e 	ld.w	$r14,$r12,0
1c002e80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e84:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002e88:	039ffdad 	ori	$r13,$r13,0x7ff
1c002e8c:	0014b5cd 	and	$r13,$r14,$r13
1c002e90:	2980018d 	st.w	$r13,$r12,0
1c002e94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e98:	2880018e 	ld.w	$r14,$r12,0
1c002e9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ea0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002ea4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea8:	001535cd 	or	$r13,$r14,$r13
1c002eac:	2980018d 	st.w	$r13,$r12,0
1c002eb0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002eb4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002eb8:	00150184 	move	$r4,$r12
1c002ebc:	57fdbfff 	bl	-580(0xffffdbc) # 1c002c78 <CLOCK_HSEConfig>
1c002ec0:	0015008d 	move	$r13,$r4
1c002ec4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ec8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ed4 <CLOCK_Init+0xdc>
1c002ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed0:	50015000 	b	336(0x150) # 1c003020 <CLOCK_Init+0x228>
1c002ed4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ed8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002edc:	00150184 	move	$r4,$r12
1c002ee0:	57fe4fff 	bl	-436(0xffffe4c) # 1c002d2c <CLOCK_LSEConfig>
1c002ee4:	0015008d 	move	$r13,$r4
1c002ee8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002eec:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ef8 <CLOCK_Init+0x100>
1c002ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ef4:	50012c00 	b	300(0x12c) # 1c003020 <CLOCK_Init+0x228>
1c002ef8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002efc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002f00:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002f04:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003000 <CLOCK_Init+0x208>
1c002f08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f0c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002f10:	4000a180 	beqz	$r12,160(0xa0) # 1c002fb0 <CLOCK_Init+0x1b8>
1c002f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f18:	2880018e 	ld.w	$r14,$r12,0
1c002f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f20:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002f24:	03bffdad 	ori	$r13,$r13,0xfff
1c002f28:	0014b5cd 	and	$r13,$r14,$r13
1c002f2c:	2980018d 	st.w	$r13,$r12,0
1c002f30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f34:	2880018e 	ld.w	$r14,$r12,0
1c002f38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f3c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002f40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f44:	001535cd 	or	$r13,$r14,$r13
1c002f48:	2980018d 	st.w	$r13,$r12,0
1c002f4c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f50:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f54:	2880018c 	ld.w	$r12,$r12,0
1c002f58:	40004180 	beqz	$r12,64(0x40) # 1c002f98 <CLOCK_Init+0x1a0>
1c002f5c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f60:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f64:	2880018c 	ld.w	$r12,$r12,0
1c002f68:	0040898e 	slli.w	$r14,$r12,0x2
1c002f6c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f70:	002031cd 	div.w	$r13,$r14,$r12
1c002f74:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002f7c <CLOCK_Init+0x184>
1c002f78:	002a0007 	break	0x7
1c002f7c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f80:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f84:	0015018d 	move	$r13,$r12
1c002f88:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f8c:	0282518c 	addi.w	$r12,$r12,148(0x94)
1c002f90:	2980018d 	st.w	$r13,$r12,0
1c002f94:	50008000 	b	128(0x80) # 1c003014 <CLOCK_Init+0x21c>
1c002f98:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f9c:	0282118c 	addi.w	$r12,$r12,132(0x84)
1c002fa0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002fa4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002fa8:	2980018d 	st.w	$r13,$r12,0
1c002fac:	50006800 	b	104(0x68) # 1c003014 <CLOCK_Init+0x21c>
1c002fb0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fb4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fb8:	2880018c 	ld.w	$r12,$r12,0
1c002fbc:	40002d80 	beqz	$r12,44(0x2c) # 1c002fe8 <CLOCK_Init+0x1f0>
1c002fc0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fc4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fc8:	2880018d 	ld.w	$r13,$r12,0
1c002fcc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002fd0:	001c31ac 	mul.w	$r12,$r13,$r12
1c002fd4:	0015018d 	move	$r13,$r12
1c002fd8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fdc:	0281118c 	addi.w	$r12,$r12,68(0x44)
1c002fe0:	2980018d 	st.w	$r13,$r12,0
1c002fe4:	50003000 	b	48(0x30) # 1c003014 <CLOCK_Init+0x21c>
1c002fe8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fec:	0280d18c 	addi.w	$r12,$r12,52(0x34)
1c002ff0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002ff4:	038801ad 	ori	$r13,$r13,0x200
1c002ff8:	2980018d 	st.w	$r13,$r12,0
1c002ffc:	50001800 	b	24(0x18) # 1c003014 <CLOCK_Init+0x21c>
1c003000:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003004:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c003008:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00300c:	038801ad 	ori	$r13,$r13,0x200
1c003010:	2980018d 	st.w	$r13,$r12,0
1c003014:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003018:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00301c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003020:	00150184 	move	$r4,$r12
1c003024:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003028:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00302c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003030:	4c000020 	jirl	$r0,$r1,0

1c003034 <SystemClockInit>:
SystemClockInit():
1c003034:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003038:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00303c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003040:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003044:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003048:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00304c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003050:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003054:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003058:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00305c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003060:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003064:	00150184 	move	$r4,$r12
1c003068:	57fd2fff 	bl	-724(0xffffd2c) # 1c002d94 <CLOCK_StructInit>
1c00306c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003070:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003074:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003078:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00307c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c003080:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003084:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003088:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c00308c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003090:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003094:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003098:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00309c:	00150184 	move	$r4,$r12
1c0030a0:	57fd5bff 	bl	-680(0xffffd58) # 1c002df8 <CLOCK_Init>
1c0030a4:	0015008d 	move	$r13,$r4
1c0030a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030ac:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0030b8 <SystemClockInit+0x84>
1c0030b0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0030b4:	50000800 	b	8(0x8) # 1c0030bc <SystemClockInit+0x88>
1c0030b8:	0015000c 	move	$r12,$r0
1c0030bc:	00150184 	move	$r4,$r12
1c0030c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0030c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0030c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0030cc:	4c000020 	jirl	$r0,$r1,0

1c0030d0 <DisableInt>:
DisableInt():
1c0030d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030d4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0030dc:	0380100c 	ori	$r12,$r0,0x4
1c0030e0:	04000180 	csrxchg	$r0,$r12,0x0
1c0030e4:	03400000 	andi	$r0,$r0,0x0
1c0030e8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0030ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030f0:	4c000020 	jirl	$r0,$r1,0

1c0030f4 <EnableInt>:
EnableInt():
1c0030f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030f8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003100:	0380100c 	ori	$r12,$r0,0x4
1c003104:	0400018c 	csrxchg	$r12,$r12,0x0
1c003108:	03400000 	andi	$r0,$r0,0x0
1c00310c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003110:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003114:	4c000020 	jirl	$r0,$r1,0

1c003118 <Set_Timer_stop>:
Set_Timer_stop():
1c003118:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00311c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003120:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003124:	04010420 	csrwr	$r0,0x41
1c003128:	03400000 	andi	$r0,$r0,0x0
1c00312c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003130:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003134:	4c000020 	jirl	$r0,$r1,0

1c003138 <Set_Timer_clear>:
Set_Timer_clear():
1c003138:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00313c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003140:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003144:	0380040c 	ori	$r12,$r0,0x1
1c003148:	0401102c 	csrwr	$r12,0x44
1c00314c:	03400000 	andi	$r0,$r0,0x0
1c003150:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003154:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003158:	4c000020 	jirl	$r0,$r1,0

1c00315c <Wake_Set>:
Wake_Set():
1c00315c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003160:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003164:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003168:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00316c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003170:	40006980 	beqz	$r12,104(0x68) # 1c0031d8 <Wake_Set+0x7c>
1c003174:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003178:	0040a18c 	slli.w	$r12,$r12,0x8
1c00317c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003180:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003184:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003188:	0380218c 	ori	$r12,$r12,0x8
1c00318c:	2880018d 	ld.w	$r13,$r12,0
1c003190:	14001fec 	lu12i.w	$r12,255(0xff)
1c003194:	03bffd8c 	ori	$r12,$r12,0xfff
1c003198:	0014b1ac 	and	$r12,$r13,$r12
1c00319c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0031a0:	001031ac 	add.w	$r12,$r13,$r12
1c0031a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0031a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031ac:	0380318c 	ori	$r12,$r12,0xc
1c0031b0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0031b4:	2980018d 	st.w	$r13,$r12,0
1c0031b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031bc:	0380118c 	ori	$r12,$r12,0x4
1c0031c0:	2880018d 	ld.w	$r13,$r12,0
1c0031c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031c8:	0380118c 	ori	$r12,$r12,0x4
1c0031cc:	038601ad 	ori	$r13,$r13,0x180
1c0031d0:	2980018d 	st.w	$r13,$r12,0
1c0031d4:	50002400 	b	36(0x24) # 1c0031f8 <Wake_Set+0x9c>
1c0031d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031dc:	0380118c 	ori	$r12,$r12,0x4
1c0031e0:	2880018e 	ld.w	$r14,$r12,0
1c0031e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031e8:	0380118c 	ori	$r12,$r12,0x4
1c0031ec:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0031f0:	0014b5cd 	and	$r13,$r14,$r13
1c0031f4:	2980018d 	st.w	$r13,$r12,0
1c0031f8:	03400000 	andi	$r0,$r0,0x0
1c0031fc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003200:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003204:	4c000020 	jirl	$r0,$r1,0

1c003208 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003208:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00320c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003210:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003214:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003218:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00321c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003220:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003224:	0014b1ac 	and	$r12,$r13,$r12
1c003228:	44000d80 	bnez	$r12,12(0xc) # 1c003234 <PMU_GetRstRrc+0x2c>
1c00322c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003230:	50003000 	b	48(0x30) # 1c003260 <PMU_GetRstRrc+0x58>
1c003234:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003238:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00323c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003240:	0014b1ad 	and	$r13,$r13,$r12
1c003244:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003248:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003258 <PMU_GetRstRrc+0x50>
1c00324c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003250:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003254:	50000c00 	b	12(0xc) # 1c003260 <PMU_GetRstRrc+0x58>
1c003258:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00325c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003260:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003264:	00150184 	move	$r4,$r12
1c003268:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00326c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003270:	4c000020 	jirl	$r0,$r1,0

1c003274 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003274:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003278:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00327c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003280:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003284:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003288:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00328c:	0380198c 	ori	$r12,$r12,0x6
1c003290:	2a00018c 	ld.bu	$r12,$r12,0
1c003294:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003298:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00329c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0032a0:	0340058c 	andi	$r12,$r12,0x1
1c0032a4:	40000d80 	beqz	$r12,12(0xc) # 1c0032b0 <PMU_GetBootSpiStatus+0x3c>
1c0032a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032ac:	50000800 	b	8(0x8) # 1c0032b4 <PMU_GetBootSpiStatus+0x40>
1c0032b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032b4:	00150184 	move	$r4,$r12
1c0032b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032c0:	4c000020 	jirl	$r0,$r1,0

1c0032c4 <ls1x_logo>:
ls1x_logo():
1c0032c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0032c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0032cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0032d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0032d4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0032d8:	02820084 	addi.w	$r4,$r4,128(0x80)
1c0032dc:	57e9d3ff 	bl	-5680(0xfffe9d0) # 1c001cac <myprintf>
1c0032e0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0032e4:	0281e084 	addi.w	$r4,$r4,120(0x78)
1c0032e8:	57e9c7ff 	bl	-5692(0xfffe9c4) # 1c001cac <myprintf>
1c0032ec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0032f0:	02834084 	addi.w	$r4,$r4,208(0xd0)
1c0032f4:	57e9bbff 	bl	-5704(0xfffe9b8) # 1c001cac <myprintf>
1c0032f8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0032fc:	0284a084 	addi.w	$r4,$r4,296(0x128)
1c003300:	57e9afff 	bl	-5716(0xfffe9ac) # 1c001cac <myprintf>
1c003304:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003308:	02860084 	addi.w	$r4,$r4,384(0x180)
1c00330c:	57e9a3ff 	bl	-5728(0xfffe9a0) # 1c001cac <myprintf>
1c003310:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003314:	02876084 	addi.w	$r4,$r4,472(0x1d8)
1c003318:	57e997ff 	bl	-5740(0xfffe994) # 1c001cac <myprintf>
1c00331c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003320:	0288c084 	addi.w	$r4,$r4,560(0x230)
1c003324:	57e98bff 	bl	-5752(0xfffe988) # 1c001cac <myprintf>
1c003328:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00332c:	028a2084 	addi.w	$r4,$r4,648(0x288)
1c003330:	57e97fff 	bl	-5764(0xfffe97c) # 1c001cac <myprintf>
1c003334:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003338:	028b8084 	addi.w	$r4,$r4,736(0x2e0)
1c00333c:	57e973ff 	bl	-5776(0xfffe970) # 1c001cac <myprintf>
1c003340:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003344:	028ce084 	addi.w	$r4,$r4,824(0x338)
1c003348:	57e967ff 	bl	-5788(0xfffe964) # 1c001cac <myprintf>
1c00334c:	03400000 	andi	$r0,$r0,0x0
1c003350:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003354:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003358:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00335c:	4c000020 	jirl	$r0,$r1,0

1c003360 <get_count>:
get_count():
1c003360:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003364:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003368:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00336c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003370:	0000600c 	rdtimel.w	$r12,$r0
1c003374:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00337c:	00150184 	move	$r4,$r12
1c003380:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003384:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003388:	4c000020 	jirl	$r0,$r1,0

1c00338c <open_count>:
open_count():
1c00338c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003390:	29803076 	st.w	$r22,$r3,12(0xc)
1c003394:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003398:	0380400c 	ori	$r12,$r0,0x10
1c00339c:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0033a0:	03400000 	andi	$r0,$r0,0x0
1c0033a4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0033a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033ac:	4c000020 	jirl	$r0,$r1,0

1c0033b0 <start_count>:
start_count():
1c0033b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0033b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0033bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033c0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0033c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033c8:	29800180 	st.w	$r0,$r12,0
1c0033cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033d0:	29801180 	st.w	$r0,$r12,4(0x4)
1c0033d4:	57ff8fff 	bl	-116(0xfffff8c) # 1c003360 <get_count>
1c0033d8:	0015008d 	move	$r13,$r4
1c0033dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033e0:	2980018d 	st.w	$r13,$r12,0
1c0033e4:	03400000 	andi	$r0,$r0,0x0
1c0033e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0033ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0033f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033f4:	4c000020 	jirl	$r0,$r1,0

1c0033f8 <stop_count>:
stop_count():
1c0033f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0033fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003400:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003404:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003408:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00340c:	57ff57ff 	bl	-172(0xfffff54) # 1c003360 <get_count>
1c003410:	0015008d 	move	$r13,$r4
1c003414:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003418:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00341c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003420:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003424:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003428:	2880018c 	ld.w	$r12,$r12,0
1c00342c:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003448 <stop_count+0x50>
1c003430:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003434:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003438:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00343c:	2880018c 	ld.w	$r12,$r12,0
1c003440:	001131ac 	sub.w	$r12,$r13,$r12
1c003444:	50002800 	b	40(0x28) # 1c00346c <stop_count+0x74>
1c003448:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00344c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003450:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003454:	2880018c 	ld.w	$r12,$r12,0
1c003458:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00345c:	001131ad 	sub.w	$r13,$r13,$r12
1c003460:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003464:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003468:	001031ac 	add.w	$r12,$r13,$r12
1c00346c:	00150184 	move	$r4,$r12
1c003470:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003474:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003478:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00347c:	4c000020 	jirl	$r0,$r1,0

1c003480 <delay_cycle>:
delay_cycle():
1c003480:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003484:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003488:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00348c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003490:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003494:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003498:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00349c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0034a0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0034a4:	00150184 	move	$r4,$r12
1c0034a8:	57ff0bff 	bl	-248(0xfffff08) # 1c0033b0 <start_count>
1c0034ac:	50001400 	b	20(0x14) # 1c0034c0 <delay_cycle+0x40>
1c0034b0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0034b4:	00150184 	move	$r4,$r12
1c0034b8:	57ff43ff 	bl	-192(0xfffff40) # 1c0033f8 <stop_count>
1c0034bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034c8:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0034b0 <delay_cycle+0x30>
1c0034cc:	03400000 	andi	$r0,$r0,0x0
1c0034d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0034d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0034d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034dc:	4c000020 	jirl	$r0,$r1,0

1c0034e0 <delay_ms>:
delay_ms():
1c0034e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034f8:	1400002c 	lu12i.w	$r12,1(0x1)
1c0034fc:	03bd018c 	ori	$r12,$r12,0xf40
1c003500:	001c31ac 	mul.w	$r12,$r13,$r12
1c003504:	00150184 	move	$r4,$r12
1c003508:	57ff7bff 	bl	-136(0xfffff78) # 1c003480 <delay_cycle>
1c00350c:	03400000 	andi	$r0,$r0,0x0
1c003510:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003514:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003518:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00351c:	4c000020 	jirl	$r0,$r1,0

1c003520 <memset>:
memset():
1c003520:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003524:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003528:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00352c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003530:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003534:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003538:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00353c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003540:	50001c00 	b	28(0x1c) # 1c00355c <memset+0x3c>
1c003544:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003548:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00354c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003550:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003554:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003558:	2900018d 	st.b	$r13,$r12,0
1c00355c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003560:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003564:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003568:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003544 <memset+0x24>
1c00356c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003570:	00150184 	move	$r4,$r12
1c003574:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003578:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00357c:	4c000020 	jirl	$r0,$r1,0

1c003580 <pstrstr>:
pstrstr():
1c003580:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003584:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003588:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00358c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003590:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003594:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003598:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00359c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0035a0:	2800018c 	ld.b	$r12,$r12,0
1c0035a4:	44008580 	bnez	$r12,132(0x84) # 1c003628 <pstrstr+0xa8>
1c0035a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035ac:	50008c00 	b	140(0x8c) # 1c003638 <pstrstr+0xb8>
1c0035b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035b4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0035b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0035bc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0035c0:	50001c00 	b	28(0x1c) # 1c0035dc <pstrstr+0x5c>
1c0035c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0035c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0035cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0035d0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0035d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0035d8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0035dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0035e0:	2800018c 	ld.b	$r12,$r12,0
1c0035e4:	40002580 	beqz	$r12,36(0x24) # 1c003608 <pstrstr+0x88>
1c0035e8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0035ec:	2800018c 	ld.b	$r12,$r12,0
1c0035f0:	40001980 	beqz	$r12,24(0x18) # 1c003608 <pstrstr+0x88>
1c0035f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0035f8:	2800018d 	ld.b	$r13,$r12,0
1c0035fc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003600:	2800018c 	ld.b	$r12,$r12,0
1c003604:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c0035c4 <pstrstr+0x44>
1c003608:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00360c:	2800018c 	ld.b	$r12,$r12,0
1c003610:	44000d80 	bnez	$r12,12(0xc) # 1c00361c <pstrstr+0x9c>
1c003614:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003618:	50002000 	b	32(0x20) # 1c003638 <pstrstr+0xb8>
1c00361c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003620:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003624:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00362c:	2800018c 	ld.b	$r12,$r12,0
1c003630:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c0035b0 <pstrstr+0x30>
1c003634:	0015000c 	move	$r12,$r0
1c003638:	00150184 	move	$r4,$r12
1c00363c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003640:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003644:	4c000020 	jirl	$r0,$r1,0

1c003648 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003648:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00364c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003650:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003654:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003658:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00365c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003660:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003664:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003668:	001531ad 	or	$r13,$r13,$r12
1c00366c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003670:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003674:	03400000 	andi	$r0,$r0,0x0
1c003678:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00367c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003680:	4c000020 	jirl	$r0,$r1,0

1c003684 <WDG_getOddValue>:
WDG_getOddValue():
1c003684:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003688:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00368c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003690:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003694:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003698:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00369c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036a0:	50003800 	b	56(0x38) # 1c0036d8 <WDG_getOddValue+0x54>
1c0036a4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0036a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036ac:	001731ac 	sll.w	$r12,$r13,$r12
1c0036b0:	0015018d 	move	$r13,$r12
1c0036b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036b8:	0014b1ac 	and	$r12,$r13,$r12
1c0036bc:	40001180 	beqz	$r12,16(0x10) # 1c0036cc <WDG_getOddValue+0x48>
1c0036c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0036dc:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0036e0:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0036a4 <WDG_getOddValue+0x20>
1c0036e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036e8:	0340058c 	andi	$r12,$r12,0x1
1c0036ec:	44000d80 	bnez	$r12,12(0xc) # 1c0036f8 <WDG_getOddValue+0x74>
1c0036f0:	1400010c 	lu12i.w	$r12,8(0x8)
1c0036f4:	50000800 	b	8(0x8) # 1c0036fc <WDG_getOddValue+0x78>
1c0036f8:	0015000c 	move	$r12,$r0
1c0036fc:	00150184 	move	$r4,$r12
1c003700:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003704:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003708:	4c000020 	jirl	$r0,$r1,0

1c00370c <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c00370c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003710:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003714:	29806076 	st.w	$r22,$r3,24(0x18)
1c003718:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00371c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003720:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003724:	140000ec 	lu12i.w	$r12,7(0x7)
1c003728:	03bffd8c 	ori	$r12,$r12,0xfff
1c00372c:	0014b1ac 	and	$r12,$r13,$r12
1c003730:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003734:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003738:	57ff4fff 	bl	-180(0xfffff4c) # 1c003684 <WDG_getOddValue>
1c00373c:	0015008c 	move	$r12,$r4
1c003740:	0015018d 	move	$r13,$r12
1c003744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003748:	0015358c 	or	$r12,$r12,$r13
1c00374c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003754:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003758:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00375c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003760:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003764:	0014300c 	nor	$r12,$r0,$r12
1c003768:	0040c18c 	slli.w	$r12,$r12,0x10
1c00376c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003770:	001531ac 	or	$r12,$r13,$r12
1c003774:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003778:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00377c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003780:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003784:	03400000 	andi	$r0,$r0,0x0
1c003788:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00378c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003790:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003794:	4c000020 	jirl	$r0,$r1,0

1c003798 <WDG_DogFeed>:
WDG_DogFeed():
1c003798:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00379c:	29803076 	st.w	$r22,$r3,12(0xc)
1c0037a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037a8:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0037ac:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0037b0:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0037b4:	03400000 	andi	$r0,$r0,0x0
1c0037b8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0037bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037c0:	4c000020 	jirl	$r0,$r1,0

1c0037c4 <WdgInit>:
WdgInit():
1c0037c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0037cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0037d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037d4:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c0037d8:	03bffd84 	ori	$r4,$r12,0xfff
1c0037dc:	57ff33ff 	bl	-208(0xfffff30) # 1c00370c <WDG_SetWatchDog>
1c0037e0:	03400000 	andi	$r0,$r0,0x0
1c0037e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037f0:	4c000020 	jirl	$r0,$r1,0

1c0037f4 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c0037f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037f8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0037fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003800:	0015008c 	move	$r12,$r4
1c003804:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003808:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00380c:	0040898c 	slli.w	$r12,$r12,0x2
1c003810:	0015018d 	move	$r13,$r12
1c003814:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003818:	0381018c 	ori	$r12,$r12,0x40
1c00381c:	001031ac 	add.w	$r12,$r13,$r12
1c003820:	2880018c 	ld.w	$r12,$r12,0
1c003824:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003828:	037ffd8c 	andi	$r12,$r12,0xfff
1c00382c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003830:	00150184 	move	$r4,$r12
1c003834:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003838:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00383c:	4c000020 	jirl	$r0,$r1,0

1c003840 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003840:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003844:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003848:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00384c:	0015008c 	move	$r12,$r4
1c003850:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003854:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003858:	0040898c 	slli.w	$r12,$r12,0x2
1c00385c:	0015018d 	move	$r13,$r12
1c003860:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003864:	0382018c 	ori	$r12,$r12,0x80
1c003868:	001031ac 	add.w	$r12,$r13,$r12
1c00386c:	2880018c 	ld.w	$r12,$r12,0
1c003870:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003874:	037ffd8c 	andi	$r12,$r12,0xfff
1c003878:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00387c:	00150184 	move	$r4,$r12
1c003880:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003884:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003888:	4c000020 	jirl	$r0,$r1,0

1c00388c <Printf_KeyChannel>:
Printf_KeyChannel():
1c00388c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003890:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003894:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003898:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00389c:	0015008c 	move	$r12,$r4
1c0038a0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0038a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038a8:	50003400 	b	52(0x34) # 1c0038dc <Printf_KeyChannel+0x50>
1c0038ac:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0038b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038b4:	001831ac 	sra.w	$r12,$r13,$r12
1c0038b8:	0340058c 	andi	$r12,$r12,0x1
1c0038bc:	40001580 	beqz	$r12,20(0x14) # 1c0038d0 <Printf_KeyChannel+0x44>
1c0038c0:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c0038c4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0038c8:	02b86084 	addi.w	$r4,$r4,-488(0xe18)
1c0038cc:	57e3e3ff 	bl	-7200(0xfffe3e0) # 1c001cac <myprintf>
1c0038d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038dc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038e0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0038e4:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0038ac <Printf_KeyChannel+0x20>
1c0038e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0038ec:	02b7e084 	addi.w	$r4,$r4,-520(0xdf8)
1c0038f0:	57e3bfff 	bl	-7236(0xfffe3bc) # 1c001cac <myprintf>
1c0038f4:	03400000 	andi	$r0,$r0,0x0
1c0038f8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0038fc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003900:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003904:	4c000020 	jirl	$r0,$r1,0

1c003908 <Printf_KeyType>:
Printf_KeyType():
1c003908:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00390c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003910:	29806076 	st.w	$r22,$r3,24(0x18)
1c003914:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003918:	0015008c 	move	$r12,$r4
1c00391c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003920:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003924:	0340058c 	andi	$r12,$r12,0x1
1c003928:	40001180 	beqz	$r12,16(0x10) # 1c003938 <Printf_KeyType+0x30>
1c00392c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003930:	02b6e084 	addi.w	$r4,$r4,-584(0xdb8)
1c003934:	57e37bff 	bl	-7304(0xfffe378) # 1c001cac <myprintf>
1c003938:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00393c:	0340098c 	andi	$r12,$r12,0x2
1c003940:	40001180 	beqz	$r12,16(0x10) # 1c003950 <Printf_KeyType+0x48>
1c003944:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003948:	02b6a084 	addi.w	$r4,$r4,-600(0xda8)
1c00394c:	57e363ff 	bl	-7328(0xfffe360) # 1c001cac <myprintf>
1c003950:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003954:	0340118c 	andi	$r12,$r12,0x4
1c003958:	40001180 	beqz	$r12,16(0x10) # 1c003968 <Printf_KeyType+0x60>
1c00395c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003960:	02b66084 	addi.w	$r4,$r4,-616(0xd98)
1c003964:	57e34bff 	bl	-7352(0xfffe348) # 1c001cac <myprintf>
1c003968:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00396c:	0340218c 	andi	$r12,$r12,0x8
1c003970:	40001180 	beqz	$r12,16(0x10) # 1c003980 <Printf_KeyType+0x78>
1c003974:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003978:	02b63084 	addi.w	$r4,$r4,-628(0xd8c)
1c00397c:	57e333ff 	bl	-7376(0xfffe330) # 1c001cac <myprintf>
1c003980:	03400000 	andi	$r0,$r0,0x0
1c003984:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003988:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00398c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003990:	4c000020 	jirl	$r0,$r1,0

1c003994 <Printf_KeyVal>:
Printf_KeyVal():
1c003994:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003998:	2982b061 	st.w	$r1,$r3,172(0xac)
1c00399c:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0039a0:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c0039a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0039a8:	5000d800 	b	216(0xd8) # 1c003a80 <Printf_KeyVal+0xec>
1c0039ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039b0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039b4:	00150184 	move	$r4,$r12
1c0039b8:	57fe8bff 	bl	-376(0xffffe88) # 1c003840 <TOUCH_GetCountValue>
1c0039bc:	0015008c 	move	$r12,$r4
1c0039c0:	0015018d 	move	$r13,$r12
1c0039c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039c8:	0040898c 	slli.w	$r12,$r12,0x2
1c0039cc:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0039d0:	001031cc 	add.w	$r12,$r14,$r12
1c0039d4:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c0039d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039dc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039e0:	00150184 	move	$r4,$r12
1c0039e4:	57fe13ff 	bl	-496(0xffffe10) # 1c0037f4 <TOUCH_GetBaseVal>
1c0039e8:	0015008c 	move	$r12,$r4
1c0039ec:	0015018d 	move	$r13,$r12
1c0039f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039f4:	0040898c 	slli.w	$r12,$r12,0x2
1c0039f8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0039fc:	001031cc 	add.w	$r12,$r14,$r12
1c003a00:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003a04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a08:	0040898c 	slli.w	$r12,$r12,0x2
1c003a0c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a10:	001031ac 	add.w	$r12,$r13,$r12
1c003a14:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003a18:	40004980 	beqz	$r12,72(0x48) # 1c003a60 <Printf_KeyVal+0xcc>
1c003a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a20:	0040898c 	slli.w	$r12,$r12,0x2
1c003a24:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a28:	001031ac 	add.w	$r12,$r13,$r12
1c003a2c:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003a30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a34:	0040898c 	slli.w	$r12,$r12,0x2
1c003a38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003a3c:	001031cc 	add.w	$r12,$r14,$r12
1c003a40:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003a44:	001131ad 	sub.w	$r13,$r13,$r12
1c003a48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a4c:	0040898c 	slli.w	$r12,$r12,0x2
1c003a50:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003a54:	001031cc 	add.w	$r12,$r14,$r12
1c003a58:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003a5c:	50001800 	b	24(0x18) # 1c003a74 <Printf_KeyVal+0xe0>
1c003a60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a64:	0040898c 	slli.w	$r12,$r12,0x2
1c003a68:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a6c:	001031ac 	add.w	$r12,$r13,$r12
1c003a70:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003a74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a84:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003a88:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c0039ac <Printf_KeyVal+0x18>
1c003a8c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003a90:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c003a94:	57e21bff 	bl	-7656(0xfffe218) # 1c001cac <myprintf>
1c003a98:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003a9c:	02b27084 	addi.w	$r4,$r4,-868(0xc9c)
1c003aa0:	57e20fff 	bl	-7668(0xfffe20c) # 1c001cac <myprintf>
1c003aa4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003aa8:	50003400 	b	52(0x34) # 1c003adc <Printf_KeyVal+0x148>
1c003aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ab0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ab4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ab8:	001031ac 	add.w	$r12,$r13,$r12
1c003abc:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003ac0:	00150185 	move	$r5,$r12
1c003ac4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ac8:	02b1e084 	addi.w	$r4,$r4,-904(0xc78)
1c003acc:	57e1e3ff 	bl	-7712(0xfffe1e0) # 1c001cac <myprintf>
1c003ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ad4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ad8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003adc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ae0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ae4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003aac <Printf_KeyVal+0x118>
1c003ae8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003aec:	02b17084 	addi.w	$r4,$r4,-932(0xc5c)
1c003af0:	57e1bfff 	bl	-7748(0xfffe1bc) # 1c001cac <myprintf>
1c003af4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003af8:	50003400 	b	52(0x34) # 1c003b2c <Printf_KeyVal+0x198>
1c003afc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b00:	0040898c 	slli.w	$r12,$r12,0x2
1c003b04:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b08:	001031ac 	add.w	$r12,$r13,$r12
1c003b0c:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003b10:	00150185 	move	$r5,$r12
1c003b14:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003b18:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c003b1c:	57e193ff 	bl	-7792(0xfffe190) # 1c001cac <myprintf>
1c003b20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b28:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b2c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b30:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b34:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003afc <Printf_KeyVal+0x168>
1c003b38:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003b3c:	02b06084 	addi.w	$r4,$r4,-1000(0xc18)
1c003b40:	57e16fff 	bl	-7828(0xfffe16c) # 1c001cac <myprintf>
1c003b44:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b48:	50007400 	b	116(0x74) # 1c003bbc <Printf_KeyVal+0x228>
1c003b4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b50:	0040898c 	slli.w	$r12,$r12,0x2
1c003b54:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b58:	001031ac 	add.w	$r12,$r13,$r12
1c003b5c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003b60:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003b8c <Printf_KeyVal+0x1f8>
1c003b64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b68:	0040898c 	slli.w	$r12,$r12,0x2
1c003b6c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b70:	001031ac 	add.w	$r12,$r13,$r12
1c003b74:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003b78:	00150185 	move	$r5,$r12
1c003b7c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003b80:	02af8084 	addi.w	$r4,$r4,-1056(0xbe0)
1c003b84:	57e12bff 	bl	-7896(0xfffe128) # 1c001cac <myprintf>
1c003b88:	50002800 	b	40(0x28) # 1c003bb0 <Printf_KeyVal+0x21c>
1c003b8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b90:	0040898c 	slli.w	$r12,$r12,0x2
1c003b94:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b98:	001031ac 	add.w	$r12,$r13,$r12
1c003b9c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003ba0:	00150185 	move	$r5,$r12
1c003ba4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ba8:	02af0084 	addi.w	$r4,$r4,-1088(0xbc0)
1c003bac:	57e103ff 	bl	-7936(0xfffe100) # 1c001cac <myprintf>
1c003bb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003bb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003bbc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003bc0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003bc4:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003b4c <Printf_KeyVal+0x1b8>
1c003bc8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003bcc:	02ac6084 	addi.w	$r4,$r4,-1256(0xb18)
1c003bd0:	57e0dfff 	bl	-7972(0xfffe0dc) # 1c001cac <myprintf>
1c003bd4:	03400000 	andi	$r0,$r0,0x0
1c003bd8:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003bdc:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003be0:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003be4:	4c000020 	jirl	$r0,$r1,0

1c003be8 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003be8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003bec:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003bf0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003bf4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003bf8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003bfc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003c00:	2880018d 	ld.w	$r13,$r12,0
1c003c04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003c08:	0014b1ac 	and	$r12,$r13,$r12
1c003c0c:	40001180 	beqz	$r12,16(0x10) # 1c003c1c <TIM_GetITStatus+0x34>
1c003c10:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003c14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c18:	50000800 	b	8(0x8) # 1c003c20 <TIM_GetITStatus+0x38>
1c003c1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c24:	00150184 	move	$r4,$r12
1c003c28:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003c2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c30:	4c000020 	jirl	$r0,$r1,0

1c003c34 <TIM_ClearIT>:
TIM_ClearIT():
1c003c34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c38:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c3c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c40:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003c44:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003c48:	2880018e 	ld.w	$r14,$r12,0
1c003c4c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003c50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c54:	001535cd 	or	$r13,$r14,$r13
1c003c58:	2980018d 	st.w	$r13,$r12,0
1c003c5c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003c60:	03800d8c 	ori	$r12,$r12,0x3
1c003c64:	2a00018c 	ld.bu	$r12,$r12,0
1c003c68:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003c6c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003c70:	03800d8c 	ori	$r12,$r12,0x3
1c003c74:	038005ad 	ori	$r13,$r13,0x1
1c003c78:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003c7c:	2900018d 	st.b	$r13,$r12,0
1c003c80:	03400000 	andi	$r0,$r0,0x0
1c003c84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c8c:	4c000020 	jirl	$r0,$r1,0

1c003c90 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003c90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c94:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c98:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ca0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003ca4:	02b100c6 	addi.w	$r6,$r6,-960(0xc40)
1c003ca8:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c003cac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003cb0:	02ab0084 	addi.w	$r4,$r4,-1344(0xac0)
1c003cb4:	57dffbff 	bl	-8200(0xfffdff8) # 1c001cac <myprintf>
1c003cb8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003cbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cc0:	03808184 	ori	$r4,$r12,0x20
1c003cc4:	57f987ff 	bl	-1660(0xffff984) # 1c003648 <EXTI_ClearITPendingBit>
1c003cc8:	03400000 	andi	$r0,$r0,0x0
1c003ccc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003cd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003cd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cd8:	4c000020 	jirl	$r0,$r1,0

1c003cdc <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003cdc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ce0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ce4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ce8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003cec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003cf0:	02b030c6 	addi.w	$r6,$r6,-1012(0xc0c)
1c003cf4:	02806005 	addi.w	$r5,$r0,24(0x18)
1c003cf8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003cfc:	02a9d084 	addi.w	$r4,$r4,-1420(0xa74)
1c003d00:	57dfafff 	bl	-8276(0xfffdfac) # 1c001cac <myprintf>
1c003d04:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003d08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d0c:	03808184 	ori	$r4,$r12,0x20
1c003d10:	57f93bff 	bl	-1736(0xffff938) # 1c003648 <EXTI_ClearITPendingBit>
1c003d14:	03400000 	andi	$r0,$r0,0x0
1c003d18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d24:	4c000020 	jirl	$r0,$r1,0

1c003d28 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003d28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d30:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d38:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d3c:	02af60c6 	addi.w	$r6,$r6,-1064(0xbd8)
1c003d40:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c003d44:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d48:	02a8a084 	addi.w	$r4,$r4,-1496(0xa28)
1c003d4c:	57df63ff 	bl	-8352(0xfffdf60) # 1c001cac <myprintf>
1c003d50:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003d54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d58:	03808184 	ori	$r4,$r12,0x20
1c003d5c:	57f8efff 	bl	-1812(0xffff8ec) # 1c003648 <EXTI_ClearITPendingBit>
1c003d60:	03400000 	andi	$r0,$r0,0x0
1c003d64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d70:	4c000020 	jirl	$r0,$r1,0

1c003d74 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003d74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d78:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d84:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d88:	02ae90c6 	addi.w	$r6,$r6,-1116(0xba4)
1c003d8c:	02808805 	addi.w	$r5,$r0,34(0x22)
1c003d90:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d94:	02a77084 	addi.w	$r4,$r4,-1572(0x9dc)
1c003d98:	57df17ff 	bl	-8428(0xfffdf14) # 1c001cac <myprintf>
1c003d9c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003da0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003da4:	03808184 	ori	$r4,$r12,0x20
1c003da8:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c003648 <EXTI_ClearITPendingBit>
1c003dac:	03400000 	andi	$r0,$r0,0x0
1c003db0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003db4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003db8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003dbc:	4c000020 	jirl	$r0,$r1,0

1c003dc0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003dc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003dc4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003dc8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003dcc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003dd0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003dd4:	02adc0c6 	addi.w	$r6,$r6,-1168(0xb70)
1c003dd8:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c003ddc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003de0:	02a64084 	addi.w	$r4,$r4,-1648(0x990)
1c003de4:	57decbff 	bl	-8504(0xfffdec8) # 1c001cac <myprintf>
1c003de8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c003dec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003df0:	03808184 	ori	$r4,$r12,0x20
1c003df4:	57f857ff 	bl	-1964(0xffff854) # 1c003648 <EXTI_ClearITPendingBit>
1c003df8:	03400000 	andi	$r0,$r0,0x0
1c003dfc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e08:	4c000020 	jirl	$r0,$r1,0

1c003e0c <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c003e0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e10:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e14:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e1c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e20:	02acf0c6 	addi.w	$r6,$r6,-1220(0xb3c)
1c003e24:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c003e28:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e2c:	02a51084 	addi.w	$r4,$r4,-1724(0x944)
1c003e30:	57de7fff 	bl	-8580(0xfffde7c) # 1c001cac <myprintf>
1c003e34:	02808005 	addi.w	$r5,$r0,32(0x20)
1c003e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e3c:	03808184 	ori	$r4,$r12,0x20
1c003e40:	57f80bff 	bl	-2040(0xffff808) # 1c003648 <EXTI_ClearITPendingBit>
1c003e44:	03400000 	andi	$r0,$r0,0x0
1c003e48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e54:	4c000020 	jirl	$r0,$r1,0

1c003e58 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003e58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e60:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e68:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e6c:	02ac20c6 	addi.w	$r6,$r6,-1272(0xb08)
1c003e70:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c003e74:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e78:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c003e7c:	57de33ff 	bl	-8656(0xfffde30) # 1c001cac <myprintf>
1c003e80:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e88:	03808184 	ori	$r4,$r12,0x20
1c003e8c:	57f7bfff 	bl	-2116(0xffff7bc) # 1c003648 <EXTI_ClearITPendingBit>
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ea0:	4c000020 	jirl	$r0,$r1,0

1c003ea4 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003ea4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ea8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003eac:	29802076 	st.w	$r22,$r3,8(0x8)
1c003eb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003eb4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003eb8:	02ab50c6 	addi.w	$r6,$r6,-1324(0xad4)
1c003ebc:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c003ec0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ec4:	02a2b084 	addi.w	$r4,$r4,-1876(0x8ac)
1c003ec8:	57dde7ff 	bl	-8732(0xfffdde4) # 1c001cac <myprintf>
1c003ecc:	02820005 	addi.w	$r5,$r0,128(0x80)
1c003ed0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ed4:	03808184 	ori	$r4,$r12,0x20
1c003ed8:	57f773ff 	bl	-2192(0xffff770) # 1c003648 <EXTI_ClearITPendingBit>
1c003edc:	03400000 	andi	$r0,$r0,0x0
1c003ee0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ee4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ee8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003eec:	4c000020 	jirl	$r0,$r1,0

1c003ef0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c003ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ef4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ef8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003efc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f00:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f04:	02aa80c6 	addi.w	$r6,$r6,-1376(0xaa0)
1c003f08:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c003f0c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f10:	02a18084 	addi.w	$r4,$r4,-1952(0x860)
1c003f14:	57dd9bff 	bl	-8808(0xfffdd98) # 1c001cac <myprintf>
1c003f18:	02840005 	addi.w	$r5,$r0,256(0x100)
1c003f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f20:	03808184 	ori	$r4,$r12,0x20
1c003f24:	57f727ff 	bl	-2268(0xffff724) # 1c003648 <EXTI_ClearITPendingBit>
1c003f28:	03400000 	andi	$r0,$r0,0x0
1c003f2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f38:	4c000020 	jirl	$r0,$r1,0

1c003f3c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c003f3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f40:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f44:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f4c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f50:	02a9b0c6 	addi.w	$r6,$r6,-1428(0xa6c)
1c003f54:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003f58:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f5c:	02a05084 	addi.w	$r4,$r4,-2028(0x814)
1c003f60:	57dd4fff 	bl	-8884(0xfffdd4c) # 1c001cac <myprintf>
1c003f64:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f6c:	03808184 	ori	$r4,$r12,0x20
1c003f70:	57f6dbff 	bl	-2344(0xffff6d8) # 1c003648 <EXTI_ClearITPendingBit>
1c003f74:	03400000 	andi	$r0,$r0,0x0
1c003f78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f84:	4c000020 	jirl	$r0,$r1,0

1c003f88 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003f88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f90:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f98:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f9c:	02a8e0c6 	addi.w	$r6,$r6,-1480(0xa38)
1c003fa0:	02811405 	addi.w	$r5,$r0,69(0x45)
1c003fa4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003fa8:	029f2084 	addi.w	$r4,$r4,1992(0x7c8)
1c003fac:	57dd03ff 	bl	-8960(0xfffdd00) # 1c001cac <myprintf>
1c003fb0:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c003fb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fb8:	03808184 	ori	$r4,$r12,0x20
1c003fbc:	57f68fff 	bl	-2420(0xffff68c) # 1c003648 <EXTI_ClearITPendingBit>
1c003fc0:	03400000 	andi	$r0,$r0,0x0
1c003fc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fd0:	4c000020 	jirl	$r0,$r1,0

1c003fd4 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c003fd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fdc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fe0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fe4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003fe8:	02a810c6 	addi.w	$r6,$r6,-1532(0xa04)
1c003fec:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c003ff0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003ff4:	029df084 	addi.w	$r4,$r4,1916(0x77c)
1c003ff8:	57dcb7ff 	bl	-9036(0xfffdcb4) # 1c001cac <myprintf>
1c003ffc:	03a00005 	ori	$r5,$r0,0x800
1c004000:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004004:	03808184 	ori	$r4,$r12,0x20
1c004008:	57f643ff 	bl	-2496(0xffff640) # 1c003648 <EXTI_ClearITPendingBit>
1c00400c:	03400000 	andi	$r0,$r0,0x0
1c004010:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004014:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004018:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00401c:	4c000020 	jirl	$r0,$r1,0

1c004020 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004020:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004024:	29803061 	st.w	$r1,$r3,12(0xc)
1c004028:	29802076 	st.w	$r22,$r3,8(0x8)
1c00402c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004030:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004034:	02a740c6 	addi.w	$r6,$r6,-1584(0x9d0)
1c004038:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c00403c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004040:	029cc084 	addi.w	$r4,$r4,1840(0x730)
1c004044:	57dc6bff 	bl	-9112(0xfffdc68) # 1c001cac <myprintf>
1c004048:	14000025 	lu12i.w	$r5,1(0x1)
1c00404c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004050:	03808184 	ori	$r4,$r12,0x20
1c004054:	57f5f7ff 	bl	-2572(0xffff5f4) # 1c003648 <EXTI_ClearITPendingBit>
1c004058:	03400000 	andi	$r0,$r0,0x0
1c00405c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004060:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004064:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004068:	4c000020 	jirl	$r0,$r1,0

1c00406c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00406c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004070:	29803061 	st.w	$r1,$r3,12(0xc)
1c004074:	29802076 	st.w	$r22,$r3,8(0x8)
1c004078:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00407c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004080:	02a670c6 	addi.w	$r6,$r6,-1636(0x99c)
1c004084:	02815005 	addi.w	$r5,$r0,84(0x54)
1c004088:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00408c:	029b9084 	addi.w	$r4,$r4,1764(0x6e4)
1c004090:	57dc1fff 	bl	-9188(0xfffdc1c) # 1c001cac <myprintf>
1c004094:	14000045 	lu12i.w	$r5,2(0x2)
1c004098:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00409c:	03808184 	ori	$r4,$r12,0x20
1c0040a0:	57f5abff 	bl	-2648(0xffff5a8) # 1c003648 <EXTI_ClearITPendingBit>
1c0040a4:	03400000 	andi	$r0,$r0,0x0
1c0040a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040b4:	4c000020 	jirl	$r0,$r1,0

1c0040b8 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0040b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040c8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0040cc:	02a5a0c6 	addi.w	$r6,$r6,-1688(0x968)
1c0040d0:	02816405 	addi.w	$r5,$r0,89(0x59)
1c0040d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0040d8:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c0040dc:	57dbd3ff 	bl	-9264(0xfffdbd0) # 1c001cac <myprintf>
1c0040e0:	14000085 	lu12i.w	$r5,4(0x4)
1c0040e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040e8:	03808184 	ori	$r4,$r12,0x20
1c0040ec:	57f55fff 	bl	-2724(0xffff55c) # 1c003648 <EXTI_ClearITPendingBit>
1c0040f0:	03400000 	andi	$r0,$r0,0x0
1c0040f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004100:	4c000020 	jirl	$r0,$r1,0

1c004104 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004104:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004108:	29803061 	st.w	$r1,$r3,12(0xc)
1c00410c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004110:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004114:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004118:	02a4d0c6 	addi.w	$r6,$r6,-1740(0x934)
1c00411c:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c004120:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004124:	02993084 	addi.w	$r4,$r4,1612(0x64c)
1c004128:	57db87ff 	bl	-9340(0xfffdb84) # 1c001cac <myprintf>
1c00412c:	14000105 	lu12i.w	$r5,8(0x8)
1c004130:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004134:	03808184 	ori	$r4,$r12,0x20
1c004138:	57f513ff 	bl	-2800(0xffff510) # 1c003648 <EXTI_ClearITPendingBit>
1c00413c:	03400000 	andi	$r0,$r0,0x0
1c004140:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004144:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004148:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00414c:	4c000020 	jirl	$r0,$r1,0

1c004150 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004150:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004154:	29803061 	st.w	$r1,$r3,12(0xc)
1c004158:	29802076 	st.w	$r22,$r3,8(0x8)
1c00415c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004160:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004164:	02a400c6 	addi.w	$r6,$r6,-1792(0x900)
1c004168:	02819005 	addi.w	$r5,$r0,100(0x64)
1c00416c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004170:	02980084 	addi.w	$r4,$r4,1536(0x600)
1c004174:	57db3bff 	bl	-9416(0xfffdb38) # 1c001cac <myprintf>
1c004178:	14000205 	lu12i.w	$r5,16(0x10)
1c00417c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004180:	03808184 	ori	$r4,$r12,0x20
1c004184:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c003648 <EXTI_ClearITPendingBit>
1c004188:	03400000 	andi	$r0,$r0,0x0
1c00418c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004190:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004194:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004198:	4c000020 	jirl	$r0,$r1,0

1c00419c <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00419c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0041b0:	02a330c6 	addi.w	$r6,$r6,-1844(0x8cc)
1c0041b4:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c0041b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0041bc:	0296d084 	addi.w	$r4,$r4,1460(0x5b4)
1c0041c0:	57daefff 	bl	-9492(0xfffdaec) # 1c001cac <myprintf>
1c0041c4:	14000405 	lu12i.w	$r5,32(0x20)
1c0041c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041cc:	03808184 	ori	$r4,$r12,0x20
1c0041d0:	57f47bff 	bl	-2952(0xffff478) # 1c003648 <EXTI_ClearITPendingBit>
1c0041d4:	03400000 	andi	$r0,$r0,0x0
1c0041d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041e4:	4c000020 	jirl	$r0,$r1,0

1c0041e8 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0041e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041f8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0041fc:	02a260c6 	addi.w	$r6,$r6,-1896(0x898)
1c004200:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c004204:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004208:	0295a084 	addi.w	$r4,$r4,1384(0x568)
1c00420c:	57daa3ff 	bl	-9568(0xfffdaa0) # 1c001cac <myprintf>
1c004210:	14000805 	lu12i.w	$r5,64(0x40)
1c004214:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004218:	03808184 	ori	$r4,$r12,0x20
1c00421c:	57f42fff 	bl	-3028(0xffff42c) # 1c003648 <EXTI_ClearITPendingBit>
1c004220:	03400000 	andi	$r0,$r0,0x0
1c004224:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004228:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00422c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004230:	4c000020 	jirl	$r0,$r1,0

1c004234 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004238:	29803061 	st.w	$r1,$r3,12(0xc)
1c00423c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004240:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004244:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004248:	02a190c6 	addi.w	$r6,$r6,-1948(0x864)
1c00424c:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c004250:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004254:	02947084 	addi.w	$r4,$r4,1308(0x51c)
1c004258:	57da57ff 	bl	-9644(0xfffda54) # 1c001cac <myprintf>
1c00425c:	14001005 	lu12i.w	$r5,128(0x80)
1c004260:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004264:	03808184 	ori	$r4,$r12,0x20
1c004268:	57f3e3ff 	bl	-3104(0xffff3e0) # 1c003648 <EXTI_ClearITPendingBit>
1c00426c:	03400000 	andi	$r0,$r0,0x0
1c004270:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004274:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004278:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00427c:	4c000020 	jirl	$r0,$r1,0

1c004280 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004280:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004284:	29803061 	st.w	$r1,$r3,12(0xc)
1c004288:	29802076 	st.w	$r22,$r3,8(0x8)
1c00428c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004290:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004294:	02a0c0c6 	addi.w	$r6,$r6,-2000(0x830)
1c004298:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c00429c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0042a0:	02934084 	addi.w	$r4,$r4,1232(0x4d0)
1c0042a4:	57da0bff 	bl	-9720(0xfffda08) # 1c001cac <myprintf>
1c0042a8:	14002005 	lu12i.w	$r5,256(0x100)
1c0042ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042b0:	03808184 	ori	$r4,$r12,0x20
1c0042b4:	57f397ff 	bl	-3180(0xffff394) # 1c003648 <EXTI_ClearITPendingBit>
1c0042b8:	03400000 	andi	$r0,$r0,0x0
1c0042bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042c8:	4c000020 	jirl	$r0,$r1,0

1c0042cc <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0042cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042dc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0042e0:	029ff0c6 	addi.w	$r6,$r6,2044(0x7fc)
1c0042e4:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c0042e8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0042ec:	02921084 	addi.w	$r4,$r4,1156(0x484)
1c0042f0:	57d9bfff 	bl	-9796(0xfffd9bc) # 1c001cac <myprintf>
1c0042f4:	14004005 	lu12i.w	$r5,512(0x200)
1c0042f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042fc:	03808184 	ori	$r4,$r12,0x20
1c004300:	57f34bff 	bl	-3256(0xffff348) # 1c003648 <EXTI_ClearITPendingBit>
1c004304:	03400000 	andi	$r0,$r0,0x0
1c004308:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00430c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004310:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004314:	4c000020 	jirl	$r0,$r1,0

1c004318 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004318:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00431c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004320:	29802076 	st.w	$r22,$r3,8(0x8)
1c004324:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004328:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00432c:	029f20c6 	addi.w	$r6,$r6,1992(0x7c8)
1c004330:	02820805 	addi.w	$r5,$r0,130(0x82)
1c004334:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004338:	0290e084 	addi.w	$r4,$r4,1080(0x438)
1c00433c:	57d973ff 	bl	-9872(0xfffd970) # 1c001cac <myprintf>
1c004340:	14008005 	lu12i.w	$r5,1024(0x400)
1c004344:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004348:	03808184 	ori	$r4,$r12,0x20
1c00434c:	57f2ffff 	bl	-3332(0xffff2fc) # 1c003648 <EXTI_ClearITPendingBit>
1c004350:	03400000 	andi	$r0,$r0,0x0
1c004354:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004358:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00435c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004360:	4c000020 	jirl	$r0,$r1,0

1c004364 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004364:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004368:	29803061 	st.w	$r1,$r3,12(0xc)
1c00436c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004370:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004374:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004378:	029e50c6 	addi.w	$r6,$r6,1940(0x794)
1c00437c:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c004380:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004384:	028fb084 	addi.w	$r4,$r4,1004(0x3ec)
1c004388:	57d927ff 	bl	-9948(0xfffd924) # 1c001cac <myprintf>
1c00438c:	14010005 	lu12i.w	$r5,2048(0x800)
1c004390:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004394:	03808184 	ori	$r4,$r12,0x20
1c004398:	57f2b3ff 	bl	-3408(0xffff2b0) # 1c003648 <EXTI_ClearITPendingBit>
1c00439c:	03400000 	andi	$r0,$r0,0x0
1c0043a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043ac:	4c000020 	jirl	$r0,$r1,0

1c0043b0 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0043b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043c0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0043c4:	029d80c6 	addi.w	$r6,$r6,1888(0x760)
1c0043c8:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c0043cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0043d0:	028e8084 	addi.w	$r4,$r4,928(0x3a0)
1c0043d4:	57d8dbff 	bl	-10024(0xfffd8d8) # 1c001cac <myprintf>
1c0043d8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0043dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043e0:	03808184 	ori	$r4,$r12,0x20
1c0043e4:	57f267ff 	bl	-3484(0xffff264) # 1c003648 <EXTI_ClearITPendingBit>
1c0043e8:	03400000 	andi	$r0,$r0,0x0
1c0043ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043f8:	4c000020 	jirl	$r0,$r1,0

1c0043fc <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0043fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004400:	29803061 	st.w	$r1,$r3,12(0xc)
1c004404:	29802076 	st.w	$r22,$r3,8(0x8)
1c004408:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00440c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004410:	029cb0c6 	addi.w	$r6,$r6,1836(0x72c)
1c004414:	02824405 	addi.w	$r5,$r0,145(0x91)
1c004418:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00441c:	028d5084 	addi.w	$r4,$r4,852(0x354)
1c004420:	57d88fff 	bl	-10100(0xfffd88c) # 1c001cac <myprintf>
1c004424:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004428:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00442c:	03808184 	ori	$r4,$r12,0x20
1c004430:	57f21bff 	bl	-3560(0xffff218) # 1c003648 <EXTI_ClearITPendingBit>
1c004434:	03400000 	andi	$r0,$r0,0x0
1c004438:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00443c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004440:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004444:	4c000020 	jirl	$r0,$r1,0

1c004448 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004448:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00444c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004450:	29802076 	st.w	$r22,$r3,8(0x8)
1c004454:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004458:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00445c:	029be0c6 	addi.w	$r6,$r6,1784(0x6f8)
1c004460:	02825805 	addi.w	$r5,$r0,150(0x96)
1c004464:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004468:	028c2084 	addi.w	$r4,$r4,776(0x308)
1c00446c:	57d843ff 	bl	-10176(0xfffd840) # 1c001cac <myprintf>
1c004470:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004474:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004478:	03808184 	ori	$r4,$r12,0x20
1c00447c:	57f1cfff 	bl	-3636(0xffff1cc) # 1c003648 <EXTI_ClearITPendingBit>
1c004480:	03400000 	andi	$r0,$r0,0x0
1c004484:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004488:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00448c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004490:	4c000020 	jirl	$r0,$r1,0

1c004494 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004494:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004498:	29803061 	st.w	$r1,$r3,12(0xc)
1c00449c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044a4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0044a8:	029b10c6 	addi.w	$r6,$r6,1732(0x6c4)
1c0044ac:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c0044b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0044b4:	028af084 	addi.w	$r4,$r4,700(0x2bc)
1c0044b8:	57d7f7ff 	bl	-10252(0xfffd7f4) # 1c001cac <myprintf>
1c0044bc:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0044c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044c4:	03808184 	ori	$r4,$r12,0x20
1c0044c8:	57f183ff 	bl	-3712(0xffff180) # 1c003648 <EXTI_ClearITPendingBit>
1c0044cc:	03400000 	andi	$r0,$r0,0x0
1c0044d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044dc:	4c000020 	jirl	$r0,$r1,0

1c0044e0 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0044e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0044f4:	029a40c6 	addi.w	$r6,$r6,1680(0x690)
1c0044f8:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0044fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004500:	0289c084 	addi.w	$r4,$r4,624(0x270)
1c004504:	57d7abff 	bl	-10328(0xfffd7a8) # 1c001cac <myprintf>
1c004508:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00450c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004510:	03808184 	ori	$r4,$r12,0x20
1c004514:	57f137ff 	bl	-3788(0xffff134) # 1c003648 <EXTI_ClearITPendingBit>
1c004518:	03400000 	andi	$r0,$r0,0x0
1c00451c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004520:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004524:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004528:	4c000020 	jirl	$r0,$r1,0

1c00452c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00452c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004530:	29803061 	st.w	$r1,$r3,12(0xc)
1c004534:	29802076 	st.w	$r22,$r3,8(0x8)
1c004538:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00453c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004540:	029970c6 	addi.w	$r6,$r6,1628(0x65c)
1c004544:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c004548:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00454c:	02889084 	addi.w	$r4,$r4,548(0x224)
1c004550:	57d75fff 	bl	-10404(0xfffd75c) # 1c001cac <myprintf>
1c004554:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004558:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00455c:	03808184 	ori	$r4,$r12,0x20
1c004560:	57f0ebff 	bl	-3864(0xffff0e8) # 1c003648 <EXTI_ClearITPendingBit>
1c004564:	03400000 	andi	$r0,$r0,0x0
1c004568:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00456c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004570:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004574:	4c000020 	jirl	$r0,$r1,0

1c004578 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004578:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00457c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004580:	29802076 	st.w	$r22,$r3,8(0x8)
1c004584:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004588:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00458c:	0298a0c6 	addi.w	$r6,$r6,1576(0x628)
1c004590:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c004594:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004598:	02876084 	addi.w	$r4,$r4,472(0x1d8)
1c00459c:	57d713ff 	bl	-10480(0xfffd710) # 1c001cac <myprintf>
1c0045a0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0045a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045a8:	03808184 	ori	$r4,$r12,0x20
1c0045ac:	57f09fff 	bl	-3940(0xffff09c) # 1c003648 <EXTI_ClearITPendingBit>
1c0045b0:	03400000 	andi	$r0,$r0,0x0
1c0045b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045c0:	4c000020 	jirl	$r0,$r1,0

1c0045c4 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0045c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045d4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0045d8:	0297d0c6 	addi.w	$r6,$r6,1524(0x5f4)
1c0045dc:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c0045e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0045e4:	02863084 	addi.w	$r4,$r4,396(0x18c)
1c0045e8:	57d6c7ff 	bl	-10556(0xfffd6c4) # 1c001cac <myprintf>
1c0045ec:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0045f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045f4:	03808184 	ori	$r4,$r12,0x20
1c0045f8:	57f053ff 	bl	-4016(0xffff050) # 1c003648 <EXTI_ClearITPendingBit>
1c0045fc:	03400000 	andi	$r0,$r0,0x0
1c004600:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004604:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004608:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00460c:	4c000020 	jirl	$r0,$r1,0

1c004610 <ext_handler>:
ext_handler():
1c004610:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004614:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004618:	29806076 	st.w	$r22,$r3,24(0x18)
1c00461c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004620:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004624:	0380f18c 	ori	$r12,$r12,0x3c
1c004628:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00462c:	2980018d 	st.w	$r13,$r12,0
1c004630:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004634:	0380818c 	ori	$r12,$r12,0x20
1c004638:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00463c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004640:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004644:	0380818c 	ori	$r12,$r12,0x20
1c004648:	2880018c 	ld.w	$r12,$r12,0
1c00464c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004650:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004654:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004658:	0014b1ac 	and	$r12,$r13,$r12
1c00465c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004660:	03400000 	andi	$r0,$r0,0x0
1c004664:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004668:	50004000 	b	64(0x40) # 1c0046a8 <ext_handler+0x98>
1c00466c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004670:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004674:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004678:	0340058c 	andi	$r12,$r12,0x1
1c00467c:	40002180 	beqz	$r12,32(0x20) # 1c00469c <ext_handler+0x8c>
1c004680:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c004684:	028671ad 	addi.w	$r13,$r13,412(0x19c)
1c004688:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00468c:	0040898c 	slli.w	$r12,$r12,0x2
1c004690:	001031ac 	add.w	$r12,$r13,$r12
1c004694:	2880018c 	ld.w	$r12,$r12,0
1c004698:	4c000181 	jirl	$r1,$r12,0
1c00469c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0046a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0046a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0046a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0046ac:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0046b0:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00466c <ext_handler+0x5c>
1c0046b4:	03400000 	andi	$r0,$r0,0x0
1c0046b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0046bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0046c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0046c4:	4c000020 	jirl	$r0,$r1,0

1c0046c8 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0046c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0046cc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0046d0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0046d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0046d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046dc:	0380f18c 	ori	$r12,$r12,0x3c
1c0046e0:	1400020d 	lu12i.w	$r13,16(0x10)
1c0046e4:	2980018d 	st.w	$r13,$r12,0
1c0046e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046ec:	0380118c 	ori	$r12,$r12,0x4
1c0046f0:	2880018c 	ld.w	$r12,$r12,0
1c0046f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0046f8:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c003798 <WDG_DogFeed>
1c0046fc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004700:	57ea5fff 	bl	-5540(0xfffea5c) # 1c00315c <Wake_Set>
1c004704:	03400000 	andi	$r0,$r0,0x0
1c004708:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00470c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004710:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004714:	4c000020 	jirl	$r0,$r1,0

1c004718 <TOUCH>:
TOUCH():
1c004718:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00471c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004720:	29806076 	st.w	$r22,$r3,24(0x18)
1c004724:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004728:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00472c:	0380118c 	ori	$r12,$r12,0x4
1c004730:	2880018c 	ld.w	$r12,$r12,0
1c004734:	0044c18c 	srli.w	$r12,$r12,0x10
1c004738:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00473c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004740:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004744:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004748:	0380118c 	ori	$r12,$r12,0x4
1c00474c:	2880018c 	ld.w	$r12,$r12,0
1c004750:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004754:	03403d8c 	andi	$r12,$r12,0xf
1c004758:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00475c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004760:	0380f18c 	ori	$r12,$r12,0x3c
1c004764:	1400040d 	lu12i.w	$r13,32(0x20)
1c004768:	2980018d 	st.w	$r13,$r12,0
1c00476c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004770:	0380118c 	ori	$r12,$r12,0x4
1c004774:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004778:	2980018d 	st.w	$r13,$r12,0
1c00477c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004780:	00150184 	move	$r4,$r12
1c004784:	57f187ff 	bl	-3708(0xffff184) # 1c003908 <Printf_KeyType>
1c004788:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00478c:	00150184 	move	$r4,$r12
1c004790:	57f0ffff 	bl	-3844(0xffff0fc) # 1c00388c <Printf_KeyChannel>
1c004794:	57f203ff 	bl	-3584(0xffff200) # 1c003994 <Printf_KeyVal>
1c004798:	03400000 	andi	$r0,$r0,0x0
1c00479c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0047a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0047a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0047a8:	4c000020 	jirl	$r0,$r1,0

1c0047ac <UART2_INT>:
UART2_INT():
1c0047ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0047b0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0047b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0047b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047bc:	0380f18c 	ori	$r12,$r12,0x3c
1c0047c0:	1400080d 	lu12i.w	$r13,64(0x40)
1c0047c4:	2980018d 	st.w	$r13,$r12,0
1c0047c8:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0047cc:	0380098c 	ori	$r12,$r12,0x2
1c0047d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0047d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0047d8:	03400000 	andi	$r0,$r0,0x0
1c0047dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0047e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0047e4:	4c000020 	jirl	$r0,$r1,0

1c0047e8 <BAT_FAIL>:
BAT_FAIL():
1c0047e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0047ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0047f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0047f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0047f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047fc:	0380118c 	ori	$r12,$r12,0x4
1c004800:	2880018c 	ld.w	$r12,$r12,0
1c004804:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004808:	03407d8c 	andi	$r12,$r12,0x1f
1c00480c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004814:	0380118c 	ori	$r12,$r12,0x4
1c004818:	2880018e 	ld.w	$r14,$r12,0
1c00481c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004820:	0380f18c 	ori	$r12,$r12,0x3c
1c004824:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004828:	0014b5cd 	and	$r13,$r14,$r13
1c00482c:	2980018d 	st.w	$r13,$r12,0
1c004830:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004834:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004838:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0048a8 <BAT_FAIL+0xc0>
1c00483c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004840:	0040898d 	slli.w	$r13,$r12,0x2
1c004844:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c004848:	0281618c 	addi.w	$r12,$r12,88(0x58)
1c00484c:	001031ac 	add.w	$r12,$r13,$r12
1c004850:	2880018c 	ld.w	$r12,$r12,0
1c004854:	4c000180 	jirl	$r0,$r12,0
1c004858:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00485c:	02bd6084 	addi.w	$r4,$r4,-168(0xf58)
1c004860:	57d44fff 	bl	-11188(0xfffd44c) # 1c001cac <myprintf>
1c004864:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004868:	0380118c 	ori	$r12,$r12,0x4
1c00486c:	29800180 	st.w	$r0,$r12,0
1c004870:	50003c00 	b	60(0x3c) # 1c0048ac <BAT_FAIL+0xc4>
1c004874:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004878:	02bd9084 	addi.w	$r4,$r4,-156(0xf64)
1c00487c:	57d433ff 	bl	-11216(0xfffd430) # 1c001cac <myprintf>
1c004880:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004884:	0380118c 	ori	$r12,$r12,0x4
1c004888:	2880018e 	ld.w	$r14,$r12,0
1c00488c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004890:	0380118c 	ori	$r12,$r12,0x4
1c004894:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004898:	03bffdad 	ori	$r13,$r13,0xfff
1c00489c:	0014b5cd 	and	$r13,$r14,$r13
1c0048a0:	2980018d 	st.w	$r13,$r12,0
1c0048a4:	50000800 	b	8(0x8) # 1c0048ac <BAT_FAIL+0xc4>
1c0048a8:	03400000 	andi	$r0,$r0,0x0
1c0048ac:	03400000 	andi	$r0,$r0,0x0
1c0048b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0048b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0048b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0048bc:	4c000020 	jirl	$r0,$r1,0

1c0048c0 <intc_handler>:
intc_handler():
1c0048c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0048c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0048cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0048d0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0048d4:	0380158c 	ori	$r12,$r12,0x5
1c0048d8:	2a00018c 	ld.bu	$r12,$r12,0
1c0048dc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0048e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0048e4:	0340058c 	andi	$r12,$r12,0x1
1c0048e8:	40001d80 	beqz	$r12,28(0x1c) # 1c004904 <intc_handler+0x44>
1c0048ec:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0048f0:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003be8 <TIM_GetITStatus>
1c0048f4:	0015008c 	move	$r12,$r4
1c0048f8:	40000d80 	beqz	$r12,12(0xc) # 1c004904 <intc_handler+0x44>
1c0048fc:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004900:	57f337ff 	bl	-3276(0xffff334) # 1c003c34 <TIM_ClearIT>
1c004904:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004908:	0340118c 	andi	$r12,$r12,0x4
1c00490c:	40001580 	beqz	$r12,20(0x14) # 1c004920 <intc_handler+0x60>
1c004910:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004914:	03800d8c 	ori	$r12,$r12,0x3
1c004918:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00491c:	2900018d 	st.b	$r13,$r12,0
1c004920:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004924:	0340218c 	andi	$r12,$r12,0x8
1c004928:	40007d80 	beqz	$r12,124(0x7c) # 1c0049a4 <intc_handler+0xe4>
1c00492c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004930:	0380098c 	ori	$r12,$r12,0x2
1c004934:	2a00018c 	ld.bu	$r12,$r12,0
1c004938:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00493c:	0340118c 	andi	$r12,$r12,0x4
1c004940:	40005580 	beqz	$r12,84(0x54) # 1c004994 <intc_handler+0xd4>
1c004944:	50003800 	b	56(0x38) # 1c00497c <intc_handler+0xbc>
1c004948:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00494c:	57df67ff 	bl	-8348(0xfffdf64) # 1c0028b0 <UART_ReceiveData>
1c004950:	0015008c 	move	$r12,$r4
1c004954:	0015018d 	move	$r13,$r12
1c004958:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00495c:	029aa18c 	addi.w	$r12,$r12,1704(0x6a8)
1c004960:	2900018d 	st.b	$r13,$r12,0
1c004964:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004968:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c00496c:	029a60a5 	addi.w	$r5,$r5,1688(0x698)
1c004970:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004974:	289a8084 	ld.w	$r4,$r4,1696(0x6a0)
1c004978:	5401f000 	bl	496(0x1f0) # 1c004b68 <Queue_Wirte>
1c00497c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004980:	0380158c 	ori	$r12,$r12,0x5
1c004984:	2a00018c 	ld.bu	$r12,$r12,0
1c004988:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00498c:	0340058c 	andi	$r12,$r12,0x1
1c004990:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004948 <intc_handler+0x88>
1c004994:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004998:	03800d8c 	ori	$r12,$r12,0x3
1c00499c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0049a0:	2900018d 	st.b	$r13,$r12,0
1c0049a4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0049a8:	03800d8c 	ori	$r12,$r12,0x3
1c0049ac:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0049b0:	2900018d 	st.b	$r13,$r12,0
1c0049b4:	03400000 	andi	$r0,$r0,0x0
1c0049b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049c4:	4c000020 	jirl	$r0,$r1,0

1c0049c8 <TIMER_HANDLER>:
TIMER_HANDLER():
1c0049c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049d8:	57e763ff 	bl	-6304(0xfffe760) # 1c003138 <Set_Timer_clear>
1c0049dc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0049e0:	02b88084 	addi.w	$r4,$r4,-480(0xe20)
1c0049e4:	57d2cbff 	bl	-11576(0xfffd2c8) # 1c001cac <myprintf>
1c0049e8:	57e733ff 	bl	-6352(0xfffe730) # 1c003118 <Set_Timer_stop>
1c0049ec:	03400000 	andi	$r0,$r0,0x0
1c0049f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049fc:	4c000020 	jirl	$r0,$r1,0

1c004a00 <main>:
main():
1c004a00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a04:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a08:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a10:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004a14:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004a18:	5404cc00 	bl	1228(0x4cc) # 1c004ee4 <esp8266_init>
1c004a1c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004a20:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004a24:	57cb77ff 	bl	-13452(0xfffcb74) # 1c001598 <gpio_write_pin>
1c004a28:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004a2c:	57eab7ff 	bl	-5452(0xfffeab4) # 1c0034e0 <delay_ms>
1c004a30:	00150005 	move	$r5,$r0
1c004a34:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004a38:	57cb63ff 	bl	-13472(0xfffcb60) # 1c001598 <gpio_write_pin>
1c004a3c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004a40:	57eaa3ff 	bl	-5472(0xfffeaa0) # 1c0034e0 <delay_ms>
1c004a44:	53ffdbff 	b	-40(0xfffffd8) # 1c004a1c <main+0x1c>

1c004a48 <Queue_isEmpty>:
Queue_isEmpty():
1c004a48:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a4c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004a50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a5c:	44000d80 	bnez	$r12,12(0xc) # 1c004a68 <Queue_isEmpty+0x20>
1c004a60:	0015000c 	move	$r12,$r0
1c004a64:	50002400 	b	36(0x24) # 1c004a88 <Queue_isEmpty+0x40>
1c004a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a6c:	2a40018d 	ld.hu	$r13,$r12,0
1c004a70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a74:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c004a78:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c004a84 <Queue_isEmpty+0x3c>
1c004a7c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004a80:	50000800 	b	8(0x8) # 1c004a88 <Queue_isEmpty+0x40>
1c004a84:	0015000c 	move	$r12,$r0
1c004a88:	00150184 	move	$r4,$r12
1c004a8c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004a90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a94:	4c000020 	jirl	$r0,$r1,0

1c004a98 <Queue_HadUse>:
Queue_HadUse():
1c004a98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a9c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004aa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004aa4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004aa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004aac:	44000d80 	bnez	$r12,12(0xc) # 1c004ab8 <Queue_HadUse+0x20>
1c004ab0:	0015000c 	move	$r12,$r0
1c004ab4:	50003800 	b	56(0x38) # 1c004aec <Queue_HadUse+0x54>
1c004ab8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004abc:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c004ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ac4:	2a40018c 	ld.hu	$r12,$r12,0
1c004ac8:	001131ac 	sub.w	$r12,$r13,$r12
1c004acc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004ad0:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c004ad4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004ad8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004adc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004ae0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004ae8 <Queue_HadUse+0x50>
1c004ae4:	002a0007 	break	0x7
1c004ae8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c004aec:	00150184 	move	$r4,$r12
1c004af0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004af4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004af8:	4c000020 	jirl	$r0,$r1,0

1c004afc <Queue_NoUse>:
Queue_NoUse():
1c004afc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004b04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004b0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b10:	44000d80 	bnez	$r12,12(0xc) # 1c004b1c <Queue_NoUse+0x20>
1c004b14:	0015000c 	move	$r12,$r0
1c004b18:	50004000 	b	64(0x40) # 1c004b58 <Queue_NoUse+0x5c>
1c004b1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b20:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c004b24:	0015018d 	move	$r13,$r12
1c004b28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b2c:	2a40018c 	ld.hu	$r12,$r12,0
1c004b30:	001131ac 	sub.w	$r12,$r13,$r12
1c004b34:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c004b38:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004b3c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c004b40:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004b48 <Queue_NoUse+0x4c>
1c004b44:	002a0007 	break	0x7
1c004b48:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c004b4c:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c004b50:	001131ac 	sub.w	$r12,$r13,$r12
1c004b54:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004b58:	00150184 	move	$r4,$r12
1c004b5c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004b60:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b64:	4c000020 	jirl	$r0,$r1,0

1c004b68 <Queue_Wirte>:
Queue_Wirte():
1c004b68:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b6c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b70:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b74:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004b78:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004b7c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004b80:	001500cc 	move	$r12,$r6
1c004b84:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004b88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b8c:	44000d80 	bnez	$r12,12(0xc) # 1c004b98 <Queue_Wirte+0x30>
1c004b90:	0015000c 	move	$r12,$r0
1c004b94:	50009c00 	b	156(0x9c) # 1c004c30 <Queue_Wirte+0xc8>
1c004b98:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004b9c:	57ff63ff 	bl	-160(0xfffff60) # 1c004afc <Queue_NoUse>
1c004ba0:	0015008c 	move	$r12,$r4
1c004ba4:	0015018d 	move	$r13,$r12
1c004ba8:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004bac:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c004bb8 <Queue_Wirte+0x50>
1c004bb0:	0015000c 	move	$r12,$r0
1c004bb4:	50007c00 	b	124(0x7c) # 1c004c30 <Queue_Wirte+0xc8>
1c004bb8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004bbc:	50006400 	b	100(0x64) # 1c004c20 <Queue_Wirte+0xb8>
1c004bc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bc4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c004bc8:	001031ac 	add.w	$r12,$r13,$r12
1c004bcc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004bd0:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c004bd4:	001501ae 	move	$r14,$r13
1c004bd8:	2a00018d 	ld.bu	$r13,$r12,0
1c004bdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004be0:	0010398c 	add.w	$r12,$r12,$r14
1c004be4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c004be8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004bec:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c004bf0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004bf4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004bf8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004bfc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004c00:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004c08 <Queue_Wirte+0xa0>
1c004c04:	002a0007 	break	0x7
1c004c08:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004c0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004c10:	2940098d 	st.h	$r13,$r12,2(0x2)
1c004c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c20:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004c24:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c28:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c004bc0 <Queue_Wirte+0x58>
1c004c2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004c30:	00150184 	move	$r4,$r12
1c004c34:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004c38:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004c3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004c40:	4c000020 	jirl	$r0,$r1,0

1c004c44 <Queue_Read>:
Queue_Read():
1c004c44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004c48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004c4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004c50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004c54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004c58:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004c5c:	001500cc 	move	$r12,$r6
1c004c60:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004c64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004c68:	44000d80 	bnez	$r12,12(0xc) # 1c004c74 <Queue_Read+0x30>
1c004c6c:	0015000c 	move	$r12,$r0
1c004c70:	50009c00 	b	156(0x9c) # 1c004d0c <Queue_Read+0xc8>
1c004c74:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004c78:	57fe23ff 	bl	-480(0xffffe20) # 1c004a98 <Queue_HadUse>
1c004c7c:	0015008c 	move	$r12,$r4
1c004c80:	0015018d 	move	$r13,$r12
1c004c84:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004c88:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c004c94 <Queue_Read+0x50>
1c004c8c:	0015000c 	move	$r12,$r0
1c004c90:	50007c00 	b	124(0x7c) # 1c004d0c <Queue_Read+0xc8>
1c004c94:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004c98:	50006400 	b	100(0x64) # 1c004cfc <Queue_Read+0xb8>
1c004c9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004ca0:	2a40018c 	ld.hu	$r12,$r12,0
1c004ca4:	0015018e 	move	$r14,$r12
1c004ca8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cac:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c004cb0:	001031ac 	add.w	$r12,$r13,$r12
1c004cb4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004cb8:	001039ad 	add.w	$r13,$r13,$r14
1c004cbc:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c004cc0:	2900018d 	st.b	$r13,$r12,0
1c004cc4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004cc8:	2a40018c 	ld.hu	$r12,$r12,0
1c004ccc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004cd0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004cd4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004cd8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004cdc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004ce4 <Queue_Read+0xa0>
1c004ce0:	002a0007 	break	0x7
1c004ce4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004ce8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004cec:	2940018d 	st.h	$r13,$r12,0
1c004cf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cf4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004cf8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004cfc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004d00:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d04:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c004c9c <Queue_Read+0x58>
1c004d08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004d0c:	00150184 	move	$r4,$r12
1c004d10:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004d14:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004d18:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004d1c:	4c000020 	jirl	$r0,$r1,0

1c004d20 <esp8266_check_cmd>:
esp8266_check_cmd():
1c004d20:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004d24:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004d28:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004d2c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004d30:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004d34:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004d38:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d3c:	288b6084 	ld.w	$r4,$r4,728(0x2d8)
1c004d40:	57fd0bff 	bl	-760(0xffffd08) # 1c004a48 <Queue_isEmpty>
1c004d44:	0015008c 	move	$r12,$r4
1c004d48:	44009580 	bnez	$r12,148(0x94) # 1c004ddc <esp8266_check_cmd+0xbc>
1c004d4c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d50:	288b1084 	ld.w	$r4,$r4,708(0x2c4)
1c004d54:	57fd47ff 	bl	-700(0xffffd44) # 1c004a98 <Queue_HadUse>
1c004d58:	0015008c 	move	$r12,$r4
1c004d5c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d60:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d64:	288aa18c 	ld.w	$r12,$r12,680(0x2a8)
1c004d68:	2900018d 	st.b	$r13,$r12,0
1c004d6c:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c004d70:	00150005 	move	$r5,$r0
1c004d74:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d78:	288a9084 	ld.w	$r4,$r4,676(0x2a4)
1c004d7c:	57e7a7ff 	bl	-6236(0xfffe7a4) # 1c003520 <memset>
1c004d80:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d84:	288a218c 	ld.w	$r12,$r12,648(0x288)
1c004d88:	2a00018c 	ld.bu	$r12,$r12,0
1c004d8c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004d90:	00150186 	move	$r6,$r12
1c004d94:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004d98:	288a10a5 	ld.w	$r5,$r5,644(0x284)
1c004d9c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004da0:	2889d084 	ld.w	$r4,$r4,628(0x274)
1c004da4:	57fea3ff 	bl	-352(0xffffea0) # 1c004c44 <Queue_Read>
1c004da8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004dac:	2889818c 	ld.w	$r12,$r12,608(0x260)
1c004db0:	2a00018c 	ld.bu	$r12,$r12,0
1c004db4:	0015018d 	move	$r13,$r12
1c004db8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004dbc:	2889818c 	ld.w	$r12,$r12,608(0x260)
1c004dc0:	0010358c 	add.w	$r12,$r12,$r13
1c004dc4:	29000180 	st.b	$r0,$r12,0
1c004dc8:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004dcc:	288940a5 	ld.w	$r5,$r5,592(0x250)
1c004dd0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004dd4:	02b84084 	addi.w	$r4,$r4,-496(0xe10)
1c004dd8:	57ced7ff 	bl	-12588(0xfffced4) # 1c001cac <myprintf>
1c004ddc:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c004de0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004de4:	2888e084 	ld.w	$r4,$r4,568(0x238)
1c004de8:	57e79bff 	bl	-6248(0xfffe798) # 1c003580 <pstrstr>
1c004dec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004df0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004df4:	00150184 	move	$r4,$r12
1c004df8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004dfc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004e00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004e04:	4c000020 	jirl	$r0,$r1,0

1c004e08 <esp8266_send_cmd>:
esp8266_send_cmd():
1c004e08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004e0c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004e10:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004e14:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004e18:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004e1c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004e20:	001500cc 	move	$r12,$r6
1c004e24:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004e28:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004e2c:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c004e30:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e34:	02b72084 	addi.w	$r4,$r4,-568(0xdc8)
1c004e38:	57ce77ff 	bl	-12684(0xfffce74) # 1c001cac <myprintf>
1c004e3c:	28bf72c6 	ld.w	$r6,$r22,-36(0xfdc)
1c004e40:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004e44:	02b710a5 	addi.w	$r5,$r5,-572(0xdc4)
1c004e48:	00150004 	move	$r4,$r0
1c004e4c:	57d207ff 	bl	-11772(0xfffd204) # 1c002050 <myprintf2>
1c004e50:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004e54:	40007980 	beqz	$r12,120(0x78) # 1c004ecc <esp8266_send_cmd+0xc4>
1c004e58:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004e5c:	40007180 	beqz	$r12,112(0x70) # 1c004ecc <esp8266_send_cmd+0xc4>
1c004e60:	50003000 	b	48(0x30) # 1c004e90 <esp8266_send_cmd+0x88>
1c004e64:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c004e68:	57e67bff 	bl	-6536(0xfffe678) # 1c0034e0 <delay_ms>
1c004e6c:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c004e70:	57feb3ff 	bl	-336(0xffffeb0) # 1c004d20 <esp8266_check_cmd>
1c004e74:	0015008c 	move	$r12,$r4
1c004e78:	40001980 	beqz	$r12,24(0x18) # 1c004e90 <esp8266_send_cmd+0x88>
1c004e7c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004e80:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e84:	02b63084 	addi.w	$r4,$r4,-628(0xd8c)
1c004e88:	57ce27ff 	bl	-12764(0xfffce24) # 1c001cac <myprintf>
1c004e8c:	50001800 	b	24(0x18) # 1c004ea4 <esp8266_send_cmd+0x9c>
1c004e90:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004e94:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004e98:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004e9c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004ea0:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c004e64 <esp8266_send_cmd+0x5c>
1c004ea4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004ea8:	44001180 	bnez	$r12,16(0x10) # 1c004eb8 <esp8266_send_cmd+0xb0>
1c004eac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004eb0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004eb4:	50001800 	b	24(0x18) # 1c004ecc <esp8266_send_cmd+0xc4>
1c004eb8:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c004ebc:	00150185 	move	$r5,$r12
1c004ec0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ec4:	02b56084 	addi.w	$r4,$r4,-680(0xd58)
1c004ec8:	57cde7ff 	bl	-12828(0xfffcde4) # 1c001cac <myprintf>
1c004ecc:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c004ed0:	00150184 	move	$r4,$r12
1c004ed4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004ed8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004edc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004ee0:	4c000020 	jirl	$r0,$r1,0

1c004ee4 <esp8266_init>:
esp8266_init():
1c004ee4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ee8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004eec:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ef0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ef4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ef8:	02b4c084 	addi.w	$r4,$r4,-720(0xd30)
1c004efc:	57cdb3ff 	bl	-12880(0xfffcdb0) # 1c001cac <myprintf>
1c004f00:	03400000 	andi	$r0,$r0,0x0
1c004f04:	02825806 	addi.w	$r6,$r0,150(0x96)
1c004f08:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004f0c:	02b4b0a5 	addi.w	$r5,$r5,-724(0xd2c)
1c004f10:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f14:	02b4a084 	addi.w	$r4,$r4,-728(0xd28)
1c004f18:	57fef3ff 	bl	-272(0xffffef0) # 1c004e08 <esp8266_send_cmd>
1c004f1c:	0015008c 	move	$r12,$r4
1c004f20:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f04 <esp8266_init+0x20>
1c004f24:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c004f28:	57e5bbff 	bl	-6728(0xfffe5b8) # 1c0034e0 <delay_ms>
1c004f2c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f30:	02b46084 	addi.w	$r4,$r4,-744(0xd18)
1c004f34:	57cd7bff 	bl	-12936(0xfffcd78) # 1c001cac <myprintf>
1c004f38:	03400000 	andi	$r0,$r0,0x0
1c004f3c:	02864006 	addi.w	$r6,$r0,400(0x190)
1c004f40:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004f44:	02b3d0a5 	addi.w	$r5,$r5,-780(0xcf4)
1c004f48:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f4c:	02b42084 	addi.w	$r4,$r4,-760(0xd08)
1c004f50:	57febbff 	bl	-328(0xffffeb8) # 1c004e08 <esp8266_send_cmd>
1c004f54:	0015008c 	move	$r12,$r4
1c004f58:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f3c <esp8266_init+0x58>
1c004f5c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f60:	02b3f084 	addi.w	$r4,$r4,-772(0xcfc)
1c004f64:	57cd4bff 	bl	-12984(0xfffcd48) # 1c001cac <myprintf>
1c004f68:	03400000 	andi	$r0,$r0,0x0
1c004f6c:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c004f70:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004f74:	02b310a5 	addi.w	$r5,$r5,-828(0xcc4)
1c004f78:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f7c:	02b3e084 	addi.w	$r4,$r4,-776(0xcf8)
1c004f80:	57fe8bff 	bl	-376(0xffffe88) # 1c004e08 <esp8266_send_cmd>
1c004f84:	0015008c 	move	$r12,$r4
1c004f88:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f6c <esp8266_init+0x88>
1c004f8c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f90:	02b40084 	addi.w	$r4,$r4,-768(0xd00)
1c004f94:	57cd1bff 	bl	-13032(0xfffcd18) # 1c001cac <myprintf>
1c004f98:	03400000 	andi	$r0,$r0,0x0
1c004f9c:	02825806 	addi.w	$r6,$r0,150(0x96)
1c004fa0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004fa4:	02b250a5 	addi.w	$r5,$r5,-876(0xc94)
1c004fa8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004fac:	02b3d084 	addi.w	$r4,$r4,-780(0xcf4)
1c004fb0:	57fe5bff 	bl	-424(0xffffe58) # 1c004e08 <esp8266_send_cmd>
1c004fb4:	0015008c 	move	$r12,$r4
1c004fb8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f9c <esp8266_init+0xb8>
1c004fbc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004fc0:	02b3b084 	addi.w	$r4,$r4,-788(0xcec)
1c004fc4:	57ccebff 	bl	-13080(0xfffcce8) # 1c001cac <myprintf>
1c004fc8:	03400000 	andi	$r0,$r0,0x0
1c004fcc:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c004fd0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004fd4:	02b190a5 	addi.w	$r5,$r5,-924(0xc64)
1c004fd8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004fdc:	02b3d084 	addi.w	$r4,$r4,-780(0xcf4)
1c004fe0:	57fe2bff 	bl	-472(0xffffe28) # 1c004e08 <esp8266_send_cmd>
1c004fe4:	0015008c 	move	$r12,$r4
1c004fe8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004fcc <esp8266_init+0xe8>
1c004fec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ff0:	02b42084 	addi.w	$r4,$r4,-760(0xd08)
1c004ff4:	57ccbbff 	bl	-13128(0xfffccb8) # 1c001cac <myprintf>
1c004ff8:	02825806 	addi.w	$r6,$r0,150(0x96)
1c004ffc:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005000:	02b0e0a5 	addi.w	$r5,$r5,-968(0xc38)
1c005004:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005008:	02b40084 	addi.w	$r4,$r4,-768(0xd00)
1c00500c:	57fdffff 	bl	-516(0xffffdfc) # 1c004e08 <esp8266_send_cmd>
1c005010:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005014:	02b41084 	addi.w	$r4,$r4,-764(0xd04)
1c005018:	57cc97ff 	bl	-13164(0xfffcc94) # 1c001cac <myprintf>
1c00501c:	02825806 	addi.w	$r6,$r0,150(0x96)
1c005020:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005024:	02b050a5 	addi.w	$r5,$r5,-1004(0xc14)
1c005028:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00502c:	02b3f084 	addi.w	$r4,$r4,-772(0xcfc)
1c005030:	57fddbff 	bl	-552(0xffffdd8) # 1c004e08 <esp8266_send_cmd>
1c005034:	03400000 	andi	$r0,$r0,0x0
1c005038:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00503c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005040:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005044:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c005060 <msg_wakeup>:
msg_wakeup():
1c005060:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01bbc0 <_sidata+0x15e8c>
1c005064:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c005069 <hexdecarr>:
hexdecarr():
1c005069:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00506d:	37363534 	0x37363534
1c005071:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfeb1a9 <_start-0x14e57>
1c005075:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfeb5d9 <_start-0x14a27>
1c005079:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00507d:	79654b0a 	0x79654b0a
1c005081:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c005085:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c005089:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00508d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01c0fd <_sidata+0x163c9>
1c005091:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffbff1 <_start-0x400f>
1c005095:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c005099:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffbffd <_start-0x4003>
1c00509d:	72616220 	0x72616220
1c0050a1:	0a0d216b 	0x0a0d216b
1c0050a5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0050a9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffb21d <_start-0x4de3>
1c0050ad:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c0050b1:	cc000a0d 	0xcc000a0d
1c0050b5:	e81c001e 	0xe81c001e
1c0050b9:	e81c001f 	0xe81c001f
1c0050bd:	e81c001f 	0xe81c001f
1c0050c1:	e81c001f 	0xe81c001f
1c0050c5:	e81c001f 	0xe81c001f
1c0050c9:	e81c001f 	0xe81c001f
1c0050cd:	e81c001f 	0xe81c001f
1c0050d1:	e81c001f 	0xe81c001f
1c0050d5:	e81c001f 	0xe81c001f
1c0050d9:	e81c001f 	0xe81c001f
1c0050dd:	e41c001f 	0xe41c001f
1c0050e1:	6c1c001e 	bgeu	$r0,$r30,7168(0x1c00) # 1c006ce1 <_sidata+0xfad>
1c0050e5:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c006ce5 <_sidata+0xfb1>
1c0050e9:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c006ce9 <_sidata+0xfb5>
1c0050ed:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c006ced <_sidata+0xfb9>
1c0050f1:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c006cf1 <_sidata+0xfbd>
1c0050f5:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c006cf5 <_sidata+0xfc1>
1c0050f9:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c006cf9 <_sidata+0xfc5>
1c0050fd:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c006cfd <_sidata+0xfc9>
1c005101:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c006d01 <_sidata+0xfcd>
1c005105:	e81c001f 	0xe81c001f
1c005109:	e81c001f 	0xe81c001f
1c00510d:	e81c001f 	0xe81c001f
1c005111:	e81c001f 	0xe81c001f
1c005115:	e81c001f 	0xe81c001f
1c005119:	e81c001f 	0xe81c001f
1c00511d:	e81c001f 	0xe81c001f
1c005121:	e81c001f 	0xe81c001f
1c005125:	e81c001f 	0xe81c001f
1c005129:	e81c001f 	0xe81c001f
1c00512d:	e81c001f 	0xe81c001f
1c005131:	e81c001f 	0xe81c001f
1c005135:	e81c001f 	0xe81c001f
1c005139:	e81c001f 	0xe81c001f
1c00513d:	e81c001f 	0xe81c001f
1c005141:	e81c001f 	0xe81c001f
1c005145:	e81c001f 	0xe81c001f
1c005149:	e81c001f 	0xe81c001f
1c00514d:	e81c001f 	0xe81c001f
1c005151:	e81c001f 	0xe81c001f
1c005155:	e81c001f 	0xe81c001f
1c005159:	e81c001f 	0xe81c001f
1c00515d:	e81c001f 	0xe81c001f
1c005161:	e81c001f 	0xe81c001f
1c005165:	e81c001f 	0xe81c001f
1c005169:	e81c001f 	0xe81c001f
1c00516d:	e81c001f 	0xe81c001f
1c005171:	e81c001f 	0xe81c001f
1c005175:	e81c001f 	0xe81c001f
1c005179:	e81c001f 	0xe81c001f
1c00517d:	e81c001f 	0xe81c001f
1c005181:	e81c001f 	0xe81c001f
1c005185:	e81c001f 	0xe81c001f
1c005189:	e81c001f 	0xe81c001f
1c00518d:	e81c001f 	0xe81c001f
1c005191:	e81c001f 	0xe81c001f
1c005195:	e81c001f 	0xe81c001f
1c005199:	e81c001f 	0xe81c001f
1c00519d:	e81c001f 	0xe81c001f
1c0051a1:	e81c001f 	0xe81c001f
1c0051a5:	5c1c001f 	bne	$r0,$r31,7168(0x1c00) # 1c006da5 <_sidata+0x1071>
1c0051a9:	841c001e 	0x841c001e
1c0051ad:	ec1c001d 	0xec1c001d
1c0051b1:	e81c001d 	0xe81c001d
1c0051b5:	e81c001f 	0xe81c001f
1c0051b9:	e81c001f 	0xe81c001f
1c0051bd:	e81c001f 	0xe81c001f
1c0051c1:	e81c001f 	0xe81c001f
1c0051c5:	e81c001f 	0xe81c001f
1c0051c9:	e81c001f 	0xe81c001f
1c0051cd:	e81c001f 	0xe81c001f
1c0051d1:	e81c001f 	0xe81c001f
1c0051d5:	e81c001f 	0xe81c001f
1c0051d9:	241c001f 	ldptr.w	$r31,$r0,7168(0x1c00)
1c0051dd:	941c001e 	0x941c001e
1c0051e1:	e81c001e 	0xe81c001e
1c0051e5:	e81c001f 	0xe81c001f
1c0051e9:	581c001f 	beq	$r0,$r31,7168(0x1c00) # 1c006de9 <_sidata+0x10b5>
1c0051ed:	e81c001d 	0xe81c001d
1c0051f1:	b41c001f 	0xb41c001f
1c0051f5:	e81c001d 	0xe81c001d
1c0051f9:	e81c001f 	0xe81c001f
1c0051fd:	941c001f 	0x941c001f
1c005201:	c01c001e 	0xc01c001e
1c005205:	e41c0022 	0xe41c0022
1c005209:	e41c0023 	0xe41c0023
1c00520d:	e41c0023 	0xe41c0023
1c005211:	e41c0023 	0xe41c0023
1c005215:	e41c0023 	0xe41c0023
1c005219:	e41c0023 	0xe41c0023
1c00521d:	e41c0023 	0xe41c0023
1c005221:	e41c0023 	0xe41c0023
1c005225:	e41c0023 	0xe41c0023
1c005229:	e41c0023 	0xe41c0023
1c00522d:	e01c0023 	0xe01c0023
1c005231:	681c0022 	bltu	$r1,$r2,7168(0x1c00) # 1c006e31 <_sidata+0x10fd>
1c005235:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c006e35 <_sidata+0x1101>
1c005239:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c006e39 <_sidata+0x1105>
1c00523d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c006e3d <_sidata+0x1109>
1c005241:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c006e41 <_sidata+0x110d>
1c005245:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c006e45 <_sidata+0x1111>
1c005249:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c006e49 <_sidata+0x1115>
1c00524d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c006e4d <_sidata+0x1119>
1c005251:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c006e51 <_sidata+0x111d>
1c005255:	e41c0023 	0xe41c0023
1c005259:	e41c0023 	0xe41c0023
1c00525d:	e41c0023 	0xe41c0023
1c005261:	e41c0023 	0xe41c0023
1c005265:	e41c0023 	0xe41c0023
1c005269:	e41c0023 	0xe41c0023
1c00526d:	e41c0023 	0xe41c0023
1c005271:	e41c0023 	0xe41c0023
1c005275:	e41c0023 	0xe41c0023
1c005279:	e41c0023 	0xe41c0023
1c00527d:	e41c0023 	0xe41c0023
1c005281:	e41c0023 	0xe41c0023
1c005285:	e41c0023 	0xe41c0023
1c005289:	e41c0023 	0xe41c0023
1c00528d:	e41c0023 	0xe41c0023
1c005291:	e41c0023 	0xe41c0023
1c005295:	e41c0023 	0xe41c0023
1c005299:	e41c0023 	0xe41c0023
1c00529d:	e41c0023 	0xe41c0023
1c0052a1:	e41c0023 	0xe41c0023
1c0052a5:	e41c0023 	0xe41c0023
1c0052a9:	e41c0023 	0xe41c0023
1c0052ad:	e41c0023 	0xe41c0023
1c0052b1:	e41c0023 	0xe41c0023
1c0052b5:	e41c0023 	0xe41c0023
1c0052b9:	e41c0023 	0xe41c0023
1c0052bd:	e41c0023 	0xe41c0023
1c0052c1:	e41c0023 	0xe41c0023
1c0052c5:	e41c0023 	0xe41c0023
1c0052c9:	e41c0023 	0xe41c0023
1c0052cd:	7c1c0023 	0x7c1c0023
1c0052d1:	e41c0022 	0xe41c0022
1c0052d5:	e41c0023 	0xe41c0023
1c0052d9:	e41c0023 	0xe41c0023
1c0052dd:	e41c0023 	0xe41c0023
1c0052e1:	e41c0023 	0xe41c0023
1c0052e5:	e41c0023 	0xe41c0023
1c0052e9:	e41c0023 	0xe41c0023
1c0052ed:	e41c0023 	0xe41c0023
1c0052f1:	e41c0023 	0xe41c0023
1c0052f5:	381c0023 	stx.d	$r3,$r1,$r0
1c0052f9:	341c0022 	0x341c0022
1c0052fd:	b01c0021 	0xb01c0021
1c005301:	e41c0021 	0xe41c0021
1c005305:	e41c0023 	0xe41c0023
1c005309:	e41c0023 	0xe41c0023
1c00530d:	e41c0023 	0xe41c0023
1c005311:	e41c0023 	0xe41c0023
1c005315:	e41c0023 	0xe41c0023
1c005319:	e41c0023 	0xe41c0023
1c00531d:	e41c0023 	0xe41c0023
1c005321:	e41c0023 	0xe41c0023
1c005325:	e41c0023 	0xe41c0023
1c005329:	f41c0023 	0xf41c0023
1c00532d:	7c1c0021 	0x7c1c0021
1c005331:	e41c0022 	0xe41c0022
1c005335:	e41c0023 	0xe41c0023
1c005339:	001c0023 	mul.w	$r3,$r1,$r0
1c00533d:	e41c0021 	0xe41c0021
1c005341:	6c1c0023 	bgeu	$r1,$r3,7168(0x1c00) # 1c006f41 <_sidata+0x120d>
1c005345:	e41c0021 	0xe41c0021
1c005349:	e41c0023 	0xe41c0023
1c00534d:	7c1c0023 	0x7c1c0023
1c005351:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c005355:	7c000000 	0x7c000000
1c005359:	7c7c7c7c 	0x7c7c7c7c
1c00535d:	7c7c7c7c 	0x7c7c7c7c
1c005361:	7c7c7c7c 	0x7c7c7c7c
1c005365:	7c7c7c7c 	0x7c7c7c7c
1c005369:	7c7c7c7c 	0x7c7c7c7c
1c00536d:	7c7c7c7c 	0x7c7c7c7c
1c005371:	7c7c7c7c 	0x7c7c7c7c
1c005375:	7c7c7c7c 	0x7c7c7c7c
1c005379:	7c7c7c7c 	0x7c7c7c7c
1c00537d:	7c7c7c7c 	0x7c7c7c7c
1c005381:	7c7c7c7c 	0x7c7c7c7c
1c005385:	7c7c7c7c 	0x7c7c7c7c
1c005389:	7c7c7c7c 	0x7c7c7c7c
1c00538d:	7c7c7c7c 	0x7c7c7c7c
1c005391:	7c7c7c7c 	0x7c7c7c7c
1c005395:	7c7c7c7c 	0x7c7c7c7c
1c005399:	7c7c7c7c 	0x7c7c7c7c
1c00539d:	7c7c7c7c 	0x7c7c7c7c
1c0053a1:	7c7c7c7c 	0x7c7c7c7c
1c0053a5:	7c7c7c7c 	0x7c7c7c7c
1c0053a9:	7c7c7c7c 	0x7c7c7c7c
1c0053ad:	7c7c7c7c 	0x7c7c7c7c
1c0053b1:	7c7c7c7c 	0x7c7c7c7c
1c0053b5:	7c7c7c7c 	0x7c7c7c7c
1c0053b9:	7c00000a 	0x7c00000a
1c0053bd:	7c20207c 	0x7c20207c
1c0053c1:	7c7c7c7c 	0x7c7c7c7c
1c0053c5:	7c7c7c7c 	0x7c7c7c7c
1c0053c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0053cd:	7c202020 	0x7c202020
1c0053d1:	7c7c7c7c 	0x7c7c7c7c
1c0053d5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0053d9:	7c202020 	0x7c202020
1c0053dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053e1:	7c7c2020 	0x7c7c2020
1c0053e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053e9:	7c7c7c20 	0x7c7c7c20
1c0053ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0053f1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0053f5:	7c7c7c7c 	0x7c7c7c7c
1c0053f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0053fd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005401:	7c7c7c7c 	0x7c7c7c7c
1c005405:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005409:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00540d:	7c7c7c7c 	0x7c7c7c7c
1c005411:	7c202020 	0x7c202020
1c005415:	7c7c7c7c 	0x7c7c7c7c
1c005419:	7c7c2020 	0x7c7c2020
1c00541d:	7c00000a 	0x7c00000a
1c005421:	7c20207c 	0x7c20207c
1c005425:	7c7c7c7c 	0x7c7c7c7c
1c005429:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00542d:	7c7c2020 	0x7c7c2020
1c005431:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005435:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005439:	7c7c2020 	0x7c7c2020
1c00543d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005441:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005445:	7c202020 	0x7c202020
1c005449:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00544d:	7c7c7c20 	0x7c7c7c20
1c005451:	7c20207c 	0x7c20207c
1c005455:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005459:	7c7c7c20 	0x7c7c7c20
1c00545d:	7c202020 	0x7c202020
1c005461:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005465:	7c7c7c20 	0x7c7c7c20
1c005469:	7c202020 	0x7c202020
1c00546d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005471:	7c7c7c20 	0x7c7c7c20
1c005475:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005479:	7c7c7c7c 	0x7c7c7c7c
1c00547d:	7c7c2020 	0x7c7c2020
1c005481:	7c00000a 	0x7c00000a
1c005485:	7c20207c 	0x7c20207c
1c005489:	7c7c7c7c 	0x7c7c7c7c
1c00548d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005491:	7c7c7c20 	0x7c7c7c20
1c005495:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005499:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00549d:	7c7c7c20 	0x7c7c7c20
1c0054a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054a9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0054ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054b1:	7c7c7c20 	0x7c7c7c20
1c0054b5:	7c7c2020 	0x7c7c2020
1c0054b9:	7c7c7c7c 	0x7c7c7c7c
1c0054bd:	7c7c7c7c 	0x7c7c7c7c
1c0054c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0054c5:	7c7c7c20 	0x7c7c7c20
1c0054c9:	7c7c7c7c 	0x7c7c7c7c
1c0054cd:	7c7c2020 	0x7c7c2020
1c0054d1:	7c7c7c7c 	0x7c7c7c7c
1c0054d5:	7c7c7c20 	0x7c7c7c20
1c0054d9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0054dd:	7c7c7c20 	0x7c7c7c20
1c0054e1:	7c7c2020 	0x7c7c2020
1c0054e5:	7c00000a 	0x7c00000a
1c0054e9:	7c20207c 	0x7c20207c
1c0054ed:	7c7c7c7c 	0x7c7c7c7c
1c0054f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054f5:	7c7c7c20 	0x7c7c7c20
1c0054f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005501:	7c7c7c20 	0x7c7c7c20
1c005505:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005509:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00550d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c005511:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c005515:	7c7c7c20 	0x7c7c7c20
1c005519:	7c7c2020 	0x7c7c2020
1c00551d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005521:	7c7c7c20 	0x7c7c7c20
1c005525:	7c7c7c7c 	0x7c7c7c7c
1c005529:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00552d:	7c7c7c7c 	0x7c7c7c7c
1c005531:	7c7c2020 	0x7c7c2020
1c005535:	7c7c7c7c 	0x7c7c7c7c
1c005539:	7c7c7c20 	0x7c7c7c20
1c00553d:	7c7c2020 	0x7c7c2020
1c005541:	7c7c2020 	0x7c7c2020
1c005545:	7c7c2020 	0x7c7c2020
1c005549:	7c00000a 	0x7c00000a
1c00554d:	7c20207c 	0x7c20207c
1c005551:	7c7c7c7c 	0x7c7c7c7c
1c005555:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005559:	7c7c7c20 	0x7c7c7c20
1c00555d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005561:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005565:	7c7c7c20 	0x7c7c7c20
1c005569:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00556d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005571:	7c7c7c20 	0x7c7c7c20
1c005575:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c005579:	7c7c7c20 	0x7c7c7c20
1c00557d:	7c7c2020 	0x7c7c2020
1c005581:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005585:	7c7c7c20 	0x7c7c7c20
1c005589:	7c7c7c7c 	0x7c7c7c7c
1c00558d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005591:	7c7c7c20 	0x7c7c7c20
1c005595:	7c7c2020 	0x7c7c2020
1c005599:	7c7c7c7c 	0x7c7c7c7c
1c00559d:	7c7c7c20 	0x7c7c7c20
1c0055a1:	7c7c2020 	0x7c7c2020
1c0055a5:	7c20207c 	0x7c20207c
1c0055a9:	7c7c2020 	0x7c7c2020
1c0055ad:	7c00000a 	0x7c00000a
1c0055b1:	7c20207c 	0x7c20207c
1c0055b5:	7c7c7c7c 	0x7c7c7c7c
1c0055b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0055bd:	7c7c2020 	0x7c7c2020
1c0055c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0055c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0055c9:	7c7c2020 	0x7c7c2020
1c0055cd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0055d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0055d5:	7c7c7c20 	0x7c7c7c20
1c0055d9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0055dd:	7c7c7c20 	0x7c7c7c20
1c0055e1:	7c202020 	0x7c202020
1c0055e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0055e9:	7c7c7c20 	0x7c7c7c20
1c0055ed:	7c202020 	0x7c202020
1c0055f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0055f5:	7c7c7c7c 	0x7c7c7c7c
1c0055f9:	7c202020 	0x7c202020
1c0055fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005601:	7c7c7c20 	0x7c7c7c20
1c005605:	7c7c2020 	0x7c7c2020
1c005609:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00560d:	7c7c2020 	0x7c7c2020
1c005611:	7c00000a 	0x7c00000a
1c005615:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005619:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00561d:	7c7c7c7c 	0x7c7c7c7c
1c005621:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005625:	7c202020 	0x7c202020
1c005629:	7c7c7c7c 	0x7c7c7c7c
1c00562d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005631:	7c202020 	0x7c202020
1c005635:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005639:	7c7c7c20 	0x7c7c7c20
1c00563d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005641:	7c7c7c20 	0x7c7c7c20
1c005645:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005649:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00564d:	7c7c7c7c 	0x7c7c7c7c
1c005651:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005655:	7c202020 	0x7c202020
1c005659:	7c7c7c7c 	0x7c7c7c7c
1c00565d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005661:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005665:	7c7c7c7c 	0x7c7c7c7c
1c005669:	7c7c2020 	0x7c7c2020
1c00566d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005671:	7c7c2020 	0x7c7c2020
1c005675:	7c00000a 	0x7c00000a
1c005679:	7c7c7c7c 	0x7c7c7c7c
1c00567d:	7c7c7c7c 	0x7c7c7c7c
1c005681:	7c7c7c7c 	0x7c7c7c7c
1c005685:	7c7c7c7c 	0x7c7c7c7c
1c005689:	7c7c7c7c 	0x7c7c7c7c
1c00568d:	7c7c7c7c 	0x7c7c7c7c
1c005691:	7c7c7c7c 	0x7c7c7c7c
1c005695:	7c7c7c7c 	0x7c7c7c7c
1c005699:	7c7c7c7c 	0x7c7c7c7c
1c00569d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0056a1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0056a5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0056a9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0056ad:	7c7c7c5d 	0x7c7c7c5d
1c0056b1:	7c7c7c7c 	0x7c7c7c7c
1c0056b5:	7c7c7c7c 	0x7c7c7c7c
1c0056b9:	7c7c7c7c 	0x7c7c7c7c
1c0056bd:	7c7c7c7c 	0x7c7c7c7c
1c0056c1:	7c7c7c7c 	0x7c7c7c7c
1c0056c5:	7c7c7c7c 	0x7c7c7c7c
1c0056c9:	7c7c7c7c 	0x7c7c7c7c
1c0056cd:	7c7c7c7c 	0x7c7c7c7c
1c0056d1:	7c7c7c7c 	0x7c7c7c7c
1c0056d5:	7c7c7c7c 	0x7c7c7c7c
1c0056d9:	0900000a 	0x0900000a
1c0056dd:	0a006425 	0x0a006425
1c0056e1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0056e5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0056e9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0056ed:	0050550a 	0x0050550a
1c0056f1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0056f5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00cc41 <_sidata+0x6f0d>
1c0056f9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0056fd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c005701:	756f430a 	0x756f430a
1c005705:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c005709:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00570d:	3030090a 	0x3030090a
1c005711:	09313009 	0x09313009
1c005715:	30093230 	0x30093230
1c005719:	34300933 	0x34300933
1c00571d:	09353009 	0x09353009
1c005721:	30093630 	0x30093630
1c005725:	38300937 	fldx.s	$f23,$r9,$r2
1c005729:	09393009 	0x09393009
1c00572d:	31093031 	0x31093031
1c005731:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c005735:	746e630a 	0x746e630a
1c005739:	09000000 	0x09000000
1c00573d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c005741:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005745:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c005749:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00b89d <_sidata+0x5b69>
1c00574d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005751:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfecca1 <_start-0x1335f>
1c005755:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c005759:	09000000 	0x09000000
1c00575d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c005761:	09000000 	0x09000000
1c005765:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c005769:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00576d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c005771:	3a515249 	0x3a515249
1c005775:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c005779:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffc5ed <_start-0x3a13>
1c00577d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c005781:	0d3e2020 	0x0d3e2020
1c005785:	0a00000a 	0x0a00000a
1c005789:	2e2e2e2e 	0x2e2e2e2e
1c00578d:	2e2e2e2e 	0x2e2e2e2e
1c005791:	2e2e2e2e 	0x2e2e2e2e
1c005795:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3aa6e5 <_sidata+0x3a49b1>
1c005799:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00579d:	2e2e2e54 	0x2e2e2e54
1c0057a1:	2e2e2e2e 	0x2e2e2e2e
1c0057a5:	2e2e2e2e 	0x2e2e2e2e
1c0057a9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0057ad:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0057b1:	2e2e2e0a 	0x2e2e2e0a
1c0057b5:	2e2e2e2e 	0x2e2e2e2e
1c0057b9:	2e2e2e2e 	0x2e2e2e2e
1c0057bd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c3999e9 <_sidata+0x393cb5>
1c0057c1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd19e1d <_start-0x2e61e3>
1c0057c5:	2e2e4c49 	0x2e2e4c49
1c0057c9:	2e2e2e2e 	0x2e2e2e2e
1c0057cd:	2e2e2e2e 	0x2e2e2e2e
1c0057d1:	2e2e2e2e 	0x2e2e2e2e
1c0057d5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0057d9:	2e2e2e0a 	0x2e2e2e0a
1c0057dd:	2e2e2e2e 	0x2e2e2e2e
1c0057e1:	2e2e2e2e 	0x2e2e2e2e
1c0057e5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c389911 <_sidata+0x383bdd>
1c0057e9:	2e2e2e43 	0x2e2e2e43
1c0057ed:	2e2e2e2e 	0x2e2e2e2e
1c0057f1:	2e2e2e2e 	0x2e2e2e2e
1c0057f5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0057f9:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b57f9 <_sidata+0x2afac5>
1c0057fd:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c005801:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01c569 <_sidata+0x16835>
1c005805:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00bb25 <_sidata+0x5df1>
1c005809:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00580d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01cc79 <_sidata+0x16f45>
1c005811:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c005815:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c005819:	 	0x9000000a

1c00581c <Ext_IrqHandle>:
1c00581c:	1c003c90 	pcaddu12i	$r16,484(0x1e4)
1c005820:	1c003cdc 	pcaddu12i	$r28,486(0x1e6)
1c005824:	1c003d28 	pcaddu12i	$r8,489(0x1e9)
1c005828:	1c003d74 	pcaddu12i	$r20,491(0x1eb)
1c00582c:	1c003dc0 	pcaddu12i	$r0,494(0x1ee)
1c005830:	1c003e0c 	pcaddu12i	$r12,496(0x1f0)
1c005834:	1c003e58 	pcaddu12i	$r24,498(0x1f2)
1c005838:	1c003ea4 	pcaddu12i	$r4,501(0x1f5)
1c00583c:	1c003ef0 	pcaddu12i	$r16,503(0x1f7)
1c005840:	1c003f3c 	pcaddu12i	$r28,505(0x1f9)
1c005844:	1c003f88 	pcaddu12i	$r8,508(0x1fc)
1c005848:	1c003fd4 	pcaddu12i	$r20,510(0x1fe)
1c00584c:	1c004020 	pcaddu12i	$r0,513(0x201)
1c005850:	1c00406c 	pcaddu12i	$r12,515(0x203)
1c005854:	1c0040b8 	pcaddu12i	$r24,517(0x205)
1c005858:	1c004104 	pcaddu12i	$r4,520(0x208)
1c00585c:	1c004150 	pcaddu12i	$r16,522(0x20a)
1c005860:	1c00419c 	pcaddu12i	$r28,524(0x20c)
1c005864:	1c0041e8 	pcaddu12i	$r8,527(0x20f)
1c005868:	1c004234 	pcaddu12i	$r20,529(0x211)
1c00586c:	1c004280 	pcaddu12i	$r0,532(0x214)
1c005870:	1c0042cc 	pcaddu12i	$r12,534(0x216)
1c005874:	1c004318 	pcaddu12i	$r24,536(0x218)
1c005878:	1c004364 	pcaddu12i	$r4,539(0x21b)
1c00587c:	1c0043b0 	pcaddu12i	$r16,541(0x21d)
1c005880:	1c0043fc 	pcaddu12i	$r28,543(0x21f)
1c005884:	1c004448 	pcaddu12i	$r8,546(0x222)
1c005888:	1c004494 	pcaddu12i	$r20,548(0x224)
1c00588c:	1c0044e0 	pcaddu12i	$r0,551(0x227)
1c005890:	1c00452c 	pcaddu12i	$r12,553(0x229)
1c005894:	1c004578 	pcaddu12i	$r24,555(0x22b)
1c005898:	1c0045c4 	pcaddu12i	$r4,558(0x22e)
1c00589c:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058a0:	1c004858 	pcaddu12i	$r24,578(0x242)
1c0058a4:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058a8:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058ac:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058b0:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058b4:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058b8:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058bc:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058c0:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058c4:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058c8:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058cc:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058d0:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058d4:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058d8:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0058dc:	1c004874 	pcaddu12i	$r20,579(0x243)

1c0058e0 <__FUNCTION__.1642>:
1c0058e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd58 <_sidata+0x17024>
1c0058e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c948 <_sidata+0x16c14>
1c0058e8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff8948 <_start-0x76b8>
1c0058ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca5c <_start-0x35a4>
1c0058f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c750 <_sidata+0x6a1c>
1c0058f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058f8 <__FUNCTION__.1646>:
1c0058f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd70 <_sidata+0x1703c>
1c0058fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c960 <_sidata+0x16c2c>
1c005900:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff8a60 <_start-0x75a0>
1c005904:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca74 <_start-0x358c>
1c005908:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c768 <_sidata+0x6a34>
1c00590c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005910 <__FUNCTION__.1650>:
1c005910:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd88 <_sidata+0x17054>
1c005914:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c978 <_sidata+0x16c44>
1c005918:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff8b78 <_start-0x7488>
1c00591c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca8c <_start-0x3574>
1c005920:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c780 <_sidata+0x6a4c>
1c005924:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005928 <__FUNCTION__.1654>:
1c005928:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cda0 <_sidata+0x1706c>
1c00592c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c990 <_sidata+0x16c5c>
1c005930:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff8c90 <_start-0x7370>
1c005934:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcaa4 <_start-0x355c>
1c005938:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c798 <_sidata+0x6a64>
1c00593c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005940 <__FUNCTION__.1658>:
1c005940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cdb8 <_sidata+0x17084>
1c005944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9a8 <_sidata+0x16c74>
1c005948:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff8da8 <_start-0x7258>
1c00594c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcabc <_start-0x3544>
1c005950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7b0 <_sidata+0x6a7c>
1c005954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005958 <__FUNCTION__.1662>:
1c005958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cdd0 <_sidata+0x1709c>
1c00595c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9c0 <_sidata+0x16c8c>
1c005960:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff8ec0 <_start-0x7140>
1c005964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcad4 <_start-0x352c>
1c005968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7c8 <_sidata+0x6a94>
1c00596c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005970 <__FUNCTION__.1666>:
1c005970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cde8 <_sidata+0x170b4>
1c005974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9d8 <_sidata+0x16ca4>
1c005978:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff8fd8 <_start-0x7028>
1c00597c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcaec <_start-0x3514>
1c005980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7e0 <_sidata+0x6aac>
1c005984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005988 <__FUNCTION__.1670>:
1c005988:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce00 <_sidata+0x170cc>
1c00598c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9f0 <_sidata+0x16cbc>
1c005990:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff90f0 <_start-0x6f10>
1c005994:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb04 <_start-0x34fc>
1c005998:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7f8 <_sidata+0x6ac4>
1c00599c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059a0 <__FUNCTION__.1674>:
1c0059a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce18 <_sidata+0x170e4>
1c0059a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca08 <_sidata+0x16cd4>
1c0059a8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff8a08 <_start-0x75f8>
1c0059ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb1c <_start-0x34e4>
1c0059b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c810 <_sidata+0x6adc>
1c0059b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059b8 <__FUNCTION__.1678>:
1c0059b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce30 <_sidata+0x170fc>
1c0059bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca20 <_sidata+0x16cec>
1c0059c0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff8b20 <_start-0x74e0>
1c0059c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb34 <_start-0x34cc>
1c0059c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c828 <_sidata+0x6af4>
1c0059cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059d0 <__FUNCTION__.1682>:
1c0059d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce48 <_sidata+0x17114>
1c0059d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca38 <_sidata+0x16d04>
1c0059d8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff8c38 <_start-0x73c8>
1c0059dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb4c <_start-0x34b4>
1c0059e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c840 <_sidata+0x6b0c>
1c0059e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059e8 <__FUNCTION__.1686>:
1c0059e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce60 <_sidata+0x1712c>
1c0059ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca50 <_sidata+0x16d1c>
1c0059f0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff8d50 <_start-0x72b0>
1c0059f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb64 <_start-0x349c>
1c0059f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c858 <_sidata+0x6b24>
1c0059fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a00 <__FUNCTION__.1690>:
1c005a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce78 <_sidata+0x17144>
1c005a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca68 <_sidata+0x16d34>
1c005a08:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff8e68 <_start-0x7198>
1c005a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb7c <_start-0x3484>
1c005a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c870 <_sidata+0x6b3c>
1c005a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a18 <__FUNCTION__.1694>:
1c005a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce90 <_sidata+0x1715c>
1c005a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca80 <_sidata+0x16d4c>
1c005a20:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff8f80 <_start-0x7080>
1c005a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb94 <_start-0x346c>
1c005a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c888 <_sidata+0x6b54>
1c005a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a30 <__FUNCTION__.1698>:
1c005a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cea8 <_sidata+0x17174>
1c005a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca98 <_sidata+0x16d64>
1c005a38:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff9098 <_start-0x6f68>
1c005a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbac <_start-0x3454>
1c005a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8a0 <_sidata+0x6b6c>
1c005a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a48 <__FUNCTION__.1702>:
1c005a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cec0 <_sidata+0x1718c>
1c005a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cab0 <_sidata+0x16d7c>
1c005a50:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff91b0 <_start-0x6e50>
1c005a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbc4 <_start-0x343c>
1c005a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8b8 <_sidata+0x6b84>
1c005a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a60 <__FUNCTION__.1706>:
1c005a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ced8 <_sidata+0x171a4>
1c005a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cac8 <_sidata+0x16d94>
1c005a68:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff8ac8 <_start-0x7538>
1c005a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbdc <_start-0x3424>
1c005a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8d0 <_sidata+0x6b9c>
1c005a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a78 <__FUNCTION__.1710>:
1c005a78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cef0 <_sidata+0x171bc>
1c005a7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cae0 <_sidata+0x16dac>
1c005a80:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff8be0 <_start-0x7420>
1c005a84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbf4 <_start-0x340c>
1c005a88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8e8 <_sidata+0x6bb4>
1c005a8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a90 <__FUNCTION__.1714>:
1c005a90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf08 <_sidata+0x171d4>
1c005a94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01caf8 <_sidata+0x16dc4>
1c005a98:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff8cf8 <_start-0x7308>
1c005a9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc0c <_start-0x33f4>
1c005aa0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c900 <_sidata+0x6bcc>
1c005aa4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005aa8 <__FUNCTION__.1718>:
1c005aa8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf20 <_sidata+0x171ec>
1c005aac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb10 <_sidata+0x16ddc>
1c005ab0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff8e10 <_start-0x71f0>
1c005ab4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc24 <_start-0x33dc>
1c005ab8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c918 <_sidata+0x6be4>
1c005abc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005ac0 <__FUNCTION__.1722>:
1c005ac0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf38 <_sidata+0x17204>
1c005ac4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb28 <_sidata+0x16df4>
1c005ac8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff8f28 <_start-0x70d8>
1c005acc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc3c <_start-0x33c4>
1c005ad0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c930 <_sidata+0x6bfc>
1c005ad4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005ad8 <__FUNCTION__.1726>:
1c005ad8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf50 <_sidata+0x1721c>
1c005adc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb40 <_sidata+0x16e0c>
1c005ae0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff9040 <_start-0x6fc0>
1c005ae4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc54 <_start-0x33ac>
1c005ae8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c948 <_sidata+0x6c14>
1c005aec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005af0 <__FUNCTION__.1730>:
1c005af0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf68 <_sidata+0x17234>
1c005af4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb58 <_sidata+0x16e24>
1c005af8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9158 <_start-0x6ea8>
1c005afc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc6c <_start-0x3394>
1c005b00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c960 <_sidata+0x6c2c>
1c005b04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005b08 <__FUNCTION__.1734>:
1c005b08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf80 <_sidata+0x1724c>
1c005b0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb70 <_sidata+0x16e3c>
1c005b10:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff9270 <_start-0x6d90>
1c005b14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc84 <_start-0x337c>
1c005b18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c978 <_sidata+0x6c44>
1c005b1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005b20 <__FUNCTION__.1738>:
1c005b20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf98 <_sidata+0x17264>
1c005b24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb88 <_sidata+0x16e54>
1c005b28:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff8b8c <_start-0x7474>
1c005b2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc9c <_start-0x3364>
1c005b30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c990 <_sidata+0x6c5c>
1c005b34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005b38 <__FUNCTION__.1742>:
1c005b38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cfb0 <_sidata+0x1727c>
1c005b3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cba0 <_sidata+0x16e6c>
1c005b40:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff8ca4 <_start-0x735c>
1c005b44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffccb4 <_start-0x334c>
1c005b48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c9a8 <_sidata+0x6c74>
1c005b4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005b50 <__FUNCTION__.1746>:
1c005b50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cfc8 <_sidata+0x17294>
1c005b54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cbb8 <_sidata+0x16e84>
1c005b58:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff8dbc <_start-0x7244>
1c005b5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcccc <_start-0x3334>
1c005b60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c9c0 <_sidata+0x6c8c>
1c005b64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005b68 <__FUNCTION__.1750>:
1c005b68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cfe0 <_sidata+0x172ac>
1c005b6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cbd0 <_sidata+0x16e9c>
1c005b70:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff8ed4 <_start-0x712c>
1c005b74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcce4 <_start-0x331c>
1c005b78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c9d8 <_sidata+0x6ca4>
1c005b7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005b80 <__FUNCTION__.1754>:
1c005b80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cff8 <_sidata+0x172c4>
1c005b84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cbe8 <_sidata+0x16eb4>
1c005b88:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff8fec <_start-0x7014>
1c005b8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffccfc <_start-0x3304>
1c005b90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c9f0 <_sidata+0x6cbc>
1c005b94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005b98 <__FUNCTION__.1758>:
1c005b98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d010 <_sidata+0x172dc>
1c005b9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cc00 <_sidata+0x16ecc>
1c005ba0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9104 <_start-0x6efc>
1c005ba4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcd14 <_start-0x32ec>
1c005ba8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ca08 <_sidata+0x6cd4>
1c005bac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005bb0 <__FUNCTION__.1762>:
1c005bb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d028 <_sidata+0x172f4>
1c005bb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cc18 <_sidata+0x16ee4>
1c005bb8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff921c <_start-0x6de4>
1c005bbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcd2c <_start-0x32d4>
1c005bc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ca20 <_sidata+0x6cec>
1c005bc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005bc8 <__FUNCTION__.1766>:
1c005bc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d040 <_sidata+0x1730c>
1c005bcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cc30 <_sidata+0x16efc>
1c005bd0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff9334 <_start-0x6ccc>
1c005bd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcd44 <_start-0x32bc>
1c005bd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ca38 <_sidata+0x6d04>
1c005bdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c005be0:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bffc148 <_start-0x3eb8>
1c005be4:	4155206b 	beqz	$r3,2970912(0x2d5520) # 1c2db104 <_sidata+0x2d53d0>
1c005be8:	5f305452 	bne	$r2,$r18,-53164(0x33054) # 1bff8c3c <_start-0x73c4>
1c005bec:	425f5852 	beqz	$r2,-3514536(0x4a5f58) # 1bcabb44 <_start-0x3544bc>
1c005bf0:	253a4655 	stptr.w	$r21,$r18,14916(0x3a44)
1c005bf4:	000a0d73 	0x000a0d73
1c005bf8:	3a646d63 	0x3a646d63
1c005bfc:	0a0d7325 	0x0a0d7325
1c005c00:	00000000 	0x00000000
1c005c04:	0a0d7325 	0x0a0d7325
1c005c08:	00000000 	0x00000000
1c005c0c:	3a6b6361 	0x3a6b6361
1c005c10:	0a0d7325 	0x0a0d7325
1c005c14:	00000000 	0x00000000
1c005c18:	3a736572 	0x3a736572
1c005c1c:	0a0d6425 	0x0a0d6425
1c005c20:	00000000 	0x00000000
1c005c24:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078778 <_sidata+0x72a44>
1c005c28:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcab74 <_start-0x23548c>
1c005c2c:	0d313d45 	0x0d313d45
1c005c30:	0000000a 	0x0000000a
1c005c34:	00004b4f 	bitrev.4b	$r15,$r26
1c005c38:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07878c <_sidata+0x72a58>
1c005c3c:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcab88 <_start-0x235478>
1c005c40:	00313d45 	0x00313d45
1c005c44:	522b5441 	b	17181524(0x1062b54) # 1d068798 <_sidata+0x1062a64>
1c005c48:	0a0d5453 	0x0a0d5453
1c005c4c:	00000000 	0x00000000
1c005c50:	522b5441 	b	17181524(0x1062b54) # 1d0687a4 <_sidata+0x1062a70>
1c005c54:	00005453 	bitrev.d	$r19,$r2
1c005c58:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0787ac <_sidata+0x72a78>
1c005c5c:	50414a57 	b	-111394488(0x95c4148) # 155c9da4 <_start-0x6a3625c>
1c005c60:	3031783d 	0x3031783d
1c005c64:	3332312c 	xvstelm.w	$xr12,$r9,-464(0x230),0x4
1c005c68:	37363534 	0x37363534
1c005c6c:	000a0d38 	0x000a0d38
1c005c70:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0787c4 <_sidata+0x72a90>
1c005c74:	50414a57 	b	-111394488(0x95c4148) # 155c9dbc <_start-0x6a36244>
1c005c78:	3178223d 	0x3178223d
1c005c7c:	222c2230 	ll.d	$r16,$r17,11296(0x2c20)
1c005c80:	34333231 	0x34333231
1c005c84:	38373635 	0x38373635
1c005c88:	00000022 	0x00000022
1c005c8c:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0787e0 <_sidata+0x72aac>
1c005c90:	554d5049 	bl	19221840(0x1254d50) # 1d25a9e0 <_sidata+0x1254cac>
1c005c94:	0d303d58 	0x0d303d58
1c005c98:	0000000a 	0x0000000a
1c005c9c:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0787f0 <_sidata+0x72abc>
1c005ca0:	554d5049 	bl	19221840(0x1254d50) # 1d25a9f0 <_sidata+0x1254cbc>
1c005ca4:	00303d58 	0x00303d58
1c005ca8:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0787fc <_sidata+0x72ac8>
1c005cac:	54535049 	bl	19157840(0x1245350) # 1d24affc <_sidata+0x12452c8>
1c005cb0:	3d545241 	0x3d545241
1c005cb4:	2c504354 	vst	$vr20,$r26,1040(0x410)
1c005cb8:	2e323731 	0x2e323731
1c005cbc:	312e3032 	vstelm.w	$vr18,$r1,-464(0x230),0x3
1c005cc0:	2c332e30 	vld	$vr16,$r17,-821(0xccb)
1c005cc4:	30383038 	0x30383038
1c005cc8:	00000a0d 	0x00000a0d
1c005ccc:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078820 <_sidata+0x72aec>
1c005cd0:	54535049 	bl	19157840(0x1245350) # 1d24b020 <_sidata+0x12452ec>
1c005cd4:	3d545241 	0x3d545241
1c005cd8:	50435422 	b	8930132(0x884354) # 1c88a02c <_sidata+0x8842f8>
1c005cdc:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c005ce0:	322e3237 	xvldrepl.w	$xr23,$r17,-464(0xe30)
1c005ce4:	30312e30 	0x30312e30
1c005ce8:	2c22332e 	vld	$vr14,$r25,-1908(0x88c)
1c005cec:	30383038 	0x30383038
1c005cf0:	00000000 	0x00000000
1c005cf4:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078848 <_sidata+0x72b14>
1c005cf8:	4f4d5049 	jirl	$r9,$r2,-45744(0x34d50)
1c005cfc:	313d4544 	0x313d4544
1c005d00:	00000a0d 	0x00000a0d
1c005d04:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078858 <_sidata+0x72b24>
1c005d08:	4f4d5049 	jirl	$r9,$r2,-45744(0x34d50)
1c005d0c:	313d4544 	0x313d4544
1c005d10:	00000000 	0x00000000
1c005d14:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078868 <_sidata+0x72b34>
1c005d18:	45535049 	bnez	$r2,2446160(0x255350) # 1c25b068 <_sidata+0x255334>
1c005d1c:	0a0d444e 	0x0a0d444e
1c005d20:	00000000 	0x00000000
1c005d24:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078878 <_sidata+0x72b44>
1c005d28:	45535049 	bnez	$r2,2446160(0x255350) # 1c25b078 <_sidata+0x255344>
1c005d2c:	0000444e 	revh.d	$r14,$r2
1c005d30:	00007325 	0x00007325

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c005069 	pcaddu12i	$r9,643(0x283)
80001008:	80000134 	0x80000134
8000100c:	8000101c 	0x8000101c
80001010:	80000004 	0x80000004
80001014:	1c005060 	pcaddu12i	$r0,643(0x283)
80001018:	80000138 	0x80000138

8000101c <g_SystemFreq>:
8000101c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <_sbss>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <Circular_queue>:
	...

80000134 <Read_length>:
80000134:	00000000 	0x00000000

80000138 <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
