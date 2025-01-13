
./FPGA_output/FPGA/cus_XOR_uart.elf:     file format elf64-littleriscv


Disassembly of section .text.init:

0000000080000000 <_start>:
    80000000:	4081                	li	ra,0
    80000002:	4101                	li	sp,0
    80000004:	4181                	li	gp,0
    80000006:	4201                	li	tp,0
    80000008:	4281                	li	t0,0
    8000000a:	4301                	li	t1,0
    8000000c:	4381                	li	t2,0
    8000000e:	4401                	li	s0,0
    80000010:	4481                	li	s1,0
    80000012:	4501                	li	a0,0
    80000014:	4581                	li	a1,0
    80000016:	4601                	li	a2,0
    80000018:	4681                	li	a3,0
    8000001a:	4701                	li	a4,0
    8000001c:	4781                	li	a5,0
    8000001e:	4801                	li	a6,0
    80000020:	4881                	li	a7,0
    80000022:	4901                	li	s2,0
    80000024:	4981                	li	s3,0
    80000026:	4a01                	li	s4,0
    80000028:	4a81                	li	s5,0
    8000002a:	4b01                	li	s6,0
    8000002c:	4b81                	li	s7,0
    8000002e:	4c01                	li	s8,0
    80000030:	4c81                	li	s9,0
    80000032:	4d01                	li	s10,0
    80000034:	4d81                	li	s11,0
    80000036:	4e01                	li	t3,0
    80000038:	4e81                	li	t4,0
    8000003a:	4f01                	li	t5,0
    8000003c:	4f81                	li	t6,0
    8000003e:	62f9                	lui	t0,0x1e
    80000040:	3002a073          	csrs	mstatus,t0
    80000044:	4285                	li	t0,1
    80000046:	02fe                	slli	t0,t0,0x1f
    80000048:	0002d863          	bgez	t0,80000058 <_start+0x58>
    8000004c:	4505                	li	a0,1
    8000004e:	00000297          	auipc	t0,0x0
    80000052:	1aa2a923          	sw	a0,434(t0) # 80000200 <tohost>
    80000056:	bfdd                	j	8000004c <_start+0x4c>
    80000058:	00000297          	auipc	t0,0x0
    8000005c:	09028293          	addi	t0,t0,144 # 800000e8 <_start+0xe8>
    80000060:	30529073          	csrw	mtvec,t0
    80000064:	00301073          	fssr	zero
    80000068:	f0000053          	fmv.w.x	ft0,zero
    8000006c:	f00000d3          	fmv.w.x	ft1,zero
    80000070:	f0000153          	fmv.w.x	ft2,zero
    80000074:	f00001d3          	fmv.w.x	ft3,zero
    80000078:	f0000253          	fmv.w.x	ft4,zero
    8000007c:	f00002d3          	fmv.w.x	ft5,zero
    80000080:	f0000353          	fmv.w.x	ft6,zero
    80000084:	f00003d3          	fmv.w.x	ft7,zero
    80000088:	f0000453          	fmv.w.x	fs0,zero
    8000008c:	f00004d3          	fmv.w.x	fs1,zero
    80000090:	f0000553          	fmv.w.x	fa0,zero
    80000094:	f00005d3          	fmv.w.x	fa1,zero
    80000098:	f0000653          	fmv.w.x	fa2,zero
    8000009c:	f00006d3          	fmv.w.x	fa3,zero
    800000a0:	f0000753          	fmv.w.x	fa4,zero
    800000a4:	f00007d3          	fmv.w.x	fa5,zero
    800000a8:	f0000853          	fmv.w.x	fa6,zero
    800000ac:	f00008d3          	fmv.w.x	fa7,zero
    800000b0:	f0000953          	fmv.w.x	fs2,zero
    800000b4:	f00009d3          	fmv.w.x	fs3,zero
    800000b8:	f0000a53          	fmv.w.x	fs4,zero
    800000bc:	f0000ad3          	fmv.w.x	fs5,zero
    800000c0:	f0000b53          	fmv.w.x	fs6,zero
    800000c4:	f0000bd3          	fmv.w.x	fs7,zero
    800000c8:	f0000c53          	fmv.w.x	fs8,zero
    800000cc:	f0000cd3          	fmv.w.x	fs9,zero
    800000d0:	f0000d53          	fmv.w.x	fs10,zero
    800000d4:	f0000dd3          	fmv.w.x	fs11,zero
    800000d8:	f0000e53          	fmv.w.x	ft8,zero
    800000dc:	f0000ed3          	fmv.w.x	ft9,zero
    800000e0:	f0000f53          	fmv.w.x	ft10,zero
    800000e4:	f0000fd3          	fmv.w.x	ft11,zero
    800000e8:	00000297          	auipc	t0,0x0
    800000ec:	03828293          	addi	t0,t0,56 # 80000120 <trap_entry>
    800000f0:	30529073          	csrw	mtvec,t0
    800000f4:	00009197          	auipc	gp,0x9
    800000f8:	20c18193          	addi	gp,gp,524 # 80009300 <__global_pointer$>
    800000fc:	c7f18213          	addi	tp,gp,-897 # 80008f7f <_end+0x3f>
    80000100:	fc027213          	andi	tp,tp,-64
    80000104:	f1402573          	csrr	a0,mhartid
    80000108:	4585                	li	a1,1
    8000010a:	00b57063          	bleu	a1,a0,8000010a <_start+0x10a>
    8000010e:	00150113          	addi	sp,a0,1
    80000112:	0146                	slli	sp,sp,0x11
    80000114:	9112                	add	sp,sp,tp
    80000116:	01151613          	slli	a2,a0,0x11
    8000011a:	9232                	add	tp,tp,a2
    8000011c:	6ce0506f          	j	800057ea <_init>

0000000080000120 <trap_entry>:
    80000120:	716d                	addi	sp,sp,-272
    80000122:	e406                	sd	ra,8(sp)
    80000124:	e80a                	sd	sp,16(sp)
    80000126:	ec0e                	sd	gp,24(sp)
    80000128:	f012                	sd	tp,32(sp)
    8000012a:	f416                	sd	t0,40(sp)
    8000012c:	f81a                	sd	t1,48(sp)
    8000012e:	fc1e                	sd	t2,56(sp)
    80000130:	e0a2                	sd	s0,64(sp)
    80000132:	e4a6                	sd	s1,72(sp)
    80000134:	e8aa                	sd	a0,80(sp)
    80000136:	ecae                	sd	a1,88(sp)
    80000138:	f0b2                	sd	a2,96(sp)
    8000013a:	f4b6                	sd	a3,104(sp)
    8000013c:	f8ba                	sd	a4,112(sp)
    8000013e:	fcbe                	sd	a5,120(sp)
    80000140:	e142                	sd	a6,128(sp)
    80000142:	e546                	sd	a7,136(sp)
    80000144:	e94a                	sd	s2,144(sp)
    80000146:	ed4e                	sd	s3,152(sp)
    80000148:	f152                	sd	s4,160(sp)
    8000014a:	f556                	sd	s5,168(sp)
    8000014c:	f95a                	sd	s6,176(sp)
    8000014e:	fd5e                	sd	s7,184(sp)
    80000150:	e1e2                	sd	s8,192(sp)
    80000152:	e5e6                	sd	s9,200(sp)
    80000154:	e9ea                	sd	s10,208(sp)
    80000156:	edee                	sd	s11,216(sp)
    80000158:	f1f2                	sd	t3,224(sp)
    8000015a:	f5f6                	sd	t4,232(sp)
    8000015c:	f9fa                	sd	t5,240(sp)
    8000015e:	fdfe                	sd	t6,248(sp)
    80000160:	34202573          	csrr	a0,mcause
    80000164:	341025f3          	csrr	a1,mepc
    80000168:	860a                	mv	a2,sp
    8000016a:	562050ef          	jal	ra,800056cc <handle_trap>
    8000016e:	34151073          	csrw	mepc,a0
    80000172:	6289                	lui	t0,0x2
    80000174:	8002829b          	addiw	t0,t0,-2048
    80000178:	3002a073          	csrs	mstatus,t0
    8000017c:	60a2                	ld	ra,8(sp)
    8000017e:	6142                	ld	sp,16(sp)
    80000180:	61e2                	ld	gp,24(sp)
    80000182:	7202                	ld	tp,32(sp)
    80000184:	72a2                	ld	t0,40(sp)
    80000186:	7342                	ld	t1,48(sp)
    80000188:	73e2                	ld	t2,56(sp)
    8000018a:	6406                	ld	s0,64(sp)
    8000018c:	64a6                	ld	s1,72(sp)
    8000018e:	6546                	ld	a0,80(sp)
    80000190:	65e6                	ld	a1,88(sp)
    80000192:	7606                	ld	a2,96(sp)
    80000194:	76a6                	ld	a3,104(sp)
    80000196:	7746                	ld	a4,112(sp)
    80000198:	77e6                	ld	a5,120(sp)
    8000019a:	680a                	ld	a6,128(sp)
    8000019c:	68aa                	ld	a7,136(sp)
    8000019e:	694a                	ld	s2,144(sp)
    800001a0:	69ea                	ld	s3,152(sp)
    800001a2:	7a0a                	ld	s4,160(sp)
    800001a4:	7aaa                	ld	s5,168(sp)
    800001a6:	7b4a                	ld	s6,176(sp)
    800001a8:	7bea                	ld	s7,184(sp)
    800001aa:	6c0e                	ld	s8,192(sp)
    800001ac:	6cae                	ld	s9,200(sp)
    800001ae:	6d4e                	ld	s10,208(sp)
    800001b0:	6dee                	ld	s11,216(sp)
    800001b2:	7e0e                	ld	t3,224(sp)
    800001b4:	7eae                	ld	t4,232(sp)
    800001b6:	7f4e                	ld	t5,240(sp)
    800001b8:	7fee                	ld	t6,248(sp)
    800001ba:	6151                	addi	sp,sp,272
    800001bc:	30200073          	mret
    800001c0:	5501                	li	a0,-32
    800001c2:	a029                	j	800001cc <_exit>
    800001c4:	5cf040ef          	jal	ra,80004f92 <main>
    800001c8:	a011                	j	800001cc <_exit>
    800001ca:	a009                	j	800001cc <_exit>

00000000800001cc <_exit>:
    800001cc:	0506                	slli	a0,a0,0x1
    800001ce:	0505                	addi	a0,a0,1
    800001d0:	00000f17          	auipc	t5,0x0
    800001d4:	02af2823          	sw	a0,48(t5) # 80000200 <tohost>
    800001d8:	0001                	nop
    800001da:	a001                	j	800001da <_exit+0xe>
	...

Disassembly of section .text:

0000000080000288 <AES_EncryptInit>:
    80000288:	7139                	addi	sp,sp,-64
    8000028a:	fc22                	sd	s0,56(sp)
    8000028c:	0080                	addi	s0,sp,64
    8000028e:	fca43c23          	sd	a0,-40(s0)
    80000292:	fcb43823          	sd	a1,-48(s0)
    80000296:	fcc43423          	sd	a2,-56(s0)
    8000029a:	fd043783          	ld	a5,-48(s0)
    8000029e:	0007c783          	lbu	a5,0(a5)
    800002a2:	2781                	sext.w	a5,a5
    800002a4:	0187979b          	slliw	a5,a5,0x18
    800002a8:	0007871b          	sext.w	a4,a5
    800002ac:	fd043783          	ld	a5,-48(s0)
    800002b0:	0785                	addi	a5,a5,1
    800002b2:	0007c783          	lbu	a5,0(a5)
    800002b6:	2781                	sext.w	a5,a5
    800002b8:	0107979b          	slliw	a5,a5,0x10
    800002bc:	2781                	sext.w	a5,a5
    800002be:	8fb9                	xor	a5,a5,a4
    800002c0:	0007871b          	sext.w	a4,a5
    800002c4:	fd043783          	ld	a5,-48(s0)
    800002c8:	0789                	addi	a5,a5,2
    800002ca:	0007c783          	lbu	a5,0(a5)
    800002ce:	2781                	sext.w	a5,a5
    800002d0:	0087979b          	slliw	a5,a5,0x8
    800002d4:	2781                	sext.w	a5,a5
    800002d6:	8fb9                	xor	a5,a5,a4
    800002d8:	0007871b          	sext.w	a4,a5
    800002dc:	fd043783          	ld	a5,-48(s0)
    800002e0:	078d                	addi	a5,a5,3
    800002e2:	0007c783          	lbu	a5,0(a5)
    800002e6:	2781                	sext.w	a5,a5
    800002e8:	8fb9                	xor	a5,a5,a4
    800002ea:	0007871b          	sext.w	a4,a5
    800002ee:	fd843783          	ld	a5,-40(s0)
    800002f2:	c398                	sw	a4,0(a5)
    800002f4:	fd043783          	ld	a5,-48(s0)
    800002f8:	0791                	addi	a5,a5,4
    800002fa:	0007c783          	lbu	a5,0(a5)
    800002fe:	2781                	sext.w	a5,a5
    80000300:	0187979b          	slliw	a5,a5,0x18
    80000304:	0007871b          	sext.w	a4,a5
    80000308:	fd043783          	ld	a5,-48(s0)
    8000030c:	0795                	addi	a5,a5,5
    8000030e:	0007c783          	lbu	a5,0(a5)
    80000312:	2781                	sext.w	a5,a5
    80000314:	0107979b          	slliw	a5,a5,0x10
    80000318:	2781                	sext.w	a5,a5
    8000031a:	8fb9                	xor	a5,a5,a4
    8000031c:	0007871b          	sext.w	a4,a5
    80000320:	fd043783          	ld	a5,-48(s0)
    80000324:	0799                	addi	a5,a5,6
    80000326:	0007c783          	lbu	a5,0(a5)
    8000032a:	2781                	sext.w	a5,a5
    8000032c:	0087979b          	slliw	a5,a5,0x8
    80000330:	2781                	sext.w	a5,a5
    80000332:	8fb9                	xor	a5,a5,a4
    80000334:	0007871b          	sext.w	a4,a5
    80000338:	fd043783          	ld	a5,-48(s0)
    8000033c:	079d                	addi	a5,a5,7
    8000033e:	0007c783          	lbu	a5,0(a5)
    80000342:	2781                	sext.w	a5,a5
    80000344:	8fb9                	xor	a5,a5,a4
    80000346:	0007871b          	sext.w	a4,a5
    8000034a:	fd843783          	ld	a5,-40(s0)
    8000034e:	c3d8                	sw	a4,4(a5)
    80000350:	fd043783          	ld	a5,-48(s0)
    80000354:	07a1                	addi	a5,a5,8
    80000356:	0007c783          	lbu	a5,0(a5)
    8000035a:	2781                	sext.w	a5,a5
    8000035c:	0187979b          	slliw	a5,a5,0x18
    80000360:	0007871b          	sext.w	a4,a5
    80000364:	fd043783          	ld	a5,-48(s0)
    80000368:	07a5                	addi	a5,a5,9
    8000036a:	0007c783          	lbu	a5,0(a5)
    8000036e:	2781                	sext.w	a5,a5
    80000370:	0107979b          	slliw	a5,a5,0x10
    80000374:	2781                	sext.w	a5,a5
    80000376:	8fb9                	xor	a5,a5,a4
    80000378:	0007871b          	sext.w	a4,a5
    8000037c:	fd043783          	ld	a5,-48(s0)
    80000380:	07a9                	addi	a5,a5,10
    80000382:	0007c783          	lbu	a5,0(a5)
    80000386:	2781                	sext.w	a5,a5
    80000388:	0087979b          	slliw	a5,a5,0x8
    8000038c:	2781                	sext.w	a5,a5
    8000038e:	8fb9                	xor	a5,a5,a4
    80000390:	0007871b          	sext.w	a4,a5
    80000394:	fd043783          	ld	a5,-48(s0)
    80000398:	07ad                	addi	a5,a5,11
    8000039a:	0007c783          	lbu	a5,0(a5)
    8000039e:	2781                	sext.w	a5,a5
    800003a0:	8fb9                	xor	a5,a5,a4
    800003a2:	0007871b          	sext.w	a4,a5
    800003a6:	fd843783          	ld	a5,-40(s0)
    800003aa:	c798                	sw	a4,8(a5)
    800003ac:	fd043783          	ld	a5,-48(s0)
    800003b0:	07b1                	addi	a5,a5,12
    800003b2:	0007c783          	lbu	a5,0(a5)
    800003b6:	2781                	sext.w	a5,a5
    800003b8:	0187979b          	slliw	a5,a5,0x18
    800003bc:	0007871b          	sext.w	a4,a5
    800003c0:	fd043783          	ld	a5,-48(s0)
    800003c4:	07b5                	addi	a5,a5,13
    800003c6:	0007c783          	lbu	a5,0(a5)
    800003ca:	2781                	sext.w	a5,a5
    800003cc:	0107979b          	slliw	a5,a5,0x10
    800003d0:	2781                	sext.w	a5,a5
    800003d2:	8fb9                	xor	a5,a5,a4
    800003d4:	0007871b          	sext.w	a4,a5
    800003d8:	fd043783          	ld	a5,-48(s0)
    800003dc:	07b9                	addi	a5,a5,14
    800003de:	0007c783          	lbu	a5,0(a5)
    800003e2:	2781                	sext.w	a5,a5
    800003e4:	0087979b          	slliw	a5,a5,0x8
    800003e8:	2781                	sext.w	a5,a5
    800003ea:	8fb9                	xor	a5,a5,a4
    800003ec:	0007871b          	sext.w	a4,a5
    800003f0:	fd043783          	ld	a5,-48(s0)
    800003f4:	07bd                	addi	a5,a5,15
    800003f6:	0007c783          	lbu	a5,0(a5)
    800003fa:	2781                	sext.w	a5,a5
    800003fc:	8fb9                	xor	a5,a5,a4
    800003fe:	0007871b          	sext.w	a4,a5
    80000402:	fd843783          	ld	a5,-40(s0)
    80000406:	c7d8                	sw	a4,12(a5)
    80000408:	fc843783          	ld	a5,-56(s0)
    8000040c:	0007c783          	lbu	a5,0(a5)
    80000410:	2781                	sext.w	a5,a5
    80000412:	0187979b          	slliw	a5,a5,0x18
    80000416:	0007871b          	sext.w	a4,a5
    8000041a:	fc843783          	ld	a5,-56(s0)
    8000041e:	0785                	addi	a5,a5,1
    80000420:	0007c783          	lbu	a5,0(a5)
    80000424:	2781                	sext.w	a5,a5
    80000426:	0107979b          	slliw	a5,a5,0x10
    8000042a:	2781                	sext.w	a5,a5
    8000042c:	8fb9                	xor	a5,a5,a4
    8000042e:	0007871b          	sext.w	a4,a5
    80000432:	fc843783          	ld	a5,-56(s0)
    80000436:	0789                	addi	a5,a5,2
    80000438:	0007c783          	lbu	a5,0(a5)
    8000043c:	2781                	sext.w	a5,a5
    8000043e:	0087979b          	slliw	a5,a5,0x8
    80000442:	2781                	sext.w	a5,a5
    80000444:	8fb9                	xor	a5,a5,a4
    80000446:	0007871b          	sext.w	a4,a5
    8000044a:	fc843783          	ld	a5,-56(s0)
    8000044e:	078d                	addi	a5,a5,3
    80000450:	0007c783          	lbu	a5,0(a5)
    80000454:	2781                	sext.w	a5,a5
    80000456:	8fb9                	xor	a5,a5,a4
    80000458:	0007871b          	sext.w	a4,a5
    8000045c:	fd843783          	ld	a5,-40(s0)
    80000460:	0ae7a823          	sw	a4,176(a5)
    80000464:	fc843783          	ld	a5,-56(s0)
    80000468:	0791                	addi	a5,a5,4
    8000046a:	0007c783          	lbu	a5,0(a5)
    8000046e:	2781                	sext.w	a5,a5
    80000470:	0187979b          	slliw	a5,a5,0x18
    80000474:	0007871b          	sext.w	a4,a5
    80000478:	fc843783          	ld	a5,-56(s0)
    8000047c:	0795                	addi	a5,a5,5
    8000047e:	0007c783          	lbu	a5,0(a5)
    80000482:	2781                	sext.w	a5,a5
    80000484:	0107979b          	slliw	a5,a5,0x10
    80000488:	2781                	sext.w	a5,a5
    8000048a:	8fb9                	xor	a5,a5,a4
    8000048c:	0007871b          	sext.w	a4,a5
    80000490:	fc843783          	ld	a5,-56(s0)
    80000494:	0799                	addi	a5,a5,6
    80000496:	0007c783          	lbu	a5,0(a5)
    8000049a:	2781                	sext.w	a5,a5
    8000049c:	0087979b          	slliw	a5,a5,0x8
    800004a0:	2781                	sext.w	a5,a5
    800004a2:	8fb9                	xor	a5,a5,a4
    800004a4:	0007871b          	sext.w	a4,a5
    800004a8:	fc843783          	ld	a5,-56(s0)
    800004ac:	079d                	addi	a5,a5,7
    800004ae:	0007c783          	lbu	a5,0(a5)
    800004b2:	2781                	sext.w	a5,a5
    800004b4:	8fb9                	xor	a5,a5,a4
    800004b6:	0007871b          	sext.w	a4,a5
    800004ba:	fd843783          	ld	a5,-40(s0)
    800004be:	0ae7aa23          	sw	a4,180(a5)
    800004c2:	fc843783          	ld	a5,-56(s0)
    800004c6:	07a1                	addi	a5,a5,8
    800004c8:	0007c783          	lbu	a5,0(a5)
    800004cc:	2781                	sext.w	a5,a5
    800004ce:	0187979b          	slliw	a5,a5,0x18
    800004d2:	0007871b          	sext.w	a4,a5
    800004d6:	fc843783          	ld	a5,-56(s0)
    800004da:	07a5                	addi	a5,a5,9
    800004dc:	0007c783          	lbu	a5,0(a5)
    800004e0:	2781                	sext.w	a5,a5
    800004e2:	0107979b          	slliw	a5,a5,0x10
    800004e6:	2781                	sext.w	a5,a5
    800004e8:	8fb9                	xor	a5,a5,a4
    800004ea:	0007871b          	sext.w	a4,a5
    800004ee:	fc843783          	ld	a5,-56(s0)
    800004f2:	07a9                	addi	a5,a5,10
    800004f4:	0007c783          	lbu	a5,0(a5)
    800004f8:	2781                	sext.w	a5,a5
    800004fa:	0087979b          	slliw	a5,a5,0x8
    800004fe:	2781                	sext.w	a5,a5
    80000500:	8fb9                	xor	a5,a5,a4
    80000502:	0007871b          	sext.w	a4,a5
    80000506:	fc843783          	ld	a5,-56(s0)
    8000050a:	07ad                	addi	a5,a5,11
    8000050c:	0007c783          	lbu	a5,0(a5)
    80000510:	2781                	sext.w	a5,a5
    80000512:	8fb9                	xor	a5,a5,a4
    80000514:	0007871b          	sext.w	a4,a5
    80000518:	fd843783          	ld	a5,-40(s0)
    8000051c:	0ae7ac23          	sw	a4,184(a5)
    80000520:	fc843783          	ld	a5,-56(s0)
    80000524:	07b1                	addi	a5,a5,12
    80000526:	0007c783          	lbu	a5,0(a5)
    8000052a:	2781                	sext.w	a5,a5
    8000052c:	0187979b          	slliw	a5,a5,0x18
    80000530:	0007871b          	sext.w	a4,a5
    80000534:	fc843783          	ld	a5,-56(s0)
    80000538:	07b5                	addi	a5,a5,13
    8000053a:	0007c783          	lbu	a5,0(a5)
    8000053e:	2781                	sext.w	a5,a5
    80000540:	0107979b          	slliw	a5,a5,0x10
    80000544:	2781                	sext.w	a5,a5
    80000546:	8fb9                	xor	a5,a5,a4
    80000548:	0007871b          	sext.w	a4,a5
    8000054c:	fc843783          	ld	a5,-56(s0)
    80000550:	07b9                	addi	a5,a5,14
    80000552:	0007c783          	lbu	a5,0(a5)
    80000556:	2781                	sext.w	a5,a5
    80000558:	0087979b          	slliw	a5,a5,0x8
    8000055c:	2781                	sext.w	a5,a5
    8000055e:	8fb9                	xor	a5,a5,a4
    80000560:	0007871b          	sext.w	a4,a5
    80000564:	fc843783          	ld	a5,-56(s0)
    80000568:	07bd                	addi	a5,a5,15
    8000056a:	0007c783          	lbu	a5,0(a5)
    8000056e:	2781                	sext.w	a5,a5
    80000570:	8fb9                	xor	a5,a5,a4
    80000572:	0007871b          	sext.w	a4,a5
    80000576:	fd843783          	ld	a5,-40(s0)
    8000057a:	0ae7ae23          	sw	a4,188(a5)
    8000057e:	4791                	li	a5,4
    80000580:	fef407a3          	sb	a5,-17(s0)
    80000584:	a439                	j	80000792 <AES_EncryptInit+0x50a>
    80000586:	fef44783          	lbu	a5,-17(s0)
    8000058a:	2781                	sext.w	a5,a5
    8000058c:	37f1                	addiw	a5,a5,-4
    8000058e:	2781                	sext.w	a5,a5
    80000590:	fd843703          	ld	a4,-40(s0)
    80000594:	078a                	slli	a5,a5,0x2
    80000596:	97ba                	add	a5,a5,a4
    80000598:	4394                	lw	a3,0(a5)
    8000059a:	fef44783          	lbu	a5,-17(s0)
    8000059e:	2781                	sext.w	a5,a5
    800005a0:	37fd                	addiw	a5,a5,-1
    800005a2:	2781                	sext.w	a5,a5
    800005a4:	fd843703          	ld	a4,-40(s0)
    800005a8:	078a                	slli	a5,a5,0x2
    800005aa:	97ba                	add	a5,a5,a4
    800005ac:	439c                	lw	a5,0(a5)
    800005ae:	0107d79b          	srliw	a5,a5,0x10
    800005b2:	2781                	sext.w	a5,a5
    800005b4:	0ff7f793          	andi	a5,a5,255
    800005b8:	2781                	sext.w	a5,a5
    800005ba:	00007717          	auipc	a4,0x7
    800005be:	e2e70713          	addi	a4,a4,-466 # 800073e8 <Te4>
    800005c2:	1782                	slli	a5,a5,0x20
    800005c4:	9381                	srli	a5,a5,0x20
    800005c6:	078a                	slli	a5,a5,0x2
    800005c8:	97ba                	add	a5,a5,a4
    800005ca:	439c                	lw	a5,0(a5)
    800005cc:	873e                	mv	a4,a5
    800005ce:	ff0007b7          	lui	a5,0xff000
    800005d2:	8ff9                	and	a5,a5,a4
    800005d4:	2781                	sext.w	a5,a5
    800005d6:	8736                	mv	a4,a3
    800005d8:	8fb9                	xor	a5,a5,a4
    800005da:	0007869b          	sext.w	a3,a5
    800005de:	fef44783          	lbu	a5,-17(s0)
    800005e2:	2781                	sext.w	a5,a5
    800005e4:	37fd                	addiw	a5,a5,-1
    800005e6:	2781                	sext.w	a5,a5
    800005e8:	fd843703          	ld	a4,-40(s0)
    800005ec:	078a                	slli	a5,a5,0x2
    800005ee:	97ba                	add	a5,a5,a4
    800005f0:	439c                	lw	a5,0(a5)
    800005f2:	0087d79b          	srliw	a5,a5,0x8
    800005f6:	2781                	sext.w	a5,a5
    800005f8:	0ff7f793          	andi	a5,a5,255
    800005fc:	2781                	sext.w	a5,a5
    800005fe:	00007717          	auipc	a4,0x7
    80000602:	dea70713          	addi	a4,a4,-534 # 800073e8 <Te4>
    80000606:	1782                	slli	a5,a5,0x20
    80000608:	9381                	srli	a5,a5,0x20
    8000060a:	078a                	slli	a5,a5,0x2
    8000060c:	97ba                	add	a5,a5,a4
    8000060e:	439c                	lw	a5,0(a5)
    80000610:	873e                	mv	a4,a5
    80000612:	00ff07b7          	lui	a5,0xff0
    80000616:	8ff9                	and	a5,a5,a4
    80000618:	2781                	sext.w	a5,a5
    8000061a:	8736                	mv	a4,a3
    8000061c:	8fb9                	xor	a5,a5,a4
    8000061e:	0007869b          	sext.w	a3,a5
    80000622:	fef44783          	lbu	a5,-17(s0)
    80000626:	2781                	sext.w	a5,a5
    80000628:	37fd                	addiw	a5,a5,-1
    8000062a:	2781                	sext.w	a5,a5
    8000062c:	fd843703          	ld	a4,-40(s0)
    80000630:	078a                	slli	a5,a5,0x2
    80000632:	97ba                	add	a5,a5,a4
    80000634:	439c                	lw	a5,0(a5)
    80000636:	0ff7f793          	andi	a5,a5,255
    8000063a:	2781                	sext.w	a5,a5
    8000063c:	00007717          	auipc	a4,0x7
    80000640:	dac70713          	addi	a4,a4,-596 # 800073e8 <Te4>
    80000644:	1782                	slli	a5,a5,0x20
    80000646:	9381                	srli	a5,a5,0x20
    80000648:	078a                	slli	a5,a5,0x2
    8000064a:	97ba                	add	a5,a5,a4
    8000064c:	439c                	lw	a5,0(a5)
    8000064e:	873e                	mv	a4,a5
    80000650:	67c1                	lui	a5,0x10
    80000652:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    80000656:	8ff9                	and	a5,a5,a4
    80000658:	2781                	sext.w	a5,a5
    8000065a:	8736                	mv	a4,a3
    8000065c:	8fb9                	xor	a5,a5,a4
    8000065e:	0007869b          	sext.w	a3,a5
    80000662:	fef44783          	lbu	a5,-17(s0)
    80000666:	2781                	sext.w	a5,a5
    80000668:	37fd                	addiw	a5,a5,-1
    8000066a:	2781                	sext.w	a5,a5
    8000066c:	fd843703          	ld	a4,-40(s0)
    80000670:	078a                	slli	a5,a5,0x2
    80000672:	97ba                	add	a5,a5,a4
    80000674:	439c                	lw	a5,0(a5)
    80000676:	0187d79b          	srliw	a5,a5,0x18
    8000067a:	2781                	sext.w	a5,a5
    8000067c:	00007717          	auipc	a4,0x7
    80000680:	d6c70713          	addi	a4,a4,-660 # 800073e8 <Te4>
    80000684:	1782                	slli	a5,a5,0x20
    80000686:	9381                	srli	a5,a5,0x20
    80000688:	078a                	slli	a5,a5,0x2
    8000068a:	97ba                	add	a5,a5,a4
    8000068c:	439c                	lw	a5,0(a5)
    8000068e:	0ff7f793          	andi	a5,a5,255
    80000692:	2781                	sext.w	a5,a5
    80000694:	8736                	mv	a4,a3
    80000696:	8fb9                	xor	a5,a5,a4
    80000698:	0007869b          	sext.w	a3,a5
    8000069c:	fef44783          	lbu	a5,-17(s0)
    800006a0:	0027d79b          	srliw	a5,a5,0x2
    800006a4:	0ff7f793          	andi	a5,a5,255
    800006a8:	2781                	sext.w	a5,a5
    800006aa:	37fd                	addiw	a5,a5,-1
    800006ac:	2781                	sext.w	a5,a5
    800006ae:	8e818713          	addi	a4,gp,-1816 # 80008be8 <rcon>
    800006b2:	078a                	slli	a5,a5,0x2
    800006b4:	97ba                	add	a5,a5,a4
    800006b6:	4398                	lw	a4,0(a5)
    800006b8:	fef44783          	lbu	a5,-17(s0)
    800006bc:	2781                	sext.w	a5,a5
    800006be:	8f35                	xor	a4,a4,a3
    800006c0:	2701                	sext.w	a4,a4
    800006c2:	fd843683          	ld	a3,-40(s0)
    800006c6:	078a                	slli	a5,a5,0x2
    800006c8:	97b6                	add	a5,a5,a3
    800006ca:	c398                	sw	a4,0(a5)
    800006cc:	fef44783          	lbu	a5,-17(s0)
    800006d0:	2781                	sext.w	a5,a5
    800006d2:	37f5                	addiw	a5,a5,-3
    800006d4:	2781                	sext.w	a5,a5
    800006d6:	fd843703          	ld	a4,-40(s0)
    800006da:	078a                	slli	a5,a5,0x2
    800006dc:	97ba                	add	a5,a5,a4
    800006de:	4394                	lw	a3,0(a5)
    800006e0:	fef44783          	lbu	a5,-17(s0)
    800006e4:	2781                	sext.w	a5,a5
    800006e6:	fd843703          	ld	a4,-40(s0)
    800006ea:	078a                	slli	a5,a5,0x2
    800006ec:	97ba                	add	a5,a5,a4
    800006ee:	4398                	lw	a4,0(a5)
    800006f0:	fef44783          	lbu	a5,-17(s0)
    800006f4:	2781                	sext.w	a5,a5
    800006f6:	2785                	addiw	a5,a5,1
    800006f8:	2781                	sext.w	a5,a5
    800006fa:	8f35                	xor	a4,a4,a3
    800006fc:	2701                	sext.w	a4,a4
    800006fe:	fd843683          	ld	a3,-40(s0)
    80000702:	078a                	slli	a5,a5,0x2
    80000704:	97b6                	add	a5,a5,a3
    80000706:	c398                	sw	a4,0(a5)
    80000708:	fef44783          	lbu	a5,-17(s0)
    8000070c:	2781                	sext.w	a5,a5
    8000070e:	37f9                	addiw	a5,a5,-2
    80000710:	2781                	sext.w	a5,a5
    80000712:	fd843703          	ld	a4,-40(s0)
    80000716:	078a                	slli	a5,a5,0x2
    80000718:	97ba                	add	a5,a5,a4
    8000071a:	4394                	lw	a3,0(a5)
    8000071c:	fef44783          	lbu	a5,-17(s0)
    80000720:	2781                	sext.w	a5,a5
    80000722:	2785                	addiw	a5,a5,1
    80000724:	2781                	sext.w	a5,a5
    80000726:	fd843703          	ld	a4,-40(s0)
    8000072a:	078a                	slli	a5,a5,0x2
    8000072c:	97ba                	add	a5,a5,a4
    8000072e:	4398                	lw	a4,0(a5)
    80000730:	fef44783          	lbu	a5,-17(s0)
    80000734:	2781                	sext.w	a5,a5
    80000736:	2789                	addiw	a5,a5,2
    80000738:	2781                	sext.w	a5,a5
    8000073a:	8f35                	xor	a4,a4,a3
    8000073c:	2701                	sext.w	a4,a4
    8000073e:	fd843683          	ld	a3,-40(s0)
    80000742:	078a                	slli	a5,a5,0x2
    80000744:	97b6                	add	a5,a5,a3
    80000746:	c398                	sw	a4,0(a5)
    80000748:	fef44783          	lbu	a5,-17(s0)
    8000074c:	2781                	sext.w	a5,a5
    8000074e:	37fd                	addiw	a5,a5,-1
    80000750:	2781                	sext.w	a5,a5
    80000752:	fd843703          	ld	a4,-40(s0)
    80000756:	078a                	slli	a5,a5,0x2
    80000758:	97ba                	add	a5,a5,a4
    8000075a:	4394                	lw	a3,0(a5)
    8000075c:	fef44783          	lbu	a5,-17(s0)
    80000760:	2781                	sext.w	a5,a5
    80000762:	2789                	addiw	a5,a5,2
    80000764:	2781                	sext.w	a5,a5
    80000766:	fd843703          	ld	a4,-40(s0)
    8000076a:	078a                	slli	a5,a5,0x2
    8000076c:	97ba                	add	a5,a5,a4
    8000076e:	4398                	lw	a4,0(a5)
    80000770:	fef44783          	lbu	a5,-17(s0)
    80000774:	2781                	sext.w	a5,a5
    80000776:	278d                	addiw	a5,a5,3
    80000778:	2781                	sext.w	a5,a5
    8000077a:	8f35                	xor	a4,a4,a3
    8000077c:	2701                	sext.w	a4,a4
    8000077e:	fd843683          	ld	a3,-40(s0)
    80000782:	078a                	slli	a5,a5,0x2
    80000784:	97b6                	add	a5,a5,a3
    80000786:	c398                	sw	a4,0(a5)
    80000788:	fef44783          	lbu	a5,-17(s0)
    8000078c:	2791                	addiw	a5,a5,4
    8000078e:	fef407a3          	sb	a5,-17(s0)
    80000792:	fef44783          	lbu	a5,-17(s0)
    80000796:	0ff7f713          	andi	a4,a5,255
    8000079a:	02b00793          	li	a5,43
    8000079e:	dee7f4e3          	bleu	a4,a5,80000586 <AES_EncryptInit+0x2fe>
    800007a2:	0001                	nop
    800007a4:	0001                	nop
    800007a6:	7462                	ld	s0,56(sp)
    800007a8:	6121                	addi	sp,sp,64
    800007aa:	8082                	ret

00000000800007ac <AES_DecryptInit>:
    800007ac:	7139                	addi	sp,sp,-64
    800007ae:	fc06                	sd	ra,56(sp)
    800007b0:	f822                	sd	s0,48(sp)
    800007b2:	0080                	addi	s0,sp,64
    800007b4:	fca43c23          	sd	a0,-40(s0)
    800007b8:	fcb43823          	sd	a1,-48(s0)
    800007bc:	fcc43423          	sd	a2,-56(s0)
    800007c0:	fc843603          	ld	a2,-56(s0)
    800007c4:	fd043583          	ld	a1,-48(s0)
    800007c8:	fd843503          	ld	a0,-40(s0)
    800007cc:	abdff0ef          	jal	ra,80000288 <AES_EncryptInit>
    800007d0:	fe0407a3          	sb	zero,-17(s0)
    800007d4:	02800793          	li	a5,40
    800007d8:	fef40723          	sb	a5,-18(s0)
    800007dc:	a07d                	j	8000088a <AES_DecryptInit+0xde>
    800007de:	fe0406a3          	sb	zero,-19(s0)
    800007e2:	a059                	j	80000868 <AES_DecryptInit+0xbc>
    800007e4:	fef44783          	lbu	a5,-17(s0)
    800007e8:	0007871b          	sext.w	a4,a5
    800007ec:	fed44783          	lbu	a5,-19(s0)
    800007f0:	2781                	sext.w	a5,a5
    800007f2:	9fb9                	addw	a5,a5,a4
    800007f4:	2781                	sext.w	a5,a5
    800007f6:	fd843703          	ld	a4,-40(s0)
    800007fa:	078a                	slli	a5,a5,0x2
    800007fc:	97ba                	add	a5,a5,a4
    800007fe:	439c                	lw	a5,0(a5)
    80000800:	fef42423          	sw	a5,-24(s0)
    80000804:	fee44783          	lbu	a5,-18(s0)
    80000808:	0007871b          	sext.w	a4,a5
    8000080c:	fed44783          	lbu	a5,-19(s0)
    80000810:	2781                	sext.w	a5,a5
    80000812:	9fb9                	addw	a5,a5,a4
    80000814:	0007871b          	sext.w	a4,a5
    80000818:	fef44783          	lbu	a5,-17(s0)
    8000081c:	0007869b          	sext.w	a3,a5
    80000820:	fed44783          	lbu	a5,-19(s0)
    80000824:	2781                	sext.w	a5,a5
    80000826:	9fb5                	addw	a5,a5,a3
    80000828:	2781                	sext.w	a5,a5
    8000082a:	fd843683          	ld	a3,-40(s0)
    8000082e:	070a                	slli	a4,a4,0x2
    80000830:	9736                	add	a4,a4,a3
    80000832:	4318                	lw	a4,0(a4)
    80000834:	fd843683          	ld	a3,-40(s0)
    80000838:	078a                	slli	a5,a5,0x2
    8000083a:	97b6                	add	a5,a5,a3
    8000083c:	c398                	sw	a4,0(a5)
    8000083e:	fee44783          	lbu	a5,-18(s0)
    80000842:	0007871b          	sext.w	a4,a5
    80000846:	fed44783          	lbu	a5,-19(s0)
    8000084a:	2781                	sext.w	a5,a5
    8000084c:	9fb9                	addw	a5,a5,a4
    8000084e:	2781                	sext.w	a5,a5
    80000850:	fd843703          	ld	a4,-40(s0)
    80000854:	078a                	slli	a5,a5,0x2
    80000856:	97ba                	add	a5,a5,a4
    80000858:	fe842703          	lw	a4,-24(s0)
    8000085c:	c398                	sw	a4,0(a5)
    8000085e:	fed44783          	lbu	a5,-19(s0)
    80000862:	2785                	addiw	a5,a5,1
    80000864:	fef406a3          	sb	a5,-19(s0)
    80000868:	fed44783          	lbu	a5,-19(s0)
    8000086c:	0ff7f713          	andi	a4,a5,255
    80000870:	478d                	li	a5,3
    80000872:	f6e7f9e3          	bleu	a4,a5,800007e4 <AES_DecryptInit+0x38>
    80000876:	fef44783          	lbu	a5,-17(s0)
    8000087a:	2791                	addiw	a5,a5,4
    8000087c:	fef407a3          	sb	a5,-17(s0)
    80000880:	fee44783          	lbu	a5,-18(s0)
    80000884:	37f1                	addiw	a5,a5,-4
    80000886:	fef40723          	sb	a5,-18(s0)
    8000088a:	fef44783          	lbu	a5,-17(s0)
    8000088e:	873e                	mv	a4,a5
    80000890:	fee44783          	lbu	a5,-18(s0)
    80000894:	0ff77713          	andi	a4,a4,255
    80000898:	0ff7f793          	andi	a5,a5,255
    8000089c:	f4f761e3          	bltu	a4,a5,800007de <AES_DecryptInit+0x32>
    800008a0:	4791                	li	a5,4
    800008a2:	fef40623          	sb	a5,-20(s0)
    800008a6:	a321                	j	80000dae <AES_DecryptInit+0x602>
    800008a8:	fec44783          	lbu	a5,-20(s0)
    800008ac:	2781                	sext.w	a5,a5
    800008ae:	fd843703          	ld	a4,-40(s0)
    800008b2:	078a                	slli	a5,a5,0x2
    800008b4:	97ba                	add	a5,a5,a4
    800008b6:	439c                	lw	a5,0(a5)
    800008b8:	0187d79b          	srliw	a5,a5,0x18
    800008bc:	2781                	sext.w	a5,a5
    800008be:	00007717          	auipc	a4,0x7
    800008c2:	b2a70713          	addi	a4,a4,-1238 # 800073e8 <Te4>
    800008c6:	1782                	slli	a5,a5,0x20
    800008c8:	9381                	srli	a5,a5,0x20
    800008ca:	078a                	slli	a5,a5,0x2
    800008cc:	97ba                	add	a5,a5,a4
    800008ce:	439c                	lw	a5,0(a5)
    800008d0:	0ff7f793          	andi	a5,a5,255
    800008d4:	2781                	sext.w	a5,a5
    800008d6:	00007717          	auipc	a4,0x7
    800008da:	f1270713          	addi	a4,a4,-238 # 800077e8 <Td0>
    800008de:	1782                	slli	a5,a5,0x20
    800008e0:	9381                	srli	a5,a5,0x20
    800008e2:	078a                	slli	a5,a5,0x2
    800008e4:	97ba                	add	a5,a5,a4
    800008e6:	4394                	lw	a3,0(a5)
    800008e8:	fec44783          	lbu	a5,-20(s0)
    800008ec:	2781                	sext.w	a5,a5
    800008ee:	fd843703          	ld	a4,-40(s0)
    800008f2:	078a                	slli	a5,a5,0x2
    800008f4:	97ba                	add	a5,a5,a4
    800008f6:	439c                	lw	a5,0(a5)
    800008f8:	0107d79b          	srliw	a5,a5,0x10
    800008fc:	2781                	sext.w	a5,a5
    800008fe:	0ff7f793          	andi	a5,a5,255
    80000902:	2781                	sext.w	a5,a5
    80000904:	00007717          	auipc	a4,0x7
    80000908:	ae470713          	addi	a4,a4,-1308 # 800073e8 <Te4>
    8000090c:	1782                	slli	a5,a5,0x20
    8000090e:	9381                	srli	a5,a5,0x20
    80000910:	078a                	slli	a5,a5,0x2
    80000912:	97ba                	add	a5,a5,a4
    80000914:	439c                	lw	a5,0(a5)
    80000916:	0ff7f793          	andi	a5,a5,255
    8000091a:	2781                	sext.w	a5,a5
    8000091c:	00007717          	auipc	a4,0x7
    80000920:	2cc70713          	addi	a4,a4,716 # 80007be8 <Td1>
    80000924:	1782                	slli	a5,a5,0x20
    80000926:	9381                	srli	a5,a5,0x20
    80000928:	078a                	slli	a5,a5,0x2
    8000092a:	97ba                	add	a5,a5,a4
    8000092c:	439c                	lw	a5,0(a5)
    8000092e:	8736                	mv	a4,a3
    80000930:	8fb9                	xor	a5,a5,a4
    80000932:	0007869b          	sext.w	a3,a5
    80000936:	fec44783          	lbu	a5,-20(s0)
    8000093a:	2781                	sext.w	a5,a5
    8000093c:	fd843703          	ld	a4,-40(s0)
    80000940:	078a                	slli	a5,a5,0x2
    80000942:	97ba                	add	a5,a5,a4
    80000944:	439c                	lw	a5,0(a5)
    80000946:	0087d79b          	srliw	a5,a5,0x8
    8000094a:	2781                	sext.w	a5,a5
    8000094c:	0ff7f793          	andi	a5,a5,255
    80000950:	2781                	sext.w	a5,a5
    80000952:	00007717          	auipc	a4,0x7
    80000956:	a9670713          	addi	a4,a4,-1386 # 800073e8 <Te4>
    8000095a:	1782                	slli	a5,a5,0x20
    8000095c:	9381                	srli	a5,a5,0x20
    8000095e:	078a                	slli	a5,a5,0x2
    80000960:	97ba                	add	a5,a5,a4
    80000962:	439c                	lw	a5,0(a5)
    80000964:	0ff7f793          	andi	a5,a5,255
    80000968:	2781                	sext.w	a5,a5
    8000096a:	00007717          	auipc	a4,0x7
    8000096e:	67e70713          	addi	a4,a4,1662 # 80007fe8 <Td2>
    80000972:	1782                	slli	a5,a5,0x20
    80000974:	9381                	srli	a5,a5,0x20
    80000976:	078a                	slli	a5,a5,0x2
    80000978:	97ba                	add	a5,a5,a4
    8000097a:	439c                	lw	a5,0(a5)
    8000097c:	8736                	mv	a4,a3
    8000097e:	8fb9                	xor	a5,a5,a4
    80000980:	0007869b          	sext.w	a3,a5
    80000984:	fec44783          	lbu	a5,-20(s0)
    80000988:	2781                	sext.w	a5,a5
    8000098a:	fd843703          	ld	a4,-40(s0)
    8000098e:	078a                	slli	a5,a5,0x2
    80000990:	97ba                	add	a5,a5,a4
    80000992:	439c                	lw	a5,0(a5)
    80000994:	0ff7f793          	andi	a5,a5,255
    80000998:	2781                	sext.w	a5,a5
    8000099a:	00007717          	auipc	a4,0x7
    8000099e:	a4e70713          	addi	a4,a4,-1458 # 800073e8 <Te4>
    800009a2:	1782                	slli	a5,a5,0x20
    800009a4:	9381                	srli	a5,a5,0x20
    800009a6:	078a                	slli	a5,a5,0x2
    800009a8:	97ba                	add	a5,a5,a4
    800009aa:	439c                	lw	a5,0(a5)
    800009ac:	0ff7f793          	andi	a5,a5,255
    800009b0:	2781                	sext.w	a5,a5
    800009b2:	00008717          	auipc	a4,0x8
    800009b6:	a3670713          	addi	a4,a4,-1482 # 800083e8 <Td3>
    800009ba:	1782                	slli	a5,a5,0x20
    800009bc:	9381                	srli	a5,a5,0x20
    800009be:	078a                	slli	a5,a5,0x2
    800009c0:	97ba                	add	a5,a5,a4
    800009c2:	4398                	lw	a4,0(a5)
    800009c4:	fec44783          	lbu	a5,-20(s0)
    800009c8:	2781                	sext.w	a5,a5
    800009ca:	8f35                	xor	a4,a4,a3
    800009cc:	2701                	sext.w	a4,a4
    800009ce:	fd843683          	ld	a3,-40(s0)
    800009d2:	078a                	slli	a5,a5,0x2
    800009d4:	97b6                	add	a5,a5,a3
    800009d6:	c398                	sw	a4,0(a5)
    800009d8:	fec44783          	lbu	a5,-20(s0)
    800009dc:	2781                	sext.w	a5,a5
    800009de:	2785                	addiw	a5,a5,1
    800009e0:	2781                	sext.w	a5,a5
    800009e2:	fd843703          	ld	a4,-40(s0)
    800009e6:	078a                	slli	a5,a5,0x2
    800009e8:	97ba                	add	a5,a5,a4
    800009ea:	439c                	lw	a5,0(a5)
    800009ec:	0187d79b          	srliw	a5,a5,0x18
    800009f0:	2781                	sext.w	a5,a5
    800009f2:	00007717          	auipc	a4,0x7
    800009f6:	9f670713          	addi	a4,a4,-1546 # 800073e8 <Te4>
    800009fa:	1782                	slli	a5,a5,0x20
    800009fc:	9381                	srli	a5,a5,0x20
    800009fe:	078a                	slli	a5,a5,0x2
    80000a00:	97ba                	add	a5,a5,a4
    80000a02:	439c                	lw	a5,0(a5)
    80000a04:	0ff7f793          	andi	a5,a5,255
    80000a08:	2781                	sext.w	a5,a5
    80000a0a:	00007717          	auipc	a4,0x7
    80000a0e:	dde70713          	addi	a4,a4,-546 # 800077e8 <Td0>
    80000a12:	1782                	slli	a5,a5,0x20
    80000a14:	9381                	srli	a5,a5,0x20
    80000a16:	078a                	slli	a5,a5,0x2
    80000a18:	97ba                	add	a5,a5,a4
    80000a1a:	4394                	lw	a3,0(a5)
    80000a1c:	fec44783          	lbu	a5,-20(s0)
    80000a20:	2781                	sext.w	a5,a5
    80000a22:	2785                	addiw	a5,a5,1
    80000a24:	2781                	sext.w	a5,a5
    80000a26:	fd843703          	ld	a4,-40(s0)
    80000a2a:	078a                	slli	a5,a5,0x2
    80000a2c:	97ba                	add	a5,a5,a4
    80000a2e:	439c                	lw	a5,0(a5)
    80000a30:	0107d79b          	srliw	a5,a5,0x10
    80000a34:	2781                	sext.w	a5,a5
    80000a36:	0ff7f793          	andi	a5,a5,255
    80000a3a:	2781                	sext.w	a5,a5
    80000a3c:	00007717          	auipc	a4,0x7
    80000a40:	9ac70713          	addi	a4,a4,-1620 # 800073e8 <Te4>
    80000a44:	1782                	slli	a5,a5,0x20
    80000a46:	9381                	srli	a5,a5,0x20
    80000a48:	078a                	slli	a5,a5,0x2
    80000a4a:	97ba                	add	a5,a5,a4
    80000a4c:	439c                	lw	a5,0(a5)
    80000a4e:	0ff7f793          	andi	a5,a5,255
    80000a52:	2781                	sext.w	a5,a5
    80000a54:	00007717          	auipc	a4,0x7
    80000a58:	19470713          	addi	a4,a4,404 # 80007be8 <Td1>
    80000a5c:	1782                	slli	a5,a5,0x20
    80000a5e:	9381                	srli	a5,a5,0x20
    80000a60:	078a                	slli	a5,a5,0x2
    80000a62:	97ba                	add	a5,a5,a4
    80000a64:	439c                	lw	a5,0(a5)
    80000a66:	8736                	mv	a4,a3
    80000a68:	8fb9                	xor	a5,a5,a4
    80000a6a:	0007869b          	sext.w	a3,a5
    80000a6e:	fec44783          	lbu	a5,-20(s0)
    80000a72:	2781                	sext.w	a5,a5
    80000a74:	2785                	addiw	a5,a5,1
    80000a76:	2781                	sext.w	a5,a5
    80000a78:	fd843703          	ld	a4,-40(s0)
    80000a7c:	078a                	slli	a5,a5,0x2
    80000a7e:	97ba                	add	a5,a5,a4
    80000a80:	439c                	lw	a5,0(a5)
    80000a82:	0087d79b          	srliw	a5,a5,0x8
    80000a86:	2781                	sext.w	a5,a5
    80000a88:	0ff7f793          	andi	a5,a5,255
    80000a8c:	2781                	sext.w	a5,a5
    80000a8e:	00007717          	auipc	a4,0x7
    80000a92:	95a70713          	addi	a4,a4,-1702 # 800073e8 <Te4>
    80000a96:	1782                	slli	a5,a5,0x20
    80000a98:	9381                	srli	a5,a5,0x20
    80000a9a:	078a                	slli	a5,a5,0x2
    80000a9c:	97ba                	add	a5,a5,a4
    80000a9e:	439c                	lw	a5,0(a5)
    80000aa0:	0ff7f793          	andi	a5,a5,255
    80000aa4:	2781                	sext.w	a5,a5
    80000aa6:	00007717          	auipc	a4,0x7
    80000aaa:	54270713          	addi	a4,a4,1346 # 80007fe8 <Td2>
    80000aae:	1782                	slli	a5,a5,0x20
    80000ab0:	9381                	srli	a5,a5,0x20
    80000ab2:	078a                	slli	a5,a5,0x2
    80000ab4:	97ba                	add	a5,a5,a4
    80000ab6:	439c                	lw	a5,0(a5)
    80000ab8:	8736                	mv	a4,a3
    80000aba:	8fb9                	xor	a5,a5,a4
    80000abc:	0007869b          	sext.w	a3,a5
    80000ac0:	fec44783          	lbu	a5,-20(s0)
    80000ac4:	2781                	sext.w	a5,a5
    80000ac6:	2785                	addiw	a5,a5,1
    80000ac8:	2781                	sext.w	a5,a5
    80000aca:	fd843703          	ld	a4,-40(s0)
    80000ace:	078a                	slli	a5,a5,0x2
    80000ad0:	97ba                	add	a5,a5,a4
    80000ad2:	439c                	lw	a5,0(a5)
    80000ad4:	0ff7f793          	andi	a5,a5,255
    80000ad8:	2781                	sext.w	a5,a5
    80000ada:	00007717          	auipc	a4,0x7
    80000ade:	90e70713          	addi	a4,a4,-1778 # 800073e8 <Te4>
    80000ae2:	1782                	slli	a5,a5,0x20
    80000ae4:	9381                	srli	a5,a5,0x20
    80000ae6:	078a                	slli	a5,a5,0x2
    80000ae8:	97ba                	add	a5,a5,a4
    80000aea:	439c                	lw	a5,0(a5)
    80000aec:	0ff7f793          	andi	a5,a5,255
    80000af0:	2781                	sext.w	a5,a5
    80000af2:	00008717          	auipc	a4,0x8
    80000af6:	8f670713          	addi	a4,a4,-1802 # 800083e8 <Td3>
    80000afa:	1782                	slli	a5,a5,0x20
    80000afc:	9381                	srli	a5,a5,0x20
    80000afe:	078a                	slli	a5,a5,0x2
    80000b00:	97ba                	add	a5,a5,a4
    80000b02:	4398                	lw	a4,0(a5)
    80000b04:	fec44783          	lbu	a5,-20(s0)
    80000b08:	2781                	sext.w	a5,a5
    80000b0a:	2785                	addiw	a5,a5,1
    80000b0c:	2781                	sext.w	a5,a5
    80000b0e:	8f35                	xor	a4,a4,a3
    80000b10:	2701                	sext.w	a4,a4
    80000b12:	fd843683          	ld	a3,-40(s0)
    80000b16:	078a                	slli	a5,a5,0x2
    80000b18:	97b6                	add	a5,a5,a3
    80000b1a:	c398                	sw	a4,0(a5)
    80000b1c:	fec44783          	lbu	a5,-20(s0)
    80000b20:	2781                	sext.w	a5,a5
    80000b22:	2789                	addiw	a5,a5,2
    80000b24:	2781                	sext.w	a5,a5
    80000b26:	fd843703          	ld	a4,-40(s0)
    80000b2a:	078a                	slli	a5,a5,0x2
    80000b2c:	97ba                	add	a5,a5,a4
    80000b2e:	439c                	lw	a5,0(a5)
    80000b30:	0187d79b          	srliw	a5,a5,0x18
    80000b34:	2781                	sext.w	a5,a5
    80000b36:	00007717          	auipc	a4,0x7
    80000b3a:	8b270713          	addi	a4,a4,-1870 # 800073e8 <Te4>
    80000b3e:	1782                	slli	a5,a5,0x20
    80000b40:	9381                	srli	a5,a5,0x20
    80000b42:	078a                	slli	a5,a5,0x2
    80000b44:	97ba                	add	a5,a5,a4
    80000b46:	439c                	lw	a5,0(a5)
    80000b48:	0ff7f793          	andi	a5,a5,255
    80000b4c:	2781                	sext.w	a5,a5
    80000b4e:	00007717          	auipc	a4,0x7
    80000b52:	c9a70713          	addi	a4,a4,-870 # 800077e8 <Td0>
    80000b56:	1782                	slli	a5,a5,0x20
    80000b58:	9381                	srli	a5,a5,0x20
    80000b5a:	078a                	slli	a5,a5,0x2
    80000b5c:	97ba                	add	a5,a5,a4
    80000b5e:	4394                	lw	a3,0(a5)
    80000b60:	fec44783          	lbu	a5,-20(s0)
    80000b64:	2781                	sext.w	a5,a5
    80000b66:	2789                	addiw	a5,a5,2
    80000b68:	2781                	sext.w	a5,a5
    80000b6a:	fd843703          	ld	a4,-40(s0)
    80000b6e:	078a                	slli	a5,a5,0x2
    80000b70:	97ba                	add	a5,a5,a4
    80000b72:	439c                	lw	a5,0(a5)
    80000b74:	0107d79b          	srliw	a5,a5,0x10
    80000b78:	2781                	sext.w	a5,a5
    80000b7a:	0ff7f793          	andi	a5,a5,255
    80000b7e:	2781                	sext.w	a5,a5
    80000b80:	00007717          	auipc	a4,0x7
    80000b84:	86870713          	addi	a4,a4,-1944 # 800073e8 <Te4>
    80000b88:	1782                	slli	a5,a5,0x20
    80000b8a:	9381                	srli	a5,a5,0x20
    80000b8c:	078a                	slli	a5,a5,0x2
    80000b8e:	97ba                	add	a5,a5,a4
    80000b90:	439c                	lw	a5,0(a5)
    80000b92:	0ff7f793          	andi	a5,a5,255
    80000b96:	2781                	sext.w	a5,a5
    80000b98:	00007717          	auipc	a4,0x7
    80000b9c:	05070713          	addi	a4,a4,80 # 80007be8 <Td1>
    80000ba0:	1782                	slli	a5,a5,0x20
    80000ba2:	9381                	srli	a5,a5,0x20
    80000ba4:	078a                	slli	a5,a5,0x2
    80000ba6:	97ba                	add	a5,a5,a4
    80000ba8:	439c                	lw	a5,0(a5)
    80000baa:	8736                	mv	a4,a3
    80000bac:	8fb9                	xor	a5,a5,a4
    80000bae:	0007869b          	sext.w	a3,a5
    80000bb2:	fec44783          	lbu	a5,-20(s0)
    80000bb6:	2781                	sext.w	a5,a5
    80000bb8:	2789                	addiw	a5,a5,2
    80000bba:	2781                	sext.w	a5,a5
    80000bbc:	fd843703          	ld	a4,-40(s0)
    80000bc0:	078a                	slli	a5,a5,0x2
    80000bc2:	97ba                	add	a5,a5,a4
    80000bc4:	439c                	lw	a5,0(a5)
    80000bc6:	0087d79b          	srliw	a5,a5,0x8
    80000bca:	2781                	sext.w	a5,a5
    80000bcc:	0ff7f793          	andi	a5,a5,255
    80000bd0:	2781                	sext.w	a5,a5
    80000bd2:	00007717          	auipc	a4,0x7
    80000bd6:	81670713          	addi	a4,a4,-2026 # 800073e8 <Te4>
    80000bda:	1782                	slli	a5,a5,0x20
    80000bdc:	9381                	srli	a5,a5,0x20
    80000bde:	078a                	slli	a5,a5,0x2
    80000be0:	97ba                	add	a5,a5,a4
    80000be2:	439c                	lw	a5,0(a5)
    80000be4:	0ff7f793          	andi	a5,a5,255
    80000be8:	2781                	sext.w	a5,a5
    80000bea:	00007717          	auipc	a4,0x7
    80000bee:	3fe70713          	addi	a4,a4,1022 # 80007fe8 <Td2>
    80000bf2:	1782                	slli	a5,a5,0x20
    80000bf4:	9381                	srli	a5,a5,0x20
    80000bf6:	078a                	slli	a5,a5,0x2
    80000bf8:	97ba                	add	a5,a5,a4
    80000bfa:	439c                	lw	a5,0(a5)
    80000bfc:	8736                	mv	a4,a3
    80000bfe:	8fb9                	xor	a5,a5,a4
    80000c00:	0007869b          	sext.w	a3,a5
    80000c04:	fec44783          	lbu	a5,-20(s0)
    80000c08:	2781                	sext.w	a5,a5
    80000c0a:	2789                	addiw	a5,a5,2
    80000c0c:	2781                	sext.w	a5,a5
    80000c0e:	fd843703          	ld	a4,-40(s0)
    80000c12:	078a                	slli	a5,a5,0x2
    80000c14:	97ba                	add	a5,a5,a4
    80000c16:	439c                	lw	a5,0(a5)
    80000c18:	0ff7f793          	andi	a5,a5,255
    80000c1c:	2781                	sext.w	a5,a5
    80000c1e:	00006717          	auipc	a4,0x6
    80000c22:	7ca70713          	addi	a4,a4,1994 # 800073e8 <Te4>
    80000c26:	1782                	slli	a5,a5,0x20
    80000c28:	9381                	srli	a5,a5,0x20
    80000c2a:	078a                	slli	a5,a5,0x2
    80000c2c:	97ba                	add	a5,a5,a4
    80000c2e:	439c                	lw	a5,0(a5)
    80000c30:	0ff7f793          	andi	a5,a5,255
    80000c34:	2781                	sext.w	a5,a5
    80000c36:	00007717          	auipc	a4,0x7
    80000c3a:	7b270713          	addi	a4,a4,1970 # 800083e8 <Td3>
    80000c3e:	1782                	slli	a5,a5,0x20
    80000c40:	9381                	srli	a5,a5,0x20
    80000c42:	078a                	slli	a5,a5,0x2
    80000c44:	97ba                	add	a5,a5,a4
    80000c46:	4398                	lw	a4,0(a5)
    80000c48:	fec44783          	lbu	a5,-20(s0)
    80000c4c:	2781                	sext.w	a5,a5
    80000c4e:	2789                	addiw	a5,a5,2
    80000c50:	2781                	sext.w	a5,a5
    80000c52:	8f35                	xor	a4,a4,a3
    80000c54:	2701                	sext.w	a4,a4
    80000c56:	fd843683          	ld	a3,-40(s0)
    80000c5a:	078a                	slli	a5,a5,0x2
    80000c5c:	97b6                	add	a5,a5,a3
    80000c5e:	c398                	sw	a4,0(a5)
    80000c60:	fec44783          	lbu	a5,-20(s0)
    80000c64:	2781                	sext.w	a5,a5
    80000c66:	278d                	addiw	a5,a5,3
    80000c68:	2781                	sext.w	a5,a5
    80000c6a:	fd843703          	ld	a4,-40(s0)
    80000c6e:	078a                	slli	a5,a5,0x2
    80000c70:	97ba                	add	a5,a5,a4
    80000c72:	439c                	lw	a5,0(a5)
    80000c74:	0187d79b          	srliw	a5,a5,0x18
    80000c78:	2781                	sext.w	a5,a5
    80000c7a:	00006717          	auipc	a4,0x6
    80000c7e:	76e70713          	addi	a4,a4,1902 # 800073e8 <Te4>
    80000c82:	1782                	slli	a5,a5,0x20
    80000c84:	9381                	srli	a5,a5,0x20
    80000c86:	078a                	slli	a5,a5,0x2
    80000c88:	97ba                	add	a5,a5,a4
    80000c8a:	439c                	lw	a5,0(a5)
    80000c8c:	0ff7f793          	andi	a5,a5,255
    80000c90:	2781                	sext.w	a5,a5
    80000c92:	00007717          	auipc	a4,0x7
    80000c96:	b5670713          	addi	a4,a4,-1194 # 800077e8 <Td0>
    80000c9a:	1782                	slli	a5,a5,0x20
    80000c9c:	9381                	srli	a5,a5,0x20
    80000c9e:	078a                	slli	a5,a5,0x2
    80000ca0:	97ba                	add	a5,a5,a4
    80000ca2:	4394                	lw	a3,0(a5)
    80000ca4:	fec44783          	lbu	a5,-20(s0)
    80000ca8:	2781                	sext.w	a5,a5
    80000caa:	278d                	addiw	a5,a5,3
    80000cac:	2781                	sext.w	a5,a5
    80000cae:	fd843703          	ld	a4,-40(s0)
    80000cb2:	078a                	slli	a5,a5,0x2
    80000cb4:	97ba                	add	a5,a5,a4
    80000cb6:	439c                	lw	a5,0(a5)
    80000cb8:	0107d79b          	srliw	a5,a5,0x10
    80000cbc:	2781                	sext.w	a5,a5
    80000cbe:	0ff7f793          	andi	a5,a5,255
    80000cc2:	2781                	sext.w	a5,a5
    80000cc4:	00006717          	auipc	a4,0x6
    80000cc8:	72470713          	addi	a4,a4,1828 # 800073e8 <Te4>
    80000ccc:	1782                	slli	a5,a5,0x20
    80000cce:	9381                	srli	a5,a5,0x20
    80000cd0:	078a                	slli	a5,a5,0x2
    80000cd2:	97ba                	add	a5,a5,a4
    80000cd4:	439c                	lw	a5,0(a5)
    80000cd6:	0ff7f793          	andi	a5,a5,255
    80000cda:	2781                	sext.w	a5,a5
    80000cdc:	00007717          	auipc	a4,0x7
    80000ce0:	f0c70713          	addi	a4,a4,-244 # 80007be8 <Td1>
    80000ce4:	1782                	slli	a5,a5,0x20
    80000ce6:	9381                	srli	a5,a5,0x20
    80000ce8:	078a                	slli	a5,a5,0x2
    80000cea:	97ba                	add	a5,a5,a4
    80000cec:	439c                	lw	a5,0(a5)
    80000cee:	8736                	mv	a4,a3
    80000cf0:	8fb9                	xor	a5,a5,a4
    80000cf2:	0007869b          	sext.w	a3,a5
    80000cf6:	fec44783          	lbu	a5,-20(s0)
    80000cfa:	2781                	sext.w	a5,a5
    80000cfc:	278d                	addiw	a5,a5,3
    80000cfe:	2781                	sext.w	a5,a5
    80000d00:	fd843703          	ld	a4,-40(s0)
    80000d04:	078a                	slli	a5,a5,0x2
    80000d06:	97ba                	add	a5,a5,a4
    80000d08:	439c                	lw	a5,0(a5)
    80000d0a:	0087d79b          	srliw	a5,a5,0x8
    80000d0e:	2781                	sext.w	a5,a5
    80000d10:	0ff7f793          	andi	a5,a5,255
    80000d14:	2781                	sext.w	a5,a5
    80000d16:	00006717          	auipc	a4,0x6
    80000d1a:	6d270713          	addi	a4,a4,1746 # 800073e8 <Te4>
    80000d1e:	1782                	slli	a5,a5,0x20
    80000d20:	9381                	srli	a5,a5,0x20
    80000d22:	078a                	slli	a5,a5,0x2
    80000d24:	97ba                	add	a5,a5,a4
    80000d26:	439c                	lw	a5,0(a5)
    80000d28:	0ff7f793          	andi	a5,a5,255
    80000d2c:	2781                	sext.w	a5,a5
    80000d2e:	00007717          	auipc	a4,0x7
    80000d32:	2ba70713          	addi	a4,a4,698 # 80007fe8 <Td2>
    80000d36:	1782                	slli	a5,a5,0x20
    80000d38:	9381                	srli	a5,a5,0x20
    80000d3a:	078a                	slli	a5,a5,0x2
    80000d3c:	97ba                	add	a5,a5,a4
    80000d3e:	439c                	lw	a5,0(a5)
    80000d40:	8736                	mv	a4,a3
    80000d42:	8fb9                	xor	a5,a5,a4
    80000d44:	0007869b          	sext.w	a3,a5
    80000d48:	fec44783          	lbu	a5,-20(s0)
    80000d4c:	2781                	sext.w	a5,a5
    80000d4e:	278d                	addiw	a5,a5,3
    80000d50:	2781                	sext.w	a5,a5
    80000d52:	fd843703          	ld	a4,-40(s0)
    80000d56:	078a                	slli	a5,a5,0x2
    80000d58:	97ba                	add	a5,a5,a4
    80000d5a:	439c                	lw	a5,0(a5)
    80000d5c:	0ff7f793          	andi	a5,a5,255
    80000d60:	2781                	sext.w	a5,a5
    80000d62:	00006717          	auipc	a4,0x6
    80000d66:	68670713          	addi	a4,a4,1670 # 800073e8 <Te4>
    80000d6a:	1782                	slli	a5,a5,0x20
    80000d6c:	9381                	srli	a5,a5,0x20
    80000d6e:	078a                	slli	a5,a5,0x2
    80000d70:	97ba                	add	a5,a5,a4
    80000d72:	439c                	lw	a5,0(a5)
    80000d74:	0ff7f793          	andi	a5,a5,255
    80000d78:	2781                	sext.w	a5,a5
    80000d7a:	00007717          	auipc	a4,0x7
    80000d7e:	66e70713          	addi	a4,a4,1646 # 800083e8 <Td3>
    80000d82:	1782                	slli	a5,a5,0x20
    80000d84:	9381                	srli	a5,a5,0x20
    80000d86:	078a                	slli	a5,a5,0x2
    80000d88:	97ba                	add	a5,a5,a4
    80000d8a:	4398                	lw	a4,0(a5)
    80000d8c:	fec44783          	lbu	a5,-20(s0)
    80000d90:	2781                	sext.w	a5,a5
    80000d92:	278d                	addiw	a5,a5,3
    80000d94:	2781                	sext.w	a5,a5
    80000d96:	8f35                	xor	a4,a4,a3
    80000d98:	2701                	sext.w	a4,a4
    80000d9a:	fd843683          	ld	a3,-40(s0)
    80000d9e:	078a                	slli	a5,a5,0x2
    80000da0:	97b6                	add	a5,a5,a3
    80000da2:	c398                	sw	a4,0(a5)
    80000da4:	fec44783          	lbu	a5,-20(s0)
    80000da8:	2791                	addiw	a5,a5,4
    80000daa:	fef40623          	sb	a5,-20(s0)
    80000dae:	fec44783          	lbu	a5,-20(s0)
    80000db2:	0ff7f713          	andi	a4,a5,255
    80000db6:	02700793          	li	a5,39
    80000dba:	aee7f7e3          	bleu	a4,a5,800008a8 <AES_DecryptInit+0xfc>
    80000dbe:	0001                	nop
    80000dc0:	0001                	nop
    80000dc2:	70e2                	ld	ra,56(sp)
    80000dc4:	7442                	ld	s0,48(sp)
    80000dc6:	6121                	addi	sp,sp,64
    80000dc8:	8082                	ret

0000000080000dca <AES_Encrypt>:
    80000dca:	715d                	addi	sp,sp,-80
    80000dcc:	e4a2                	sd	s0,72(sp)
    80000dce:	0880                	addi	s0,sp,80
    80000dd0:	fca43423          	sd	a0,-56(s0)
    80000dd4:	fcb43023          	sd	a1,-64(s0)
    80000dd8:	fac43c23          	sd	a2,-72(s0)
    80000ddc:	fc043783          	ld	a5,-64(s0)
    80000de0:	0007c783          	lbu	a5,0(a5)
    80000de4:	2781                	sext.w	a5,a5
    80000de6:	0187979b          	slliw	a5,a5,0x18
    80000dea:	0007871b          	sext.w	a4,a5
    80000dee:	fc043783          	ld	a5,-64(s0)
    80000df2:	0785                	addi	a5,a5,1
    80000df4:	0007c783          	lbu	a5,0(a5)
    80000df8:	2781                	sext.w	a5,a5
    80000dfa:	0107979b          	slliw	a5,a5,0x10
    80000dfe:	2781                	sext.w	a5,a5
    80000e00:	8fb9                	xor	a5,a5,a4
    80000e02:	0007871b          	sext.w	a4,a5
    80000e06:	fc043783          	ld	a5,-64(s0)
    80000e0a:	0789                	addi	a5,a5,2
    80000e0c:	0007c783          	lbu	a5,0(a5)
    80000e10:	2781                	sext.w	a5,a5
    80000e12:	0087979b          	slliw	a5,a5,0x8
    80000e16:	2781                	sext.w	a5,a5
    80000e18:	8fb9                	xor	a5,a5,a4
    80000e1a:	0007871b          	sext.w	a4,a5
    80000e1e:	fc043783          	ld	a5,-64(s0)
    80000e22:	078d                	addi	a5,a5,3
    80000e24:	0007c783          	lbu	a5,0(a5)
    80000e28:	2781                	sext.w	a5,a5
    80000e2a:	8fb9                	xor	a5,a5,a4
    80000e2c:	0007871b          	sext.w	a4,a5
    80000e30:	fc843783          	ld	a5,-56(s0)
    80000e34:	0b07a783          	lw	a5,176(a5)
    80000e38:	8fb9                	xor	a5,a5,a4
    80000e3a:	0007871b          	sext.w	a4,a5
    80000e3e:	fc843783          	ld	a5,-56(s0)
    80000e42:	439c                	lw	a5,0(a5)
    80000e44:	8fb9                	xor	a5,a5,a4
    80000e46:	fef42623          	sw	a5,-20(s0)
    80000e4a:	fc043783          	ld	a5,-64(s0)
    80000e4e:	0791                	addi	a5,a5,4
    80000e50:	0007c783          	lbu	a5,0(a5)
    80000e54:	2781                	sext.w	a5,a5
    80000e56:	0187979b          	slliw	a5,a5,0x18
    80000e5a:	0007871b          	sext.w	a4,a5
    80000e5e:	fc043783          	ld	a5,-64(s0)
    80000e62:	0795                	addi	a5,a5,5
    80000e64:	0007c783          	lbu	a5,0(a5)
    80000e68:	2781                	sext.w	a5,a5
    80000e6a:	0107979b          	slliw	a5,a5,0x10
    80000e6e:	2781                	sext.w	a5,a5
    80000e70:	8fb9                	xor	a5,a5,a4
    80000e72:	0007871b          	sext.w	a4,a5
    80000e76:	fc043783          	ld	a5,-64(s0)
    80000e7a:	0799                	addi	a5,a5,6
    80000e7c:	0007c783          	lbu	a5,0(a5)
    80000e80:	2781                	sext.w	a5,a5
    80000e82:	0087979b          	slliw	a5,a5,0x8
    80000e86:	2781                	sext.w	a5,a5
    80000e88:	8fb9                	xor	a5,a5,a4
    80000e8a:	0007871b          	sext.w	a4,a5
    80000e8e:	fc043783          	ld	a5,-64(s0)
    80000e92:	079d                	addi	a5,a5,7
    80000e94:	0007c783          	lbu	a5,0(a5)
    80000e98:	2781                	sext.w	a5,a5
    80000e9a:	8fb9                	xor	a5,a5,a4
    80000e9c:	0007871b          	sext.w	a4,a5
    80000ea0:	fc843783          	ld	a5,-56(s0)
    80000ea4:	0b47a783          	lw	a5,180(a5)
    80000ea8:	8fb9                	xor	a5,a5,a4
    80000eaa:	0007871b          	sext.w	a4,a5
    80000eae:	fc843783          	ld	a5,-56(s0)
    80000eb2:	43dc                	lw	a5,4(a5)
    80000eb4:	8fb9                	xor	a5,a5,a4
    80000eb6:	fef42423          	sw	a5,-24(s0)
    80000eba:	fc043783          	ld	a5,-64(s0)
    80000ebe:	07a1                	addi	a5,a5,8
    80000ec0:	0007c783          	lbu	a5,0(a5)
    80000ec4:	2781                	sext.w	a5,a5
    80000ec6:	0187979b          	slliw	a5,a5,0x18
    80000eca:	0007871b          	sext.w	a4,a5
    80000ece:	fc043783          	ld	a5,-64(s0)
    80000ed2:	07a5                	addi	a5,a5,9
    80000ed4:	0007c783          	lbu	a5,0(a5)
    80000ed8:	2781                	sext.w	a5,a5
    80000eda:	0107979b          	slliw	a5,a5,0x10
    80000ede:	2781                	sext.w	a5,a5
    80000ee0:	8fb9                	xor	a5,a5,a4
    80000ee2:	0007871b          	sext.w	a4,a5
    80000ee6:	fc043783          	ld	a5,-64(s0)
    80000eea:	07a9                	addi	a5,a5,10
    80000eec:	0007c783          	lbu	a5,0(a5)
    80000ef0:	2781                	sext.w	a5,a5
    80000ef2:	0087979b          	slliw	a5,a5,0x8
    80000ef6:	2781                	sext.w	a5,a5
    80000ef8:	8fb9                	xor	a5,a5,a4
    80000efa:	0007871b          	sext.w	a4,a5
    80000efe:	fc043783          	ld	a5,-64(s0)
    80000f02:	07ad                	addi	a5,a5,11
    80000f04:	0007c783          	lbu	a5,0(a5)
    80000f08:	2781                	sext.w	a5,a5
    80000f0a:	8fb9                	xor	a5,a5,a4
    80000f0c:	0007871b          	sext.w	a4,a5
    80000f10:	fc843783          	ld	a5,-56(s0)
    80000f14:	0b87a783          	lw	a5,184(a5)
    80000f18:	8fb9                	xor	a5,a5,a4
    80000f1a:	0007871b          	sext.w	a4,a5
    80000f1e:	fc843783          	ld	a5,-56(s0)
    80000f22:	479c                	lw	a5,8(a5)
    80000f24:	8fb9                	xor	a5,a5,a4
    80000f26:	fef42223          	sw	a5,-28(s0)
    80000f2a:	fc043783          	ld	a5,-64(s0)
    80000f2e:	07b1                	addi	a5,a5,12
    80000f30:	0007c783          	lbu	a5,0(a5)
    80000f34:	2781                	sext.w	a5,a5
    80000f36:	0187979b          	slliw	a5,a5,0x18
    80000f3a:	0007871b          	sext.w	a4,a5
    80000f3e:	fc043783          	ld	a5,-64(s0)
    80000f42:	07b5                	addi	a5,a5,13
    80000f44:	0007c783          	lbu	a5,0(a5)
    80000f48:	2781                	sext.w	a5,a5
    80000f4a:	0107979b          	slliw	a5,a5,0x10
    80000f4e:	2781                	sext.w	a5,a5
    80000f50:	8fb9                	xor	a5,a5,a4
    80000f52:	0007871b          	sext.w	a4,a5
    80000f56:	fc043783          	ld	a5,-64(s0)
    80000f5a:	07b9                	addi	a5,a5,14
    80000f5c:	0007c783          	lbu	a5,0(a5)
    80000f60:	2781                	sext.w	a5,a5
    80000f62:	0087979b          	slliw	a5,a5,0x8
    80000f66:	2781                	sext.w	a5,a5
    80000f68:	8fb9                	xor	a5,a5,a4
    80000f6a:	0007871b          	sext.w	a4,a5
    80000f6e:	fc043783          	ld	a5,-64(s0)
    80000f72:	07bd                	addi	a5,a5,15
    80000f74:	0007c783          	lbu	a5,0(a5)
    80000f78:	2781                	sext.w	a5,a5
    80000f7a:	8fb9                	xor	a5,a5,a4
    80000f7c:	0007871b          	sext.w	a4,a5
    80000f80:	fc843783          	ld	a5,-56(s0)
    80000f84:	0bc7a783          	lw	a5,188(a5)
    80000f88:	8fb9                	xor	a5,a5,a4
    80000f8a:	0007871b          	sext.w	a4,a5
    80000f8e:	fc843783          	ld	a5,-56(s0)
    80000f92:	47dc                	lw	a5,12(a5)
    80000f94:	8fb9                	xor	a5,a5,a4
    80000f96:	fef42023          	sw	a5,-32(s0)
    80000f9a:	fec42783          	lw	a5,-20(s0)
    80000f9e:	0187d79b          	srliw	a5,a5,0x18
    80000fa2:	2781                	sext.w	a5,a5
    80000fa4:	00005717          	auipc	a4,0x5
    80000fa8:	44470713          	addi	a4,a4,1092 # 800063e8 <Te0>
    80000fac:	1782                	slli	a5,a5,0x20
    80000fae:	9381                	srli	a5,a5,0x20
    80000fb0:	078a                	slli	a5,a5,0x2
    80000fb2:	97ba                	add	a5,a5,a4
    80000fb4:	4394                	lw	a3,0(a5)
    80000fb6:	fe842783          	lw	a5,-24(s0)
    80000fba:	0107d79b          	srliw	a5,a5,0x10
    80000fbe:	2781                	sext.w	a5,a5
    80000fc0:	0ff7f793          	andi	a5,a5,255
    80000fc4:	2781                	sext.w	a5,a5
    80000fc6:	00006717          	auipc	a4,0x6
    80000fca:	82270713          	addi	a4,a4,-2014 # 800067e8 <Te1>
    80000fce:	1782                	slli	a5,a5,0x20
    80000fd0:	9381                	srli	a5,a5,0x20
    80000fd2:	078a                	slli	a5,a5,0x2
    80000fd4:	97ba                	add	a5,a5,a4
    80000fd6:	439c                	lw	a5,0(a5)
    80000fd8:	8736                	mv	a4,a3
    80000fda:	8fb9                	xor	a5,a5,a4
    80000fdc:	0007869b          	sext.w	a3,a5
    80000fe0:	fe442783          	lw	a5,-28(s0)
    80000fe4:	0087d79b          	srliw	a5,a5,0x8
    80000fe8:	2781                	sext.w	a5,a5
    80000fea:	0ff7f793          	andi	a5,a5,255
    80000fee:	2781                	sext.w	a5,a5
    80000ff0:	00006717          	auipc	a4,0x6
    80000ff4:	bf870713          	addi	a4,a4,-1032 # 80006be8 <Te2>
    80000ff8:	1782                	slli	a5,a5,0x20
    80000ffa:	9381                	srli	a5,a5,0x20
    80000ffc:	078a                	slli	a5,a5,0x2
    80000ffe:	97ba                	add	a5,a5,a4
    80001000:	439c                	lw	a5,0(a5)
    80001002:	8736                	mv	a4,a3
    80001004:	8fb9                	xor	a5,a5,a4
    80001006:	0007869b          	sext.w	a3,a5
    8000100a:	fe042783          	lw	a5,-32(s0)
    8000100e:	0ff7f793          	andi	a5,a5,255
    80001012:	2781                	sext.w	a5,a5
    80001014:	00006717          	auipc	a4,0x6
    80001018:	fd470713          	addi	a4,a4,-44 # 80006fe8 <Te3>
    8000101c:	1782                	slli	a5,a5,0x20
    8000101e:	9381                	srli	a5,a5,0x20
    80001020:	078a                	slli	a5,a5,0x2
    80001022:	97ba                	add	a5,a5,a4
    80001024:	439c                	lw	a5,0(a5)
    80001026:	8736                	mv	a4,a3
    80001028:	8fb9                	xor	a5,a5,a4
    8000102a:	0007871b          	sext.w	a4,a5
    8000102e:	fc843783          	ld	a5,-56(s0)
    80001032:	4b9c                	lw	a5,16(a5)
    80001034:	8fb9                	xor	a5,a5,a4
    80001036:	fcf42e23          	sw	a5,-36(s0)
    8000103a:	fe842783          	lw	a5,-24(s0)
    8000103e:	0187d79b          	srliw	a5,a5,0x18
    80001042:	2781                	sext.w	a5,a5
    80001044:	00005717          	auipc	a4,0x5
    80001048:	3a470713          	addi	a4,a4,932 # 800063e8 <Te0>
    8000104c:	1782                	slli	a5,a5,0x20
    8000104e:	9381                	srli	a5,a5,0x20
    80001050:	078a                	slli	a5,a5,0x2
    80001052:	97ba                	add	a5,a5,a4
    80001054:	4394                	lw	a3,0(a5)
    80001056:	fe442783          	lw	a5,-28(s0)
    8000105a:	0107d79b          	srliw	a5,a5,0x10
    8000105e:	2781                	sext.w	a5,a5
    80001060:	0ff7f793          	andi	a5,a5,255
    80001064:	2781                	sext.w	a5,a5
    80001066:	00005717          	auipc	a4,0x5
    8000106a:	78270713          	addi	a4,a4,1922 # 800067e8 <Te1>
    8000106e:	1782                	slli	a5,a5,0x20
    80001070:	9381                	srli	a5,a5,0x20
    80001072:	078a                	slli	a5,a5,0x2
    80001074:	97ba                	add	a5,a5,a4
    80001076:	439c                	lw	a5,0(a5)
    80001078:	8736                	mv	a4,a3
    8000107a:	8fb9                	xor	a5,a5,a4
    8000107c:	0007869b          	sext.w	a3,a5
    80001080:	fe042783          	lw	a5,-32(s0)
    80001084:	0087d79b          	srliw	a5,a5,0x8
    80001088:	2781                	sext.w	a5,a5
    8000108a:	0ff7f793          	andi	a5,a5,255
    8000108e:	2781                	sext.w	a5,a5
    80001090:	00006717          	auipc	a4,0x6
    80001094:	b5870713          	addi	a4,a4,-1192 # 80006be8 <Te2>
    80001098:	1782                	slli	a5,a5,0x20
    8000109a:	9381                	srli	a5,a5,0x20
    8000109c:	078a                	slli	a5,a5,0x2
    8000109e:	97ba                	add	a5,a5,a4
    800010a0:	439c                	lw	a5,0(a5)
    800010a2:	8736                	mv	a4,a3
    800010a4:	8fb9                	xor	a5,a5,a4
    800010a6:	0007869b          	sext.w	a3,a5
    800010aa:	fec42783          	lw	a5,-20(s0)
    800010ae:	0ff7f793          	andi	a5,a5,255
    800010b2:	2781                	sext.w	a5,a5
    800010b4:	00006717          	auipc	a4,0x6
    800010b8:	f3470713          	addi	a4,a4,-204 # 80006fe8 <Te3>
    800010bc:	1782                	slli	a5,a5,0x20
    800010be:	9381                	srli	a5,a5,0x20
    800010c0:	078a                	slli	a5,a5,0x2
    800010c2:	97ba                	add	a5,a5,a4
    800010c4:	439c                	lw	a5,0(a5)
    800010c6:	8736                	mv	a4,a3
    800010c8:	8fb9                	xor	a5,a5,a4
    800010ca:	0007871b          	sext.w	a4,a5
    800010ce:	fc843783          	ld	a5,-56(s0)
    800010d2:	4bdc                	lw	a5,20(a5)
    800010d4:	8fb9                	xor	a5,a5,a4
    800010d6:	fcf42c23          	sw	a5,-40(s0)
    800010da:	fe442783          	lw	a5,-28(s0)
    800010de:	0187d79b          	srliw	a5,a5,0x18
    800010e2:	2781                	sext.w	a5,a5
    800010e4:	00005717          	auipc	a4,0x5
    800010e8:	30470713          	addi	a4,a4,772 # 800063e8 <Te0>
    800010ec:	1782                	slli	a5,a5,0x20
    800010ee:	9381                	srli	a5,a5,0x20
    800010f0:	078a                	slli	a5,a5,0x2
    800010f2:	97ba                	add	a5,a5,a4
    800010f4:	4394                	lw	a3,0(a5)
    800010f6:	fe042783          	lw	a5,-32(s0)
    800010fa:	0107d79b          	srliw	a5,a5,0x10
    800010fe:	2781                	sext.w	a5,a5
    80001100:	0ff7f793          	andi	a5,a5,255
    80001104:	2781                	sext.w	a5,a5
    80001106:	00005717          	auipc	a4,0x5
    8000110a:	6e270713          	addi	a4,a4,1762 # 800067e8 <Te1>
    8000110e:	1782                	slli	a5,a5,0x20
    80001110:	9381                	srli	a5,a5,0x20
    80001112:	078a                	slli	a5,a5,0x2
    80001114:	97ba                	add	a5,a5,a4
    80001116:	439c                	lw	a5,0(a5)
    80001118:	8736                	mv	a4,a3
    8000111a:	8fb9                	xor	a5,a5,a4
    8000111c:	0007869b          	sext.w	a3,a5
    80001120:	fec42783          	lw	a5,-20(s0)
    80001124:	0087d79b          	srliw	a5,a5,0x8
    80001128:	2781                	sext.w	a5,a5
    8000112a:	0ff7f793          	andi	a5,a5,255
    8000112e:	2781                	sext.w	a5,a5
    80001130:	00006717          	auipc	a4,0x6
    80001134:	ab870713          	addi	a4,a4,-1352 # 80006be8 <Te2>
    80001138:	1782                	slli	a5,a5,0x20
    8000113a:	9381                	srli	a5,a5,0x20
    8000113c:	078a                	slli	a5,a5,0x2
    8000113e:	97ba                	add	a5,a5,a4
    80001140:	439c                	lw	a5,0(a5)
    80001142:	8736                	mv	a4,a3
    80001144:	8fb9                	xor	a5,a5,a4
    80001146:	0007869b          	sext.w	a3,a5
    8000114a:	fe842783          	lw	a5,-24(s0)
    8000114e:	0ff7f793          	andi	a5,a5,255
    80001152:	2781                	sext.w	a5,a5
    80001154:	00006717          	auipc	a4,0x6
    80001158:	e9470713          	addi	a4,a4,-364 # 80006fe8 <Te3>
    8000115c:	1782                	slli	a5,a5,0x20
    8000115e:	9381                	srli	a5,a5,0x20
    80001160:	078a                	slli	a5,a5,0x2
    80001162:	97ba                	add	a5,a5,a4
    80001164:	439c                	lw	a5,0(a5)
    80001166:	8736                	mv	a4,a3
    80001168:	8fb9                	xor	a5,a5,a4
    8000116a:	0007871b          	sext.w	a4,a5
    8000116e:	fc843783          	ld	a5,-56(s0)
    80001172:	4f9c                	lw	a5,24(a5)
    80001174:	8fb9                	xor	a5,a5,a4
    80001176:	fcf42a23          	sw	a5,-44(s0)
    8000117a:	fe042783          	lw	a5,-32(s0)
    8000117e:	0187d79b          	srliw	a5,a5,0x18
    80001182:	2781                	sext.w	a5,a5
    80001184:	00005717          	auipc	a4,0x5
    80001188:	26470713          	addi	a4,a4,612 # 800063e8 <Te0>
    8000118c:	1782                	slli	a5,a5,0x20
    8000118e:	9381                	srli	a5,a5,0x20
    80001190:	078a                	slli	a5,a5,0x2
    80001192:	97ba                	add	a5,a5,a4
    80001194:	4394                	lw	a3,0(a5)
    80001196:	fec42783          	lw	a5,-20(s0)
    8000119a:	0107d79b          	srliw	a5,a5,0x10
    8000119e:	2781                	sext.w	a5,a5
    800011a0:	0ff7f793          	andi	a5,a5,255
    800011a4:	2781                	sext.w	a5,a5
    800011a6:	00005717          	auipc	a4,0x5
    800011aa:	64270713          	addi	a4,a4,1602 # 800067e8 <Te1>
    800011ae:	1782                	slli	a5,a5,0x20
    800011b0:	9381                	srli	a5,a5,0x20
    800011b2:	078a                	slli	a5,a5,0x2
    800011b4:	97ba                	add	a5,a5,a4
    800011b6:	439c                	lw	a5,0(a5)
    800011b8:	8736                	mv	a4,a3
    800011ba:	8fb9                	xor	a5,a5,a4
    800011bc:	0007869b          	sext.w	a3,a5
    800011c0:	fe842783          	lw	a5,-24(s0)
    800011c4:	0087d79b          	srliw	a5,a5,0x8
    800011c8:	2781                	sext.w	a5,a5
    800011ca:	0ff7f793          	andi	a5,a5,255
    800011ce:	2781                	sext.w	a5,a5
    800011d0:	00006717          	auipc	a4,0x6
    800011d4:	a1870713          	addi	a4,a4,-1512 # 80006be8 <Te2>
    800011d8:	1782                	slli	a5,a5,0x20
    800011da:	9381                	srli	a5,a5,0x20
    800011dc:	078a                	slli	a5,a5,0x2
    800011de:	97ba                	add	a5,a5,a4
    800011e0:	439c                	lw	a5,0(a5)
    800011e2:	8736                	mv	a4,a3
    800011e4:	8fb9                	xor	a5,a5,a4
    800011e6:	0007869b          	sext.w	a3,a5
    800011ea:	fe442783          	lw	a5,-28(s0)
    800011ee:	0ff7f793          	andi	a5,a5,255
    800011f2:	2781                	sext.w	a5,a5
    800011f4:	00006717          	auipc	a4,0x6
    800011f8:	df470713          	addi	a4,a4,-524 # 80006fe8 <Te3>
    800011fc:	1782                	slli	a5,a5,0x20
    800011fe:	9381                	srli	a5,a5,0x20
    80001200:	078a                	slli	a5,a5,0x2
    80001202:	97ba                	add	a5,a5,a4
    80001204:	439c                	lw	a5,0(a5)
    80001206:	8736                	mv	a4,a3
    80001208:	8fb9                	xor	a5,a5,a4
    8000120a:	0007871b          	sext.w	a4,a5
    8000120e:	fc843783          	ld	a5,-56(s0)
    80001212:	4fdc                	lw	a5,28(a5)
    80001214:	8fb9                	xor	a5,a5,a4
    80001216:	fcf42823          	sw	a5,-48(s0)
    8000121a:	fdc42783          	lw	a5,-36(s0)
    8000121e:	0187d79b          	srliw	a5,a5,0x18
    80001222:	2781                	sext.w	a5,a5
    80001224:	00005717          	auipc	a4,0x5
    80001228:	1c470713          	addi	a4,a4,452 # 800063e8 <Te0>
    8000122c:	1782                	slli	a5,a5,0x20
    8000122e:	9381                	srli	a5,a5,0x20
    80001230:	078a                	slli	a5,a5,0x2
    80001232:	97ba                	add	a5,a5,a4
    80001234:	4394                	lw	a3,0(a5)
    80001236:	fd842783          	lw	a5,-40(s0)
    8000123a:	0107d79b          	srliw	a5,a5,0x10
    8000123e:	2781                	sext.w	a5,a5
    80001240:	0ff7f793          	andi	a5,a5,255
    80001244:	2781                	sext.w	a5,a5
    80001246:	00005717          	auipc	a4,0x5
    8000124a:	5a270713          	addi	a4,a4,1442 # 800067e8 <Te1>
    8000124e:	1782                	slli	a5,a5,0x20
    80001250:	9381                	srli	a5,a5,0x20
    80001252:	078a                	slli	a5,a5,0x2
    80001254:	97ba                	add	a5,a5,a4
    80001256:	439c                	lw	a5,0(a5)
    80001258:	8736                	mv	a4,a3
    8000125a:	8fb9                	xor	a5,a5,a4
    8000125c:	0007869b          	sext.w	a3,a5
    80001260:	fd442783          	lw	a5,-44(s0)
    80001264:	0087d79b          	srliw	a5,a5,0x8
    80001268:	2781                	sext.w	a5,a5
    8000126a:	0ff7f793          	andi	a5,a5,255
    8000126e:	2781                	sext.w	a5,a5
    80001270:	00006717          	auipc	a4,0x6
    80001274:	97870713          	addi	a4,a4,-1672 # 80006be8 <Te2>
    80001278:	1782                	slli	a5,a5,0x20
    8000127a:	9381                	srli	a5,a5,0x20
    8000127c:	078a                	slli	a5,a5,0x2
    8000127e:	97ba                	add	a5,a5,a4
    80001280:	439c                	lw	a5,0(a5)
    80001282:	8736                	mv	a4,a3
    80001284:	8fb9                	xor	a5,a5,a4
    80001286:	0007869b          	sext.w	a3,a5
    8000128a:	fd042783          	lw	a5,-48(s0)
    8000128e:	0ff7f793          	andi	a5,a5,255
    80001292:	2781                	sext.w	a5,a5
    80001294:	00006717          	auipc	a4,0x6
    80001298:	d5470713          	addi	a4,a4,-684 # 80006fe8 <Te3>
    8000129c:	1782                	slli	a5,a5,0x20
    8000129e:	9381                	srli	a5,a5,0x20
    800012a0:	078a                	slli	a5,a5,0x2
    800012a2:	97ba                	add	a5,a5,a4
    800012a4:	439c                	lw	a5,0(a5)
    800012a6:	8736                	mv	a4,a3
    800012a8:	8fb9                	xor	a5,a5,a4
    800012aa:	0007871b          	sext.w	a4,a5
    800012ae:	fc843783          	ld	a5,-56(s0)
    800012b2:	539c                	lw	a5,32(a5)
    800012b4:	8fb9                	xor	a5,a5,a4
    800012b6:	fef42623          	sw	a5,-20(s0)
    800012ba:	fd842783          	lw	a5,-40(s0)
    800012be:	0187d79b          	srliw	a5,a5,0x18
    800012c2:	2781                	sext.w	a5,a5
    800012c4:	00005717          	auipc	a4,0x5
    800012c8:	12470713          	addi	a4,a4,292 # 800063e8 <Te0>
    800012cc:	1782                	slli	a5,a5,0x20
    800012ce:	9381                	srli	a5,a5,0x20
    800012d0:	078a                	slli	a5,a5,0x2
    800012d2:	97ba                	add	a5,a5,a4
    800012d4:	4394                	lw	a3,0(a5)
    800012d6:	fd442783          	lw	a5,-44(s0)
    800012da:	0107d79b          	srliw	a5,a5,0x10
    800012de:	2781                	sext.w	a5,a5
    800012e0:	0ff7f793          	andi	a5,a5,255
    800012e4:	2781                	sext.w	a5,a5
    800012e6:	00005717          	auipc	a4,0x5
    800012ea:	50270713          	addi	a4,a4,1282 # 800067e8 <Te1>
    800012ee:	1782                	slli	a5,a5,0x20
    800012f0:	9381                	srli	a5,a5,0x20
    800012f2:	078a                	slli	a5,a5,0x2
    800012f4:	97ba                	add	a5,a5,a4
    800012f6:	439c                	lw	a5,0(a5)
    800012f8:	8736                	mv	a4,a3
    800012fa:	8fb9                	xor	a5,a5,a4
    800012fc:	0007869b          	sext.w	a3,a5
    80001300:	fd042783          	lw	a5,-48(s0)
    80001304:	0087d79b          	srliw	a5,a5,0x8
    80001308:	2781                	sext.w	a5,a5
    8000130a:	0ff7f793          	andi	a5,a5,255
    8000130e:	2781                	sext.w	a5,a5
    80001310:	00006717          	auipc	a4,0x6
    80001314:	8d870713          	addi	a4,a4,-1832 # 80006be8 <Te2>
    80001318:	1782                	slli	a5,a5,0x20
    8000131a:	9381                	srli	a5,a5,0x20
    8000131c:	078a                	slli	a5,a5,0x2
    8000131e:	97ba                	add	a5,a5,a4
    80001320:	439c                	lw	a5,0(a5)
    80001322:	8736                	mv	a4,a3
    80001324:	8fb9                	xor	a5,a5,a4
    80001326:	0007869b          	sext.w	a3,a5
    8000132a:	fdc42783          	lw	a5,-36(s0)
    8000132e:	0ff7f793          	andi	a5,a5,255
    80001332:	2781                	sext.w	a5,a5
    80001334:	00006717          	auipc	a4,0x6
    80001338:	cb470713          	addi	a4,a4,-844 # 80006fe8 <Te3>
    8000133c:	1782                	slli	a5,a5,0x20
    8000133e:	9381                	srli	a5,a5,0x20
    80001340:	078a                	slli	a5,a5,0x2
    80001342:	97ba                	add	a5,a5,a4
    80001344:	439c                	lw	a5,0(a5)
    80001346:	8736                	mv	a4,a3
    80001348:	8fb9                	xor	a5,a5,a4
    8000134a:	0007871b          	sext.w	a4,a5
    8000134e:	fc843783          	ld	a5,-56(s0)
    80001352:	53dc                	lw	a5,36(a5)
    80001354:	8fb9                	xor	a5,a5,a4
    80001356:	fef42423          	sw	a5,-24(s0)
    8000135a:	fd442783          	lw	a5,-44(s0)
    8000135e:	0187d79b          	srliw	a5,a5,0x18
    80001362:	2781                	sext.w	a5,a5
    80001364:	00005717          	auipc	a4,0x5
    80001368:	08470713          	addi	a4,a4,132 # 800063e8 <Te0>
    8000136c:	1782                	slli	a5,a5,0x20
    8000136e:	9381                	srli	a5,a5,0x20
    80001370:	078a                	slli	a5,a5,0x2
    80001372:	97ba                	add	a5,a5,a4
    80001374:	4394                	lw	a3,0(a5)
    80001376:	fd042783          	lw	a5,-48(s0)
    8000137a:	0107d79b          	srliw	a5,a5,0x10
    8000137e:	2781                	sext.w	a5,a5
    80001380:	0ff7f793          	andi	a5,a5,255
    80001384:	2781                	sext.w	a5,a5
    80001386:	00005717          	auipc	a4,0x5
    8000138a:	46270713          	addi	a4,a4,1122 # 800067e8 <Te1>
    8000138e:	1782                	slli	a5,a5,0x20
    80001390:	9381                	srli	a5,a5,0x20
    80001392:	078a                	slli	a5,a5,0x2
    80001394:	97ba                	add	a5,a5,a4
    80001396:	439c                	lw	a5,0(a5)
    80001398:	8736                	mv	a4,a3
    8000139a:	8fb9                	xor	a5,a5,a4
    8000139c:	0007869b          	sext.w	a3,a5
    800013a0:	fdc42783          	lw	a5,-36(s0)
    800013a4:	0087d79b          	srliw	a5,a5,0x8
    800013a8:	2781                	sext.w	a5,a5
    800013aa:	0ff7f793          	andi	a5,a5,255
    800013ae:	2781                	sext.w	a5,a5
    800013b0:	00006717          	auipc	a4,0x6
    800013b4:	83870713          	addi	a4,a4,-1992 # 80006be8 <Te2>
    800013b8:	1782                	slli	a5,a5,0x20
    800013ba:	9381                	srli	a5,a5,0x20
    800013bc:	078a                	slli	a5,a5,0x2
    800013be:	97ba                	add	a5,a5,a4
    800013c0:	439c                	lw	a5,0(a5)
    800013c2:	8736                	mv	a4,a3
    800013c4:	8fb9                	xor	a5,a5,a4
    800013c6:	0007869b          	sext.w	a3,a5
    800013ca:	fd842783          	lw	a5,-40(s0)
    800013ce:	0ff7f793          	andi	a5,a5,255
    800013d2:	2781                	sext.w	a5,a5
    800013d4:	00006717          	auipc	a4,0x6
    800013d8:	c1470713          	addi	a4,a4,-1004 # 80006fe8 <Te3>
    800013dc:	1782                	slli	a5,a5,0x20
    800013de:	9381                	srli	a5,a5,0x20
    800013e0:	078a                	slli	a5,a5,0x2
    800013e2:	97ba                	add	a5,a5,a4
    800013e4:	439c                	lw	a5,0(a5)
    800013e6:	8736                	mv	a4,a3
    800013e8:	8fb9                	xor	a5,a5,a4
    800013ea:	0007871b          	sext.w	a4,a5
    800013ee:	fc843783          	ld	a5,-56(s0)
    800013f2:	579c                	lw	a5,40(a5)
    800013f4:	8fb9                	xor	a5,a5,a4
    800013f6:	fef42223          	sw	a5,-28(s0)
    800013fa:	fd042783          	lw	a5,-48(s0)
    800013fe:	0187d79b          	srliw	a5,a5,0x18
    80001402:	2781                	sext.w	a5,a5
    80001404:	00005717          	auipc	a4,0x5
    80001408:	fe470713          	addi	a4,a4,-28 # 800063e8 <Te0>
    8000140c:	1782                	slli	a5,a5,0x20
    8000140e:	9381                	srli	a5,a5,0x20
    80001410:	078a                	slli	a5,a5,0x2
    80001412:	97ba                	add	a5,a5,a4
    80001414:	4394                	lw	a3,0(a5)
    80001416:	fdc42783          	lw	a5,-36(s0)
    8000141a:	0107d79b          	srliw	a5,a5,0x10
    8000141e:	2781                	sext.w	a5,a5
    80001420:	0ff7f793          	andi	a5,a5,255
    80001424:	2781                	sext.w	a5,a5
    80001426:	00005717          	auipc	a4,0x5
    8000142a:	3c270713          	addi	a4,a4,962 # 800067e8 <Te1>
    8000142e:	1782                	slli	a5,a5,0x20
    80001430:	9381                	srli	a5,a5,0x20
    80001432:	078a                	slli	a5,a5,0x2
    80001434:	97ba                	add	a5,a5,a4
    80001436:	439c                	lw	a5,0(a5)
    80001438:	8736                	mv	a4,a3
    8000143a:	8fb9                	xor	a5,a5,a4
    8000143c:	0007869b          	sext.w	a3,a5
    80001440:	fd842783          	lw	a5,-40(s0)
    80001444:	0087d79b          	srliw	a5,a5,0x8
    80001448:	2781                	sext.w	a5,a5
    8000144a:	0ff7f793          	andi	a5,a5,255
    8000144e:	2781                	sext.w	a5,a5
    80001450:	00005717          	auipc	a4,0x5
    80001454:	79870713          	addi	a4,a4,1944 # 80006be8 <Te2>
    80001458:	1782                	slli	a5,a5,0x20
    8000145a:	9381                	srli	a5,a5,0x20
    8000145c:	078a                	slli	a5,a5,0x2
    8000145e:	97ba                	add	a5,a5,a4
    80001460:	439c                	lw	a5,0(a5)
    80001462:	8736                	mv	a4,a3
    80001464:	8fb9                	xor	a5,a5,a4
    80001466:	0007869b          	sext.w	a3,a5
    8000146a:	fd442783          	lw	a5,-44(s0)
    8000146e:	0ff7f793          	andi	a5,a5,255
    80001472:	2781                	sext.w	a5,a5
    80001474:	00006717          	auipc	a4,0x6
    80001478:	b7470713          	addi	a4,a4,-1164 # 80006fe8 <Te3>
    8000147c:	1782                	slli	a5,a5,0x20
    8000147e:	9381                	srli	a5,a5,0x20
    80001480:	078a                	slli	a5,a5,0x2
    80001482:	97ba                	add	a5,a5,a4
    80001484:	439c                	lw	a5,0(a5)
    80001486:	8736                	mv	a4,a3
    80001488:	8fb9                	xor	a5,a5,a4
    8000148a:	0007871b          	sext.w	a4,a5
    8000148e:	fc843783          	ld	a5,-56(s0)
    80001492:	57dc                	lw	a5,44(a5)
    80001494:	8fb9                	xor	a5,a5,a4
    80001496:	fef42023          	sw	a5,-32(s0)
    8000149a:	fec42783          	lw	a5,-20(s0)
    8000149e:	0187d79b          	srliw	a5,a5,0x18
    800014a2:	2781                	sext.w	a5,a5
    800014a4:	00005717          	auipc	a4,0x5
    800014a8:	f4470713          	addi	a4,a4,-188 # 800063e8 <Te0>
    800014ac:	1782                	slli	a5,a5,0x20
    800014ae:	9381                	srli	a5,a5,0x20
    800014b0:	078a                	slli	a5,a5,0x2
    800014b2:	97ba                	add	a5,a5,a4
    800014b4:	4394                	lw	a3,0(a5)
    800014b6:	fe842783          	lw	a5,-24(s0)
    800014ba:	0107d79b          	srliw	a5,a5,0x10
    800014be:	2781                	sext.w	a5,a5
    800014c0:	0ff7f793          	andi	a5,a5,255
    800014c4:	2781                	sext.w	a5,a5
    800014c6:	00005717          	auipc	a4,0x5
    800014ca:	32270713          	addi	a4,a4,802 # 800067e8 <Te1>
    800014ce:	1782                	slli	a5,a5,0x20
    800014d0:	9381                	srli	a5,a5,0x20
    800014d2:	078a                	slli	a5,a5,0x2
    800014d4:	97ba                	add	a5,a5,a4
    800014d6:	439c                	lw	a5,0(a5)
    800014d8:	8736                	mv	a4,a3
    800014da:	8fb9                	xor	a5,a5,a4
    800014dc:	0007869b          	sext.w	a3,a5
    800014e0:	fe442783          	lw	a5,-28(s0)
    800014e4:	0087d79b          	srliw	a5,a5,0x8
    800014e8:	2781                	sext.w	a5,a5
    800014ea:	0ff7f793          	andi	a5,a5,255
    800014ee:	2781                	sext.w	a5,a5
    800014f0:	00005717          	auipc	a4,0x5
    800014f4:	6f870713          	addi	a4,a4,1784 # 80006be8 <Te2>
    800014f8:	1782                	slli	a5,a5,0x20
    800014fa:	9381                	srli	a5,a5,0x20
    800014fc:	078a                	slli	a5,a5,0x2
    800014fe:	97ba                	add	a5,a5,a4
    80001500:	439c                	lw	a5,0(a5)
    80001502:	8736                	mv	a4,a3
    80001504:	8fb9                	xor	a5,a5,a4
    80001506:	0007869b          	sext.w	a3,a5
    8000150a:	fe042783          	lw	a5,-32(s0)
    8000150e:	0ff7f793          	andi	a5,a5,255
    80001512:	2781                	sext.w	a5,a5
    80001514:	00006717          	auipc	a4,0x6
    80001518:	ad470713          	addi	a4,a4,-1324 # 80006fe8 <Te3>
    8000151c:	1782                	slli	a5,a5,0x20
    8000151e:	9381                	srli	a5,a5,0x20
    80001520:	078a                	slli	a5,a5,0x2
    80001522:	97ba                	add	a5,a5,a4
    80001524:	439c                	lw	a5,0(a5)
    80001526:	8736                	mv	a4,a3
    80001528:	8fb9                	xor	a5,a5,a4
    8000152a:	0007871b          	sext.w	a4,a5
    8000152e:	fc843783          	ld	a5,-56(s0)
    80001532:	5b9c                	lw	a5,48(a5)
    80001534:	8fb9                	xor	a5,a5,a4
    80001536:	fcf42e23          	sw	a5,-36(s0)
    8000153a:	fe842783          	lw	a5,-24(s0)
    8000153e:	0187d79b          	srliw	a5,a5,0x18
    80001542:	2781                	sext.w	a5,a5
    80001544:	00005717          	auipc	a4,0x5
    80001548:	ea470713          	addi	a4,a4,-348 # 800063e8 <Te0>
    8000154c:	1782                	slli	a5,a5,0x20
    8000154e:	9381                	srli	a5,a5,0x20
    80001550:	078a                	slli	a5,a5,0x2
    80001552:	97ba                	add	a5,a5,a4
    80001554:	4394                	lw	a3,0(a5)
    80001556:	fe442783          	lw	a5,-28(s0)
    8000155a:	0107d79b          	srliw	a5,a5,0x10
    8000155e:	2781                	sext.w	a5,a5
    80001560:	0ff7f793          	andi	a5,a5,255
    80001564:	2781                	sext.w	a5,a5
    80001566:	00005717          	auipc	a4,0x5
    8000156a:	28270713          	addi	a4,a4,642 # 800067e8 <Te1>
    8000156e:	1782                	slli	a5,a5,0x20
    80001570:	9381                	srli	a5,a5,0x20
    80001572:	078a                	slli	a5,a5,0x2
    80001574:	97ba                	add	a5,a5,a4
    80001576:	439c                	lw	a5,0(a5)
    80001578:	8736                	mv	a4,a3
    8000157a:	8fb9                	xor	a5,a5,a4
    8000157c:	0007869b          	sext.w	a3,a5
    80001580:	fe042783          	lw	a5,-32(s0)
    80001584:	0087d79b          	srliw	a5,a5,0x8
    80001588:	2781                	sext.w	a5,a5
    8000158a:	0ff7f793          	andi	a5,a5,255
    8000158e:	2781                	sext.w	a5,a5
    80001590:	00005717          	auipc	a4,0x5
    80001594:	65870713          	addi	a4,a4,1624 # 80006be8 <Te2>
    80001598:	1782                	slli	a5,a5,0x20
    8000159a:	9381                	srli	a5,a5,0x20
    8000159c:	078a                	slli	a5,a5,0x2
    8000159e:	97ba                	add	a5,a5,a4
    800015a0:	439c                	lw	a5,0(a5)
    800015a2:	8736                	mv	a4,a3
    800015a4:	8fb9                	xor	a5,a5,a4
    800015a6:	0007869b          	sext.w	a3,a5
    800015aa:	fec42783          	lw	a5,-20(s0)
    800015ae:	0ff7f793          	andi	a5,a5,255
    800015b2:	2781                	sext.w	a5,a5
    800015b4:	00006717          	auipc	a4,0x6
    800015b8:	a3470713          	addi	a4,a4,-1484 # 80006fe8 <Te3>
    800015bc:	1782                	slli	a5,a5,0x20
    800015be:	9381                	srli	a5,a5,0x20
    800015c0:	078a                	slli	a5,a5,0x2
    800015c2:	97ba                	add	a5,a5,a4
    800015c4:	439c                	lw	a5,0(a5)
    800015c6:	8736                	mv	a4,a3
    800015c8:	8fb9                	xor	a5,a5,a4
    800015ca:	0007871b          	sext.w	a4,a5
    800015ce:	fc843783          	ld	a5,-56(s0)
    800015d2:	5bdc                	lw	a5,52(a5)
    800015d4:	8fb9                	xor	a5,a5,a4
    800015d6:	fcf42c23          	sw	a5,-40(s0)
    800015da:	fe442783          	lw	a5,-28(s0)
    800015de:	0187d79b          	srliw	a5,a5,0x18
    800015e2:	2781                	sext.w	a5,a5
    800015e4:	00005717          	auipc	a4,0x5
    800015e8:	e0470713          	addi	a4,a4,-508 # 800063e8 <Te0>
    800015ec:	1782                	slli	a5,a5,0x20
    800015ee:	9381                	srli	a5,a5,0x20
    800015f0:	078a                	slli	a5,a5,0x2
    800015f2:	97ba                	add	a5,a5,a4
    800015f4:	4394                	lw	a3,0(a5)
    800015f6:	fe042783          	lw	a5,-32(s0)
    800015fa:	0107d79b          	srliw	a5,a5,0x10
    800015fe:	2781                	sext.w	a5,a5
    80001600:	0ff7f793          	andi	a5,a5,255
    80001604:	2781                	sext.w	a5,a5
    80001606:	00005717          	auipc	a4,0x5
    8000160a:	1e270713          	addi	a4,a4,482 # 800067e8 <Te1>
    8000160e:	1782                	slli	a5,a5,0x20
    80001610:	9381                	srli	a5,a5,0x20
    80001612:	078a                	slli	a5,a5,0x2
    80001614:	97ba                	add	a5,a5,a4
    80001616:	439c                	lw	a5,0(a5)
    80001618:	8736                	mv	a4,a3
    8000161a:	8fb9                	xor	a5,a5,a4
    8000161c:	0007869b          	sext.w	a3,a5
    80001620:	fec42783          	lw	a5,-20(s0)
    80001624:	0087d79b          	srliw	a5,a5,0x8
    80001628:	2781                	sext.w	a5,a5
    8000162a:	0ff7f793          	andi	a5,a5,255
    8000162e:	2781                	sext.w	a5,a5
    80001630:	00005717          	auipc	a4,0x5
    80001634:	5b870713          	addi	a4,a4,1464 # 80006be8 <Te2>
    80001638:	1782                	slli	a5,a5,0x20
    8000163a:	9381                	srli	a5,a5,0x20
    8000163c:	078a                	slli	a5,a5,0x2
    8000163e:	97ba                	add	a5,a5,a4
    80001640:	439c                	lw	a5,0(a5)
    80001642:	8736                	mv	a4,a3
    80001644:	8fb9                	xor	a5,a5,a4
    80001646:	0007869b          	sext.w	a3,a5
    8000164a:	fe842783          	lw	a5,-24(s0)
    8000164e:	0ff7f793          	andi	a5,a5,255
    80001652:	2781                	sext.w	a5,a5
    80001654:	00006717          	auipc	a4,0x6
    80001658:	99470713          	addi	a4,a4,-1644 # 80006fe8 <Te3>
    8000165c:	1782                	slli	a5,a5,0x20
    8000165e:	9381                	srli	a5,a5,0x20
    80001660:	078a                	slli	a5,a5,0x2
    80001662:	97ba                	add	a5,a5,a4
    80001664:	439c                	lw	a5,0(a5)
    80001666:	8736                	mv	a4,a3
    80001668:	8fb9                	xor	a5,a5,a4
    8000166a:	0007871b          	sext.w	a4,a5
    8000166e:	fc843783          	ld	a5,-56(s0)
    80001672:	5f9c                	lw	a5,56(a5)
    80001674:	8fb9                	xor	a5,a5,a4
    80001676:	fcf42a23          	sw	a5,-44(s0)
    8000167a:	fe042783          	lw	a5,-32(s0)
    8000167e:	0187d79b          	srliw	a5,a5,0x18
    80001682:	2781                	sext.w	a5,a5
    80001684:	00005717          	auipc	a4,0x5
    80001688:	d6470713          	addi	a4,a4,-668 # 800063e8 <Te0>
    8000168c:	1782                	slli	a5,a5,0x20
    8000168e:	9381                	srli	a5,a5,0x20
    80001690:	078a                	slli	a5,a5,0x2
    80001692:	97ba                	add	a5,a5,a4
    80001694:	4394                	lw	a3,0(a5)
    80001696:	fec42783          	lw	a5,-20(s0)
    8000169a:	0107d79b          	srliw	a5,a5,0x10
    8000169e:	2781                	sext.w	a5,a5
    800016a0:	0ff7f793          	andi	a5,a5,255
    800016a4:	2781                	sext.w	a5,a5
    800016a6:	00005717          	auipc	a4,0x5
    800016aa:	14270713          	addi	a4,a4,322 # 800067e8 <Te1>
    800016ae:	1782                	slli	a5,a5,0x20
    800016b0:	9381                	srli	a5,a5,0x20
    800016b2:	078a                	slli	a5,a5,0x2
    800016b4:	97ba                	add	a5,a5,a4
    800016b6:	439c                	lw	a5,0(a5)
    800016b8:	8736                	mv	a4,a3
    800016ba:	8fb9                	xor	a5,a5,a4
    800016bc:	0007869b          	sext.w	a3,a5
    800016c0:	fe842783          	lw	a5,-24(s0)
    800016c4:	0087d79b          	srliw	a5,a5,0x8
    800016c8:	2781                	sext.w	a5,a5
    800016ca:	0ff7f793          	andi	a5,a5,255
    800016ce:	2781                	sext.w	a5,a5
    800016d0:	00005717          	auipc	a4,0x5
    800016d4:	51870713          	addi	a4,a4,1304 # 80006be8 <Te2>
    800016d8:	1782                	slli	a5,a5,0x20
    800016da:	9381                	srli	a5,a5,0x20
    800016dc:	078a                	slli	a5,a5,0x2
    800016de:	97ba                	add	a5,a5,a4
    800016e0:	439c                	lw	a5,0(a5)
    800016e2:	8736                	mv	a4,a3
    800016e4:	8fb9                	xor	a5,a5,a4
    800016e6:	0007869b          	sext.w	a3,a5
    800016ea:	fe442783          	lw	a5,-28(s0)
    800016ee:	0ff7f793          	andi	a5,a5,255
    800016f2:	2781                	sext.w	a5,a5
    800016f4:	00006717          	auipc	a4,0x6
    800016f8:	8f470713          	addi	a4,a4,-1804 # 80006fe8 <Te3>
    800016fc:	1782                	slli	a5,a5,0x20
    800016fe:	9381                	srli	a5,a5,0x20
    80001700:	078a                	slli	a5,a5,0x2
    80001702:	97ba                	add	a5,a5,a4
    80001704:	439c                	lw	a5,0(a5)
    80001706:	8736                	mv	a4,a3
    80001708:	8fb9                	xor	a5,a5,a4
    8000170a:	0007871b          	sext.w	a4,a5
    8000170e:	fc843783          	ld	a5,-56(s0)
    80001712:	5fdc                	lw	a5,60(a5)
    80001714:	8fb9                	xor	a5,a5,a4
    80001716:	fcf42823          	sw	a5,-48(s0)
    8000171a:	fdc42783          	lw	a5,-36(s0)
    8000171e:	0187d79b          	srliw	a5,a5,0x18
    80001722:	2781                	sext.w	a5,a5
    80001724:	00005717          	auipc	a4,0x5
    80001728:	cc470713          	addi	a4,a4,-828 # 800063e8 <Te0>
    8000172c:	1782                	slli	a5,a5,0x20
    8000172e:	9381                	srli	a5,a5,0x20
    80001730:	078a                	slli	a5,a5,0x2
    80001732:	97ba                	add	a5,a5,a4
    80001734:	4394                	lw	a3,0(a5)
    80001736:	fd842783          	lw	a5,-40(s0)
    8000173a:	0107d79b          	srliw	a5,a5,0x10
    8000173e:	2781                	sext.w	a5,a5
    80001740:	0ff7f793          	andi	a5,a5,255
    80001744:	2781                	sext.w	a5,a5
    80001746:	00005717          	auipc	a4,0x5
    8000174a:	0a270713          	addi	a4,a4,162 # 800067e8 <Te1>
    8000174e:	1782                	slli	a5,a5,0x20
    80001750:	9381                	srli	a5,a5,0x20
    80001752:	078a                	slli	a5,a5,0x2
    80001754:	97ba                	add	a5,a5,a4
    80001756:	439c                	lw	a5,0(a5)
    80001758:	8736                	mv	a4,a3
    8000175a:	8fb9                	xor	a5,a5,a4
    8000175c:	0007869b          	sext.w	a3,a5
    80001760:	fd442783          	lw	a5,-44(s0)
    80001764:	0087d79b          	srliw	a5,a5,0x8
    80001768:	2781                	sext.w	a5,a5
    8000176a:	0ff7f793          	andi	a5,a5,255
    8000176e:	2781                	sext.w	a5,a5
    80001770:	00005717          	auipc	a4,0x5
    80001774:	47870713          	addi	a4,a4,1144 # 80006be8 <Te2>
    80001778:	1782                	slli	a5,a5,0x20
    8000177a:	9381                	srli	a5,a5,0x20
    8000177c:	078a                	slli	a5,a5,0x2
    8000177e:	97ba                	add	a5,a5,a4
    80001780:	439c                	lw	a5,0(a5)
    80001782:	8736                	mv	a4,a3
    80001784:	8fb9                	xor	a5,a5,a4
    80001786:	0007869b          	sext.w	a3,a5
    8000178a:	fd042783          	lw	a5,-48(s0)
    8000178e:	0ff7f793          	andi	a5,a5,255
    80001792:	2781                	sext.w	a5,a5
    80001794:	00006717          	auipc	a4,0x6
    80001798:	85470713          	addi	a4,a4,-1964 # 80006fe8 <Te3>
    8000179c:	1782                	slli	a5,a5,0x20
    8000179e:	9381                	srli	a5,a5,0x20
    800017a0:	078a                	slli	a5,a5,0x2
    800017a2:	97ba                	add	a5,a5,a4
    800017a4:	439c                	lw	a5,0(a5)
    800017a6:	8736                	mv	a4,a3
    800017a8:	8fb9                	xor	a5,a5,a4
    800017aa:	0007871b          	sext.w	a4,a5
    800017ae:	fc843783          	ld	a5,-56(s0)
    800017b2:	43bc                	lw	a5,64(a5)
    800017b4:	8fb9                	xor	a5,a5,a4
    800017b6:	fef42623          	sw	a5,-20(s0)
    800017ba:	fd842783          	lw	a5,-40(s0)
    800017be:	0187d79b          	srliw	a5,a5,0x18
    800017c2:	2781                	sext.w	a5,a5
    800017c4:	00005717          	auipc	a4,0x5
    800017c8:	c2470713          	addi	a4,a4,-988 # 800063e8 <Te0>
    800017cc:	1782                	slli	a5,a5,0x20
    800017ce:	9381                	srli	a5,a5,0x20
    800017d0:	078a                	slli	a5,a5,0x2
    800017d2:	97ba                	add	a5,a5,a4
    800017d4:	4394                	lw	a3,0(a5)
    800017d6:	fd442783          	lw	a5,-44(s0)
    800017da:	0107d79b          	srliw	a5,a5,0x10
    800017de:	2781                	sext.w	a5,a5
    800017e0:	0ff7f793          	andi	a5,a5,255
    800017e4:	2781                	sext.w	a5,a5
    800017e6:	00005717          	auipc	a4,0x5
    800017ea:	00270713          	addi	a4,a4,2 # 800067e8 <Te1>
    800017ee:	1782                	slli	a5,a5,0x20
    800017f0:	9381                	srli	a5,a5,0x20
    800017f2:	078a                	slli	a5,a5,0x2
    800017f4:	97ba                	add	a5,a5,a4
    800017f6:	439c                	lw	a5,0(a5)
    800017f8:	8736                	mv	a4,a3
    800017fa:	8fb9                	xor	a5,a5,a4
    800017fc:	0007869b          	sext.w	a3,a5
    80001800:	fd042783          	lw	a5,-48(s0)
    80001804:	0087d79b          	srliw	a5,a5,0x8
    80001808:	2781                	sext.w	a5,a5
    8000180a:	0ff7f793          	andi	a5,a5,255
    8000180e:	2781                	sext.w	a5,a5
    80001810:	00005717          	auipc	a4,0x5
    80001814:	3d870713          	addi	a4,a4,984 # 80006be8 <Te2>
    80001818:	1782                	slli	a5,a5,0x20
    8000181a:	9381                	srli	a5,a5,0x20
    8000181c:	078a                	slli	a5,a5,0x2
    8000181e:	97ba                	add	a5,a5,a4
    80001820:	439c                	lw	a5,0(a5)
    80001822:	8736                	mv	a4,a3
    80001824:	8fb9                	xor	a5,a5,a4
    80001826:	0007869b          	sext.w	a3,a5
    8000182a:	fdc42783          	lw	a5,-36(s0)
    8000182e:	0ff7f793          	andi	a5,a5,255
    80001832:	2781                	sext.w	a5,a5
    80001834:	00005717          	auipc	a4,0x5
    80001838:	7b470713          	addi	a4,a4,1972 # 80006fe8 <Te3>
    8000183c:	1782                	slli	a5,a5,0x20
    8000183e:	9381                	srli	a5,a5,0x20
    80001840:	078a                	slli	a5,a5,0x2
    80001842:	97ba                	add	a5,a5,a4
    80001844:	439c                	lw	a5,0(a5)
    80001846:	8736                	mv	a4,a3
    80001848:	8fb9                	xor	a5,a5,a4
    8000184a:	0007871b          	sext.w	a4,a5
    8000184e:	fc843783          	ld	a5,-56(s0)
    80001852:	43fc                	lw	a5,68(a5)
    80001854:	8fb9                	xor	a5,a5,a4
    80001856:	fef42423          	sw	a5,-24(s0)
    8000185a:	fd442783          	lw	a5,-44(s0)
    8000185e:	0187d79b          	srliw	a5,a5,0x18
    80001862:	2781                	sext.w	a5,a5
    80001864:	00005717          	auipc	a4,0x5
    80001868:	b8470713          	addi	a4,a4,-1148 # 800063e8 <Te0>
    8000186c:	1782                	slli	a5,a5,0x20
    8000186e:	9381                	srli	a5,a5,0x20
    80001870:	078a                	slli	a5,a5,0x2
    80001872:	97ba                	add	a5,a5,a4
    80001874:	4394                	lw	a3,0(a5)
    80001876:	fd042783          	lw	a5,-48(s0)
    8000187a:	0107d79b          	srliw	a5,a5,0x10
    8000187e:	2781                	sext.w	a5,a5
    80001880:	0ff7f793          	andi	a5,a5,255
    80001884:	2781                	sext.w	a5,a5
    80001886:	00005717          	auipc	a4,0x5
    8000188a:	f6270713          	addi	a4,a4,-158 # 800067e8 <Te1>
    8000188e:	1782                	slli	a5,a5,0x20
    80001890:	9381                	srli	a5,a5,0x20
    80001892:	078a                	slli	a5,a5,0x2
    80001894:	97ba                	add	a5,a5,a4
    80001896:	439c                	lw	a5,0(a5)
    80001898:	8736                	mv	a4,a3
    8000189a:	8fb9                	xor	a5,a5,a4
    8000189c:	0007869b          	sext.w	a3,a5
    800018a0:	fdc42783          	lw	a5,-36(s0)
    800018a4:	0087d79b          	srliw	a5,a5,0x8
    800018a8:	2781                	sext.w	a5,a5
    800018aa:	0ff7f793          	andi	a5,a5,255
    800018ae:	2781                	sext.w	a5,a5
    800018b0:	00005717          	auipc	a4,0x5
    800018b4:	33870713          	addi	a4,a4,824 # 80006be8 <Te2>
    800018b8:	1782                	slli	a5,a5,0x20
    800018ba:	9381                	srli	a5,a5,0x20
    800018bc:	078a                	slli	a5,a5,0x2
    800018be:	97ba                	add	a5,a5,a4
    800018c0:	439c                	lw	a5,0(a5)
    800018c2:	8736                	mv	a4,a3
    800018c4:	8fb9                	xor	a5,a5,a4
    800018c6:	0007869b          	sext.w	a3,a5
    800018ca:	fd842783          	lw	a5,-40(s0)
    800018ce:	0ff7f793          	andi	a5,a5,255
    800018d2:	2781                	sext.w	a5,a5
    800018d4:	00005717          	auipc	a4,0x5
    800018d8:	71470713          	addi	a4,a4,1812 # 80006fe8 <Te3>
    800018dc:	1782                	slli	a5,a5,0x20
    800018de:	9381                	srli	a5,a5,0x20
    800018e0:	078a                	slli	a5,a5,0x2
    800018e2:	97ba                	add	a5,a5,a4
    800018e4:	439c                	lw	a5,0(a5)
    800018e6:	8736                	mv	a4,a3
    800018e8:	8fb9                	xor	a5,a5,a4
    800018ea:	0007871b          	sext.w	a4,a5
    800018ee:	fc843783          	ld	a5,-56(s0)
    800018f2:	47bc                	lw	a5,72(a5)
    800018f4:	8fb9                	xor	a5,a5,a4
    800018f6:	fef42223          	sw	a5,-28(s0)
    800018fa:	fd042783          	lw	a5,-48(s0)
    800018fe:	0187d79b          	srliw	a5,a5,0x18
    80001902:	2781                	sext.w	a5,a5
    80001904:	00005717          	auipc	a4,0x5
    80001908:	ae470713          	addi	a4,a4,-1308 # 800063e8 <Te0>
    8000190c:	1782                	slli	a5,a5,0x20
    8000190e:	9381                	srli	a5,a5,0x20
    80001910:	078a                	slli	a5,a5,0x2
    80001912:	97ba                	add	a5,a5,a4
    80001914:	4394                	lw	a3,0(a5)
    80001916:	fdc42783          	lw	a5,-36(s0)
    8000191a:	0107d79b          	srliw	a5,a5,0x10
    8000191e:	2781                	sext.w	a5,a5
    80001920:	0ff7f793          	andi	a5,a5,255
    80001924:	2781                	sext.w	a5,a5
    80001926:	00005717          	auipc	a4,0x5
    8000192a:	ec270713          	addi	a4,a4,-318 # 800067e8 <Te1>
    8000192e:	1782                	slli	a5,a5,0x20
    80001930:	9381                	srli	a5,a5,0x20
    80001932:	078a                	slli	a5,a5,0x2
    80001934:	97ba                	add	a5,a5,a4
    80001936:	439c                	lw	a5,0(a5)
    80001938:	8736                	mv	a4,a3
    8000193a:	8fb9                	xor	a5,a5,a4
    8000193c:	0007869b          	sext.w	a3,a5
    80001940:	fd842783          	lw	a5,-40(s0)
    80001944:	0087d79b          	srliw	a5,a5,0x8
    80001948:	2781                	sext.w	a5,a5
    8000194a:	0ff7f793          	andi	a5,a5,255
    8000194e:	2781                	sext.w	a5,a5
    80001950:	00005717          	auipc	a4,0x5
    80001954:	29870713          	addi	a4,a4,664 # 80006be8 <Te2>
    80001958:	1782                	slli	a5,a5,0x20
    8000195a:	9381                	srli	a5,a5,0x20
    8000195c:	078a                	slli	a5,a5,0x2
    8000195e:	97ba                	add	a5,a5,a4
    80001960:	439c                	lw	a5,0(a5)
    80001962:	8736                	mv	a4,a3
    80001964:	8fb9                	xor	a5,a5,a4
    80001966:	0007869b          	sext.w	a3,a5
    8000196a:	fd442783          	lw	a5,-44(s0)
    8000196e:	0ff7f793          	andi	a5,a5,255
    80001972:	2781                	sext.w	a5,a5
    80001974:	00005717          	auipc	a4,0x5
    80001978:	67470713          	addi	a4,a4,1652 # 80006fe8 <Te3>
    8000197c:	1782                	slli	a5,a5,0x20
    8000197e:	9381                	srli	a5,a5,0x20
    80001980:	078a                	slli	a5,a5,0x2
    80001982:	97ba                	add	a5,a5,a4
    80001984:	439c                	lw	a5,0(a5)
    80001986:	8736                	mv	a4,a3
    80001988:	8fb9                	xor	a5,a5,a4
    8000198a:	0007871b          	sext.w	a4,a5
    8000198e:	fc843783          	ld	a5,-56(s0)
    80001992:	47fc                	lw	a5,76(a5)
    80001994:	8fb9                	xor	a5,a5,a4
    80001996:	fef42023          	sw	a5,-32(s0)
    8000199a:	fec42783          	lw	a5,-20(s0)
    8000199e:	0187d79b          	srliw	a5,a5,0x18
    800019a2:	2781                	sext.w	a5,a5
    800019a4:	00005717          	auipc	a4,0x5
    800019a8:	a4470713          	addi	a4,a4,-1468 # 800063e8 <Te0>
    800019ac:	1782                	slli	a5,a5,0x20
    800019ae:	9381                	srli	a5,a5,0x20
    800019b0:	078a                	slli	a5,a5,0x2
    800019b2:	97ba                	add	a5,a5,a4
    800019b4:	4394                	lw	a3,0(a5)
    800019b6:	fe842783          	lw	a5,-24(s0)
    800019ba:	0107d79b          	srliw	a5,a5,0x10
    800019be:	2781                	sext.w	a5,a5
    800019c0:	0ff7f793          	andi	a5,a5,255
    800019c4:	2781                	sext.w	a5,a5
    800019c6:	00005717          	auipc	a4,0x5
    800019ca:	e2270713          	addi	a4,a4,-478 # 800067e8 <Te1>
    800019ce:	1782                	slli	a5,a5,0x20
    800019d0:	9381                	srli	a5,a5,0x20
    800019d2:	078a                	slli	a5,a5,0x2
    800019d4:	97ba                	add	a5,a5,a4
    800019d6:	439c                	lw	a5,0(a5)
    800019d8:	8736                	mv	a4,a3
    800019da:	8fb9                	xor	a5,a5,a4
    800019dc:	0007869b          	sext.w	a3,a5
    800019e0:	fe442783          	lw	a5,-28(s0)
    800019e4:	0087d79b          	srliw	a5,a5,0x8
    800019e8:	2781                	sext.w	a5,a5
    800019ea:	0ff7f793          	andi	a5,a5,255
    800019ee:	2781                	sext.w	a5,a5
    800019f0:	00005717          	auipc	a4,0x5
    800019f4:	1f870713          	addi	a4,a4,504 # 80006be8 <Te2>
    800019f8:	1782                	slli	a5,a5,0x20
    800019fa:	9381                	srli	a5,a5,0x20
    800019fc:	078a                	slli	a5,a5,0x2
    800019fe:	97ba                	add	a5,a5,a4
    80001a00:	439c                	lw	a5,0(a5)
    80001a02:	8736                	mv	a4,a3
    80001a04:	8fb9                	xor	a5,a5,a4
    80001a06:	0007869b          	sext.w	a3,a5
    80001a0a:	fe042783          	lw	a5,-32(s0)
    80001a0e:	0ff7f793          	andi	a5,a5,255
    80001a12:	2781                	sext.w	a5,a5
    80001a14:	00005717          	auipc	a4,0x5
    80001a18:	5d470713          	addi	a4,a4,1492 # 80006fe8 <Te3>
    80001a1c:	1782                	slli	a5,a5,0x20
    80001a1e:	9381                	srli	a5,a5,0x20
    80001a20:	078a                	slli	a5,a5,0x2
    80001a22:	97ba                	add	a5,a5,a4
    80001a24:	439c                	lw	a5,0(a5)
    80001a26:	8736                	mv	a4,a3
    80001a28:	8fb9                	xor	a5,a5,a4
    80001a2a:	0007871b          	sext.w	a4,a5
    80001a2e:	fc843783          	ld	a5,-56(s0)
    80001a32:	4bbc                	lw	a5,80(a5)
    80001a34:	8fb9                	xor	a5,a5,a4
    80001a36:	fcf42e23          	sw	a5,-36(s0)
    80001a3a:	fe842783          	lw	a5,-24(s0)
    80001a3e:	0187d79b          	srliw	a5,a5,0x18
    80001a42:	2781                	sext.w	a5,a5
    80001a44:	00005717          	auipc	a4,0x5
    80001a48:	9a470713          	addi	a4,a4,-1628 # 800063e8 <Te0>
    80001a4c:	1782                	slli	a5,a5,0x20
    80001a4e:	9381                	srli	a5,a5,0x20
    80001a50:	078a                	slli	a5,a5,0x2
    80001a52:	97ba                	add	a5,a5,a4
    80001a54:	4394                	lw	a3,0(a5)
    80001a56:	fe442783          	lw	a5,-28(s0)
    80001a5a:	0107d79b          	srliw	a5,a5,0x10
    80001a5e:	2781                	sext.w	a5,a5
    80001a60:	0ff7f793          	andi	a5,a5,255
    80001a64:	2781                	sext.w	a5,a5
    80001a66:	00005717          	auipc	a4,0x5
    80001a6a:	d8270713          	addi	a4,a4,-638 # 800067e8 <Te1>
    80001a6e:	1782                	slli	a5,a5,0x20
    80001a70:	9381                	srli	a5,a5,0x20
    80001a72:	078a                	slli	a5,a5,0x2
    80001a74:	97ba                	add	a5,a5,a4
    80001a76:	439c                	lw	a5,0(a5)
    80001a78:	8736                	mv	a4,a3
    80001a7a:	8fb9                	xor	a5,a5,a4
    80001a7c:	0007869b          	sext.w	a3,a5
    80001a80:	fe042783          	lw	a5,-32(s0)
    80001a84:	0087d79b          	srliw	a5,a5,0x8
    80001a88:	2781                	sext.w	a5,a5
    80001a8a:	0ff7f793          	andi	a5,a5,255
    80001a8e:	2781                	sext.w	a5,a5
    80001a90:	00005717          	auipc	a4,0x5
    80001a94:	15870713          	addi	a4,a4,344 # 80006be8 <Te2>
    80001a98:	1782                	slli	a5,a5,0x20
    80001a9a:	9381                	srli	a5,a5,0x20
    80001a9c:	078a                	slli	a5,a5,0x2
    80001a9e:	97ba                	add	a5,a5,a4
    80001aa0:	439c                	lw	a5,0(a5)
    80001aa2:	8736                	mv	a4,a3
    80001aa4:	8fb9                	xor	a5,a5,a4
    80001aa6:	0007869b          	sext.w	a3,a5
    80001aaa:	fec42783          	lw	a5,-20(s0)
    80001aae:	0ff7f793          	andi	a5,a5,255
    80001ab2:	2781                	sext.w	a5,a5
    80001ab4:	00005717          	auipc	a4,0x5
    80001ab8:	53470713          	addi	a4,a4,1332 # 80006fe8 <Te3>
    80001abc:	1782                	slli	a5,a5,0x20
    80001abe:	9381                	srli	a5,a5,0x20
    80001ac0:	078a                	slli	a5,a5,0x2
    80001ac2:	97ba                	add	a5,a5,a4
    80001ac4:	439c                	lw	a5,0(a5)
    80001ac6:	8736                	mv	a4,a3
    80001ac8:	8fb9                	xor	a5,a5,a4
    80001aca:	0007871b          	sext.w	a4,a5
    80001ace:	fc843783          	ld	a5,-56(s0)
    80001ad2:	4bfc                	lw	a5,84(a5)
    80001ad4:	8fb9                	xor	a5,a5,a4
    80001ad6:	fcf42c23          	sw	a5,-40(s0)
    80001ada:	fe442783          	lw	a5,-28(s0)
    80001ade:	0187d79b          	srliw	a5,a5,0x18
    80001ae2:	2781                	sext.w	a5,a5
    80001ae4:	00005717          	auipc	a4,0x5
    80001ae8:	90470713          	addi	a4,a4,-1788 # 800063e8 <Te0>
    80001aec:	1782                	slli	a5,a5,0x20
    80001aee:	9381                	srli	a5,a5,0x20
    80001af0:	078a                	slli	a5,a5,0x2
    80001af2:	97ba                	add	a5,a5,a4
    80001af4:	4394                	lw	a3,0(a5)
    80001af6:	fe042783          	lw	a5,-32(s0)
    80001afa:	0107d79b          	srliw	a5,a5,0x10
    80001afe:	2781                	sext.w	a5,a5
    80001b00:	0ff7f793          	andi	a5,a5,255
    80001b04:	2781                	sext.w	a5,a5
    80001b06:	00005717          	auipc	a4,0x5
    80001b0a:	ce270713          	addi	a4,a4,-798 # 800067e8 <Te1>
    80001b0e:	1782                	slli	a5,a5,0x20
    80001b10:	9381                	srli	a5,a5,0x20
    80001b12:	078a                	slli	a5,a5,0x2
    80001b14:	97ba                	add	a5,a5,a4
    80001b16:	439c                	lw	a5,0(a5)
    80001b18:	8736                	mv	a4,a3
    80001b1a:	8fb9                	xor	a5,a5,a4
    80001b1c:	0007869b          	sext.w	a3,a5
    80001b20:	fec42783          	lw	a5,-20(s0)
    80001b24:	0087d79b          	srliw	a5,a5,0x8
    80001b28:	2781                	sext.w	a5,a5
    80001b2a:	0ff7f793          	andi	a5,a5,255
    80001b2e:	2781                	sext.w	a5,a5
    80001b30:	00005717          	auipc	a4,0x5
    80001b34:	0b870713          	addi	a4,a4,184 # 80006be8 <Te2>
    80001b38:	1782                	slli	a5,a5,0x20
    80001b3a:	9381                	srli	a5,a5,0x20
    80001b3c:	078a                	slli	a5,a5,0x2
    80001b3e:	97ba                	add	a5,a5,a4
    80001b40:	439c                	lw	a5,0(a5)
    80001b42:	8736                	mv	a4,a3
    80001b44:	8fb9                	xor	a5,a5,a4
    80001b46:	0007869b          	sext.w	a3,a5
    80001b4a:	fe842783          	lw	a5,-24(s0)
    80001b4e:	0ff7f793          	andi	a5,a5,255
    80001b52:	2781                	sext.w	a5,a5
    80001b54:	00005717          	auipc	a4,0x5
    80001b58:	49470713          	addi	a4,a4,1172 # 80006fe8 <Te3>
    80001b5c:	1782                	slli	a5,a5,0x20
    80001b5e:	9381                	srli	a5,a5,0x20
    80001b60:	078a                	slli	a5,a5,0x2
    80001b62:	97ba                	add	a5,a5,a4
    80001b64:	439c                	lw	a5,0(a5)
    80001b66:	8736                	mv	a4,a3
    80001b68:	8fb9                	xor	a5,a5,a4
    80001b6a:	0007871b          	sext.w	a4,a5
    80001b6e:	fc843783          	ld	a5,-56(s0)
    80001b72:	4fbc                	lw	a5,88(a5)
    80001b74:	8fb9                	xor	a5,a5,a4
    80001b76:	fcf42a23          	sw	a5,-44(s0)
    80001b7a:	fe042783          	lw	a5,-32(s0)
    80001b7e:	0187d79b          	srliw	a5,a5,0x18
    80001b82:	2781                	sext.w	a5,a5
    80001b84:	00005717          	auipc	a4,0x5
    80001b88:	86470713          	addi	a4,a4,-1948 # 800063e8 <Te0>
    80001b8c:	1782                	slli	a5,a5,0x20
    80001b8e:	9381                	srli	a5,a5,0x20
    80001b90:	078a                	slli	a5,a5,0x2
    80001b92:	97ba                	add	a5,a5,a4
    80001b94:	4394                	lw	a3,0(a5)
    80001b96:	fec42783          	lw	a5,-20(s0)
    80001b9a:	0107d79b          	srliw	a5,a5,0x10
    80001b9e:	2781                	sext.w	a5,a5
    80001ba0:	0ff7f793          	andi	a5,a5,255
    80001ba4:	2781                	sext.w	a5,a5
    80001ba6:	00005717          	auipc	a4,0x5
    80001baa:	c4270713          	addi	a4,a4,-958 # 800067e8 <Te1>
    80001bae:	1782                	slli	a5,a5,0x20
    80001bb0:	9381                	srli	a5,a5,0x20
    80001bb2:	078a                	slli	a5,a5,0x2
    80001bb4:	97ba                	add	a5,a5,a4
    80001bb6:	439c                	lw	a5,0(a5)
    80001bb8:	8736                	mv	a4,a3
    80001bba:	8fb9                	xor	a5,a5,a4
    80001bbc:	0007869b          	sext.w	a3,a5
    80001bc0:	fe842783          	lw	a5,-24(s0)
    80001bc4:	0087d79b          	srliw	a5,a5,0x8
    80001bc8:	2781                	sext.w	a5,a5
    80001bca:	0ff7f793          	andi	a5,a5,255
    80001bce:	2781                	sext.w	a5,a5
    80001bd0:	00005717          	auipc	a4,0x5
    80001bd4:	01870713          	addi	a4,a4,24 # 80006be8 <Te2>
    80001bd8:	1782                	slli	a5,a5,0x20
    80001bda:	9381                	srli	a5,a5,0x20
    80001bdc:	078a                	slli	a5,a5,0x2
    80001bde:	97ba                	add	a5,a5,a4
    80001be0:	439c                	lw	a5,0(a5)
    80001be2:	8736                	mv	a4,a3
    80001be4:	8fb9                	xor	a5,a5,a4
    80001be6:	0007869b          	sext.w	a3,a5
    80001bea:	fe442783          	lw	a5,-28(s0)
    80001bee:	0ff7f793          	andi	a5,a5,255
    80001bf2:	2781                	sext.w	a5,a5
    80001bf4:	00005717          	auipc	a4,0x5
    80001bf8:	3f470713          	addi	a4,a4,1012 # 80006fe8 <Te3>
    80001bfc:	1782                	slli	a5,a5,0x20
    80001bfe:	9381                	srli	a5,a5,0x20
    80001c00:	078a                	slli	a5,a5,0x2
    80001c02:	97ba                	add	a5,a5,a4
    80001c04:	439c                	lw	a5,0(a5)
    80001c06:	8736                	mv	a4,a3
    80001c08:	8fb9                	xor	a5,a5,a4
    80001c0a:	0007871b          	sext.w	a4,a5
    80001c0e:	fc843783          	ld	a5,-56(s0)
    80001c12:	4ffc                	lw	a5,92(a5)
    80001c14:	8fb9                	xor	a5,a5,a4
    80001c16:	fcf42823          	sw	a5,-48(s0)
    80001c1a:	fdc42783          	lw	a5,-36(s0)
    80001c1e:	0187d79b          	srliw	a5,a5,0x18
    80001c22:	2781                	sext.w	a5,a5
    80001c24:	00004717          	auipc	a4,0x4
    80001c28:	7c470713          	addi	a4,a4,1988 # 800063e8 <Te0>
    80001c2c:	1782                	slli	a5,a5,0x20
    80001c2e:	9381                	srli	a5,a5,0x20
    80001c30:	078a                	slli	a5,a5,0x2
    80001c32:	97ba                	add	a5,a5,a4
    80001c34:	4394                	lw	a3,0(a5)
    80001c36:	fd842783          	lw	a5,-40(s0)
    80001c3a:	0107d79b          	srliw	a5,a5,0x10
    80001c3e:	2781                	sext.w	a5,a5
    80001c40:	0ff7f793          	andi	a5,a5,255
    80001c44:	2781                	sext.w	a5,a5
    80001c46:	00005717          	auipc	a4,0x5
    80001c4a:	ba270713          	addi	a4,a4,-1118 # 800067e8 <Te1>
    80001c4e:	1782                	slli	a5,a5,0x20
    80001c50:	9381                	srli	a5,a5,0x20
    80001c52:	078a                	slli	a5,a5,0x2
    80001c54:	97ba                	add	a5,a5,a4
    80001c56:	439c                	lw	a5,0(a5)
    80001c58:	8736                	mv	a4,a3
    80001c5a:	8fb9                	xor	a5,a5,a4
    80001c5c:	0007869b          	sext.w	a3,a5
    80001c60:	fd442783          	lw	a5,-44(s0)
    80001c64:	0087d79b          	srliw	a5,a5,0x8
    80001c68:	2781                	sext.w	a5,a5
    80001c6a:	0ff7f793          	andi	a5,a5,255
    80001c6e:	2781                	sext.w	a5,a5
    80001c70:	00005717          	auipc	a4,0x5
    80001c74:	f7870713          	addi	a4,a4,-136 # 80006be8 <Te2>
    80001c78:	1782                	slli	a5,a5,0x20
    80001c7a:	9381                	srli	a5,a5,0x20
    80001c7c:	078a                	slli	a5,a5,0x2
    80001c7e:	97ba                	add	a5,a5,a4
    80001c80:	439c                	lw	a5,0(a5)
    80001c82:	8736                	mv	a4,a3
    80001c84:	8fb9                	xor	a5,a5,a4
    80001c86:	0007869b          	sext.w	a3,a5
    80001c8a:	fd042783          	lw	a5,-48(s0)
    80001c8e:	0ff7f793          	andi	a5,a5,255
    80001c92:	2781                	sext.w	a5,a5
    80001c94:	00005717          	auipc	a4,0x5
    80001c98:	35470713          	addi	a4,a4,852 # 80006fe8 <Te3>
    80001c9c:	1782                	slli	a5,a5,0x20
    80001c9e:	9381                	srli	a5,a5,0x20
    80001ca0:	078a                	slli	a5,a5,0x2
    80001ca2:	97ba                	add	a5,a5,a4
    80001ca4:	439c                	lw	a5,0(a5)
    80001ca6:	8736                	mv	a4,a3
    80001ca8:	8fb9                	xor	a5,a5,a4
    80001caa:	0007871b          	sext.w	a4,a5
    80001cae:	fc843783          	ld	a5,-56(s0)
    80001cb2:	53bc                	lw	a5,96(a5)
    80001cb4:	8fb9                	xor	a5,a5,a4
    80001cb6:	fef42623          	sw	a5,-20(s0)
    80001cba:	fd842783          	lw	a5,-40(s0)
    80001cbe:	0187d79b          	srliw	a5,a5,0x18
    80001cc2:	2781                	sext.w	a5,a5
    80001cc4:	00004717          	auipc	a4,0x4
    80001cc8:	72470713          	addi	a4,a4,1828 # 800063e8 <Te0>
    80001ccc:	1782                	slli	a5,a5,0x20
    80001cce:	9381                	srli	a5,a5,0x20
    80001cd0:	078a                	slli	a5,a5,0x2
    80001cd2:	97ba                	add	a5,a5,a4
    80001cd4:	4394                	lw	a3,0(a5)
    80001cd6:	fd442783          	lw	a5,-44(s0)
    80001cda:	0107d79b          	srliw	a5,a5,0x10
    80001cde:	2781                	sext.w	a5,a5
    80001ce0:	0ff7f793          	andi	a5,a5,255
    80001ce4:	2781                	sext.w	a5,a5
    80001ce6:	00005717          	auipc	a4,0x5
    80001cea:	b0270713          	addi	a4,a4,-1278 # 800067e8 <Te1>
    80001cee:	1782                	slli	a5,a5,0x20
    80001cf0:	9381                	srli	a5,a5,0x20
    80001cf2:	078a                	slli	a5,a5,0x2
    80001cf4:	97ba                	add	a5,a5,a4
    80001cf6:	439c                	lw	a5,0(a5)
    80001cf8:	8736                	mv	a4,a3
    80001cfa:	8fb9                	xor	a5,a5,a4
    80001cfc:	0007869b          	sext.w	a3,a5
    80001d00:	fd042783          	lw	a5,-48(s0)
    80001d04:	0087d79b          	srliw	a5,a5,0x8
    80001d08:	2781                	sext.w	a5,a5
    80001d0a:	0ff7f793          	andi	a5,a5,255
    80001d0e:	2781                	sext.w	a5,a5
    80001d10:	00005717          	auipc	a4,0x5
    80001d14:	ed870713          	addi	a4,a4,-296 # 80006be8 <Te2>
    80001d18:	1782                	slli	a5,a5,0x20
    80001d1a:	9381                	srli	a5,a5,0x20
    80001d1c:	078a                	slli	a5,a5,0x2
    80001d1e:	97ba                	add	a5,a5,a4
    80001d20:	439c                	lw	a5,0(a5)
    80001d22:	8736                	mv	a4,a3
    80001d24:	8fb9                	xor	a5,a5,a4
    80001d26:	0007869b          	sext.w	a3,a5
    80001d2a:	fdc42783          	lw	a5,-36(s0)
    80001d2e:	0ff7f793          	andi	a5,a5,255
    80001d32:	2781                	sext.w	a5,a5
    80001d34:	00005717          	auipc	a4,0x5
    80001d38:	2b470713          	addi	a4,a4,692 # 80006fe8 <Te3>
    80001d3c:	1782                	slli	a5,a5,0x20
    80001d3e:	9381                	srli	a5,a5,0x20
    80001d40:	078a                	slli	a5,a5,0x2
    80001d42:	97ba                	add	a5,a5,a4
    80001d44:	439c                	lw	a5,0(a5)
    80001d46:	8736                	mv	a4,a3
    80001d48:	8fb9                	xor	a5,a5,a4
    80001d4a:	0007871b          	sext.w	a4,a5
    80001d4e:	fc843783          	ld	a5,-56(s0)
    80001d52:	53fc                	lw	a5,100(a5)
    80001d54:	8fb9                	xor	a5,a5,a4
    80001d56:	fef42423          	sw	a5,-24(s0)
    80001d5a:	fd442783          	lw	a5,-44(s0)
    80001d5e:	0187d79b          	srliw	a5,a5,0x18
    80001d62:	2781                	sext.w	a5,a5
    80001d64:	00004717          	auipc	a4,0x4
    80001d68:	68470713          	addi	a4,a4,1668 # 800063e8 <Te0>
    80001d6c:	1782                	slli	a5,a5,0x20
    80001d6e:	9381                	srli	a5,a5,0x20
    80001d70:	078a                	slli	a5,a5,0x2
    80001d72:	97ba                	add	a5,a5,a4
    80001d74:	4394                	lw	a3,0(a5)
    80001d76:	fd042783          	lw	a5,-48(s0)
    80001d7a:	0107d79b          	srliw	a5,a5,0x10
    80001d7e:	2781                	sext.w	a5,a5
    80001d80:	0ff7f793          	andi	a5,a5,255
    80001d84:	2781                	sext.w	a5,a5
    80001d86:	00005717          	auipc	a4,0x5
    80001d8a:	a6270713          	addi	a4,a4,-1438 # 800067e8 <Te1>
    80001d8e:	1782                	slli	a5,a5,0x20
    80001d90:	9381                	srli	a5,a5,0x20
    80001d92:	078a                	slli	a5,a5,0x2
    80001d94:	97ba                	add	a5,a5,a4
    80001d96:	439c                	lw	a5,0(a5)
    80001d98:	8736                	mv	a4,a3
    80001d9a:	8fb9                	xor	a5,a5,a4
    80001d9c:	0007869b          	sext.w	a3,a5
    80001da0:	fdc42783          	lw	a5,-36(s0)
    80001da4:	0087d79b          	srliw	a5,a5,0x8
    80001da8:	2781                	sext.w	a5,a5
    80001daa:	0ff7f793          	andi	a5,a5,255
    80001dae:	2781                	sext.w	a5,a5
    80001db0:	00005717          	auipc	a4,0x5
    80001db4:	e3870713          	addi	a4,a4,-456 # 80006be8 <Te2>
    80001db8:	1782                	slli	a5,a5,0x20
    80001dba:	9381                	srli	a5,a5,0x20
    80001dbc:	078a                	slli	a5,a5,0x2
    80001dbe:	97ba                	add	a5,a5,a4
    80001dc0:	439c                	lw	a5,0(a5)
    80001dc2:	8736                	mv	a4,a3
    80001dc4:	8fb9                	xor	a5,a5,a4
    80001dc6:	0007869b          	sext.w	a3,a5
    80001dca:	fd842783          	lw	a5,-40(s0)
    80001dce:	0ff7f793          	andi	a5,a5,255
    80001dd2:	2781                	sext.w	a5,a5
    80001dd4:	00005717          	auipc	a4,0x5
    80001dd8:	21470713          	addi	a4,a4,532 # 80006fe8 <Te3>
    80001ddc:	1782                	slli	a5,a5,0x20
    80001dde:	9381                	srli	a5,a5,0x20
    80001de0:	078a                	slli	a5,a5,0x2
    80001de2:	97ba                	add	a5,a5,a4
    80001de4:	439c                	lw	a5,0(a5)
    80001de6:	8736                	mv	a4,a3
    80001de8:	8fb9                	xor	a5,a5,a4
    80001dea:	0007871b          	sext.w	a4,a5
    80001dee:	fc843783          	ld	a5,-56(s0)
    80001df2:	57bc                	lw	a5,104(a5)
    80001df4:	8fb9                	xor	a5,a5,a4
    80001df6:	fef42223          	sw	a5,-28(s0)
    80001dfa:	fd042783          	lw	a5,-48(s0)
    80001dfe:	0187d79b          	srliw	a5,a5,0x18
    80001e02:	2781                	sext.w	a5,a5
    80001e04:	00004717          	auipc	a4,0x4
    80001e08:	5e470713          	addi	a4,a4,1508 # 800063e8 <Te0>
    80001e0c:	1782                	slli	a5,a5,0x20
    80001e0e:	9381                	srli	a5,a5,0x20
    80001e10:	078a                	slli	a5,a5,0x2
    80001e12:	97ba                	add	a5,a5,a4
    80001e14:	4394                	lw	a3,0(a5)
    80001e16:	fdc42783          	lw	a5,-36(s0)
    80001e1a:	0107d79b          	srliw	a5,a5,0x10
    80001e1e:	2781                	sext.w	a5,a5
    80001e20:	0ff7f793          	andi	a5,a5,255
    80001e24:	2781                	sext.w	a5,a5
    80001e26:	00005717          	auipc	a4,0x5
    80001e2a:	9c270713          	addi	a4,a4,-1598 # 800067e8 <Te1>
    80001e2e:	1782                	slli	a5,a5,0x20
    80001e30:	9381                	srli	a5,a5,0x20
    80001e32:	078a                	slli	a5,a5,0x2
    80001e34:	97ba                	add	a5,a5,a4
    80001e36:	439c                	lw	a5,0(a5)
    80001e38:	8736                	mv	a4,a3
    80001e3a:	8fb9                	xor	a5,a5,a4
    80001e3c:	0007869b          	sext.w	a3,a5
    80001e40:	fd842783          	lw	a5,-40(s0)
    80001e44:	0087d79b          	srliw	a5,a5,0x8
    80001e48:	2781                	sext.w	a5,a5
    80001e4a:	0ff7f793          	andi	a5,a5,255
    80001e4e:	2781                	sext.w	a5,a5
    80001e50:	00005717          	auipc	a4,0x5
    80001e54:	d9870713          	addi	a4,a4,-616 # 80006be8 <Te2>
    80001e58:	1782                	slli	a5,a5,0x20
    80001e5a:	9381                	srli	a5,a5,0x20
    80001e5c:	078a                	slli	a5,a5,0x2
    80001e5e:	97ba                	add	a5,a5,a4
    80001e60:	439c                	lw	a5,0(a5)
    80001e62:	8736                	mv	a4,a3
    80001e64:	8fb9                	xor	a5,a5,a4
    80001e66:	0007869b          	sext.w	a3,a5
    80001e6a:	fd442783          	lw	a5,-44(s0)
    80001e6e:	0ff7f793          	andi	a5,a5,255
    80001e72:	2781                	sext.w	a5,a5
    80001e74:	00005717          	auipc	a4,0x5
    80001e78:	17470713          	addi	a4,a4,372 # 80006fe8 <Te3>
    80001e7c:	1782                	slli	a5,a5,0x20
    80001e7e:	9381                	srli	a5,a5,0x20
    80001e80:	078a                	slli	a5,a5,0x2
    80001e82:	97ba                	add	a5,a5,a4
    80001e84:	439c                	lw	a5,0(a5)
    80001e86:	8736                	mv	a4,a3
    80001e88:	8fb9                	xor	a5,a5,a4
    80001e8a:	0007871b          	sext.w	a4,a5
    80001e8e:	fc843783          	ld	a5,-56(s0)
    80001e92:	57fc                	lw	a5,108(a5)
    80001e94:	8fb9                	xor	a5,a5,a4
    80001e96:	fef42023          	sw	a5,-32(s0)
    80001e9a:	fec42783          	lw	a5,-20(s0)
    80001e9e:	0187d79b          	srliw	a5,a5,0x18
    80001ea2:	2781                	sext.w	a5,a5
    80001ea4:	00004717          	auipc	a4,0x4
    80001ea8:	54470713          	addi	a4,a4,1348 # 800063e8 <Te0>
    80001eac:	1782                	slli	a5,a5,0x20
    80001eae:	9381                	srli	a5,a5,0x20
    80001eb0:	078a                	slli	a5,a5,0x2
    80001eb2:	97ba                	add	a5,a5,a4
    80001eb4:	4394                	lw	a3,0(a5)
    80001eb6:	fe842783          	lw	a5,-24(s0)
    80001eba:	0107d79b          	srliw	a5,a5,0x10
    80001ebe:	2781                	sext.w	a5,a5
    80001ec0:	0ff7f793          	andi	a5,a5,255
    80001ec4:	2781                	sext.w	a5,a5
    80001ec6:	00005717          	auipc	a4,0x5
    80001eca:	92270713          	addi	a4,a4,-1758 # 800067e8 <Te1>
    80001ece:	1782                	slli	a5,a5,0x20
    80001ed0:	9381                	srli	a5,a5,0x20
    80001ed2:	078a                	slli	a5,a5,0x2
    80001ed4:	97ba                	add	a5,a5,a4
    80001ed6:	439c                	lw	a5,0(a5)
    80001ed8:	8736                	mv	a4,a3
    80001eda:	8fb9                	xor	a5,a5,a4
    80001edc:	0007869b          	sext.w	a3,a5
    80001ee0:	fe442783          	lw	a5,-28(s0)
    80001ee4:	0087d79b          	srliw	a5,a5,0x8
    80001ee8:	2781                	sext.w	a5,a5
    80001eea:	0ff7f793          	andi	a5,a5,255
    80001eee:	2781                	sext.w	a5,a5
    80001ef0:	00005717          	auipc	a4,0x5
    80001ef4:	cf870713          	addi	a4,a4,-776 # 80006be8 <Te2>
    80001ef8:	1782                	slli	a5,a5,0x20
    80001efa:	9381                	srli	a5,a5,0x20
    80001efc:	078a                	slli	a5,a5,0x2
    80001efe:	97ba                	add	a5,a5,a4
    80001f00:	439c                	lw	a5,0(a5)
    80001f02:	8736                	mv	a4,a3
    80001f04:	8fb9                	xor	a5,a5,a4
    80001f06:	0007869b          	sext.w	a3,a5
    80001f0a:	fe042783          	lw	a5,-32(s0)
    80001f0e:	0ff7f793          	andi	a5,a5,255
    80001f12:	2781                	sext.w	a5,a5
    80001f14:	00005717          	auipc	a4,0x5
    80001f18:	0d470713          	addi	a4,a4,212 # 80006fe8 <Te3>
    80001f1c:	1782                	slli	a5,a5,0x20
    80001f1e:	9381                	srli	a5,a5,0x20
    80001f20:	078a                	slli	a5,a5,0x2
    80001f22:	97ba                	add	a5,a5,a4
    80001f24:	439c                	lw	a5,0(a5)
    80001f26:	8736                	mv	a4,a3
    80001f28:	8fb9                	xor	a5,a5,a4
    80001f2a:	0007871b          	sext.w	a4,a5
    80001f2e:	fc843783          	ld	a5,-56(s0)
    80001f32:	5bbc                	lw	a5,112(a5)
    80001f34:	8fb9                	xor	a5,a5,a4
    80001f36:	fcf42e23          	sw	a5,-36(s0)
    80001f3a:	fe842783          	lw	a5,-24(s0)
    80001f3e:	0187d79b          	srliw	a5,a5,0x18
    80001f42:	2781                	sext.w	a5,a5
    80001f44:	00004717          	auipc	a4,0x4
    80001f48:	4a470713          	addi	a4,a4,1188 # 800063e8 <Te0>
    80001f4c:	1782                	slli	a5,a5,0x20
    80001f4e:	9381                	srli	a5,a5,0x20
    80001f50:	078a                	slli	a5,a5,0x2
    80001f52:	97ba                	add	a5,a5,a4
    80001f54:	4394                	lw	a3,0(a5)
    80001f56:	fe442783          	lw	a5,-28(s0)
    80001f5a:	0107d79b          	srliw	a5,a5,0x10
    80001f5e:	2781                	sext.w	a5,a5
    80001f60:	0ff7f793          	andi	a5,a5,255
    80001f64:	2781                	sext.w	a5,a5
    80001f66:	00005717          	auipc	a4,0x5
    80001f6a:	88270713          	addi	a4,a4,-1918 # 800067e8 <Te1>
    80001f6e:	1782                	slli	a5,a5,0x20
    80001f70:	9381                	srli	a5,a5,0x20
    80001f72:	078a                	slli	a5,a5,0x2
    80001f74:	97ba                	add	a5,a5,a4
    80001f76:	439c                	lw	a5,0(a5)
    80001f78:	8736                	mv	a4,a3
    80001f7a:	8fb9                	xor	a5,a5,a4
    80001f7c:	0007869b          	sext.w	a3,a5
    80001f80:	fe042783          	lw	a5,-32(s0)
    80001f84:	0087d79b          	srliw	a5,a5,0x8
    80001f88:	2781                	sext.w	a5,a5
    80001f8a:	0ff7f793          	andi	a5,a5,255
    80001f8e:	2781                	sext.w	a5,a5
    80001f90:	00005717          	auipc	a4,0x5
    80001f94:	c5870713          	addi	a4,a4,-936 # 80006be8 <Te2>
    80001f98:	1782                	slli	a5,a5,0x20
    80001f9a:	9381                	srli	a5,a5,0x20
    80001f9c:	078a                	slli	a5,a5,0x2
    80001f9e:	97ba                	add	a5,a5,a4
    80001fa0:	439c                	lw	a5,0(a5)
    80001fa2:	8736                	mv	a4,a3
    80001fa4:	8fb9                	xor	a5,a5,a4
    80001fa6:	0007869b          	sext.w	a3,a5
    80001faa:	fec42783          	lw	a5,-20(s0)
    80001fae:	0ff7f793          	andi	a5,a5,255
    80001fb2:	2781                	sext.w	a5,a5
    80001fb4:	00005717          	auipc	a4,0x5
    80001fb8:	03470713          	addi	a4,a4,52 # 80006fe8 <Te3>
    80001fbc:	1782                	slli	a5,a5,0x20
    80001fbe:	9381                	srli	a5,a5,0x20
    80001fc0:	078a                	slli	a5,a5,0x2
    80001fc2:	97ba                	add	a5,a5,a4
    80001fc4:	439c                	lw	a5,0(a5)
    80001fc6:	8736                	mv	a4,a3
    80001fc8:	8fb9                	xor	a5,a5,a4
    80001fca:	0007871b          	sext.w	a4,a5
    80001fce:	fc843783          	ld	a5,-56(s0)
    80001fd2:	5bfc                	lw	a5,116(a5)
    80001fd4:	8fb9                	xor	a5,a5,a4
    80001fd6:	fcf42c23          	sw	a5,-40(s0)
    80001fda:	fe442783          	lw	a5,-28(s0)
    80001fde:	0187d79b          	srliw	a5,a5,0x18
    80001fe2:	2781                	sext.w	a5,a5
    80001fe4:	00004717          	auipc	a4,0x4
    80001fe8:	40470713          	addi	a4,a4,1028 # 800063e8 <Te0>
    80001fec:	1782                	slli	a5,a5,0x20
    80001fee:	9381                	srli	a5,a5,0x20
    80001ff0:	078a                	slli	a5,a5,0x2
    80001ff2:	97ba                	add	a5,a5,a4
    80001ff4:	4394                	lw	a3,0(a5)
    80001ff6:	fe042783          	lw	a5,-32(s0)
    80001ffa:	0107d79b          	srliw	a5,a5,0x10
    80001ffe:	2781                	sext.w	a5,a5
    80002000:	0ff7f793          	andi	a5,a5,255
    80002004:	2781                	sext.w	a5,a5
    80002006:	00004717          	auipc	a4,0x4
    8000200a:	7e270713          	addi	a4,a4,2018 # 800067e8 <Te1>
    8000200e:	1782                	slli	a5,a5,0x20
    80002010:	9381                	srli	a5,a5,0x20
    80002012:	078a                	slli	a5,a5,0x2
    80002014:	97ba                	add	a5,a5,a4
    80002016:	439c                	lw	a5,0(a5)
    80002018:	8736                	mv	a4,a3
    8000201a:	8fb9                	xor	a5,a5,a4
    8000201c:	0007869b          	sext.w	a3,a5
    80002020:	fec42783          	lw	a5,-20(s0)
    80002024:	0087d79b          	srliw	a5,a5,0x8
    80002028:	2781                	sext.w	a5,a5
    8000202a:	0ff7f793          	andi	a5,a5,255
    8000202e:	2781                	sext.w	a5,a5
    80002030:	00005717          	auipc	a4,0x5
    80002034:	bb870713          	addi	a4,a4,-1096 # 80006be8 <Te2>
    80002038:	1782                	slli	a5,a5,0x20
    8000203a:	9381                	srli	a5,a5,0x20
    8000203c:	078a                	slli	a5,a5,0x2
    8000203e:	97ba                	add	a5,a5,a4
    80002040:	439c                	lw	a5,0(a5)
    80002042:	8736                	mv	a4,a3
    80002044:	8fb9                	xor	a5,a5,a4
    80002046:	0007869b          	sext.w	a3,a5
    8000204a:	fe842783          	lw	a5,-24(s0)
    8000204e:	0ff7f793          	andi	a5,a5,255
    80002052:	2781                	sext.w	a5,a5
    80002054:	00005717          	auipc	a4,0x5
    80002058:	f9470713          	addi	a4,a4,-108 # 80006fe8 <Te3>
    8000205c:	1782                	slli	a5,a5,0x20
    8000205e:	9381                	srli	a5,a5,0x20
    80002060:	078a                	slli	a5,a5,0x2
    80002062:	97ba                	add	a5,a5,a4
    80002064:	439c                	lw	a5,0(a5)
    80002066:	8736                	mv	a4,a3
    80002068:	8fb9                	xor	a5,a5,a4
    8000206a:	0007871b          	sext.w	a4,a5
    8000206e:	fc843783          	ld	a5,-56(s0)
    80002072:	5fbc                	lw	a5,120(a5)
    80002074:	8fb9                	xor	a5,a5,a4
    80002076:	fcf42a23          	sw	a5,-44(s0)
    8000207a:	fe042783          	lw	a5,-32(s0)
    8000207e:	0187d79b          	srliw	a5,a5,0x18
    80002082:	2781                	sext.w	a5,a5
    80002084:	00004717          	auipc	a4,0x4
    80002088:	36470713          	addi	a4,a4,868 # 800063e8 <Te0>
    8000208c:	1782                	slli	a5,a5,0x20
    8000208e:	9381                	srli	a5,a5,0x20
    80002090:	078a                	slli	a5,a5,0x2
    80002092:	97ba                	add	a5,a5,a4
    80002094:	4394                	lw	a3,0(a5)
    80002096:	fec42783          	lw	a5,-20(s0)
    8000209a:	0107d79b          	srliw	a5,a5,0x10
    8000209e:	2781                	sext.w	a5,a5
    800020a0:	0ff7f793          	andi	a5,a5,255
    800020a4:	2781                	sext.w	a5,a5
    800020a6:	00004717          	auipc	a4,0x4
    800020aa:	74270713          	addi	a4,a4,1858 # 800067e8 <Te1>
    800020ae:	1782                	slli	a5,a5,0x20
    800020b0:	9381                	srli	a5,a5,0x20
    800020b2:	078a                	slli	a5,a5,0x2
    800020b4:	97ba                	add	a5,a5,a4
    800020b6:	439c                	lw	a5,0(a5)
    800020b8:	8736                	mv	a4,a3
    800020ba:	8fb9                	xor	a5,a5,a4
    800020bc:	0007869b          	sext.w	a3,a5
    800020c0:	fe842783          	lw	a5,-24(s0)
    800020c4:	0087d79b          	srliw	a5,a5,0x8
    800020c8:	2781                	sext.w	a5,a5
    800020ca:	0ff7f793          	andi	a5,a5,255
    800020ce:	2781                	sext.w	a5,a5
    800020d0:	00005717          	auipc	a4,0x5
    800020d4:	b1870713          	addi	a4,a4,-1256 # 80006be8 <Te2>
    800020d8:	1782                	slli	a5,a5,0x20
    800020da:	9381                	srli	a5,a5,0x20
    800020dc:	078a                	slli	a5,a5,0x2
    800020de:	97ba                	add	a5,a5,a4
    800020e0:	439c                	lw	a5,0(a5)
    800020e2:	8736                	mv	a4,a3
    800020e4:	8fb9                	xor	a5,a5,a4
    800020e6:	0007869b          	sext.w	a3,a5
    800020ea:	fe442783          	lw	a5,-28(s0)
    800020ee:	0ff7f793          	andi	a5,a5,255
    800020f2:	2781                	sext.w	a5,a5
    800020f4:	00005717          	auipc	a4,0x5
    800020f8:	ef470713          	addi	a4,a4,-268 # 80006fe8 <Te3>
    800020fc:	1782                	slli	a5,a5,0x20
    800020fe:	9381                	srli	a5,a5,0x20
    80002100:	078a                	slli	a5,a5,0x2
    80002102:	97ba                	add	a5,a5,a4
    80002104:	439c                	lw	a5,0(a5)
    80002106:	8736                	mv	a4,a3
    80002108:	8fb9                	xor	a5,a5,a4
    8000210a:	0007871b          	sext.w	a4,a5
    8000210e:	fc843783          	ld	a5,-56(s0)
    80002112:	5ffc                	lw	a5,124(a5)
    80002114:	8fb9                	xor	a5,a5,a4
    80002116:	fcf42823          	sw	a5,-48(s0)
    8000211a:	fdc42783          	lw	a5,-36(s0)
    8000211e:	0187d79b          	srliw	a5,a5,0x18
    80002122:	2781                	sext.w	a5,a5
    80002124:	00004717          	auipc	a4,0x4
    80002128:	2c470713          	addi	a4,a4,708 # 800063e8 <Te0>
    8000212c:	1782                	slli	a5,a5,0x20
    8000212e:	9381                	srli	a5,a5,0x20
    80002130:	078a                	slli	a5,a5,0x2
    80002132:	97ba                	add	a5,a5,a4
    80002134:	4394                	lw	a3,0(a5)
    80002136:	fd842783          	lw	a5,-40(s0)
    8000213a:	0107d79b          	srliw	a5,a5,0x10
    8000213e:	2781                	sext.w	a5,a5
    80002140:	0ff7f793          	andi	a5,a5,255
    80002144:	2781                	sext.w	a5,a5
    80002146:	00004717          	auipc	a4,0x4
    8000214a:	6a270713          	addi	a4,a4,1698 # 800067e8 <Te1>
    8000214e:	1782                	slli	a5,a5,0x20
    80002150:	9381                	srli	a5,a5,0x20
    80002152:	078a                	slli	a5,a5,0x2
    80002154:	97ba                	add	a5,a5,a4
    80002156:	439c                	lw	a5,0(a5)
    80002158:	8736                	mv	a4,a3
    8000215a:	8fb9                	xor	a5,a5,a4
    8000215c:	0007869b          	sext.w	a3,a5
    80002160:	fd442783          	lw	a5,-44(s0)
    80002164:	0087d79b          	srliw	a5,a5,0x8
    80002168:	2781                	sext.w	a5,a5
    8000216a:	0ff7f793          	andi	a5,a5,255
    8000216e:	2781                	sext.w	a5,a5
    80002170:	00005717          	auipc	a4,0x5
    80002174:	a7870713          	addi	a4,a4,-1416 # 80006be8 <Te2>
    80002178:	1782                	slli	a5,a5,0x20
    8000217a:	9381                	srli	a5,a5,0x20
    8000217c:	078a                	slli	a5,a5,0x2
    8000217e:	97ba                	add	a5,a5,a4
    80002180:	439c                	lw	a5,0(a5)
    80002182:	8736                	mv	a4,a3
    80002184:	8fb9                	xor	a5,a5,a4
    80002186:	0007869b          	sext.w	a3,a5
    8000218a:	fd042783          	lw	a5,-48(s0)
    8000218e:	0ff7f793          	andi	a5,a5,255
    80002192:	2781                	sext.w	a5,a5
    80002194:	00005717          	auipc	a4,0x5
    80002198:	e5470713          	addi	a4,a4,-428 # 80006fe8 <Te3>
    8000219c:	1782                	slli	a5,a5,0x20
    8000219e:	9381                	srli	a5,a5,0x20
    800021a0:	078a                	slli	a5,a5,0x2
    800021a2:	97ba                	add	a5,a5,a4
    800021a4:	439c                	lw	a5,0(a5)
    800021a6:	8736                	mv	a4,a3
    800021a8:	8fb9                	xor	a5,a5,a4
    800021aa:	0007871b          	sext.w	a4,a5
    800021ae:	fc843783          	ld	a5,-56(s0)
    800021b2:	0807a783          	lw	a5,128(a5)
    800021b6:	8fb9                	xor	a5,a5,a4
    800021b8:	fef42623          	sw	a5,-20(s0)
    800021bc:	fd842783          	lw	a5,-40(s0)
    800021c0:	0187d79b          	srliw	a5,a5,0x18
    800021c4:	2781                	sext.w	a5,a5
    800021c6:	00004717          	auipc	a4,0x4
    800021ca:	22270713          	addi	a4,a4,546 # 800063e8 <Te0>
    800021ce:	1782                	slli	a5,a5,0x20
    800021d0:	9381                	srli	a5,a5,0x20
    800021d2:	078a                	slli	a5,a5,0x2
    800021d4:	97ba                	add	a5,a5,a4
    800021d6:	4394                	lw	a3,0(a5)
    800021d8:	fd442783          	lw	a5,-44(s0)
    800021dc:	0107d79b          	srliw	a5,a5,0x10
    800021e0:	2781                	sext.w	a5,a5
    800021e2:	0ff7f793          	andi	a5,a5,255
    800021e6:	2781                	sext.w	a5,a5
    800021e8:	00004717          	auipc	a4,0x4
    800021ec:	60070713          	addi	a4,a4,1536 # 800067e8 <Te1>
    800021f0:	1782                	slli	a5,a5,0x20
    800021f2:	9381                	srli	a5,a5,0x20
    800021f4:	078a                	slli	a5,a5,0x2
    800021f6:	97ba                	add	a5,a5,a4
    800021f8:	439c                	lw	a5,0(a5)
    800021fa:	8736                	mv	a4,a3
    800021fc:	8fb9                	xor	a5,a5,a4
    800021fe:	0007869b          	sext.w	a3,a5
    80002202:	fd042783          	lw	a5,-48(s0)
    80002206:	0087d79b          	srliw	a5,a5,0x8
    8000220a:	2781                	sext.w	a5,a5
    8000220c:	0ff7f793          	andi	a5,a5,255
    80002210:	2781                	sext.w	a5,a5
    80002212:	00005717          	auipc	a4,0x5
    80002216:	9d670713          	addi	a4,a4,-1578 # 80006be8 <Te2>
    8000221a:	1782                	slli	a5,a5,0x20
    8000221c:	9381                	srli	a5,a5,0x20
    8000221e:	078a                	slli	a5,a5,0x2
    80002220:	97ba                	add	a5,a5,a4
    80002222:	439c                	lw	a5,0(a5)
    80002224:	8736                	mv	a4,a3
    80002226:	8fb9                	xor	a5,a5,a4
    80002228:	0007869b          	sext.w	a3,a5
    8000222c:	fdc42783          	lw	a5,-36(s0)
    80002230:	0ff7f793          	andi	a5,a5,255
    80002234:	2781                	sext.w	a5,a5
    80002236:	00005717          	auipc	a4,0x5
    8000223a:	db270713          	addi	a4,a4,-590 # 80006fe8 <Te3>
    8000223e:	1782                	slli	a5,a5,0x20
    80002240:	9381                	srli	a5,a5,0x20
    80002242:	078a                	slli	a5,a5,0x2
    80002244:	97ba                	add	a5,a5,a4
    80002246:	439c                	lw	a5,0(a5)
    80002248:	8736                	mv	a4,a3
    8000224a:	8fb9                	xor	a5,a5,a4
    8000224c:	0007871b          	sext.w	a4,a5
    80002250:	fc843783          	ld	a5,-56(s0)
    80002254:	0847a783          	lw	a5,132(a5)
    80002258:	8fb9                	xor	a5,a5,a4
    8000225a:	fef42423          	sw	a5,-24(s0)
    8000225e:	fd442783          	lw	a5,-44(s0)
    80002262:	0187d79b          	srliw	a5,a5,0x18
    80002266:	2781                	sext.w	a5,a5
    80002268:	00004717          	auipc	a4,0x4
    8000226c:	18070713          	addi	a4,a4,384 # 800063e8 <Te0>
    80002270:	1782                	slli	a5,a5,0x20
    80002272:	9381                	srli	a5,a5,0x20
    80002274:	078a                	slli	a5,a5,0x2
    80002276:	97ba                	add	a5,a5,a4
    80002278:	4394                	lw	a3,0(a5)
    8000227a:	fd042783          	lw	a5,-48(s0)
    8000227e:	0107d79b          	srliw	a5,a5,0x10
    80002282:	2781                	sext.w	a5,a5
    80002284:	0ff7f793          	andi	a5,a5,255
    80002288:	2781                	sext.w	a5,a5
    8000228a:	00004717          	auipc	a4,0x4
    8000228e:	55e70713          	addi	a4,a4,1374 # 800067e8 <Te1>
    80002292:	1782                	slli	a5,a5,0x20
    80002294:	9381                	srli	a5,a5,0x20
    80002296:	078a                	slli	a5,a5,0x2
    80002298:	97ba                	add	a5,a5,a4
    8000229a:	439c                	lw	a5,0(a5)
    8000229c:	8736                	mv	a4,a3
    8000229e:	8fb9                	xor	a5,a5,a4
    800022a0:	0007869b          	sext.w	a3,a5
    800022a4:	fdc42783          	lw	a5,-36(s0)
    800022a8:	0087d79b          	srliw	a5,a5,0x8
    800022ac:	2781                	sext.w	a5,a5
    800022ae:	0ff7f793          	andi	a5,a5,255
    800022b2:	2781                	sext.w	a5,a5
    800022b4:	00005717          	auipc	a4,0x5
    800022b8:	93470713          	addi	a4,a4,-1740 # 80006be8 <Te2>
    800022bc:	1782                	slli	a5,a5,0x20
    800022be:	9381                	srli	a5,a5,0x20
    800022c0:	078a                	slli	a5,a5,0x2
    800022c2:	97ba                	add	a5,a5,a4
    800022c4:	439c                	lw	a5,0(a5)
    800022c6:	8736                	mv	a4,a3
    800022c8:	8fb9                	xor	a5,a5,a4
    800022ca:	0007869b          	sext.w	a3,a5
    800022ce:	fd842783          	lw	a5,-40(s0)
    800022d2:	0ff7f793          	andi	a5,a5,255
    800022d6:	2781                	sext.w	a5,a5
    800022d8:	00005717          	auipc	a4,0x5
    800022dc:	d1070713          	addi	a4,a4,-752 # 80006fe8 <Te3>
    800022e0:	1782                	slli	a5,a5,0x20
    800022e2:	9381                	srli	a5,a5,0x20
    800022e4:	078a                	slli	a5,a5,0x2
    800022e6:	97ba                	add	a5,a5,a4
    800022e8:	439c                	lw	a5,0(a5)
    800022ea:	8736                	mv	a4,a3
    800022ec:	8fb9                	xor	a5,a5,a4
    800022ee:	0007871b          	sext.w	a4,a5
    800022f2:	fc843783          	ld	a5,-56(s0)
    800022f6:	0887a783          	lw	a5,136(a5)
    800022fa:	8fb9                	xor	a5,a5,a4
    800022fc:	fef42223          	sw	a5,-28(s0)
    80002300:	fd042783          	lw	a5,-48(s0)
    80002304:	0187d79b          	srliw	a5,a5,0x18
    80002308:	2781                	sext.w	a5,a5
    8000230a:	00004717          	auipc	a4,0x4
    8000230e:	0de70713          	addi	a4,a4,222 # 800063e8 <Te0>
    80002312:	1782                	slli	a5,a5,0x20
    80002314:	9381                	srli	a5,a5,0x20
    80002316:	078a                	slli	a5,a5,0x2
    80002318:	97ba                	add	a5,a5,a4
    8000231a:	4394                	lw	a3,0(a5)
    8000231c:	fdc42783          	lw	a5,-36(s0)
    80002320:	0107d79b          	srliw	a5,a5,0x10
    80002324:	2781                	sext.w	a5,a5
    80002326:	0ff7f793          	andi	a5,a5,255
    8000232a:	2781                	sext.w	a5,a5
    8000232c:	00004717          	auipc	a4,0x4
    80002330:	4bc70713          	addi	a4,a4,1212 # 800067e8 <Te1>
    80002334:	1782                	slli	a5,a5,0x20
    80002336:	9381                	srli	a5,a5,0x20
    80002338:	078a                	slli	a5,a5,0x2
    8000233a:	97ba                	add	a5,a5,a4
    8000233c:	439c                	lw	a5,0(a5)
    8000233e:	8736                	mv	a4,a3
    80002340:	8fb9                	xor	a5,a5,a4
    80002342:	0007869b          	sext.w	a3,a5
    80002346:	fd842783          	lw	a5,-40(s0)
    8000234a:	0087d79b          	srliw	a5,a5,0x8
    8000234e:	2781                	sext.w	a5,a5
    80002350:	0ff7f793          	andi	a5,a5,255
    80002354:	2781                	sext.w	a5,a5
    80002356:	00005717          	auipc	a4,0x5
    8000235a:	89270713          	addi	a4,a4,-1902 # 80006be8 <Te2>
    8000235e:	1782                	slli	a5,a5,0x20
    80002360:	9381                	srli	a5,a5,0x20
    80002362:	078a                	slli	a5,a5,0x2
    80002364:	97ba                	add	a5,a5,a4
    80002366:	439c                	lw	a5,0(a5)
    80002368:	8736                	mv	a4,a3
    8000236a:	8fb9                	xor	a5,a5,a4
    8000236c:	0007869b          	sext.w	a3,a5
    80002370:	fd442783          	lw	a5,-44(s0)
    80002374:	0ff7f793          	andi	a5,a5,255
    80002378:	2781                	sext.w	a5,a5
    8000237a:	00005717          	auipc	a4,0x5
    8000237e:	c6e70713          	addi	a4,a4,-914 # 80006fe8 <Te3>
    80002382:	1782                	slli	a5,a5,0x20
    80002384:	9381                	srli	a5,a5,0x20
    80002386:	078a                	slli	a5,a5,0x2
    80002388:	97ba                	add	a5,a5,a4
    8000238a:	439c                	lw	a5,0(a5)
    8000238c:	8736                	mv	a4,a3
    8000238e:	8fb9                	xor	a5,a5,a4
    80002390:	0007871b          	sext.w	a4,a5
    80002394:	fc843783          	ld	a5,-56(s0)
    80002398:	08c7a783          	lw	a5,140(a5)
    8000239c:	8fb9                	xor	a5,a5,a4
    8000239e:	fef42023          	sw	a5,-32(s0)
    800023a2:	fec42783          	lw	a5,-20(s0)
    800023a6:	0187d79b          	srliw	a5,a5,0x18
    800023aa:	2781                	sext.w	a5,a5
    800023ac:	00004717          	auipc	a4,0x4
    800023b0:	03c70713          	addi	a4,a4,60 # 800063e8 <Te0>
    800023b4:	1782                	slli	a5,a5,0x20
    800023b6:	9381                	srli	a5,a5,0x20
    800023b8:	078a                	slli	a5,a5,0x2
    800023ba:	97ba                	add	a5,a5,a4
    800023bc:	4394                	lw	a3,0(a5)
    800023be:	fe842783          	lw	a5,-24(s0)
    800023c2:	0107d79b          	srliw	a5,a5,0x10
    800023c6:	2781                	sext.w	a5,a5
    800023c8:	0ff7f793          	andi	a5,a5,255
    800023cc:	2781                	sext.w	a5,a5
    800023ce:	00004717          	auipc	a4,0x4
    800023d2:	41a70713          	addi	a4,a4,1050 # 800067e8 <Te1>
    800023d6:	1782                	slli	a5,a5,0x20
    800023d8:	9381                	srli	a5,a5,0x20
    800023da:	078a                	slli	a5,a5,0x2
    800023dc:	97ba                	add	a5,a5,a4
    800023de:	439c                	lw	a5,0(a5)
    800023e0:	8736                	mv	a4,a3
    800023e2:	8fb9                	xor	a5,a5,a4
    800023e4:	0007869b          	sext.w	a3,a5
    800023e8:	fe442783          	lw	a5,-28(s0)
    800023ec:	0087d79b          	srliw	a5,a5,0x8
    800023f0:	2781                	sext.w	a5,a5
    800023f2:	0ff7f793          	andi	a5,a5,255
    800023f6:	2781                	sext.w	a5,a5
    800023f8:	00004717          	auipc	a4,0x4
    800023fc:	7f070713          	addi	a4,a4,2032 # 80006be8 <Te2>
    80002400:	1782                	slli	a5,a5,0x20
    80002402:	9381                	srli	a5,a5,0x20
    80002404:	078a                	slli	a5,a5,0x2
    80002406:	97ba                	add	a5,a5,a4
    80002408:	439c                	lw	a5,0(a5)
    8000240a:	8736                	mv	a4,a3
    8000240c:	8fb9                	xor	a5,a5,a4
    8000240e:	0007869b          	sext.w	a3,a5
    80002412:	fe042783          	lw	a5,-32(s0)
    80002416:	0ff7f793          	andi	a5,a5,255
    8000241a:	2781                	sext.w	a5,a5
    8000241c:	00005717          	auipc	a4,0x5
    80002420:	bcc70713          	addi	a4,a4,-1076 # 80006fe8 <Te3>
    80002424:	1782                	slli	a5,a5,0x20
    80002426:	9381                	srli	a5,a5,0x20
    80002428:	078a                	slli	a5,a5,0x2
    8000242a:	97ba                	add	a5,a5,a4
    8000242c:	439c                	lw	a5,0(a5)
    8000242e:	8736                	mv	a4,a3
    80002430:	8fb9                	xor	a5,a5,a4
    80002432:	0007871b          	sext.w	a4,a5
    80002436:	fc843783          	ld	a5,-56(s0)
    8000243a:	0907a783          	lw	a5,144(a5)
    8000243e:	8fb9                	xor	a5,a5,a4
    80002440:	fcf42e23          	sw	a5,-36(s0)
    80002444:	fe842783          	lw	a5,-24(s0)
    80002448:	0187d79b          	srliw	a5,a5,0x18
    8000244c:	2781                	sext.w	a5,a5
    8000244e:	00004717          	auipc	a4,0x4
    80002452:	f9a70713          	addi	a4,a4,-102 # 800063e8 <Te0>
    80002456:	1782                	slli	a5,a5,0x20
    80002458:	9381                	srli	a5,a5,0x20
    8000245a:	078a                	slli	a5,a5,0x2
    8000245c:	97ba                	add	a5,a5,a4
    8000245e:	4394                	lw	a3,0(a5)
    80002460:	fe442783          	lw	a5,-28(s0)
    80002464:	0107d79b          	srliw	a5,a5,0x10
    80002468:	2781                	sext.w	a5,a5
    8000246a:	0ff7f793          	andi	a5,a5,255
    8000246e:	2781                	sext.w	a5,a5
    80002470:	00004717          	auipc	a4,0x4
    80002474:	37870713          	addi	a4,a4,888 # 800067e8 <Te1>
    80002478:	1782                	slli	a5,a5,0x20
    8000247a:	9381                	srli	a5,a5,0x20
    8000247c:	078a                	slli	a5,a5,0x2
    8000247e:	97ba                	add	a5,a5,a4
    80002480:	439c                	lw	a5,0(a5)
    80002482:	8736                	mv	a4,a3
    80002484:	8fb9                	xor	a5,a5,a4
    80002486:	0007869b          	sext.w	a3,a5
    8000248a:	fe042783          	lw	a5,-32(s0)
    8000248e:	0087d79b          	srliw	a5,a5,0x8
    80002492:	2781                	sext.w	a5,a5
    80002494:	0ff7f793          	andi	a5,a5,255
    80002498:	2781                	sext.w	a5,a5
    8000249a:	00004717          	auipc	a4,0x4
    8000249e:	74e70713          	addi	a4,a4,1870 # 80006be8 <Te2>
    800024a2:	1782                	slli	a5,a5,0x20
    800024a4:	9381                	srli	a5,a5,0x20
    800024a6:	078a                	slli	a5,a5,0x2
    800024a8:	97ba                	add	a5,a5,a4
    800024aa:	439c                	lw	a5,0(a5)
    800024ac:	8736                	mv	a4,a3
    800024ae:	8fb9                	xor	a5,a5,a4
    800024b0:	0007869b          	sext.w	a3,a5
    800024b4:	fec42783          	lw	a5,-20(s0)
    800024b8:	0ff7f793          	andi	a5,a5,255
    800024bc:	2781                	sext.w	a5,a5
    800024be:	00005717          	auipc	a4,0x5
    800024c2:	b2a70713          	addi	a4,a4,-1238 # 80006fe8 <Te3>
    800024c6:	1782                	slli	a5,a5,0x20
    800024c8:	9381                	srli	a5,a5,0x20
    800024ca:	078a                	slli	a5,a5,0x2
    800024cc:	97ba                	add	a5,a5,a4
    800024ce:	439c                	lw	a5,0(a5)
    800024d0:	8736                	mv	a4,a3
    800024d2:	8fb9                	xor	a5,a5,a4
    800024d4:	0007871b          	sext.w	a4,a5
    800024d8:	fc843783          	ld	a5,-56(s0)
    800024dc:	0947a783          	lw	a5,148(a5)
    800024e0:	8fb9                	xor	a5,a5,a4
    800024e2:	fcf42c23          	sw	a5,-40(s0)
    800024e6:	fe442783          	lw	a5,-28(s0)
    800024ea:	0187d79b          	srliw	a5,a5,0x18
    800024ee:	2781                	sext.w	a5,a5
    800024f0:	00004717          	auipc	a4,0x4
    800024f4:	ef870713          	addi	a4,a4,-264 # 800063e8 <Te0>
    800024f8:	1782                	slli	a5,a5,0x20
    800024fa:	9381                	srli	a5,a5,0x20
    800024fc:	078a                	slli	a5,a5,0x2
    800024fe:	97ba                	add	a5,a5,a4
    80002500:	4394                	lw	a3,0(a5)
    80002502:	fe042783          	lw	a5,-32(s0)
    80002506:	0107d79b          	srliw	a5,a5,0x10
    8000250a:	2781                	sext.w	a5,a5
    8000250c:	0ff7f793          	andi	a5,a5,255
    80002510:	2781                	sext.w	a5,a5
    80002512:	00004717          	auipc	a4,0x4
    80002516:	2d670713          	addi	a4,a4,726 # 800067e8 <Te1>
    8000251a:	1782                	slli	a5,a5,0x20
    8000251c:	9381                	srli	a5,a5,0x20
    8000251e:	078a                	slli	a5,a5,0x2
    80002520:	97ba                	add	a5,a5,a4
    80002522:	439c                	lw	a5,0(a5)
    80002524:	8736                	mv	a4,a3
    80002526:	8fb9                	xor	a5,a5,a4
    80002528:	0007869b          	sext.w	a3,a5
    8000252c:	fec42783          	lw	a5,-20(s0)
    80002530:	0087d79b          	srliw	a5,a5,0x8
    80002534:	2781                	sext.w	a5,a5
    80002536:	0ff7f793          	andi	a5,a5,255
    8000253a:	2781                	sext.w	a5,a5
    8000253c:	00004717          	auipc	a4,0x4
    80002540:	6ac70713          	addi	a4,a4,1708 # 80006be8 <Te2>
    80002544:	1782                	slli	a5,a5,0x20
    80002546:	9381                	srli	a5,a5,0x20
    80002548:	078a                	slli	a5,a5,0x2
    8000254a:	97ba                	add	a5,a5,a4
    8000254c:	439c                	lw	a5,0(a5)
    8000254e:	8736                	mv	a4,a3
    80002550:	8fb9                	xor	a5,a5,a4
    80002552:	0007869b          	sext.w	a3,a5
    80002556:	fe842783          	lw	a5,-24(s0)
    8000255a:	0ff7f793          	andi	a5,a5,255
    8000255e:	2781                	sext.w	a5,a5
    80002560:	00005717          	auipc	a4,0x5
    80002564:	a8870713          	addi	a4,a4,-1400 # 80006fe8 <Te3>
    80002568:	1782                	slli	a5,a5,0x20
    8000256a:	9381                	srli	a5,a5,0x20
    8000256c:	078a                	slli	a5,a5,0x2
    8000256e:	97ba                	add	a5,a5,a4
    80002570:	439c                	lw	a5,0(a5)
    80002572:	8736                	mv	a4,a3
    80002574:	8fb9                	xor	a5,a5,a4
    80002576:	0007871b          	sext.w	a4,a5
    8000257a:	fc843783          	ld	a5,-56(s0)
    8000257e:	0987a783          	lw	a5,152(a5)
    80002582:	8fb9                	xor	a5,a5,a4
    80002584:	fcf42a23          	sw	a5,-44(s0)
    80002588:	fe042783          	lw	a5,-32(s0)
    8000258c:	0187d79b          	srliw	a5,a5,0x18
    80002590:	2781                	sext.w	a5,a5
    80002592:	00004717          	auipc	a4,0x4
    80002596:	e5670713          	addi	a4,a4,-426 # 800063e8 <Te0>
    8000259a:	1782                	slli	a5,a5,0x20
    8000259c:	9381                	srli	a5,a5,0x20
    8000259e:	078a                	slli	a5,a5,0x2
    800025a0:	97ba                	add	a5,a5,a4
    800025a2:	4394                	lw	a3,0(a5)
    800025a4:	fec42783          	lw	a5,-20(s0)
    800025a8:	0107d79b          	srliw	a5,a5,0x10
    800025ac:	2781                	sext.w	a5,a5
    800025ae:	0ff7f793          	andi	a5,a5,255
    800025b2:	2781                	sext.w	a5,a5
    800025b4:	00004717          	auipc	a4,0x4
    800025b8:	23470713          	addi	a4,a4,564 # 800067e8 <Te1>
    800025bc:	1782                	slli	a5,a5,0x20
    800025be:	9381                	srli	a5,a5,0x20
    800025c0:	078a                	slli	a5,a5,0x2
    800025c2:	97ba                	add	a5,a5,a4
    800025c4:	439c                	lw	a5,0(a5)
    800025c6:	8736                	mv	a4,a3
    800025c8:	8fb9                	xor	a5,a5,a4
    800025ca:	0007869b          	sext.w	a3,a5
    800025ce:	fe842783          	lw	a5,-24(s0)
    800025d2:	0087d79b          	srliw	a5,a5,0x8
    800025d6:	2781                	sext.w	a5,a5
    800025d8:	0ff7f793          	andi	a5,a5,255
    800025dc:	2781                	sext.w	a5,a5
    800025de:	00004717          	auipc	a4,0x4
    800025e2:	60a70713          	addi	a4,a4,1546 # 80006be8 <Te2>
    800025e6:	1782                	slli	a5,a5,0x20
    800025e8:	9381                	srli	a5,a5,0x20
    800025ea:	078a                	slli	a5,a5,0x2
    800025ec:	97ba                	add	a5,a5,a4
    800025ee:	439c                	lw	a5,0(a5)
    800025f0:	8736                	mv	a4,a3
    800025f2:	8fb9                	xor	a5,a5,a4
    800025f4:	0007869b          	sext.w	a3,a5
    800025f8:	fe442783          	lw	a5,-28(s0)
    800025fc:	0ff7f793          	andi	a5,a5,255
    80002600:	2781                	sext.w	a5,a5
    80002602:	00005717          	auipc	a4,0x5
    80002606:	9e670713          	addi	a4,a4,-1562 # 80006fe8 <Te3>
    8000260a:	1782                	slli	a5,a5,0x20
    8000260c:	9381                	srli	a5,a5,0x20
    8000260e:	078a                	slli	a5,a5,0x2
    80002610:	97ba                	add	a5,a5,a4
    80002612:	439c                	lw	a5,0(a5)
    80002614:	8736                	mv	a4,a3
    80002616:	8fb9                	xor	a5,a5,a4
    80002618:	0007871b          	sext.w	a4,a5
    8000261c:	fc843783          	ld	a5,-56(s0)
    80002620:	09c7a783          	lw	a5,156(a5)
    80002624:	8fb9                	xor	a5,a5,a4
    80002626:	fcf42823          	sw	a5,-48(s0)
    8000262a:	fdc42783          	lw	a5,-36(s0)
    8000262e:	0187d79b          	srliw	a5,a5,0x18
    80002632:	2781                	sext.w	a5,a5
    80002634:	00005717          	auipc	a4,0x5
    80002638:	db470713          	addi	a4,a4,-588 # 800073e8 <Te4>
    8000263c:	1782                	slli	a5,a5,0x20
    8000263e:	9381                	srli	a5,a5,0x20
    80002640:	078a                	slli	a5,a5,0x2
    80002642:	97ba                	add	a5,a5,a4
    80002644:	439c                	lw	a5,0(a5)
    80002646:	873e                	mv	a4,a5
    80002648:	ff0007b7          	lui	a5,0xff000
    8000264c:	8ff9                	and	a5,a5,a4
    8000264e:	0007869b          	sext.w	a3,a5
    80002652:	fd842783          	lw	a5,-40(s0)
    80002656:	0107d79b          	srliw	a5,a5,0x10
    8000265a:	2781                	sext.w	a5,a5
    8000265c:	0ff7f793          	andi	a5,a5,255
    80002660:	2781                	sext.w	a5,a5
    80002662:	00005717          	auipc	a4,0x5
    80002666:	d8670713          	addi	a4,a4,-634 # 800073e8 <Te4>
    8000266a:	1782                	slli	a5,a5,0x20
    8000266c:	9381                	srli	a5,a5,0x20
    8000266e:	078a                	slli	a5,a5,0x2
    80002670:	97ba                	add	a5,a5,a4
    80002672:	439c                	lw	a5,0(a5)
    80002674:	873e                	mv	a4,a5
    80002676:	00ff07b7          	lui	a5,0xff0
    8000267a:	8ff9                	and	a5,a5,a4
    8000267c:	2781                	sext.w	a5,a5
    8000267e:	8736                	mv	a4,a3
    80002680:	8fd9                	or	a5,a5,a4
    80002682:	0007869b          	sext.w	a3,a5
    80002686:	fd442783          	lw	a5,-44(s0)
    8000268a:	0087d79b          	srliw	a5,a5,0x8
    8000268e:	2781                	sext.w	a5,a5
    80002690:	0ff7f793          	andi	a5,a5,255
    80002694:	2781                	sext.w	a5,a5
    80002696:	00005717          	auipc	a4,0x5
    8000269a:	d5270713          	addi	a4,a4,-686 # 800073e8 <Te4>
    8000269e:	1782                	slli	a5,a5,0x20
    800026a0:	9381                	srli	a5,a5,0x20
    800026a2:	078a                	slli	a5,a5,0x2
    800026a4:	97ba                	add	a5,a5,a4
    800026a6:	439c                	lw	a5,0(a5)
    800026a8:	873e                	mv	a4,a5
    800026aa:	67c1                	lui	a5,0x10
    800026ac:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    800026b0:	8ff9                	and	a5,a5,a4
    800026b2:	2781                	sext.w	a5,a5
    800026b4:	8736                	mv	a4,a3
    800026b6:	8fb9                	xor	a5,a5,a4
    800026b8:	0007869b          	sext.w	a3,a5
    800026bc:	fd042783          	lw	a5,-48(s0)
    800026c0:	0ff7f793          	andi	a5,a5,255
    800026c4:	2781                	sext.w	a5,a5
    800026c6:	00005717          	auipc	a4,0x5
    800026ca:	d2270713          	addi	a4,a4,-734 # 800073e8 <Te4>
    800026ce:	1782                	slli	a5,a5,0x20
    800026d0:	9381                	srli	a5,a5,0x20
    800026d2:	078a                	slli	a5,a5,0x2
    800026d4:	97ba                	add	a5,a5,a4
    800026d6:	439c                	lw	a5,0(a5)
    800026d8:	0ff7f793          	andi	a5,a5,255
    800026dc:	2781                	sext.w	a5,a5
    800026de:	8736                	mv	a4,a3
    800026e0:	8fb9                	xor	a5,a5,a4
    800026e2:	0007871b          	sext.w	a4,a5
    800026e6:	fc843783          	ld	a5,-56(s0)
    800026ea:	0a07a783          	lw	a5,160(a5)
    800026ee:	8fb9                	xor	a5,a5,a4
    800026f0:	fef42623          	sw	a5,-20(s0)
    800026f4:	fd842783          	lw	a5,-40(s0)
    800026f8:	0187d79b          	srliw	a5,a5,0x18
    800026fc:	2781                	sext.w	a5,a5
    800026fe:	00005717          	auipc	a4,0x5
    80002702:	cea70713          	addi	a4,a4,-790 # 800073e8 <Te4>
    80002706:	1782                	slli	a5,a5,0x20
    80002708:	9381                	srli	a5,a5,0x20
    8000270a:	078a                	slli	a5,a5,0x2
    8000270c:	97ba                	add	a5,a5,a4
    8000270e:	439c                	lw	a5,0(a5)
    80002710:	873e                	mv	a4,a5
    80002712:	ff0007b7          	lui	a5,0xff000
    80002716:	8ff9                	and	a5,a5,a4
    80002718:	0007869b          	sext.w	a3,a5
    8000271c:	fd442783          	lw	a5,-44(s0)
    80002720:	0107d79b          	srliw	a5,a5,0x10
    80002724:	2781                	sext.w	a5,a5
    80002726:	0ff7f793          	andi	a5,a5,255
    8000272a:	2781                	sext.w	a5,a5
    8000272c:	00005717          	auipc	a4,0x5
    80002730:	cbc70713          	addi	a4,a4,-836 # 800073e8 <Te4>
    80002734:	1782                	slli	a5,a5,0x20
    80002736:	9381                	srli	a5,a5,0x20
    80002738:	078a                	slli	a5,a5,0x2
    8000273a:	97ba                	add	a5,a5,a4
    8000273c:	439c                	lw	a5,0(a5)
    8000273e:	873e                	mv	a4,a5
    80002740:	00ff07b7          	lui	a5,0xff0
    80002744:	8ff9                	and	a5,a5,a4
    80002746:	2781                	sext.w	a5,a5
    80002748:	8736                	mv	a4,a3
    8000274a:	8fd9                	or	a5,a5,a4
    8000274c:	0007869b          	sext.w	a3,a5
    80002750:	fd042783          	lw	a5,-48(s0)
    80002754:	0087d79b          	srliw	a5,a5,0x8
    80002758:	2781                	sext.w	a5,a5
    8000275a:	0ff7f793          	andi	a5,a5,255
    8000275e:	2781                	sext.w	a5,a5
    80002760:	00005717          	auipc	a4,0x5
    80002764:	c8870713          	addi	a4,a4,-888 # 800073e8 <Te4>
    80002768:	1782                	slli	a5,a5,0x20
    8000276a:	9381                	srli	a5,a5,0x20
    8000276c:	078a                	slli	a5,a5,0x2
    8000276e:	97ba                	add	a5,a5,a4
    80002770:	439c                	lw	a5,0(a5)
    80002772:	873e                	mv	a4,a5
    80002774:	67c1                	lui	a5,0x10
    80002776:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    8000277a:	8ff9                	and	a5,a5,a4
    8000277c:	2781                	sext.w	a5,a5
    8000277e:	8736                	mv	a4,a3
    80002780:	8fb9                	xor	a5,a5,a4
    80002782:	0007869b          	sext.w	a3,a5
    80002786:	fdc42783          	lw	a5,-36(s0)
    8000278a:	0ff7f793          	andi	a5,a5,255
    8000278e:	2781                	sext.w	a5,a5
    80002790:	00005717          	auipc	a4,0x5
    80002794:	c5870713          	addi	a4,a4,-936 # 800073e8 <Te4>
    80002798:	1782                	slli	a5,a5,0x20
    8000279a:	9381                	srli	a5,a5,0x20
    8000279c:	078a                	slli	a5,a5,0x2
    8000279e:	97ba                	add	a5,a5,a4
    800027a0:	439c                	lw	a5,0(a5)
    800027a2:	0ff7f793          	andi	a5,a5,255
    800027a6:	2781                	sext.w	a5,a5
    800027a8:	8736                	mv	a4,a3
    800027aa:	8fb9                	xor	a5,a5,a4
    800027ac:	0007871b          	sext.w	a4,a5
    800027b0:	fc843783          	ld	a5,-56(s0)
    800027b4:	0a47a783          	lw	a5,164(a5)
    800027b8:	8fb9                	xor	a5,a5,a4
    800027ba:	fef42423          	sw	a5,-24(s0)
    800027be:	fd442783          	lw	a5,-44(s0)
    800027c2:	0187d79b          	srliw	a5,a5,0x18
    800027c6:	2781                	sext.w	a5,a5
    800027c8:	00005717          	auipc	a4,0x5
    800027cc:	c2070713          	addi	a4,a4,-992 # 800073e8 <Te4>
    800027d0:	1782                	slli	a5,a5,0x20
    800027d2:	9381                	srli	a5,a5,0x20
    800027d4:	078a                	slli	a5,a5,0x2
    800027d6:	97ba                	add	a5,a5,a4
    800027d8:	439c                	lw	a5,0(a5)
    800027da:	873e                	mv	a4,a5
    800027dc:	ff0007b7          	lui	a5,0xff000
    800027e0:	8ff9                	and	a5,a5,a4
    800027e2:	0007869b          	sext.w	a3,a5
    800027e6:	fd042783          	lw	a5,-48(s0)
    800027ea:	0107d79b          	srliw	a5,a5,0x10
    800027ee:	2781                	sext.w	a5,a5
    800027f0:	0ff7f793          	andi	a5,a5,255
    800027f4:	2781                	sext.w	a5,a5
    800027f6:	00005717          	auipc	a4,0x5
    800027fa:	bf270713          	addi	a4,a4,-1038 # 800073e8 <Te4>
    800027fe:	1782                	slli	a5,a5,0x20
    80002800:	9381                	srli	a5,a5,0x20
    80002802:	078a                	slli	a5,a5,0x2
    80002804:	97ba                	add	a5,a5,a4
    80002806:	439c                	lw	a5,0(a5)
    80002808:	873e                	mv	a4,a5
    8000280a:	00ff07b7          	lui	a5,0xff0
    8000280e:	8ff9                	and	a5,a5,a4
    80002810:	2781                	sext.w	a5,a5
    80002812:	8736                	mv	a4,a3
    80002814:	8fd9                	or	a5,a5,a4
    80002816:	0007869b          	sext.w	a3,a5
    8000281a:	fdc42783          	lw	a5,-36(s0)
    8000281e:	0087d79b          	srliw	a5,a5,0x8
    80002822:	2781                	sext.w	a5,a5
    80002824:	0ff7f793          	andi	a5,a5,255
    80002828:	2781                	sext.w	a5,a5
    8000282a:	00005717          	auipc	a4,0x5
    8000282e:	bbe70713          	addi	a4,a4,-1090 # 800073e8 <Te4>
    80002832:	1782                	slli	a5,a5,0x20
    80002834:	9381                	srli	a5,a5,0x20
    80002836:	078a                	slli	a5,a5,0x2
    80002838:	97ba                	add	a5,a5,a4
    8000283a:	439c                	lw	a5,0(a5)
    8000283c:	873e                	mv	a4,a5
    8000283e:	67c1                	lui	a5,0x10
    80002840:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    80002844:	8ff9                	and	a5,a5,a4
    80002846:	2781                	sext.w	a5,a5
    80002848:	8736                	mv	a4,a3
    8000284a:	8fb9                	xor	a5,a5,a4
    8000284c:	0007869b          	sext.w	a3,a5
    80002850:	fd842783          	lw	a5,-40(s0)
    80002854:	0ff7f793          	andi	a5,a5,255
    80002858:	2781                	sext.w	a5,a5
    8000285a:	00005717          	auipc	a4,0x5
    8000285e:	b8e70713          	addi	a4,a4,-1138 # 800073e8 <Te4>
    80002862:	1782                	slli	a5,a5,0x20
    80002864:	9381                	srli	a5,a5,0x20
    80002866:	078a                	slli	a5,a5,0x2
    80002868:	97ba                	add	a5,a5,a4
    8000286a:	439c                	lw	a5,0(a5)
    8000286c:	0ff7f793          	andi	a5,a5,255
    80002870:	2781                	sext.w	a5,a5
    80002872:	8736                	mv	a4,a3
    80002874:	8fb9                	xor	a5,a5,a4
    80002876:	0007871b          	sext.w	a4,a5
    8000287a:	fc843783          	ld	a5,-56(s0)
    8000287e:	0a87a783          	lw	a5,168(a5)
    80002882:	8fb9                	xor	a5,a5,a4
    80002884:	fef42223          	sw	a5,-28(s0)
    80002888:	fd042783          	lw	a5,-48(s0)
    8000288c:	0187d79b          	srliw	a5,a5,0x18
    80002890:	2781                	sext.w	a5,a5
    80002892:	00005717          	auipc	a4,0x5
    80002896:	b5670713          	addi	a4,a4,-1194 # 800073e8 <Te4>
    8000289a:	1782                	slli	a5,a5,0x20
    8000289c:	9381                	srli	a5,a5,0x20
    8000289e:	078a                	slli	a5,a5,0x2
    800028a0:	97ba                	add	a5,a5,a4
    800028a2:	439c                	lw	a5,0(a5)
    800028a4:	873e                	mv	a4,a5
    800028a6:	ff0007b7          	lui	a5,0xff000
    800028aa:	8ff9                	and	a5,a5,a4
    800028ac:	0007869b          	sext.w	a3,a5
    800028b0:	fdc42783          	lw	a5,-36(s0)
    800028b4:	0107d79b          	srliw	a5,a5,0x10
    800028b8:	2781                	sext.w	a5,a5
    800028ba:	0ff7f793          	andi	a5,a5,255
    800028be:	2781                	sext.w	a5,a5
    800028c0:	00005717          	auipc	a4,0x5
    800028c4:	b2870713          	addi	a4,a4,-1240 # 800073e8 <Te4>
    800028c8:	1782                	slli	a5,a5,0x20
    800028ca:	9381                	srli	a5,a5,0x20
    800028cc:	078a                	slli	a5,a5,0x2
    800028ce:	97ba                	add	a5,a5,a4
    800028d0:	439c                	lw	a5,0(a5)
    800028d2:	873e                	mv	a4,a5
    800028d4:	00ff07b7          	lui	a5,0xff0
    800028d8:	8ff9                	and	a5,a5,a4
    800028da:	2781                	sext.w	a5,a5
    800028dc:	8736                	mv	a4,a3
    800028de:	8fd9                	or	a5,a5,a4
    800028e0:	0007869b          	sext.w	a3,a5
    800028e4:	fd842783          	lw	a5,-40(s0)
    800028e8:	0087d79b          	srliw	a5,a5,0x8
    800028ec:	2781                	sext.w	a5,a5
    800028ee:	0ff7f793          	andi	a5,a5,255
    800028f2:	2781                	sext.w	a5,a5
    800028f4:	00005717          	auipc	a4,0x5
    800028f8:	af470713          	addi	a4,a4,-1292 # 800073e8 <Te4>
    800028fc:	1782                	slli	a5,a5,0x20
    800028fe:	9381                	srli	a5,a5,0x20
    80002900:	078a                	slli	a5,a5,0x2
    80002902:	97ba                	add	a5,a5,a4
    80002904:	439c                	lw	a5,0(a5)
    80002906:	873e                	mv	a4,a5
    80002908:	67c1                	lui	a5,0x10
    8000290a:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    8000290e:	8ff9                	and	a5,a5,a4
    80002910:	2781                	sext.w	a5,a5
    80002912:	8736                	mv	a4,a3
    80002914:	8fb9                	xor	a5,a5,a4
    80002916:	0007869b          	sext.w	a3,a5
    8000291a:	fd442783          	lw	a5,-44(s0)
    8000291e:	0ff7f793          	andi	a5,a5,255
    80002922:	2781                	sext.w	a5,a5
    80002924:	00005717          	auipc	a4,0x5
    80002928:	ac470713          	addi	a4,a4,-1340 # 800073e8 <Te4>
    8000292c:	1782                	slli	a5,a5,0x20
    8000292e:	9381                	srli	a5,a5,0x20
    80002930:	078a                	slli	a5,a5,0x2
    80002932:	97ba                	add	a5,a5,a4
    80002934:	439c                	lw	a5,0(a5)
    80002936:	0ff7f793          	andi	a5,a5,255
    8000293a:	2781                	sext.w	a5,a5
    8000293c:	8736                	mv	a4,a3
    8000293e:	8fb9                	xor	a5,a5,a4
    80002940:	0007871b          	sext.w	a4,a5
    80002944:	fc843783          	ld	a5,-56(s0)
    80002948:	0ac7a783          	lw	a5,172(a5)
    8000294c:	8fb9                	xor	a5,a5,a4
    8000294e:	fef42023          	sw	a5,-32(s0)
    80002952:	fec42783          	lw	a5,-20(s0)
    80002956:	0187d79b          	srliw	a5,a5,0x18
    8000295a:	2781                	sext.w	a5,a5
    8000295c:	0ff7f713          	andi	a4,a5,255
    80002960:	fb843783          	ld	a5,-72(s0)
    80002964:	00e78023          	sb	a4,0(a5)
    80002968:	fec42783          	lw	a5,-20(s0)
    8000296c:	0107d79b          	srliw	a5,a5,0x10
    80002970:	0007871b          	sext.w	a4,a5
    80002974:	fb843783          	ld	a5,-72(s0)
    80002978:	0785                	addi	a5,a5,1
    8000297a:	0ff77713          	andi	a4,a4,255
    8000297e:	00e78023          	sb	a4,0(a5)
    80002982:	fec42783          	lw	a5,-20(s0)
    80002986:	0087d79b          	srliw	a5,a5,0x8
    8000298a:	0007871b          	sext.w	a4,a5
    8000298e:	fb843783          	ld	a5,-72(s0)
    80002992:	0789                	addi	a5,a5,2
    80002994:	0ff77713          	andi	a4,a4,255
    80002998:	00e78023          	sb	a4,0(a5)
    8000299c:	fb843783          	ld	a5,-72(s0)
    800029a0:	078d                	addi	a5,a5,3
    800029a2:	fec42703          	lw	a4,-20(s0)
    800029a6:	0ff77713          	andi	a4,a4,255
    800029aa:	00e78023          	sb	a4,0(a5)
    800029ae:	fe842783          	lw	a5,-24(s0)
    800029b2:	0187d79b          	srliw	a5,a5,0x18
    800029b6:	0007871b          	sext.w	a4,a5
    800029ba:	fb843783          	ld	a5,-72(s0)
    800029be:	0791                	addi	a5,a5,4
    800029c0:	0ff77713          	andi	a4,a4,255
    800029c4:	00e78023          	sb	a4,0(a5)
    800029c8:	fe842783          	lw	a5,-24(s0)
    800029cc:	0107d79b          	srliw	a5,a5,0x10
    800029d0:	0007871b          	sext.w	a4,a5
    800029d4:	fb843783          	ld	a5,-72(s0)
    800029d8:	0795                	addi	a5,a5,5
    800029da:	0ff77713          	andi	a4,a4,255
    800029de:	00e78023          	sb	a4,0(a5)
    800029e2:	fe842783          	lw	a5,-24(s0)
    800029e6:	0087d79b          	srliw	a5,a5,0x8
    800029ea:	0007871b          	sext.w	a4,a5
    800029ee:	fb843783          	ld	a5,-72(s0)
    800029f2:	0799                	addi	a5,a5,6
    800029f4:	0ff77713          	andi	a4,a4,255
    800029f8:	00e78023          	sb	a4,0(a5)
    800029fc:	fb843783          	ld	a5,-72(s0)
    80002a00:	079d                	addi	a5,a5,7
    80002a02:	fe842703          	lw	a4,-24(s0)
    80002a06:	0ff77713          	andi	a4,a4,255
    80002a0a:	00e78023          	sb	a4,0(a5)
    80002a0e:	fe442783          	lw	a5,-28(s0)
    80002a12:	0187d79b          	srliw	a5,a5,0x18
    80002a16:	0007871b          	sext.w	a4,a5
    80002a1a:	fb843783          	ld	a5,-72(s0)
    80002a1e:	07a1                	addi	a5,a5,8
    80002a20:	0ff77713          	andi	a4,a4,255
    80002a24:	00e78023          	sb	a4,0(a5)
    80002a28:	fe442783          	lw	a5,-28(s0)
    80002a2c:	0107d79b          	srliw	a5,a5,0x10
    80002a30:	0007871b          	sext.w	a4,a5
    80002a34:	fb843783          	ld	a5,-72(s0)
    80002a38:	07a5                	addi	a5,a5,9
    80002a3a:	0ff77713          	andi	a4,a4,255
    80002a3e:	00e78023          	sb	a4,0(a5)
    80002a42:	fe442783          	lw	a5,-28(s0)
    80002a46:	0087d79b          	srliw	a5,a5,0x8
    80002a4a:	0007871b          	sext.w	a4,a5
    80002a4e:	fb843783          	ld	a5,-72(s0)
    80002a52:	07a9                	addi	a5,a5,10
    80002a54:	0ff77713          	andi	a4,a4,255
    80002a58:	00e78023          	sb	a4,0(a5)
    80002a5c:	fb843783          	ld	a5,-72(s0)
    80002a60:	07ad                	addi	a5,a5,11
    80002a62:	fe442703          	lw	a4,-28(s0)
    80002a66:	0ff77713          	andi	a4,a4,255
    80002a6a:	00e78023          	sb	a4,0(a5)
    80002a6e:	fe042783          	lw	a5,-32(s0)
    80002a72:	0187d79b          	srliw	a5,a5,0x18
    80002a76:	0007871b          	sext.w	a4,a5
    80002a7a:	fb843783          	ld	a5,-72(s0)
    80002a7e:	07b1                	addi	a5,a5,12
    80002a80:	0ff77713          	andi	a4,a4,255
    80002a84:	00e78023          	sb	a4,0(a5)
    80002a88:	fe042783          	lw	a5,-32(s0)
    80002a8c:	0107d79b          	srliw	a5,a5,0x10
    80002a90:	0007871b          	sext.w	a4,a5
    80002a94:	fb843783          	ld	a5,-72(s0)
    80002a98:	07b5                	addi	a5,a5,13
    80002a9a:	0ff77713          	andi	a4,a4,255
    80002a9e:	00e78023          	sb	a4,0(a5)
    80002aa2:	fe042783          	lw	a5,-32(s0)
    80002aa6:	0087d79b          	srliw	a5,a5,0x8
    80002aaa:	0007871b          	sext.w	a4,a5
    80002aae:	fb843783          	ld	a5,-72(s0)
    80002ab2:	07b9                	addi	a5,a5,14
    80002ab4:	0ff77713          	andi	a4,a4,255
    80002ab8:	00e78023          	sb	a4,0(a5)
    80002abc:	fb843783          	ld	a5,-72(s0)
    80002ac0:	07bd                	addi	a5,a5,15
    80002ac2:	fe042703          	lw	a4,-32(s0)
    80002ac6:	0ff77713          	andi	a4,a4,255
    80002aca:	00e78023          	sb	a4,0(a5)
    80002ace:	fc843783          	ld	a5,-56(s0)
    80002ad2:	fec42703          	lw	a4,-20(s0)
    80002ad6:	0ae7a823          	sw	a4,176(a5)
    80002ada:	fc843783          	ld	a5,-56(s0)
    80002ade:	fe842703          	lw	a4,-24(s0)
    80002ae2:	0ae7aa23          	sw	a4,180(a5)
    80002ae6:	fc843783          	ld	a5,-56(s0)
    80002aea:	fe442703          	lw	a4,-28(s0)
    80002aee:	0ae7ac23          	sw	a4,184(a5)
    80002af2:	fc843783          	ld	a5,-56(s0)
    80002af6:	fe042703          	lw	a4,-32(s0)
    80002afa:	0ae7ae23          	sw	a4,188(a5)
    80002afe:	0001                	nop
    80002b00:	6426                	ld	s0,72(sp)
    80002b02:	6161                	addi	sp,sp,80
    80002b04:	8082                	ret

0000000080002b06 <AES_Decrypt>:
    80002b06:	711d                	addi	sp,sp,-96
    80002b08:	eca2                	sd	s0,88(sp)
    80002b0a:	1080                	addi	s0,sp,96
    80002b0c:	faa43c23          	sd	a0,-72(s0)
    80002b10:	fab43823          	sd	a1,-80(s0)
    80002b14:	fac43423          	sd	a2,-88(s0)
    80002b18:	fb043783          	ld	a5,-80(s0)
    80002b1c:	0007c783          	lbu	a5,0(a5)
    80002b20:	2781                	sext.w	a5,a5
    80002b22:	0187979b          	slliw	a5,a5,0x18
    80002b26:	0007871b          	sext.w	a4,a5
    80002b2a:	fb043783          	ld	a5,-80(s0)
    80002b2e:	0785                	addi	a5,a5,1
    80002b30:	0007c783          	lbu	a5,0(a5)
    80002b34:	2781                	sext.w	a5,a5
    80002b36:	0107979b          	slliw	a5,a5,0x10
    80002b3a:	2781                	sext.w	a5,a5
    80002b3c:	8fb9                	xor	a5,a5,a4
    80002b3e:	0007871b          	sext.w	a4,a5
    80002b42:	fb043783          	ld	a5,-80(s0)
    80002b46:	0789                	addi	a5,a5,2
    80002b48:	0007c783          	lbu	a5,0(a5)
    80002b4c:	2781                	sext.w	a5,a5
    80002b4e:	0087979b          	slliw	a5,a5,0x8
    80002b52:	2781                	sext.w	a5,a5
    80002b54:	8fb9                	xor	a5,a5,a4
    80002b56:	0007871b          	sext.w	a4,a5
    80002b5a:	fb043783          	ld	a5,-80(s0)
    80002b5e:	078d                	addi	a5,a5,3
    80002b60:	0007c783          	lbu	a5,0(a5)
    80002b64:	2781                	sext.w	a5,a5
    80002b66:	8fb9                	xor	a5,a5,a4
    80002b68:	0007871b          	sext.w	a4,a5
    80002b6c:	fb843783          	ld	a5,-72(s0)
    80002b70:	439c                	lw	a5,0(a5)
    80002b72:	8fb9                	xor	a5,a5,a4
    80002b74:	fef42623          	sw	a5,-20(s0)
    80002b78:	fb043783          	ld	a5,-80(s0)
    80002b7c:	0791                	addi	a5,a5,4
    80002b7e:	0007c783          	lbu	a5,0(a5)
    80002b82:	2781                	sext.w	a5,a5
    80002b84:	0187979b          	slliw	a5,a5,0x18
    80002b88:	0007871b          	sext.w	a4,a5
    80002b8c:	fb043783          	ld	a5,-80(s0)
    80002b90:	0795                	addi	a5,a5,5
    80002b92:	0007c783          	lbu	a5,0(a5)
    80002b96:	2781                	sext.w	a5,a5
    80002b98:	0107979b          	slliw	a5,a5,0x10
    80002b9c:	2781                	sext.w	a5,a5
    80002b9e:	8fb9                	xor	a5,a5,a4
    80002ba0:	0007871b          	sext.w	a4,a5
    80002ba4:	fb043783          	ld	a5,-80(s0)
    80002ba8:	0799                	addi	a5,a5,6
    80002baa:	0007c783          	lbu	a5,0(a5)
    80002bae:	2781                	sext.w	a5,a5
    80002bb0:	0087979b          	slliw	a5,a5,0x8
    80002bb4:	2781                	sext.w	a5,a5
    80002bb6:	8fb9                	xor	a5,a5,a4
    80002bb8:	0007871b          	sext.w	a4,a5
    80002bbc:	fb043783          	ld	a5,-80(s0)
    80002bc0:	079d                	addi	a5,a5,7
    80002bc2:	0007c783          	lbu	a5,0(a5)
    80002bc6:	2781                	sext.w	a5,a5
    80002bc8:	8fb9                	xor	a5,a5,a4
    80002bca:	0007871b          	sext.w	a4,a5
    80002bce:	fb843783          	ld	a5,-72(s0)
    80002bd2:	43dc                	lw	a5,4(a5)
    80002bd4:	8fb9                	xor	a5,a5,a4
    80002bd6:	fef42423          	sw	a5,-24(s0)
    80002bda:	fb043783          	ld	a5,-80(s0)
    80002bde:	07a1                	addi	a5,a5,8
    80002be0:	0007c783          	lbu	a5,0(a5)
    80002be4:	2781                	sext.w	a5,a5
    80002be6:	0187979b          	slliw	a5,a5,0x18
    80002bea:	0007871b          	sext.w	a4,a5
    80002bee:	fb043783          	ld	a5,-80(s0)
    80002bf2:	07a5                	addi	a5,a5,9
    80002bf4:	0007c783          	lbu	a5,0(a5)
    80002bf8:	2781                	sext.w	a5,a5
    80002bfa:	0107979b          	slliw	a5,a5,0x10
    80002bfe:	2781                	sext.w	a5,a5
    80002c00:	8fb9                	xor	a5,a5,a4
    80002c02:	0007871b          	sext.w	a4,a5
    80002c06:	fb043783          	ld	a5,-80(s0)
    80002c0a:	07a9                	addi	a5,a5,10
    80002c0c:	0007c783          	lbu	a5,0(a5)
    80002c10:	2781                	sext.w	a5,a5
    80002c12:	0087979b          	slliw	a5,a5,0x8
    80002c16:	2781                	sext.w	a5,a5
    80002c18:	8fb9                	xor	a5,a5,a4
    80002c1a:	0007871b          	sext.w	a4,a5
    80002c1e:	fb043783          	ld	a5,-80(s0)
    80002c22:	07ad                	addi	a5,a5,11
    80002c24:	0007c783          	lbu	a5,0(a5)
    80002c28:	2781                	sext.w	a5,a5
    80002c2a:	8fb9                	xor	a5,a5,a4
    80002c2c:	0007871b          	sext.w	a4,a5
    80002c30:	fb843783          	ld	a5,-72(s0)
    80002c34:	479c                	lw	a5,8(a5)
    80002c36:	8fb9                	xor	a5,a5,a4
    80002c38:	fef42223          	sw	a5,-28(s0)
    80002c3c:	fb043783          	ld	a5,-80(s0)
    80002c40:	07b1                	addi	a5,a5,12
    80002c42:	0007c783          	lbu	a5,0(a5)
    80002c46:	2781                	sext.w	a5,a5
    80002c48:	0187979b          	slliw	a5,a5,0x18
    80002c4c:	0007871b          	sext.w	a4,a5
    80002c50:	fb043783          	ld	a5,-80(s0)
    80002c54:	07b5                	addi	a5,a5,13
    80002c56:	0007c783          	lbu	a5,0(a5)
    80002c5a:	2781                	sext.w	a5,a5
    80002c5c:	0107979b          	slliw	a5,a5,0x10
    80002c60:	2781                	sext.w	a5,a5
    80002c62:	8fb9                	xor	a5,a5,a4
    80002c64:	0007871b          	sext.w	a4,a5
    80002c68:	fb043783          	ld	a5,-80(s0)
    80002c6c:	07b9                	addi	a5,a5,14
    80002c6e:	0007c783          	lbu	a5,0(a5)
    80002c72:	2781                	sext.w	a5,a5
    80002c74:	0087979b          	slliw	a5,a5,0x8
    80002c78:	2781                	sext.w	a5,a5
    80002c7a:	8fb9                	xor	a5,a5,a4
    80002c7c:	0007871b          	sext.w	a4,a5
    80002c80:	fb043783          	ld	a5,-80(s0)
    80002c84:	07bd                	addi	a5,a5,15
    80002c86:	0007c783          	lbu	a5,0(a5)
    80002c8a:	2781                	sext.w	a5,a5
    80002c8c:	8fb9                	xor	a5,a5,a4
    80002c8e:	0007871b          	sext.w	a4,a5
    80002c92:	fb843783          	ld	a5,-72(s0)
    80002c96:	47dc                	lw	a5,12(a5)
    80002c98:	8fb9                	xor	a5,a5,a4
    80002c9a:	fef42023          	sw	a5,-32(s0)
    80002c9e:	fb043783          	ld	a5,-80(s0)
    80002ca2:	0007c783          	lbu	a5,0(a5)
    80002ca6:	2781                	sext.w	a5,a5
    80002ca8:	0187979b          	slliw	a5,a5,0x18
    80002cac:	0007871b          	sext.w	a4,a5
    80002cb0:	fb043783          	ld	a5,-80(s0)
    80002cb4:	0785                	addi	a5,a5,1
    80002cb6:	0007c783          	lbu	a5,0(a5)
    80002cba:	2781                	sext.w	a5,a5
    80002cbc:	0107979b          	slliw	a5,a5,0x10
    80002cc0:	2781                	sext.w	a5,a5
    80002cc2:	8fb9                	xor	a5,a5,a4
    80002cc4:	0007871b          	sext.w	a4,a5
    80002cc8:	fb043783          	ld	a5,-80(s0)
    80002ccc:	0789                	addi	a5,a5,2
    80002cce:	0007c783          	lbu	a5,0(a5)
    80002cd2:	2781                	sext.w	a5,a5
    80002cd4:	0087979b          	slliw	a5,a5,0x8
    80002cd8:	2781                	sext.w	a5,a5
    80002cda:	8fb9                	xor	a5,a5,a4
    80002cdc:	0007871b          	sext.w	a4,a5
    80002ce0:	fb043783          	ld	a5,-80(s0)
    80002ce4:	078d                	addi	a5,a5,3
    80002ce6:	0007c783          	lbu	a5,0(a5)
    80002cea:	2781                	sext.w	a5,a5
    80002cec:	8fb9                	xor	a5,a5,a4
    80002cee:	2781                	sext.w	a5,a5
    80002cf0:	fcf42023          	sw	a5,-64(s0)
    80002cf4:	fb043783          	ld	a5,-80(s0)
    80002cf8:	0791                	addi	a5,a5,4
    80002cfa:	0007c783          	lbu	a5,0(a5)
    80002cfe:	2781                	sext.w	a5,a5
    80002d00:	0187979b          	slliw	a5,a5,0x18
    80002d04:	0007871b          	sext.w	a4,a5
    80002d08:	fb043783          	ld	a5,-80(s0)
    80002d0c:	0795                	addi	a5,a5,5
    80002d0e:	0007c783          	lbu	a5,0(a5)
    80002d12:	2781                	sext.w	a5,a5
    80002d14:	0107979b          	slliw	a5,a5,0x10
    80002d18:	2781                	sext.w	a5,a5
    80002d1a:	8fb9                	xor	a5,a5,a4
    80002d1c:	0007871b          	sext.w	a4,a5
    80002d20:	fb043783          	ld	a5,-80(s0)
    80002d24:	0799                	addi	a5,a5,6
    80002d26:	0007c783          	lbu	a5,0(a5)
    80002d2a:	2781                	sext.w	a5,a5
    80002d2c:	0087979b          	slliw	a5,a5,0x8
    80002d30:	2781                	sext.w	a5,a5
    80002d32:	8fb9                	xor	a5,a5,a4
    80002d34:	0007871b          	sext.w	a4,a5
    80002d38:	fb043783          	ld	a5,-80(s0)
    80002d3c:	079d                	addi	a5,a5,7
    80002d3e:	0007c783          	lbu	a5,0(a5)
    80002d42:	2781                	sext.w	a5,a5
    80002d44:	8fb9                	xor	a5,a5,a4
    80002d46:	2781                	sext.w	a5,a5
    80002d48:	fcf42223          	sw	a5,-60(s0)
    80002d4c:	fb043783          	ld	a5,-80(s0)
    80002d50:	07a1                	addi	a5,a5,8
    80002d52:	0007c783          	lbu	a5,0(a5)
    80002d56:	2781                	sext.w	a5,a5
    80002d58:	0187979b          	slliw	a5,a5,0x18
    80002d5c:	0007871b          	sext.w	a4,a5
    80002d60:	fb043783          	ld	a5,-80(s0)
    80002d64:	07a5                	addi	a5,a5,9
    80002d66:	0007c783          	lbu	a5,0(a5)
    80002d6a:	2781                	sext.w	a5,a5
    80002d6c:	0107979b          	slliw	a5,a5,0x10
    80002d70:	2781                	sext.w	a5,a5
    80002d72:	8fb9                	xor	a5,a5,a4
    80002d74:	0007871b          	sext.w	a4,a5
    80002d78:	fb043783          	ld	a5,-80(s0)
    80002d7c:	07a9                	addi	a5,a5,10
    80002d7e:	0007c783          	lbu	a5,0(a5)
    80002d82:	2781                	sext.w	a5,a5
    80002d84:	0087979b          	slliw	a5,a5,0x8
    80002d88:	2781                	sext.w	a5,a5
    80002d8a:	8fb9                	xor	a5,a5,a4
    80002d8c:	0007871b          	sext.w	a4,a5
    80002d90:	fb043783          	ld	a5,-80(s0)
    80002d94:	07ad                	addi	a5,a5,11
    80002d96:	0007c783          	lbu	a5,0(a5)
    80002d9a:	2781                	sext.w	a5,a5
    80002d9c:	8fb9                	xor	a5,a5,a4
    80002d9e:	2781                	sext.w	a5,a5
    80002da0:	fcf42423          	sw	a5,-56(s0)
    80002da4:	fb043783          	ld	a5,-80(s0)
    80002da8:	07b1                	addi	a5,a5,12
    80002daa:	0007c783          	lbu	a5,0(a5)
    80002dae:	2781                	sext.w	a5,a5
    80002db0:	0187979b          	slliw	a5,a5,0x18
    80002db4:	0007871b          	sext.w	a4,a5
    80002db8:	fb043783          	ld	a5,-80(s0)
    80002dbc:	07b5                	addi	a5,a5,13
    80002dbe:	0007c783          	lbu	a5,0(a5)
    80002dc2:	2781                	sext.w	a5,a5
    80002dc4:	0107979b          	slliw	a5,a5,0x10
    80002dc8:	2781                	sext.w	a5,a5
    80002dca:	8fb9                	xor	a5,a5,a4
    80002dcc:	0007871b          	sext.w	a4,a5
    80002dd0:	fb043783          	ld	a5,-80(s0)
    80002dd4:	07b9                	addi	a5,a5,14
    80002dd6:	0007c783          	lbu	a5,0(a5)
    80002dda:	2781                	sext.w	a5,a5
    80002ddc:	0087979b          	slliw	a5,a5,0x8
    80002de0:	2781                	sext.w	a5,a5
    80002de2:	8fb9                	xor	a5,a5,a4
    80002de4:	0007871b          	sext.w	a4,a5
    80002de8:	fb043783          	ld	a5,-80(s0)
    80002dec:	07bd                	addi	a5,a5,15
    80002dee:	0007c783          	lbu	a5,0(a5)
    80002df2:	2781                	sext.w	a5,a5
    80002df4:	8fb9                	xor	a5,a5,a4
    80002df6:	2781                	sext.w	a5,a5
    80002df8:	fcf42623          	sw	a5,-52(s0)
    80002dfc:	fec42783          	lw	a5,-20(s0)
    80002e00:	0187d79b          	srliw	a5,a5,0x18
    80002e04:	2781                	sext.w	a5,a5
    80002e06:	00005717          	auipc	a4,0x5
    80002e0a:	9e270713          	addi	a4,a4,-1566 # 800077e8 <Td0>
    80002e0e:	1782                	slli	a5,a5,0x20
    80002e10:	9381                	srli	a5,a5,0x20
    80002e12:	078a                	slli	a5,a5,0x2
    80002e14:	97ba                	add	a5,a5,a4
    80002e16:	4394                	lw	a3,0(a5)
    80002e18:	fe042783          	lw	a5,-32(s0)
    80002e1c:	0107d79b          	srliw	a5,a5,0x10
    80002e20:	2781                	sext.w	a5,a5
    80002e22:	0ff7f793          	andi	a5,a5,255
    80002e26:	2781                	sext.w	a5,a5
    80002e28:	00005717          	auipc	a4,0x5
    80002e2c:	dc070713          	addi	a4,a4,-576 # 80007be8 <Td1>
    80002e30:	1782                	slli	a5,a5,0x20
    80002e32:	9381                	srli	a5,a5,0x20
    80002e34:	078a                	slli	a5,a5,0x2
    80002e36:	97ba                	add	a5,a5,a4
    80002e38:	439c                	lw	a5,0(a5)
    80002e3a:	8736                	mv	a4,a3
    80002e3c:	8fb9                	xor	a5,a5,a4
    80002e3e:	0007869b          	sext.w	a3,a5
    80002e42:	fe442783          	lw	a5,-28(s0)
    80002e46:	0087d79b          	srliw	a5,a5,0x8
    80002e4a:	2781                	sext.w	a5,a5
    80002e4c:	0ff7f793          	andi	a5,a5,255
    80002e50:	2781                	sext.w	a5,a5
    80002e52:	00005717          	auipc	a4,0x5
    80002e56:	19670713          	addi	a4,a4,406 # 80007fe8 <Td2>
    80002e5a:	1782                	slli	a5,a5,0x20
    80002e5c:	9381                	srli	a5,a5,0x20
    80002e5e:	078a                	slli	a5,a5,0x2
    80002e60:	97ba                	add	a5,a5,a4
    80002e62:	439c                	lw	a5,0(a5)
    80002e64:	8736                	mv	a4,a3
    80002e66:	8fb9                	xor	a5,a5,a4
    80002e68:	0007869b          	sext.w	a3,a5
    80002e6c:	fe842783          	lw	a5,-24(s0)
    80002e70:	0ff7f793          	andi	a5,a5,255
    80002e74:	2781                	sext.w	a5,a5
    80002e76:	00005717          	auipc	a4,0x5
    80002e7a:	57270713          	addi	a4,a4,1394 # 800083e8 <Td3>
    80002e7e:	1782                	slli	a5,a5,0x20
    80002e80:	9381                	srli	a5,a5,0x20
    80002e82:	078a                	slli	a5,a5,0x2
    80002e84:	97ba                	add	a5,a5,a4
    80002e86:	439c                	lw	a5,0(a5)
    80002e88:	8736                	mv	a4,a3
    80002e8a:	8fb9                	xor	a5,a5,a4
    80002e8c:	0007871b          	sext.w	a4,a5
    80002e90:	fb843783          	ld	a5,-72(s0)
    80002e94:	4b9c                	lw	a5,16(a5)
    80002e96:	8fb9                	xor	a5,a5,a4
    80002e98:	fcf42e23          	sw	a5,-36(s0)
    80002e9c:	fe842783          	lw	a5,-24(s0)
    80002ea0:	0187d79b          	srliw	a5,a5,0x18
    80002ea4:	2781                	sext.w	a5,a5
    80002ea6:	00005717          	auipc	a4,0x5
    80002eaa:	94270713          	addi	a4,a4,-1726 # 800077e8 <Td0>
    80002eae:	1782                	slli	a5,a5,0x20
    80002eb0:	9381                	srli	a5,a5,0x20
    80002eb2:	078a                	slli	a5,a5,0x2
    80002eb4:	97ba                	add	a5,a5,a4
    80002eb6:	4394                	lw	a3,0(a5)
    80002eb8:	fec42783          	lw	a5,-20(s0)
    80002ebc:	0107d79b          	srliw	a5,a5,0x10
    80002ec0:	2781                	sext.w	a5,a5
    80002ec2:	0ff7f793          	andi	a5,a5,255
    80002ec6:	2781                	sext.w	a5,a5
    80002ec8:	00005717          	auipc	a4,0x5
    80002ecc:	d2070713          	addi	a4,a4,-736 # 80007be8 <Td1>
    80002ed0:	1782                	slli	a5,a5,0x20
    80002ed2:	9381                	srli	a5,a5,0x20
    80002ed4:	078a                	slli	a5,a5,0x2
    80002ed6:	97ba                	add	a5,a5,a4
    80002ed8:	439c                	lw	a5,0(a5)
    80002eda:	8736                	mv	a4,a3
    80002edc:	8fb9                	xor	a5,a5,a4
    80002ede:	0007869b          	sext.w	a3,a5
    80002ee2:	fe042783          	lw	a5,-32(s0)
    80002ee6:	0087d79b          	srliw	a5,a5,0x8
    80002eea:	2781                	sext.w	a5,a5
    80002eec:	0ff7f793          	andi	a5,a5,255
    80002ef0:	2781                	sext.w	a5,a5
    80002ef2:	00005717          	auipc	a4,0x5
    80002ef6:	0f670713          	addi	a4,a4,246 # 80007fe8 <Td2>
    80002efa:	1782                	slli	a5,a5,0x20
    80002efc:	9381                	srli	a5,a5,0x20
    80002efe:	078a                	slli	a5,a5,0x2
    80002f00:	97ba                	add	a5,a5,a4
    80002f02:	439c                	lw	a5,0(a5)
    80002f04:	8736                	mv	a4,a3
    80002f06:	8fb9                	xor	a5,a5,a4
    80002f08:	0007869b          	sext.w	a3,a5
    80002f0c:	fe442783          	lw	a5,-28(s0)
    80002f10:	0ff7f793          	andi	a5,a5,255
    80002f14:	2781                	sext.w	a5,a5
    80002f16:	00005717          	auipc	a4,0x5
    80002f1a:	4d270713          	addi	a4,a4,1234 # 800083e8 <Td3>
    80002f1e:	1782                	slli	a5,a5,0x20
    80002f20:	9381                	srli	a5,a5,0x20
    80002f22:	078a                	slli	a5,a5,0x2
    80002f24:	97ba                	add	a5,a5,a4
    80002f26:	439c                	lw	a5,0(a5)
    80002f28:	8736                	mv	a4,a3
    80002f2a:	8fb9                	xor	a5,a5,a4
    80002f2c:	0007871b          	sext.w	a4,a5
    80002f30:	fb843783          	ld	a5,-72(s0)
    80002f34:	4bdc                	lw	a5,20(a5)
    80002f36:	8fb9                	xor	a5,a5,a4
    80002f38:	fcf42c23          	sw	a5,-40(s0)
    80002f3c:	fe442783          	lw	a5,-28(s0)
    80002f40:	0187d79b          	srliw	a5,a5,0x18
    80002f44:	2781                	sext.w	a5,a5
    80002f46:	00005717          	auipc	a4,0x5
    80002f4a:	8a270713          	addi	a4,a4,-1886 # 800077e8 <Td0>
    80002f4e:	1782                	slli	a5,a5,0x20
    80002f50:	9381                	srli	a5,a5,0x20
    80002f52:	078a                	slli	a5,a5,0x2
    80002f54:	97ba                	add	a5,a5,a4
    80002f56:	4394                	lw	a3,0(a5)
    80002f58:	fe842783          	lw	a5,-24(s0)
    80002f5c:	0107d79b          	srliw	a5,a5,0x10
    80002f60:	2781                	sext.w	a5,a5
    80002f62:	0ff7f793          	andi	a5,a5,255
    80002f66:	2781                	sext.w	a5,a5
    80002f68:	00005717          	auipc	a4,0x5
    80002f6c:	c8070713          	addi	a4,a4,-896 # 80007be8 <Td1>
    80002f70:	1782                	slli	a5,a5,0x20
    80002f72:	9381                	srli	a5,a5,0x20
    80002f74:	078a                	slli	a5,a5,0x2
    80002f76:	97ba                	add	a5,a5,a4
    80002f78:	439c                	lw	a5,0(a5)
    80002f7a:	8736                	mv	a4,a3
    80002f7c:	8fb9                	xor	a5,a5,a4
    80002f7e:	0007869b          	sext.w	a3,a5
    80002f82:	fec42783          	lw	a5,-20(s0)
    80002f86:	0087d79b          	srliw	a5,a5,0x8
    80002f8a:	2781                	sext.w	a5,a5
    80002f8c:	0ff7f793          	andi	a5,a5,255
    80002f90:	2781                	sext.w	a5,a5
    80002f92:	00005717          	auipc	a4,0x5
    80002f96:	05670713          	addi	a4,a4,86 # 80007fe8 <Td2>
    80002f9a:	1782                	slli	a5,a5,0x20
    80002f9c:	9381                	srli	a5,a5,0x20
    80002f9e:	078a                	slli	a5,a5,0x2
    80002fa0:	97ba                	add	a5,a5,a4
    80002fa2:	439c                	lw	a5,0(a5)
    80002fa4:	8736                	mv	a4,a3
    80002fa6:	8fb9                	xor	a5,a5,a4
    80002fa8:	0007869b          	sext.w	a3,a5
    80002fac:	fe042783          	lw	a5,-32(s0)
    80002fb0:	0ff7f793          	andi	a5,a5,255
    80002fb4:	2781                	sext.w	a5,a5
    80002fb6:	00005717          	auipc	a4,0x5
    80002fba:	43270713          	addi	a4,a4,1074 # 800083e8 <Td3>
    80002fbe:	1782                	slli	a5,a5,0x20
    80002fc0:	9381                	srli	a5,a5,0x20
    80002fc2:	078a                	slli	a5,a5,0x2
    80002fc4:	97ba                	add	a5,a5,a4
    80002fc6:	439c                	lw	a5,0(a5)
    80002fc8:	8736                	mv	a4,a3
    80002fca:	8fb9                	xor	a5,a5,a4
    80002fcc:	0007871b          	sext.w	a4,a5
    80002fd0:	fb843783          	ld	a5,-72(s0)
    80002fd4:	4f9c                	lw	a5,24(a5)
    80002fd6:	8fb9                	xor	a5,a5,a4
    80002fd8:	fcf42a23          	sw	a5,-44(s0)
    80002fdc:	fe042783          	lw	a5,-32(s0)
    80002fe0:	0187d79b          	srliw	a5,a5,0x18
    80002fe4:	2781                	sext.w	a5,a5
    80002fe6:	00005717          	auipc	a4,0x5
    80002fea:	80270713          	addi	a4,a4,-2046 # 800077e8 <Td0>
    80002fee:	1782                	slli	a5,a5,0x20
    80002ff0:	9381                	srli	a5,a5,0x20
    80002ff2:	078a                	slli	a5,a5,0x2
    80002ff4:	97ba                	add	a5,a5,a4
    80002ff6:	4394                	lw	a3,0(a5)
    80002ff8:	fe442783          	lw	a5,-28(s0)
    80002ffc:	0107d79b          	srliw	a5,a5,0x10
    80003000:	2781                	sext.w	a5,a5
    80003002:	0ff7f793          	andi	a5,a5,255
    80003006:	2781                	sext.w	a5,a5
    80003008:	00005717          	auipc	a4,0x5
    8000300c:	be070713          	addi	a4,a4,-1056 # 80007be8 <Td1>
    80003010:	1782                	slli	a5,a5,0x20
    80003012:	9381                	srli	a5,a5,0x20
    80003014:	078a                	slli	a5,a5,0x2
    80003016:	97ba                	add	a5,a5,a4
    80003018:	439c                	lw	a5,0(a5)
    8000301a:	8736                	mv	a4,a3
    8000301c:	8fb9                	xor	a5,a5,a4
    8000301e:	0007869b          	sext.w	a3,a5
    80003022:	fe842783          	lw	a5,-24(s0)
    80003026:	0087d79b          	srliw	a5,a5,0x8
    8000302a:	2781                	sext.w	a5,a5
    8000302c:	0ff7f793          	andi	a5,a5,255
    80003030:	2781                	sext.w	a5,a5
    80003032:	00005717          	auipc	a4,0x5
    80003036:	fb670713          	addi	a4,a4,-74 # 80007fe8 <Td2>
    8000303a:	1782                	slli	a5,a5,0x20
    8000303c:	9381                	srli	a5,a5,0x20
    8000303e:	078a                	slli	a5,a5,0x2
    80003040:	97ba                	add	a5,a5,a4
    80003042:	439c                	lw	a5,0(a5)
    80003044:	8736                	mv	a4,a3
    80003046:	8fb9                	xor	a5,a5,a4
    80003048:	0007869b          	sext.w	a3,a5
    8000304c:	fec42783          	lw	a5,-20(s0)
    80003050:	0ff7f793          	andi	a5,a5,255
    80003054:	2781                	sext.w	a5,a5
    80003056:	00005717          	auipc	a4,0x5
    8000305a:	39270713          	addi	a4,a4,914 # 800083e8 <Td3>
    8000305e:	1782                	slli	a5,a5,0x20
    80003060:	9381                	srli	a5,a5,0x20
    80003062:	078a                	slli	a5,a5,0x2
    80003064:	97ba                	add	a5,a5,a4
    80003066:	439c                	lw	a5,0(a5)
    80003068:	8736                	mv	a4,a3
    8000306a:	8fb9                	xor	a5,a5,a4
    8000306c:	0007871b          	sext.w	a4,a5
    80003070:	fb843783          	ld	a5,-72(s0)
    80003074:	4fdc                	lw	a5,28(a5)
    80003076:	8fb9                	xor	a5,a5,a4
    80003078:	fcf42823          	sw	a5,-48(s0)
    8000307c:	fdc42783          	lw	a5,-36(s0)
    80003080:	0187d79b          	srliw	a5,a5,0x18
    80003084:	2781                	sext.w	a5,a5
    80003086:	00004717          	auipc	a4,0x4
    8000308a:	76270713          	addi	a4,a4,1890 # 800077e8 <Td0>
    8000308e:	1782                	slli	a5,a5,0x20
    80003090:	9381                	srli	a5,a5,0x20
    80003092:	078a                	slli	a5,a5,0x2
    80003094:	97ba                	add	a5,a5,a4
    80003096:	4394                	lw	a3,0(a5)
    80003098:	fd042783          	lw	a5,-48(s0)
    8000309c:	0107d79b          	srliw	a5,a5,0x10
    800030a0:	2781                	sext.w	a5,a5
    800030a2:	0ff7f793          	andi	a5,a5,255
    800030a6:	2781                	sext.w	a5,a5
    800030a8:	00005717          	auipc	a4,0x5
    800030ac:	b4070713          	addi	a4,a4,-1216 # 80007be8 <Td1>
    800030b0:	1782                	slli	a5,a5,0x20
    800030b2:	9381                	srli	a5,a5,0x20
    800030b4:	078a                	slli	a5,a5,0x2
    800030b6:	97ba                	add	a5,a5,a4
    800030b8:	439c                	lw	a5,0(a5)
    800030ba:	8736                	mv	a4,a3
    800030bc:	8fb9                	xor	a5,a5,a4
    800030be:	0007869b          	sext.w	a3,a5
    800030c2:	fd442783          	lw	a5,-44(s0)
    800030c6:	0087d79b          	srliw	a5,a5,0x8
    800030ca:	2781                	sext.w	a5,a5
    800030cc:	0ff7f793          	andi	a5,a5,255
    800030d0:	2781                	sext.w	a5,a5
    800030d2:	00005717          	auipc	a4,0x5
    800030d6:	f1670713          	addi	a4,a4,-234 # 80007fe8 <Td2>
    800030da:	1782                	slli	a5,a5,0x20
    800030dc:	9381                	srli	a5,a5,0x20
    800030de:	078a                	slli	a5,a5,0x2
    800030e0:	97ba                	add	a5,a5,a4
    800030e2:	439c                	lw	a5,0(a5)
    800030e4:	8736                	mv	a4,a3
    800030e6:	8fb9                	xor	a5,a5,a4
    800030e8:	0007869b          	sext.w	a3,a5
    800030ec:	fd842783          	lw	a5,-40(s0)
    800030f0:	0ff7f793          	andi	a5,a5,255
    800030f4:	2781                	sext.w	a5,a5
    800030f6:	00005717          	auipc	a4,0x5
    800030fa:	2f270713          	addi	a4,a4,754 # 800083e8 <Td3>
    800030fe:	1782                	slli	a5,a5,0x20
    80003100:	9381                	srli	a5,a5,0x20
    80003102:	078a                	slli	a5,a5,0x2
    80003104:	97ba                	add	a5,a5,a4
    80003106:	439c                	lw	a5,0(a5)
    80003108:	8736                	mv	a4,a3
    8000310a:	8fb9                	xor	a5,a5,a4
    8000310c:	0007871b          	sext.w	a4,a5
    80003110:	fb843783          	ld	a5,-72(s0)
    80003114:	539c                	lw	a5,32(a5)
    80003116:	8fb9                	xor	a5,a5,a4
    80003118:	fef42623          	sw	a5,-20(s0)
    8000311c:	fd842783          	lw	a5,-40(s0)
    80003120:	0187d79b          	srliw	a5,a5,0x18
    80003124:	2781                	sext.w	a5,a5
    80003126:	00004717          	auipc	a4,0x4
    8000312a:	6c270713          	addi	a4,a4,1730 # 800077e8 <Td0>
    8000312e:	1782                	slli	a5,a5,0x20
    80003130:	9381                	srli	a5,a5,0x20
    80003132:	078a                	slli	a5,a5,0x2
    80003134:	97ba                	add	a5,a5,a4
    80003136:	4394                	lw	a3,0(a5)
    80003138:	fdc42783          	lw	a5,-36(s0)
    8000313c:	0107d79b          	srliw	a5,a5,0x10
    80003140:	2781                	sext.w	a5,a5
    80003142:	0ff7f793          	andi	a5,a5,255
    80003146:	2781                	sext.w	a5,a5
    80003148:	00005717          	auipc	a4,0x5
    8000314c:	aa070713          	addi	a4,a4,-1376 # 80007be8 <Td1>
    80003150:	1782                	slli	a5,a5,0x20
    80003152:	9381                	srli	a5,a5,0x20
    80003154:	078a                	slli	a5,a5,0x2
    80003156:	97ba                	add	a5,a5,a4
    80003158:	439c                	lw	a5,0(a5)
    8000315a:	8736                	mv	a4,a3
    8000315c:	8fb9                	xor	a5,a5,a4
    8000315e:	0007869b          	sext.w	a3,a5
    80003162:	fd042783          	lw	a5,-48(s0)
    80003166:	0087d79b          	srliw	a5,a5,0x8
    8000316a:	2781                	sext.w	a5,a5
    8000316c:	0ff7f793          	andi	a5,a5,255
    80003170:	2781                	sext.w	a5,a5
    80003172:	00005717          	auipc	a4,0x5
    80003176:	e7670713          	addi	a4,a4,-394 # 80007fe8 <Td2>
    8000317a:	1782                	slli	a5,a5,0x20
    8000317c:	9381                	srli	a5,a5,0x20
    8000317e:	078a                	slli	a5,a5,0x2
    80003180:	97ba                	add	a5,a5,a4
    80003182:	439c                	lw	a5,0(a5)
    80003184:	8736                	mv	a4,a3
    80003186:	8fb9                	xor	a5,a5,a4
    80003188:	0007869b          	sext.w	a3,a5
    8000318c:	fd442783          	lw	a5,-44(s0)
    80003190:	0ff7f793          	andi	a5,a5,255
    80003194:	2781                	sext.w	a5,a5
    80003196:	00005717          	auipc	a4,0x5
    8000319a:	25270713          	addi	a4,a4,594 # 800083e8 <Td3>
    8000319e:	1782                	slli	a5,a5,0x20
    800031a0:	9381                	srli	a5,a5,0x20
    800031a2:	078a                	slli	a5,a5,0x2
    800031a4:	97ba                	add	a5,a5,a4
    800031a6:	439c                	lw	a5,0(a5)
    800031a8:	8736                	mv	a4,a3
    800031aa:	8fb9                	xor	a5,a5,a4
    800031ac:	0007871b          	sext.w	a4,a5
    800031b0:	fb843783          	ld	a5,-72(s0)
    800031b4:	53dc                	lw	a5,36(a5)
    800031b6:	8fb9                	xor	a5,a5,a4
    800031b8:	fef42423          	sw	a5,-24(s0)
    800031bc:	fd442783          	lw	a5,-44(s0)
    800031c0:	0187d79b          	srliw	a5,a5,0x18
    800031c4:	2781                	sext.w	a5,a5
    800031c6:	00004717          	auipc	a4,0x4
    800031ca:	62270713          	addi	a4,a4,1570 # 800077e8 <Td0>
    800031ce:	1782                	slli	a5,a5,0x20
    800031d0:	9381                	srli	a5,a5,0x20
    800031d2:	078a                	slli	a5,a5,0x2
    800031d4:	97ba                	add	a5,a5,a4
    800031d6:	4394                	lw	a3,0(a5)
    800031d8:	fd842783          	lw	a5,-40(s0)
    800031dc:	0107d79b          	srliw	a5,a5,0x10
    800031e0:	2781                	sext.w	a5,a5
    800031e2:	0ff7f793          	andi	a5,a5,255
    800031e6:	2781                	sext.w	a5,a5
    800031e8:	00005717          	auipc	a4,0x5
    800031ec:	a0070713          	addi	a4,a4,-1536 # 80007be8 <Td1>
    800031f0:	1782                	slli	a5,a5,0x20
    800031f2:	9381                	srli	a5,a5,0x20
    800031f4:	078a                	slli	a5,a5,0x2
    800031f6:	97ba                	add	a5,a5,a4
    800031f8:	439c                	lw	a5,0(a5)
    800031fa:	8736                	mv	a4,a3
    800031fc:	8fb9                	xor	a5,a5,a4
    800031fe:	0007869b          	sext.w	a3,a5
    80003202:	fdc42783          	lw	a5,-36(s0)
    80003206:	0087d79b          	srliw	a5,a5,0x8
    8000320a:	2781                	sext.w	a5,a5
    8000320c:	0ff7f793          	andi	a5,a5,255
    80003210:	2781                	sext.w	a5,a5
    80003212:	00005717          	auipc	a4,0x5
    80003216:	dd670713          	addi	a4,a4,-554 # 80007fe8 <Td2>
    8000321a:	1782                	slli	a5,a5,0x20
    8000321c:	9381                	srli	a5,a5,0x20
    8000321e:	078a                	slli	a5,a5,0x2
    80003220:	97ba                	add	a5,a5,a4
    80003222:	439c                	lw	a5,0(a5)
    80003224:	8736                	mv	a4,a3
    80003226:	8fb9                	xor	a5,a5,a4
    80003228:	0007869b          	sext.w	a3,a5
    8000322c:	fd042783          	lw	a5,-48(s0)
    80003230:	0ff7f793          	andi	a5,a5,255
    80003234:	2781                	sext.w	a5,a5
    80003236:	00005717          	auipc	a4,0x5
    8000323a:	1b270713          	addi	a4,a4,434 # 800083e8 <Td3>
    8000323e:	1782                	slli	a5,a5,0x20
    80003240:	9381                	srli	a5,a5,0x20
    80003242:	078a                	slli	a5,a5,0x2
    80003244:	97ba                	add	a5,a5,a4
    80003246:	439c                	lw	a5,0(a5)
    80003248:	8736                	mv	a4,a3
    8000324a:	8fb9                	xor	a5,a5,a4
    8000324c:	0007871b          	sext.w	a4,a5
    80003250:	fb843783          	ld	a5,-72(s0)
    80003254:	579c                	lw	a5,40(a5)
    80003256:	8fb9                	xor	a5,a5,a4
    80003258:	fef42223          	sw	a5,-28(s0)
    8000325c:	fd042783          	lw	a5,-48(s0)
    80003260:	0187d79b          	srliw	a5,a5,0x18
    80003264:	2781                	sext.w	a5,a5
    80003266:	00004717          	auipc	a4,0x4
    8000326a:	58270713          	addi	a4,a4,1410 # 800077e8 <Td0>
    8000326e:	1782                	slli	a5,a5,0x20
    80003270:	9381                	srli	a5,a5,0x20
    80003272:	078a                	slli	a5,a5,0x2
    80003274:	97ba                	add	a5,a5,a4
    80003276:	4394                	lw	a3,0(a5)
    80003278:	fd442783          	lw	a5,-44(s0)
    8000327c:	0107d79b          	srliw	a5,a5,0x10
    80003280:	2781                	sext.w	a5,a5
    80003282:	0ff7f793          	andi	a5,a5,255
    80003286:	2781                	sext.w	a5,a5
    80003288:	00005717          	auipc	a4,0x5
    8000328c:	96070713          	addi	a4,a4,-1696 # 80007be8 <Td1>
    80003290:	1782                	slli	a5,a5,0x20
    80003292:	9381                	srli	a5,a5,0x20
    80003294:	078a                	slli	a5,a5,0x2
    80003296:	97ba                	add	a5,a5,a4
    80003298:	439c                	lw	a5,0(a5)
    8000329a:	8736                	mv	a4,a3
    8000329c:	8fb9                	xor	a5,a5,a4
    8000329e:	0007869b          	sext.w	a3,a5
    800032a2:	fd842783          	lw	a5,-40(s0)
    800032a6:	0087d79b          	srliw	a5,a5,0x8
    800032aa:	2781                	sext.w	a5,a5
    800032ac:	0ff7f793          	andi	a5,a5,255
    800032b0:	2781                	sext.w	a5,a5
    800032b2:	00005717          	auipc	a4,0x5
    800032b6:	d3670713          	addi	a4,a4,-714 # 80007fe8 <Td2>
    800032ba:	1782                	slli	a5,a5,0x20
    800032bc:	9381                	srli	a5,a5,0x20
    800032be:	078a                	slli	a5,a5,0x2
    800032c0:	97ba                	add	a5,a5,a4
    800032c2:	439c                	lw	a5,0(a5)
    800032c4:	8736                	mv	a4,a3
    800032c6:	8fb9                	xor	a5,a5,a4
    800032c8:	0007869b          	sext.w	a3,a5
    800032cc:	fdc42783          	lw	a5,-36(s0)
    800032d0:	0ff7f793          	andi	a5,a5,255
    800032d4:	2781                	sext.w	a5,a5
    800032d6:	00005717          	auipc	a4,0x5
    800032da:	11270713          	addi	a4,a4,274 # 800083e8 <Td3>
    800032de:	1782                	slli	a5,a5,0x20
    800032e0:	9381                	srli	a5,a5,0x20
    800032e2:	078a                	slli	a5,a5,0x2
    800032e4:	97ba                	add	a5,a5,a4
    800032e6:	439c                	lw	a5,0(a5)
    800032e8:	8736                	mv	a4,a3
    800032ea:	8fb9                	xor	a5,a5,a4
    800032ec:	0007871b          	sext.w	a4,a5
    800032f0:	fb843783          	ld	a5,-72(s0)
    800032f4:	57dc                	lw	a5,44(a5)
    800032f6:	8fb9                	xor	a5,a5,a4
    800032f8:	fef42023          	sw	a5,-32(s0)
    800032fc:	fec42783          	lw	a5,-20(s0)
    80003300:	0187d79b          	srliw	a5,a5,0x18
    80003304:	2781                	sext.w	a5,a5
    80003306:	00004717          	auipc	a4,0x4
    8000330a:	4e270713          	addi	a4,a4,1250 # 800077e8 <Td0>
    8000330e:	1782                	slli	a5,a5,0x20
    80003310:	9381                	srli	a5,a5,0x20
    80003312:	078a                	slli	a5,a5,0x2
    80003314:	97ba                	add	a5,a5,a4
    80003316:	4394                	lw	a3,0(a5)
    80003318:	fe042783          	lw	a5,-32(s0)
    8000331c:	0107d79b          	srliw	a5,a5,0x10
    80003320:	2781                	sext.w	a5,a5
    80003322:	0ff7f793          	andi	a5,a5,255
    80003326:	2781                	sext.w	a5,a5
    80003328:	00005717          	auipc	a4,0x5
    8000332c:	8c070713          	addi	a4,a4,-1856 # 80007be8 <Td1>
    80003330:	1782                	slli	a5,a5,0x20
    80003332:	9381                	srli	a5,a5,0x20
    80003334:	078a                	slli	a5,a5,0x2
    80003336:	97ba                	add	a5,a5,a4
    80003338:	439c                	lw	a5,0(a5)
    8000333a:	8736                	mv	a4,a3
    8000333c:	8fb9                	xor	a5,a5,a4
    8000333e:	0007869b          	sext.w	a3,a5
    80003342:	fe442783          	lw	a5,-28(s0)
    80003346:	0087d79b          	srliw	a5,a5,0x8
    8000334a:	2781                	sext.w	a5,a5
    8000334c:	0ff7f793          	andi	a5,a5,255
    80003350:	2781                	sext.w	a5,a5
    80003352:	00005717          	auipc	a4,0x5
    80003356:	c9670713          	addi	a4,a4,-874 # 80007fe8 <Td2>
    8000335a:	1782                	slli	a5,a5,0x20
    8000335c:	9381                	srli	a5,a5,0x20
    8000335e:	078a                	slli	a5,a5,0x2
    80003360:	97ba                	add	a5,a5,a4
    80003362:	439c                	lw	a5,0(a5)
    80003364:	8736                	mv	a4,a3
    80003366:	8fb9                	xor	a5,a5,a4
    80003368:	0007869b          	sext.w	a3,a5
    8000336c:	fe842783          	lw	a5,-24(s0)
    80003370:	0ff7f793          	andi	a5,a5,255
    80003374:	2781                	sext.w	a5,a5
    80003376:	00005717          	auipc	a4,0x5
    8000337a:	07270713          	addi	a4,a4,114 # 800083e8 <Td3>
    8000337e:	1782                	slli	a5,a5,0x20
    80003380:	9381                	srli	a5,a5,0x20
    80003382:	078a                	slli	a5,a5,0x2
    80003384:	97ba                	add	a5,a5,a4
    80003386:	439c                	lw	a5,0(a5)
    80003388:	8736                	mv	a4,a3
    8000338a:	8fb9                	xor	a5,a5,a4
    8000338c:	0007871b          	sext.w	a4,a5
    80003390:	fb843783          	ld	a5,-72(s0)
    80003394:	5b9c                	lw	a5,48(a5)
    80003396:	8fb9                	xor	a5,a5,a4
    80003398:	fcf42e23          	sw	a5,-36(s0)
    8000339c:	fe842783          	lw	a5,-24(s0)
    800033a0:	0187d79b          	srliw	a5,a5,0x18
    800033a4:	2781                	sext.w	a5,a5
    800033a6:	00004717          	auipc	a4,0x4
    800033aa:	44270713          	addi	a4,a4,1090 # 800077e8 <Td0>
    800033ae:	1782                	slli	a5,a5,0x20
    800033b0:	9381                	srli	a5,a5,0x20
    800033b2:	078a                	slli	a5,a5,0x2
    800033b4:	97ba                	add	a5,a5,a4
    800033b6:	4394                	lw	a3,0(a5)
    800033b8:	fec42783          	lw	a5,-20(s0)
    800033bc:	0107d79b          	srliw	a5,a5,0x10
    800033c0:	2781                	sext.w	a5,a5
    800033c2:	0ff7f793          	andi	a5,a5,255
    800033c6:	2781                	sext.w	a5,a5
    800033c8:	00005717          	auipc	a4,0x5
    800033cc:	82070713          	addi	a4,a4,-2016 # 80007be8 <Td1>
    800033d0:	1782                	slli	a5,a5,0x20
    800033d2:	9381                	srli	a5,a5,0x20
    800033d4:	078a                	slli	a5,a5,0x2
    800033d6:	97ba                	add	a5,a5,a4
    800033d8:	439c                	lw	a5,0(a5)
    800033da:	8736                	mv	a4,a3
    800033dc:	8fb9                	xor	a5,a5,a4
    800033de:	0007869b          	sext.w	a3,a5
    800033e2:	fe042783          	lw	a5,-32(s0)
    800033e6:	0087d79b          	srliw	a5,a5,0x8
    800033ea:	2781                	sext.w	a5,a5
    800033ec:	0ff7f793          	andi	a5,a5,255
    800033f0:	2781                	sext.w	a5,a5
    800033f2:	00005717          	auipc	a4,0x5
    800033f6:	bf670713          	addi	a4,a4,-1034 # 80007fe8 <Td2>
    800033fa:	1782                	slli	a5,a5,0x20
    800033fc:	9381                	srli	a5,a5,0x20
    800033fe:	078a                	slli	a5,a5,0x2
    80003400:	97ba                	add	a5,a5,a4
    80003402:	439c                	lw	a5,0(a5)
    80003404:	8736                	mv	a4,a3
    80003406:	8fb9                	xor	a5,a5,a4
    80003408:	0007869b          	sext.w	a3,a5
    8000340c:	fe442783          	lw	a5,-28(s0)
    80003410:	0ff7f793          	andi	a5,a5,255
    80003414:	2781                	sext.w	a5,a5
    80003416:	00005717          	auipc	a4,0x5
    8000341a:	fd270713          	addi	a4,a4,-46 # 800083e8 <Td3>
    8000341e:	1782                	slli	a5,a5,0x20
    80003420:	9381                	srli	a5,a5,0x20
    80003422:	078a                	slli	a5,a5,0x2
    80003424:	97ba                	add	a5,a5,a4
    80003426:	439c                	lw	a5,0(a5)
    80003428:	8736                	mv	a4,a3
    8000342a:	8fb9                	xor	a5,a5,a4
    8000342c:	0007871b          	sext.w	a4,a5
    80003430:	fb843783          	ld	a5,-72(s0)
    80003434:	5bdc                	lw	a5,52(a5)
    80003436:	8fb9                	xor	a5,a5,a4
    80003438:	fcf42c23          	sw	a5,-40(s0)
    8000343c:	fe442783          	lw	a5,-28(s0)
    80003440:	0187d79b          	srliw	a5,a5,0x18
    80003444:	2781                	sext.w	a5,a5
    80003446:	00004717          	auipc	a4,0x4
    8000344a:	3a270713          	addi	a4,a4,930 # 800077e8 <Td0>
    8000344e:	1782                	slli	a5,a5,0x20
    80003450:	9381                	srli	a5,a5,0x20
    80003452:	078a                	slli	a5,a5,0x2
    80003454:	97ba                	add	a5,a5,a4
    80003456:	4394                	lw	a3,0(a5)
    80003458:	fe842783          	lw	a5,-24(s0)
    8000345c:	0107d79b          	srliw	a5,a5,0x10
    80003460:	2781                	sext.w	a5,a5
    80003462:	0ff7f793          	andi	a5,a5,255
    80003466:	2781                	sext.w	a5,a5
    80003468:	00004717          	auipc	a4,0x4
    8000346c:	78070713          	addi	a4,a4,1920 # 80007be8 <Td1>
    80003470:	1782                	slli	a5,a5,0x20
    80003472:	9381                	srli	a5,a5,0x20
    80003474:	078a                	slli	a5,a5,0x2
    80003476:	97ba                	add	a5,a5,a4
    80003478:	439c                	lw	a5,0(a5)
    8000347a:	8736                	mv	a4,a3
    8000347c:	8fb9                	xor	a5,a5,a4
    8000347e:	0007869b          	sext.w	a3,a5
    80003482:	fec42783          	lw	a5,-20(s0)
    80003486:	0087d79b          	srliw	a5,a5,0x8
    8000348a:	2781                	sext.w	a5,a5
    8000348c:	0ff7f793          	andi	a5,a5,255
    80003490:	2781                	sext.w	a5,a5
    80003492:	00005717          	auipc	a4,0x5
    80003496:	b5670713          	addi	a4,a4,-1194 # 80007fe8 <Td2>
    8000349a:	1782                	slli	a5,a5,0x20
    8000349c:	9381                	srli	a5,a5,0x20
    8000349e:	078a                	slli	a5,a5,0x2
    800034a0:	97ba                	add	a5,a5,a4
    800034a2:	439c                	lw	a5,0(a5)
    800034a4:	8736                	mv	a4,a3
    800034a6:	8fb9                	xor	a5,a5,a4
    800034a8:	0007869b          	sext.w	a3,a5
    800034ac:	fe042783          	lw	a5,-32(s0)
    800034b0:	0ff7f793          	andi	a5,a5,255
    800034b4:	2781                	sext.w	a5,a5
    800034b6:	00005717          	auipc	a4,0x5
    800034ba:	f3270713          	addi	a4,a4,-206 # 800083e8 <Td3>
    800034be:	1782                	slli	a5,a5,0x20
    800034c0:	9381                	srli	a5,a5,0x20
    800034c2:	078a                	slli	a5,a5,0x2
    800034c4:	97ba                	add	a5,a5,a4
    800034c6:	439c                	lw	a5,0(a5)
    800034c8:	8736                	mv	a4,a3
    800034ca:	8fb9                	xor	a5,a5,a4
    800034cc:	0007871b          	sext.w	a4,a5
    800034d0:	fb843783          	ld	a5,-72(s0)
    800034d4:	5f9c                	lw	a5,56(a5)
    800034d6:	8fb9                	xor	a5,a5,a4
    800034d8:	fcf42a23          	sw	a5,-44(s0)
    800034dc:	fe042783          	lw	a5,-32(s0)
    800034e0:	0187d79b          	srliw	a5,a5,0x18
    800034e4:	2781                	sext.w	a5,a5
    800034e6:	00004717          	auipc	a4,0x4
    800034ea:	30270713          	addi	a4,a4,770 # 800077e8 <Td0>
    800034ee:	1782                	slli	a5,a5,0x20
    800034f0:	9381                	srli	a5,a5,0x20
    800034f2:	078a                	slli	a5,a5,0x2
    800034f4:	97ba                	add	a5,a5,a4
    800034f6:	4394                	lw	a3,0(a5)
    800034f8:	fe442783          	lw	a5,-28(s0)
    800034fc:	0107d79b          	srliw	a5,a5,0x10
    80003500:	2781                	sext.w	a5,a5
    80003502:	0ff7f793          	andi	a5,a5,255
    80003506:	2781                	sext.w	a5,a5
    80003508:	00004717          	auipc	a4,0x4
    8000350c:	6e070713          	addi	a4,a4,1760 # 80007be8 <Td1>
    80003510:	1782                	slli	a5,a5,0x20
    80003512:	9381                	srli	a5,a5,0x20
    80003514:	078a                	slli	a5,a5,0x2
    80003516:	97ba                	add	a5,a5,a4
    80003518:	439c                	lw	a5,0(a5)
    8000351a:	8736                	mv	a4,a3
    8000351c:	8fb9                	xor	a5,a5,a4
    8000351e:	0007869b          	sext.w	a3,a5
    80003522:	fe842783          	lw	a5,-24(s0)
    80003526:	0087d79b          	srliw	a5,a5,0x8
    8000352a:	2781                	sext.w	a5,a5
    8000352c:	0ff7f793          	andi	a5,a5,255
    80003530:	2781                	sext.w	a5,a5
    80003532:	00005717          	auipc	a4,0x5
    80003536:	ab670713          	addi	a4,a4,-1354 # 80007fe8 <Td2>
    8000353a:	1782                	slli	a5,a5,0x20
    8000353c:	9381                	srli	a5,a5,0x20
    8000353e:	078a                	slli	a5,a5,0x2
    80003540:	97ba                	add	a5,a5,a4
    80003542:	439c                	lw	a5,0(a5)
    80003544:	8736                	mv	a4,a3
    80003546:	8fb9                	xor	a5,a5,a4
    80003548:	0007869b          	sext.w	a3,a5
    8000354c:	fec42783          	lw	a5,-20(s0)
    80003550:	0ff7f793          	andi	a5,a5,255
    80003554:	2781                	sext.w	a5,a5
    80003556:	00005717          	auipc	a4,0x5
    8000355a:	e9270713          	addi	a4,a4,-366 # 800083e8 <Td3>
    8000355e:	1782                	slli	a5,a5,0x20
    80003560:	9381                	srli	a5,a5,0x20
    80003562:	078a                	slli	a5,a5,0x2
    80003564:	97ba                	add	a5,a5,a4
    80003566:	439c                	lw	a5,0(a5)
    80003568:	8736                	mv	a4,a3
    8000356a:	8fb9                	xor	a5,a5,a4
    8000356c:	0007871b          	sext.w	a4,a5
    80003570:	fb843783          	ld	a5,-72(s0)
    80003574:	5fdc                	lw	a5,60(a5)
    80003576:	8fb9                	xor	a5,a5,a4
    80003578:	fcf42823          	sw	a5,-48(s0)
    8000357c:	fdc42783          	lw	a5,-36(s0)
    80003580:	0187d79b          	srliw	a5,a5,0x18
    80003584:	2781                	sext.w	a5,a5
    80003586:	00004717          	auipc	a4,0x4
    8000358a:	26270713          	addi	a4,a4,610 # 800077e8 <Td0>
    8000358e:	1782                	slli	a5,a5,0x20
    80003590:	9381                	srli	a5,a5,0x20
    80003592:	078a                	slli	a5,a5,0x2
    80003594:	97ba                	add	a5,a5,a4
    80003596:	4394                	lw	a3,0(a5)
    80003598:	fd042783          	lw	a5,-48(s0)
    8000359c:	0107d79b          	srliw	a5,a5,0x10
    800035a0:	2781                	sext.w	a5,a5
    800035a2:	0ff7f793          	andi	a5,a5,255
    800035a6:	2781                	sext.w	a5,a5
    800035a8:	00004717          	auipc	a4,0x4
    800035ac:	64070713          	addi	a4,a4,1600 # 80007be8 <Td1>
    800035b0:	1782                	slli	a5,a5,0x20
    800035b2:	9381                	srli	a5,a5,0x20
    800035b4:	078a                	slli	a5,a5,0x2
    800035b6:	97ba                	add	a5,a5,a4
    800035b8:	439c                	lw	a5,0(a5)
    800035ba:	8736                	mv	a4,a3
    800035bc:	8fb9                	xor	a5,a5,a4
    800035be:	0007869b          	sext.w	a3,a5
    800035c2:	fd442783          	lw	a5,-44(s0)
    800035c6:	0087d79b          	srliw	a5,a5,0x8
    800035ca:	2781                	sext.w	a5,a5
    800035cc:	0ff7f793          	andi	a5,a5,255
    800035d0:	2781                	sext.w	a5,a5
    800035d2:	00005717          	auipc	a4,0x5
    800035d6:	a1670713          	addi	a4,a4,-1514 # 80007fe8 <Td2>
    800035da:	1782                	slli	a5,a5,0x20
    800035dc:	9381                	srli	a5,a5,0x20
    800035de:	078a                	slli	a5,a5,0x2
    800035e0:	97ba                	add	a5,a5,a4
    800035e2:	439c                	lw	a5,0(a5)
    800035e4:	8736                	mv	a4,a3
    800035e6:	8fb9                	xor	a5,a5,a4
    800035e8:	0007869b          	sext.w	a3,a5
    800035ec:	fd842783          	lw	a5,-40(s0)
    800035f0:	0ff7f793          	andi	a5,a5,255
    800035f4:	2781                	sext.w	a5,a5
    800035f6:	00005717          	auipc	a4,0x5
    800035fa:	df270713          	addi	a4,a4,-526 # 800083e8 <Td3>
    800035fe:	1782                	slli	a5,a5,0x20
    80003600:	9381                	srli	a5,a5,0x20
    80003602:	078a                	slli	a5,a5,0x2
    80003604:	97ba                	add	a5,a5,a4
    80003606:	439c                	lw	a5,0(a5)
    80003608:	8736                	mv	a4,a3
    8000360a:	8fb9                	xor	a5,a5,a4
    8000360c:	0007871b          	sext.w	a4,a5
    80003610:	fb843783          	ld	a5,-72(s0)
    80003614:	43bc                	lw	a5,64(a5)
    80003616:	8fb9                	xor	a5,a5,a4
    80003618:	fef42623          	sw	a5,-20(s0)
    8000361c:	fd842783          	lw	a5,-40(s0)
    80003620:	0187d79b          	srliw	a5,a5,0x18
    80003624:	2781                	sext.w	a5,a5
    80003626:	00004717          	auipc	a4,0x4
    8000362a:	1c270713          	addi	a4,a4,450 # 800077e8 <Td0>
    8000362e:	1782                	slli	a5,a5,0x20
    80003630:	9381                	srli	a5,a5,0x20
    80003632:	078a                	slli	a5,a5,0x2
    80003634:	97ba                	add	a5,a5,a4
    80003636:	4394                	lw	a3,0(a5)
    80003638:	fdc42783          	lw	a5,-36(s0)
    8000363c:	0107d79b          	srliw	a5,a5,0x10
    80003640:	2781                	sext.w	a5,a5
    80003642:	0ff7f793          	andi	a5,a5,255
    80003646:	2781                	sext.w	a5,a5
    80003648:	00004717          	auipc	a4,0x4
    8000364c:	5a070713          	addi	a4,a4,1440 # 80007be8 <Td1>
    80003650:	1782                	slli	a5,a5,0x20
    80003652:	9381                	srli	a5,a5,0x20
    80003654:	078a                	slli	a5,a5,0x2
    80003656:	97ba                	add	a5,a5,a4
    80003658:	439c                	lw	a5,0(a5)
    8000365a:	8736                	mv	a4,a3
    8000365c:	8fb9                	xor	a5,a5,a4
    8000365e:	0007869b          	sext.w	a3,a5
    80003662:	fd042783          	lw	a5,-48(s0)
    80003666:	0087d79b          	srliw	a5,a5,0x8
    8000366a:	2781                	sext.w	a5,a5
    8000366c:	0ff7f793          	andi	a5,a5,255
    80003670:	2781                	sext.w	a5,a5
    80003672:	00005717          	auipc	a4,0x5
    80003676:	97670713          	addi	a4,a4,-1674 # 80007fe8 <Td2>
    8000367a:	1782                	slli	a5,a5,0x20
    8000367c:	9381                	srli	a5,a5,0x20
    8000367e:	078a                	slli	a5,a5,0x2
    80003680:	97ba                	add	a5,a5,a4
    80003682:	439c                	lw	a5,0(a5)
    80003684:	8736                	mv	a4,a3
    80003686:	8fb9                	xor	a5,a5,a4
    80003688:	0007869b          	sext.w	a3,a5
    8000368c:	fd442783          	lw	a5,-44(s0)
    80003690:	0ff7f793          	andi	a5,a5,255
    80003694:	2781                	sext.w	a5,a5
    80003696:	00005717          	auipc	a4,0x5
    8000369a:	d5270713          	addi	a4,a4,-686 # 800083e8 <Td3>
    8000369e:	1782                	slli	a5,a5,0x20
    800036a0:	9381                	srli	a5,a5,0x20
    800036a2:	078a                	slli	a5,a5,0x2
    800036a4:	97ba                	add	a5,a5,a4
    800036a6:	439c                	lw	a5,0(a5)
    800036a8:	8736                	mv	a4,a3
    800036aa:	8fb9                	xor	a5,a5,a4
    800036ac:	0007871b          	sext.w	a4,a5
    800036b0:	fb843783          	ld	a5,-72(s0)
    800036b4:	43fc                	lw	a5,68(a5)
    800036b6:	8fb9                	xor	a5,a5,a4
    800036b8:	fef42423          	sw	a5,-24(s0)
    800036bc:	fd442783          	lw	a5,-44(s0)
    800036c0:	0187d79b          	srliw	a5,a5,0x18
    800036c4:	2781                	sext.w	a5,a5
    800036c6:	00004717          	auipc	a4,0x4
    800036ca:	12270713          	addi	a4,a4,290 # 800077e8 <Td0>
    800036ce:	1782                	slli	a5,a5,0x20
    800036d0:	9381                	srli	a5,a5,0x20
    800036d2:	078a                	slli	a5,a5,0x2
    800036d4:	97ba                	add	a5,a5,a4
    800036d6:	4394                	lw	a3,0(a5)
    800036d8:	fd842783          	lw	a5,-40(s0)
    800036dc:	0107d79b          	srliw	a5,a5,0x10
    800036e0:	2781                	sext.w	a5,a5
    800036e2:	0ff7f793          	andi	a5,a5,255
    800036e6:	2781                	sext.w	a5,a5
    800036e8:	00004717          	auipc	a4,0x4
    800036ec:	50070713          	addi	a4,a4,1280 # 80007be8 <Td1>
    800036f0:	1782                	slli	a5,a5,0x20
    800036f2:	9381                	srli	a5,a5,0x20
    800036f4:	078a                	slli	a5,a5,0x2
    800036f6:	97ba                	add	a5,a5,a4
    800036f8:	439c                	lw	a5,0(a5)
    800036fa:	8736                	mv	a4,a3
    800036fc:	8fb9                	xor	a5,a5,a4
    800036fe:	0007869b          	sext.w	a3,a5
    80003702:	fdc42783          	lw	a5,-36(s0)
    80003706:	0087d79b          	srliw	a5,a5,0x8
    8000370a:	2781                	sext.w	a5,a5
    8000370c:	0ff7f793          	andi	a5,a5,255
    80003710:	2781                	sext.w	a5,a5
    80003712:	00005717          	auipc	a4,0x5
    80003716:	8d670713          	addi	a4,a4,-1834 # 80007fe8 <Td2>
    8000371a:	1782                	slli	a5,a5,0x20
    8000371c:	9381                	srli	a5,a5,0x20
    8000371e:	078a                	slli	a5,a5,0x2
    80003720:	97ba                	add	a5,a5,a4
    80003722:	439c                	lw	a5,0(a5)
    80003724:	8736                	mv	a4,a3
    80003726:	8fb9                	xor	a5,a5,a4
    80003728:	0007869b          	sext.w	a3,a5
    8000372c:	fd042783          	lw	a5,-48(s0)
    80003730:	0ff7f793          	andi	a5,a5,255
    80003734:	2781                	sext.w	a5,a5
    80003736:	00005717          	auipc	a4,0x5
    8000373a:	cb270713          	addi	a4,a4,-846 # 800083e8 <Td3>
    8000373e:	1782                	slli	a5,a5,0x20
    80003740:	9381                	srli	a5,a5,0x20
    80003742:	078a                	slli	a5,a5,0x2
    80003744:	97ba                	add	a5,a5,a4
    80003746:	439c                	lw	a5,0(a5)
    80003748:	8736                	mv	a4,a3
    8000374a:	8fb9                	xor	a5,a5,a4
    8000374c:	0007871b          	sext.w	a4,a5
    80003750:	fb843783          	ld	a5,-72(s0)
    80003754:	47bc                	lw	a5,72(a5)
    80003756:	8fb9                	xor	a5,a5,a4
    80003758:	fef42223          	sw	a5,-28(s0)
    8000375c:	fd042783          	lw	a5,-48(s0)
    80003760:	0187d79b          	srliw	a5,a5,0x18
    80003764:	2781                	sext.w	a5,a5
    80003766:	00004717          	auipc	a4,0x4
    8000376a:	08270713          	addi	a4,a4,130 # 800077e8 <Td0>
    8000376e:	1782                	slli	a5,a5,0x20
    80003770:	9381                	srli	a5,a5,0x20
    80003772:	078a                	slli	a5,a5,0x2
    80003774:	97ba                	add	a5,a5,a4
    80003776:	4394                	lw	a3,0(a5)
    80003778:	fd442783          	lw	a5,-44(s0)
    8000377c:	0107d79b          	srliw	a5,a5,0x10
    80003780:	2781                	sext.w	a5,a5
    80003782:	0ff7f793          	andi	a5,a5,255
    80003786:	2781                	sext.w	a5,a5
    80003788:	00004717          	auipc	a4,0x4
    8000378c:	46070713          	addi	a4,a4,1120 # 80007be8 <Td1>
    80003790:	1782                	slli	a5,a5,0x20
    80003792:	9381                	srli	a5,a5,0x20
    80003794:	078a                	slli	a5,a5,0x2
    80003796:	97ba                	add	a5,a5,a4
    80003798:	439c                	lw	a5,0(a5)
    8000379a:	8736                	mv	a4,a3
    8000379c:	8fb9                	xor	a5,a5,a4
    8000379e:	0007869b          	sext.w	a3,a5
    800037a2:	fd842783          	lw	a5,-40(s0)
    800037a6:	0087d79b          	srliw	a5,a5,0x8
    800037aa:	2781                	sext.w	a5,a5
    800037ac:	0ff7f793          	andi	a5,a5,255
    800037b0:	2781                	sext.w	a5,a5
    800037b2:	00005717          	auipc	a4,0x5
    800037b6:	83670713          	addi	a4,a4,-1994 # 80007fe8 <Td2>
    800037ba:	1782                	slli	a5,a5,0x20
    800037bc:	9381                	srli	a5,a5,0x20
    800037be:	078a                	slli	a5,a5,0x2
    800037c0:	97ba                	add	a5,a5,a4
    800037c2:	439c                	lw	a5,0(a5)
    800037c4:	8736                	mv	a4,a3
    800037c6:	8fb9                	xor	a5,a5,a4
    800037c8:	0007869b          	sext.w	a3,a5
    800037cc:	fdc42783          	lw	a5,-36(s0)
    800037d0:	0ff7f793          	andi	a5,a5,255
    800037d4:	2781                	sext.w	a5,a5
    800037d6:	00005717          	auipc	a4,0x5
    800037da:	c1270713          	addi	a4,a4,-1006 # 800083e8 <Td3>
    800037de:	1782                	slli	a5,a5,0x20
    800037e0:	9381                	srli	a5,a5,0x20
    800037e2:	078a                	slli	a5,a5,0x2
    800037e4:	97ba                	add	a5,a5,a4
    800037e6:	439c                	lw	a5,0(a5)
    800037e8:	8736                	mv	a4,a3
    800037ea:	8fb9                	xor	a5,a5,a4
    800037ec:	0007871b          	sext.w	a4,a5
    800037f0:	fb843783          	ld	a5,-72(s0)
    800037f4:	47fc                	lw	a5,76(a5)
    800037f6:	8fb9                	xor	a5,a5,a4
    800037f8:	fef42023          	sw	a5,-32(s0)
    800037fc:	fec42783          	lw	a5,-20(s0)
    80003800:	0187d79b          	srliw	a5,a5,0x18
    80003804:	2781                	sext.w	a5,a5
    80003806:	00004717          	auipc	a4,0x4
    8000380a:	fe270713          	addi	a4,a4,-30 # 800077e8 <Td0>
    8000380e:	1782                	slli	a5,a5,0x20
    80003810:	9381                	srli	a5,a5,0x20
    80003812:	078a                	slli	a5,a5,0x2
    80003814:	97ba                	add	a5,a5,a4
    80003816:	4394                	lw	a3,0(a5)
    80003818:	fe042783          	lw	a5,-32(s0)
    8000381c:	0107d79b          	srliw	a5,a5,0x10
    80003820:	2781                	sext.w	a5,a5
    80003822:	0ff7f793          	andi	a5,a5,255
    80003826:	2781                	sext.w	a5,a5
    80003828:	00004717          	auipc	a4,0x4
    8000382c:	3c070713          	addi	a4,a4,960 # 80007be8 <Td1>
    80003830:	1782                	slli	a5,a5,0x20
    80003832:	9381                	srli	a5,a5,0x20
    80003834:	078a                	slli	a5,a5,0x2
    80003836:	97ba                	add	a5,a5,a4
    80003838:	439c                	lw	a5,0(a5)
    8000383a:	8736                	mv	a4,a3
    8000383c:	8fb9                	xor	a5,a5,a4
    8000383e:	0007869b          	sext.w	a3,a5
    80003842:	fe442783          	lw	a5,-28(s0)
    80003846:	0087d79b          	srliw	a5,a5,0x8
    8000384a:	2781                	sext.w	a5,a5
    8000384c:	0ff7f793          	andi	a5,a5,255
    80003850:	2781                	sext.w	a5,a5
    80003852:	00004717          	auipc	a4,0x4
    80003856:	79670713          	addi	a4,a4,1942 # 80007fe8 <Td2>
    8000385a:	1782                	slli	a5,a5,0x20
    8000385c:	9381                	srli	a5,a5,0x20
    8000385e:	078a                	slli	a5,a5,0x2
    80003860:	97ba                	add	a5,a5,a4
    80003862:	439c                	lw	a5,0(a5)
    80003864:	8736                	mv	a4,a3
    80003866:	8fb9                	xor	a5,a5,a4
    80003868:	0007869b          	sext.w	a3,a5
    8000386c:	fe842783          	lw	a5,-24(s0)
    80003870:	0ff7f793          	andi	a5,a5,255
    80003874:	2781                	sext.w	a5,a5
    80003876:	00005717          	auipc	a4,0x5
    8000387a:	b7270713          	addi	a4,a4,-1166 # 800083e8 <Td3>
    8000387e:	1782                	slli	a5,a5,0x20
    80003880:	9381                	srli	a5,a5,0x20
    80003882:	078a                	slli	a5,a5,0x2
    80003884:	97ba                	add	a5,a5,a4
    80003886:	439c                	lw	a5,0(a5)
    80003888:	8736                	mv	a4,a3
    8000388a:	8fb9                	xor	a5,a5,a4
    8000388c:	0007871b          	sext.w	a4,a5
    80003890:	fb843783          	ld	a5,-72(s0)
    80003894:	4bbc                	lw	a5,80(a5)
    80003896:	8fb9                	xor	a5,a5,a4
    80003898:	fcf42e23          	sw	a5,-36(s0)
    8000389c:	fe842783          	lw	a5,-24(s0)
    800038a0:	0187d79b          	srliw	a5,a5,0x18
    800038a4:	2781                	sext.w	a5,a5
    800038a6:	00004717          	auipc	a4,0x4
    800038aa:	f4270713          	addi	a4,a4,-190 # 800077e8 <Td0>
    800038ae:	1782                	slli	a5,a5,0x20
    800038b0:	9381                	srli	a5,a5,0x20
    800038b2:	078a                	slli	a5,a5,0x2
    800038b4:	97ba                	add	a5,a5,a4
    800038b6:	4394                	lw	a3,0(a5)
    800038b8:	fec42783          	lw	a5,-20(s0)
    800038bc:	0107d79b          	srliw	a5,a5,0x10
    800038c0:	2781                	sext.w	a5,a5
    800038c2:	0ff7f793          	andi	a5,a5,255
    800038c6:	2781                	sext.w	a5,a5
    800038c8:	00004717          	auipc	a4,0x4
    800038cc:	32070713          	addi	a4,a4,800 # 80007be8 <Td1>
    800038d0:	1782                	slli	a5,a5,0x20
    800038d2:	9381                	srli	a5,a5,0x20
    800038d4:	078a                	slli	a5,a5,0x2
    800038d6:	97ba                	add	a5,a5,a4
    800038d8:	439c                	lw	a5,0(a5)
    800038da:	8736                	mv	a4,a3
    800038dc:	8fb9                	xor	a5,a5,a4
    800038de:	0007869b          	sext.w	a3,a5
    800038e2:	fe042783          	lw	a5,-32(s0)
    800038e6:	0087d79b          	srliw	a5,a5,0x8
    800038ea:	2781                	sext.w	a5,a5
    800038ec:	0ff7f793          	andi	a5,a5,255
    800038f0:	2781                	sext.w	a5,a5
    800038f2:	00004717          	auipc	a4,0x4
    800038f6:	6f670713          	addi	a4,a4,1782 # 80007fe8 <Td2>
    800038fa:	1782                	slli	a5,a5,0x20
    800038fc:	9381                	srli	a5,a5,0x20
    800038fe:	078a                	slli	a5,a5,0x2
    80003900:	97ba                	add	a5,a5,a4
    80003902:	439c                	lw	a5,0(a5)
    80003904:	8736                	mv	a4,a3
    80003906:	8fb9                	xor	a5,a5,a4
    80003908:	0007869b          	sext.w	a3,a5
    8000390c:	fe442783          	lw	a5,-28(s0)
    80003910:	0ff7f793          	andi	a5,a5,255
    80003914:	2781                	sext.w	a5,a5
    80003916:	00005717          	auipc	a4,0x5
    8000391a:	ad270713          	addi	a4,a4,-1326 # 800083e8 <Td3>
    8000391e:	1782                	slli	a5,a5,0x20
    80003920:	9381                	srli	a5,a5,0x20
    80003922:	078a                	slli	a5,a5,0x2
    80003924:	97ba                	add	a5,a5,a4
    80003926:	439c                	lw	a5,0(a5)
    80003928:	8736                	mv	a4,a3
    8000392a:	8fb9                	xor	a5,a5,a4
    8000392c:	0007871b          	sext.w	a4,a5
    80003930:	fb843783          	ld	a5,-72(s0)
    80003934:	4bfc                	lw	a5,84(a5)
    80003936:	8fb9                	xor	a5,a5,a4
    80003938:	fcf42c23          	sw	a5,-40(s0)
    8000393c:	fe442783          	lw	a5,-28(s0)
    80003940:	0187d79b          	srliw	a5,a5,0x18
    80003944:	2781                	sext.w	a5,a5
    80003946:	00004717          	auipc	a4,0x4
    8000394a:	ea270713          	addi	a4,a4,-350 # 800077e8 <Td0>
    8000394e:	1782                	slli	a5,a5,0x20
    80003950:	9381                	srli	a5,a5,0x20
    80003952:	078a                	slli	a5,a5,0x2
    80003954:	97ba                	add	a5,a5,a4
    80003956:	4394                	lw	a3,0(a5)
    80003958:	fe842783          	lw	a5,-24(s0)
    8000395c:	0107d79b          	srliw	a5,a5,0x10
    80003960:	2781                	sext.w	a5,a5
    80003962:	0ff7f793          	andi	a5,a5,255
    80003966:	2781                	sext.w	a5,a5
    80003968:	00004717          	auipc	a4,0x4
    8000396c:	28070713          	addi	a4,a4,640 # 80007be8 <Td1>
    80003970:	1782                	slli	a5,a5,0x20
    80003972:	9381                	srli	a5,a5,0x20
    80003974:	078a                	slli	a5,a5,0x2
    80003976:	97ba                	add	a5,a5,a4
    80003978:	439c                	lw	a5,0(a5)
    8000397a:	8736                	mv	a4,a3
    8000397c:	8fb9                	xor	a5,a5,a4
    8000397e:	0007869b          	sext.w	a3,a5
    80003982:	fec42783          	lw	a5,-20(s0)
    80003986:	0087d79b          	srliw	a5,a5,0x8
    8000398a:	2781                	sext.w	a5,a5
    8000398c:	0ff7f793          	andi	a5,a5,255
    80003990:	2781                	sext.w	a5,a5
    80003992:	00004717          	auipc	a4,0x4
    80003996:	65670713          	addi	a4,a4,1622 # 80007fe8 <Td2>
    8000399a:	1782                	slli	a5,a5,0x20
    8000399c:	9381                	srli	a5,a5,0x20
    8000399e:	078a                	slli	a5,a5,0x2
    800039a0:	97ba                	add	a5,a5,a4
    800039a2:	439c                	lw	a5,0(a5)
    800039a4:	8736                	mv	a4,a3
    800039a6:	8fb9                	xor	a5,a5,a4
    800039a8:	0007869b          	sext.w	a3,a5
    800039ac:	fe042783          	lw	a5,-32(s0)
    800039b0:	0ff7f793          	andi	a5,a5,255
    800039b4:	2781                	sext.w	a5,a5
    800039b6:	00005717          	auipc	a4,0x5
    800039ba:	a3270713          	addi	a4,a4,-1486 # 800083e8 <Td3>
    800039be:	1782                	slli	a5,a5,0x20
    800039c0:	9381                	srli	a5,a5,0x20
    800039c2:	078a                	slli	a5,a5,0x2
    800039c4:	97ba                	add	a5,a5,a4
    800039c6:	439c                	lw	a5,0(a5)
    800039c8:	8736                	mv	a4,a3
    800039ca:	8fb9                	xor	a5,a5,a4
    800039cc:	0007871b          	sext.w	a4,a5
    800039d0:	fb843783          	ld	a5,-72(s0)
    800039d4:	4fbc                	lw	a5,88(a5)
    800039d6:	8fb9                	xor	a5,a5,a4
    800039d8:	fcf42a23          	sw	a5,-44(s0)
    800039dc:	fe042783          	lw	a5,-32(s0)
    800039e0:	0187d79b          	srliw	a5,a5,0x18
    800039e4:	2781                	sext.w	a5,a5
    800039e6:	00004717          	auipc	a4,0x4
    800039ea:	e0270713          	addi	a4,a4,-510 # 800077e8 <Td0>
    800039ee:	1782                	slli	a5,a5,0x20
    800039f0:	9381                	srli	a5,a5,0x20
    800039f2:	078a                	slli	a5,a5,0x2
    800039f4:	97ba                	add	a5,a5,a4
    800039f6:	4394                	lw	a3,0(a5)
    800039f8:	fe442783          	lw	a5,-28(s0)
    800039fc:	0107d79b          	srliw	a5,a5,0x10
    80003a00:	2781                	sext.w	a5,a5
    80003a02:	0ff7f793          	andi	a5,a5,255
    80003a06:	2781                	sext.w	a5,a5
    80003a08:	00004717          	auipc	a4,0x4
    80003a0c:	1e070713          	addi	a4,a4,480 # 80007be8 <Td1>
    80003a10:	1782                	slli	a5,a5,0x20
    80003a12:	9381                	srli	a5,a5,0x20
    80003a14:	078a                	slli	a5,a5,0x2
    80003a16:	97ba                	add	a5,a5,a4
    80003a18:	439c                	lw	a5,0(a5)
    80003a1a:	8736                	mv	a4,a3
    80003a1c:	8fb9                	xor	a5,a5,a4
    80003a1e:	0007869b          	sext.w	a3,a5
    80003a22:	fe842783          	lw	a5,-24(s0)
    80003a26:	0087d79b          	srliw	a5,a5,0x8
    80003a2a:	2781                	sext.w	a5,a5
    80003a2c:	0ff7f793          	andi	a5,a5,255
    80003a30:	2781                	sext.w	a5,a5
    80003a32:	00004717          	auipc	a4,0x4
    80003a36:	5b670713          	addi	a4,a4,1462 # 80007fe8 <Td2>
    80003a3a:	1782                	slli	a5,a5,0x20
    80003a3c:	9381                	srli	a5,a5,0x20
    80003a3e:	078a                	slli	a5,a5,0x2
    80003a40:	97ba                	add	a5,a5,a4
    80003a42:	439c                	lw	a5,0(a5)
    80003a44:	8736                	mv	a4,a3
    80003a46:	8fb9                	xor	a5,a5,a4
    80003a48:	0007869b          	sext.w	a3,a5
    80003a4c:	fec42783          	lw	a5,-20(s0)
    80003a50:	0ff7f793          	andi	a5,a5,255
    80003a54:	2781                	sext.w	a5,a5
    80003a56:	00005717          	auipc	a4,0x5
    80003a5a:	99270713          	addi	a4,a4,-1646 # 800083e8 <Td3>
    80003a5e:	1782                	slli	a5,a5,0x20
    80003a60:	9381                	srli	a5,a5,0x20
    80003a62:	078a                	slli	a5,a5,0x2
    80003a64:	97ba                	add	a5,a5,a4
    80003a66:	439c                	lw	a5,0(a5)
    80003a68:	8736                	mv	a4,a3
    80003a6a:	8fb9                	xor	a5,a5,a4
    80003a6c:	0007871b          	sext.w	a4,a5
    80003a70:	fb843783          	ld	a5,-72(s0)
    80003a74:	4ffc                	lw	a5,92(a5)
    80003a76:	8fb9                	xor	a5,a5,a4
    80003a78:	fcf42823          	sw	a5,-48(s0)
    80003a7c:	fdc42783          	lw	a5,-36(s0)
    80003a80:	0187d79b          	srliw	a5,a5,0x18
    80003a84:	2781                	sext.w	a5,a5
    80003a86:	00004717          	auipc	a4,0x4
    80003a8a:	d6270713          	addi	a4,a4,-670 # 800077e8 <Td0>
    80003a8e:	1782                	slli	a5,a5,0x20
    80003a90:	9381                	srli	a5,a5,0x20
    80003a92:	078a                	slli	a5,a5,0x2
    80003a94:	97ba                	add	a5,a5,a4
    80003a96:	4394                	lw	a3,0(a5)
    80003a98:	fd042783          	lw	a5,-48(s0)
    80003a9c:	0107d79b          	srliw	a5,a5,0x10
    80003aa0:	2781                	sext.w	a5,a5
    80003aa2:	0ff7f793          	andi	a5,a5,255
    80003aa6:	2781                	sext.w	a5,a5
    80003aa8:	00004717          	auipc	a4,0x4
    80003aac:	14070713          	addi	a4,a4,320 # 80007be8 <Td1>
    80003ab0:	1782                	slli	a5,a5,0x20
    80003ab2:	9381                	srli	a5,a5,0x20
    80003ab4:	078a                	slli	a5,a5,0x2
    80003ab6:	97ba                	add	a5,a5,a4
    80003ab8:	439c                	lw	a5,0(a5)
    80003aba:	8736                	mv	a4,a3
    80003abc:	8fb9                	xor	a5,a5,a4
    80003abe:	0007869b          	sext.w	a3,a5
    80003ac2:	fd442783          	lw	a5,-44(s0)
    80003ac6:	0087d79b          	srliw	a5,a5,0x8
    80003aca:	2781                	sext.w	a5,a5
    80003acc:	0ff7f793          	andi	a5,a5,255
    80003ad0:	2781                	sext.w	a5,a5
    80003ad2:	00004717          	auipc	a4,0x4
    80003ad6:	51670713          	addi	a4,a4,1302 # 80007fe8 <Td2>
    80003ada:	1782                	slli	a5,a5,0x20
    80003adc:	9381                	srli	a5,a5,0x20
    80003ade:	078a                	slli	a5,a5,0x2
    80003ae0:	97ba                	add	a5,a5,a4
    80003ae2:	439c                	lw	a5,0(a5)
    80003ae4:	8736                	mv	a4,a3
    80003ae6:	8fb9                	xor	a5,a5,a4
    80003ae8:	0007869b          	sext.w	a3,a5
    80003aec:	fd842783          	lw	a5,-40(s0)
    80003af0:	0ff7f793          	andi	a5,a5,255
    80003af4:	2781                	sext.w	a5,a5
    80003af6:	00005717          	auipc	a4,0x5
    80003afa:	8f270713          	addi	a4,a4,-1806 # 800083e8 <Td3>
    80003afe:	1782                	slli	a5,a5,0x20
    80003b00:	9381                	srli	a5,a5,0x20
    80003b02:	078a                	slli	a5,a5,0x2
    80003b04:	97ba                	add	a5,a5,a4
    80003b06:	439c                	lw	a5,0(a5)
    80003b08:	8736                	mv	a4,a3
    80003b0a:	8fb9                	xor	a5,a5,a4
    80003b0c:	0007871b          	sext.w	a4,a5
    80003b10:	fb843783          	ld	a5,-72(s0)
    80003b14:	53bc                	lw	a5,96(a5)
    80003b16:	8fb9                	xor	a5,a5,a4
    80003b18:	fef42623          	sw	a5,-20(s0)
    80003b1c:	fd842783          	lw	a5,-40(s0)
    80003b20:	0187d79b          	srliw	a5,a5,0x18
    80003b24:	2781                	sext.w	a5,a5
    80003b26:	00004717          	auipc	a4,0x4
    80003b2a:	cc270713          	addi	a4,a4,-830 # 800077e8 <Td0>
    80003b2e:	1782                	slli	a5,a5,0x20
    80003b30:	9381                	srli	a5,a5,0x20
    80003b32:	078a                	slli	a5,a5,0x2
    80003b34:	97ba                	add	a5,a5,a4
    80003b36:	4394                	lw	a3,0(a5)
    80003b38:	fdc42783          	lw	a5,-36(s0)
    80003b3c:	0107d79b          	srliw	a5,a5,0x10
    80003b40:	2781                	sext.w	a5,a5
    80003b42:	0ff7f793          	andi	a5,a5,255
    80003b46:	2781                	sext.w	a5,a5
    80003b48:	00004717          	auipc	a4,0x4
    80003b4c:	0a070713          	addi	a4,a4,160 # 80007be8 <Td1>
    80003b50:	1782                	slli	a5,a5,0x20
    80003b52:	9381                	srli	a5,a5,0x20
    80003b54:	078a                	slli	a5,a5,0x2
    80003b56:	97ba                	add	a5,a5,a4
    80003b58:	439c                	lw	a5,0(a5)
    80003b5a:	8736                	mv	a4,a3
    80003b5c:	8fb9                	xor	a5,a5,a4
    80003b5e:	0007869b          	sext.w	a3,a5
    80003b62:	fd042783          	lw	a5,-48(s0)
    80003b66:	0087d79b          	srliw	a5,a5,0x8
    80003b6a:	2781                	sext.w	a5,a5
    80003b6c:	0ff7f793          	andi	a5,a5,255
    80003b70:	2781                	sext.w	a5,a5
    80003b72:	00004717          	auipc	a4,0x4
    80003b76:	47670713          	addi	a4,a4,1142 # 80007fe8 <Td2>
    80003b7a:	1782                	slli	a5,a5,0x20
    80003b7c:	9381                	srli	a5,a5,0x20
    80003b7e:	078a                	slli	a5,a5,0x2
    80003b80:	97ba                	add	a5,a5,a4
    80003b82:	439c                	lw	a5,0(a5)
    80003b84:	8736                	mv	a4,a3
    80003b86:	8fb9                	xor	a5,a5,a4
    80003b88:	0007869b          	sext.w	a3,a5
    80003b8c:	fd442783          	lw	a5,-44(s0)
    80003b90:	0ff7f793          	andi	a5,a5,255
    80003b94:	2781                	sext.w	a5,a5
    80003b96:	00005717          	auipc	a4,0x5
    80003b9a:	85270713          	addi	a4,a4,-1966 # 800083e8 <Td3>
    80003b9e:	1782                	slli	a5,a5,0x20
    80003ba0:	9381                	srli	a5,a5,0x20
    80003ba2:	078a                	slli	a5,a5,0x2
    80003ba4:	97ba                	add	a5,a5,a4
    80003ba6:	439c                	lw	a5,0(a5)
    80003ba8:	8736                	mv	a4,a3
    80003baa:	8fb9                	xor	a5,a5,a4
    80003bac:	0007871b          	sext.w	a4,a5
    80003bb0:	fb843783          	ld	a5,-72(s0)
    80003bb4:	53fc                	lw	a5,100(a5)
    80003bb6:	8fb9                	xor	a5,a5,a4
    80003bb8:	fef42423          	sw	a5,-24(s0)
    80003bbc:	fd442783          	lw	a5,-44(s0)
    80003bc0:	0187d79b          	srliw	a5,a5,0x18
    80003bc4:	2781                	sext.w	a5,a5
    80003bc6:	00004717          	auipc	a4,0x4
    80003bca:	c2270713          	addi	a4,a4,-990 # 800077e8 <Td0>
    80003bce:	1782                	slli	a5,a5,0x20
    80003bd0:	9381                	srli	a5,a5,0x20
    80003bd2:	078a                	slli	a5,a5,0x2
    80003bd4:	97ba                	add	a5,a5,a4
    80003bd6:	4394                	lw	a3,0(a5)
    80003bd8:	fd842783          	lw	a5,-40(s0)
    80003bdc:	0107d79b          	srliw	a5,a5,0x10
    80003be0:	2781                	sext.w	a5,a5
    80003be2:	0ff7f793          	andi	a5,a5,255
    80003be6:	2781                	sext.w	a5,a5
    80003be8:	00004717          	auipc	a4,0x4
    80003bec:	00070713          	mv	a4,a4
    80003bf0:	1782                	slli	a5,a5,0x20
    80003bf2:	9381                	srli	a5,a5,0x20
    80003bf4:	078a                	slli	a5,a5,0x2
    80003bf6:	97ba                	add	a5,a5,a4
    80003bf8:	439c                	lw	a5,0(a5)
    80003bfa:	8736                	mv	a4,a3
    80003bfc:	8fb9                	xor	a5,a5,a4
    80003bfe:	0007869b          	sext.w	a3,a5
    80003c02:	fdc42783          	lw	a5,-36(s0)
    80003c06:	0087d79b          	srliw	a5,a5,0x8
    80003c0a:	2781                	sext.w	a5,a5
    80003c0c:	0ff7f793          	andi	a5,a5,255
    80003c10:	2781                	sext.w	a5,a5
    80003c12:	00004717          	auipc	a4,0x4
    80003c16:	3d670713          	addi	a4,a4,982 # 80007fe8 <Td2>
    80003c1a:	1782                	slli	a5,a5,0x20
    80003c1c:	9381                	srli	a5,a5,0x20
    80003c1e:	078a                	slli	a5,a5,0x2
    80003c20:	97ba                	add	a5,a5,a4
    80003c22:	439c                	lw	a5,0(a5)
    80003c24:	8736                	mv	a4,a3
    80003c26:	8fb9                	xor	a5,a5,a4
    80003c28:	0007869b          	sext.w	a3,a5
    80003c2c:	fd042783          	lw	a5,-48(s0)
    80003c30:	0ff7f793          	andi	a5,a5,255
    80003c34:	2781                	sext.w	a5,a5
    80003c36:	00004717          	auipc	a4,0x4
    80003c3a:	7b270713          	addi	a4,a4,1970 # 800083e8 <Td3>
    80003c3e:	1782                	slli	a5,a5,0x20
    80003c40:	9381                	srli	a5,a5,0x20
    80003c42:	078a                	slli	a5,a5,0x2
    80003c44:	97ba                	add	a5,a5,a4
    80003c46:	439c                	lw	a5,0(a5)
    80003c48:	8736                	mv	a4,a3
    80003c4a:	8fb9                	xor	a5,a5,a4
    80003c4c:	0007871b          	sext.w	a4,a5
    80003c50:	fb843783          	ld	a5,-72(s0)
    80003c54:	57bc                	lw	a5,104(a5)
    80003c56:	8fb9                	xor	a5,a5,a4
    80003c58:	fef42223          	sw	a5,-28(s0)
    80003c5c:	fd042783          	lw	a5,-48(s0)
    80003c60:	0187d79b          	srliw	a5,a5,0x18
    80003c64:	2781                	sext.w	a5,a5
    80003c66:	00004717          	auipc	a4,0x4
    80003c6a:	b8270713          	addi	a4,a4,-1150 # 800077e8 <Td0>
    80003c6e:	1782                	slli	a5,a5,0x20
    80003c70:	9381                	srli	a5,a5,0x20
    80003c72:	078a                	slli	a5,a5,0x2
    80003c74:	97ba                	add	a5,a5,a4
    80003c76:	4394                	lw	a3,0(a5)
    80003c78:	fd442783          	lw	a5,-44(s0)
    80003c7c:	0107d79b          	srliw	a5,a5,0x10
    80003c80:	2781                	sext.w	a5,a5
    80003c82:	0ff7f793          	andi	a5,a5,255
    80003c86:	2781                	sext.w	a5,a5
    80003c88:	00004717          	auipc	a4,0x4
    80003c8c:	f6070713          	addi	a4,a4,-160 # 80007be8 <Td1>
    80003c90:	1782                	slli	a5,a5,0x20
    80003c92:	9381                	srli	a5,a5,0x20
    80003c94:	078a                	slli	a5,a5,0x2
    80003c96:	97ba                	add	a5,a5,a4
    80003c98:	439c                	lw	a5,0(a5)
    80003c9a:	8736                	mv	a4,a3
    80003c9c:	8fb9                	xor	a5,a5,a4
    80003c9e:	0007869b          	sext.w	a3,a5
    80003ca2:	fd842783          	lw	a5,-40(s0)
    80003ca6:	0087d79b          	srliw	a5,a5,0x8
    80003caa:	2781                	sext.w	a5,a5
    80003cac:	0ff7f793          	andi	a5,a5,255
    80003cb0:	2781                	sext.w	a5,a5
    80003cb2:	00004717          	auipc	a4,0x4
    80003cb6:	33670713          	addi	a4,a4,822 # 80007fe8 <Td2>
    80003cba:	1782                	slli	a5,a5,0x20
    80003cbc:	9381                	srli	a5,a5,0x20
    80003cbe:	078a                	slli	a5,a5,0x2
    80003cc0:	97ba                	add	a5,a5,a4
    80003cc2:	439c                	lw	a5,0(a5)
    80003cc4:	8736                	mv	a4,a3
    80003cc6:	8fb9                	xor	a5,a5,a4
    80003cc8:	0007869b          	sext.w	a3,a5
    80003ccc:	fdc42783          	lw	a5,-36(s0)
    80003cd0:	0ff7f793          	andi	a5,a5,255
    80003cd4:	2781                	sext.w	a5,a5
    80003cd6:	00004717          	auipc	a4,0x4
    80003cda:	71270713          	addi	a4,a4,1810 # 800083e8 <Td3>
    80003cde:	1782                	slli	a5,a5,0x20
    80003ce0:	9381                	srli	a5,a5,0x20
    80003ce2:	078a                	slli	a5,a5,0x2
    80003ce4:	97ba                	add	a5,a5,a4
    80003ce6:	439c                	lw	a5,0(a5)
    80003ce8:	8736                	mv	a4,a3
    80003cea:	8fb9                	xor	a5,a5,a4
    80003cec:	0007871b          	sext.w	a4,a5
    80003cf0:	fb843783          	ld	a5,-72(s0)
    80003cf4:	57fc                	lw	a5,108(a5)
    80003cf6:	8fb9                	xor	a5,a5,a4
    80003cf8:	fef42023          	sw	a5,-32(s0)
    80003cfc:	fec42783          	lw	a5,-20(s0)
    80003d00:	0187d79b          	srliw	a5,a5,0x18
    80003d04:	2781                	sext.w	a5,a5
    80003d06:	00004717          	auipc	a4,0x4
    80003d0a:	ae270713          	addi	a4,a4,-1310 # 800077e8 <Td0>
    80003d0e:	1782                	slli	a5,a5,0x20
    80003d10:	9381                	srli	a5,a5,0x20
    80003d12:	078a                	slli	a5,a5,0x2
    80003d14:	97ba                	add	a5,a5,a4
    80003d16:	4394                	lw	a3,0(a5)
    80003d18:	fe042783          	lw	a5,-32(s0)
    80003d1c:	0107d79b          	srliw	a5,a5,0x10
    80003d20:	2781                	sext.w	a5,a5
    80003d22:	0ff7f793          	andi	a5,a5,255
    80003d26:	2781                	sext.w	a5,a5
    80003d28:	00004717          	auipc	a4,0x4
    80003d2c:	ec070713          	addi	a4,a4,-320 # 80007be8 <Td1>
    80003d30:	1782                	slli	a5,a5,0x20
    80003d32:	9381                	srli	a5,a5,0x20
    80003d34:	078a                	slli	a5,a5,0x2
    80003d36:	97ba                	add	a5,a5,a4
    80003d38:	439c                	lw	a5,0(a5)
    80003d3a:	8736                	mv	a4,a3
    80003d3c:	8fb9                	xor	a5,a5,a4
    80003d3e:	0007869b          	sext.w	a3,a5
    80003d42:	fe442783          	lw	a5,-28(s0)
    80003d46:	0087d79b          	srliw	a5,a5,0x8
    80003d4a:	2781                	sext.w	a5,a5
    80003d4c:	0ff7f793          	andi	a5,a5,255
    80003d50:	2781                	sext.w	a5,a5
    80003d52:	00004717          	auipc	a4,0x4
    80003d56:	29670713          	addi	a4,a4,662 # 80007fe8 <Td2>
    80003d5a:	1782                	slli	a5,a5,0x20
    80003d5c:	9381                	srli	a5,a5,0x20
    80003d5e:	078a                	slli	a5,a5,0x2
    80003d60:	97ba                	add	a5,a5,a4
    80003d62:	439c                	lw	a5,0(a5)
    80003d64:	8736                	mv	a4,a3
    80003d66:	8fb9                	xor	a5,a5,a4
    80003d68:	0007869b          	sext.w	a3,a5
    80003d6c:	fe842783          	lw	a5,-24(s0)
    80003d70:	0ff7f793          	andi	a5,a5,255
    80003d74:	2781                	sext.w	a5,a5
    80003d76:	00004717          	auipc	a4,0x4
    80003d7a:	67270713          	addi	a4,a4,1650 # 800083e8 <Td3>
    80003d7e:	1782                	slli	a5,a5,0x20
    80003d80:	9381                	srli	a5,a5,0x20
    80003d82:	078a                	slli	a5,a5,0x2
    80003d84:	97ba                	add	a5,a5,a4
    80003d86:	439c                	lw	a5,0(a5)
    80003d88:	8736                	mv	a4,a3
    80003d8a:	8fb9                	xor	a5,a5,a4
    80003d8c:	0007871b          	sext.w	a4,a5
    80003d90:	fb843783          	ld	a5,-72(s0)
    80003d94:	5bbc                	lw	a5,112(a5)
    80003d96:	8fb9                	xor	a5,a5,a4
    80003d98:	fcf42e23          	sw	a5,-36(s0)
    80003d9c:	fe842783          	lw	a5,-24(s0)
    80003da0:	0187d79b          	srliw	a5,a5,0x18
    80003da4:	2781                	sext.w	a5,a5
    80003da6:	00004717          	auipc	a4,0x4
    80003daa:	a4270713          	addi	a4,a4,-1470 # 800077e8 <Td0>
    80003dae:	1782                	slli	a5,a5,0x20
    80003db0:	9381                	srli	a5,a5,0x20
    80003db2:	078a                	slli	a5,a5,0x2
    80003db4:	97ba                	add	a5,a5,a4
    80003db6:	4394                	lw	a3,0(a5)
    80003db8:	fec42783          	lw	a5,-20(s0)
    80003dbc:	0107d79b          	srliw	a5,a5,0x10
    80003dc0:	2781                	sext.w	a5,a5
    80003dc2:	0ff7f793          	andi	a5,a5,255
    80003dc6:	2781                	sext.w	a5,a5
    80003dc8:	00004717          	auipc	a4,0x4
    80003dcc:	e2070713          	addi	a4,a4,-480 # 80007be8 <Td1>
    80003dd0:	1782                	slli	a5,a5,0x20
    80003dd2:	9381                	srli	a5,a5,0x20
    80003dd4:	078a                	slli	a5,a5,0x2
    80003dd6:	97ba                	add	a5,a5,a4
    80003dd8:	439c                	lw	a5,0(a5)
    80003dda:	8736                	mv	a4,a3
    80003ddc:	8fb9                	xor	a5,a5,a4
    80003dde:	0007869b          	sext.w	a3,a5
    80003de2:	fe042783          	lw	a5,-32(s0)
    80003de6:	0087d79b          	srliw	a5,a5,0x8
    80003dea:	2781                	sext.w	a5,a5
    80003dec:	0ff7f793          	andi	a5,a5,255
    80003df0:	2781                	sext.w	a5,a5
    80003df2:	00004717          	auipc	a4,0x4
    80003df6:	1f670713          	addi	a4,a4,502 # 80007fe8 <Td2>
    80003dfa:	1782                	slli	a5,a5,0x20
    80003dfc:	9381                	srli	a5,a5,0x20
    80003dfe:	078a                	slli	a5,a5,0x2
    80003e00:	97ba                	add	a5,a5,a4
    80003e02:	439c                	lw	a5,0(a5)
    80003e04:	8736                	mv	a4,a3
    80003e06:	8fb9                	xor	a5,a5,a4
    80003e08:	0007869b          	sext.w	a3,a5
    80003e0c:	fe442783          	lw	a5,-28(s0)
    80003e10:	0ff7f793          	andi	a5,a5,255
    80003e14:	2781                	sext.w	a5,a5
    80003e16:	00004717          	auipc	a4,0x4
    80003e1a:	5d270713          	addi	a4,a4,1490 # 800083e8 <Td3>
    80003e1e:	1782                	slli	a5,a5,0x20
    80003e20:	9381                	srli	a5,a5,0x20
    80003e22:	078a                	slli	a5,a5,0x2
    80003e24:	97ba                	add	a5,a5,a4
    80003e26:	439c                	lw	a5,0(a5)
    80003e28:	8736                	mv	a4,a3
    80003e2a:	8fb9                	xor	a5,a5,a4
    80003e2c:	0007871b          	sext.w	a4,a5
    80003e30:	fb843783          	ld	a5,-72(s0)
    80003e34:	5bfc                	lw	a5,116(a5)
    80003e36:	8fb9                	xor	a5,a5,a4
    80003e38:	fcf42c23          	sw	a5,-40(s0)
    80003e3c:	fe442783          	lw	a5,-28(s0)
    80003e40:	0187d79b          	srliw	a5,a5,0x18
    80003e44:	2781                	sext.w	a5,a5
    80003e46:	00004717          	auipc	a4,0x4
    80003e4a:	9a270713          	addi	a4,a4,-1630 # 800077e8 <Td0>
    80003e4e:	1782                	slli	a5,a5,0x20
    80003e50:	9381                	srli	a5,a5,0x20
    80003e52:	078a                	slli	a5,a5,0x2
    80003e54:	97ba                	add	a5,a5,a4
    80003e56:	4394                	lw	a3,0(a5)
    80003e58:	fe842783          	lw	a5,-24(s0)
    80003e5c:	0107d79b          	srliw	a5,a5,0x10
    80003e60:	2781                	sext.w	a5,a5
    80003e62:	0ff7f793          	andi	a5,a5,255
    80003e66:	2781                	sext.w	a5,a5
    80003e68:	00004717          	auipc	a4,0x4
    80003e6c:	d8070713          	addi	a4,a4,-640 # 80007be8 <Td1>
    80003e70:	1782                	slli	a5,a5,0x20
    80003e72:	9381                	srli	a5,a5,0x20
    80003e74:	078a                	slli	a5,a5,0x2
    80003e76:	97ba                	add	a5,a5,a4
    80003e78:	439c                	lw	a5,0(a5)
    80003e7a:	8736                	mv	a4,a3
    80003e7c:	8fb9                	xor	a5,a5,a4
    80003e7e:	0007869b          	sext.w	a3,a5
    80003e82:	fec42783          	lw	a5,-20(s0)
    80003e86:	0087d79b          	srliw	a5,a5,0x8
    80003e8a:	2781                	sext.w	a5,a5
    80003e8c:	0ff7f793          	andi	a5,a5,255
    80003e90:	2781                	sext.w	a5,a5
    80003e92:	00004717          	auipc	a4,0x4
    80003e96:	15670713          	addi	a4,a4,342 # 80007fe8 <Td2>
    80003e9a:	1782                	slli	a5,a5,0x20
    80003e9c:	9381                	srli	a5,a5,0x20
    80003e9e:	078a                	slli	a5,a5,0x2
    80003ea0:	97ba                	add	a5,a5,a4
    80003ea2:	439c                	lw	a5,0(a5)
    80003ea4:	8736                	mv	a4,a3
    80003ea6:	8fb9                	xor	a5,a5,a4
    80003ea8:	0007869b          	sext.w	a3,a5
    80003eac:	fe042783          	lw	a5,-32(s0)
    80003eb0:	0ff7f793          	andi	a5,a5,255
    80003eb4:	2781                	sext.w	a5,a5
    80003eb6:	00004717          	auipc	a4,0x4
    80003eba:	53270713          	addi	a4,a4,1330 # 800083e8 <Td3>
    80003ebe:	1782                	slli	a5,a5,0x20
    80003ec0:	9381                	srli	a5,a5,0x20
    80003ec2:	078a                	slli	a5,a5,0x2
    80003ec4:	97ba                	add	a5,a5,a4
    80003ec6:	439c                	lw	a5,0(a5)
    80003ec8:	8736                	mv	a4,a3
    80003eca:	8fb9                	xor	a5,a5,a4
    80003ecc:	0007871b          	sext.w	a4,a5
    80003ed0:	fb843783          	ld	a5,-72(s0)
    80003ed4:	5fbc                	lw	a5,120(a5)
    80003ed6:	8fb9                	xor	a5,a5,a4
    80003ed8:	fcf42a23          	sw	a5,-44(s0)
    80003edc:	fe042783          	lw	a5,-32(s0)
    80003ee0:	0187d79b          	srliw	a5,a5,0x18
    80003ee4:	2781                	sext.w	a5,a5
    80003ee6:	00004717          	auipc	a4,0x4
    80003eea:	90270713          	addi	a4,a4,-1790 # 800077e8 <Td0>
    80003eee:	1782                	slli	a5,a5,0x20
    80003ef0:	9381                	srli	a5,a5,0x20
    80003ef2:	078a                	slli	a5,a5,0x2
    80003ef4:	97ba                	add	a5,a5,a4
    80003ef6:	4394                	lw	a3,0(a5)
    80003ef8:	fe442783          	lw	a5,-28(s0)
    80003efc:	0107d79b          	srliw	a5,a5,0x10
    80003f00:	2781                	sext.w	a5,a5
    80003f02:	0ff7f793          	andi	a5,a5,255
    80003f06:	2781                	sext.w	a5,a5
    80003f08:	00004717          	auipc	a4,0x4
    80003f0c:	ce070713          	addi	a4,a4,-800 # 80007be8 <Td1>
    80003f10:	1782                	slli	a5,a5,0x20
    80003f12:	9381                	srli	a5,a5,0x20
    80003f14:	078a                	slli	a5,a5,0x2
    80003f16:	97ba                	add	a5,a5,a4
    80003f18:	439c                	lw	a5,0(a5)
    80003f1a:	8736                	mv	a4,a3
    80003f1c:	8fb9                	xor	a5,a5,a4
    80003f1e:	0007869b          	sext.w	a3,a5
    80003f22:	fe842783          	lw	a5,-24(s0)
    80003f26:	0087d79b          	srliw	a5,a5,0x8
    80003f2a:	2781                	sext.w	a5,a5
    80003f2c:	0ff7f793          	andi	a5,a5,255
    80003f30:	2781                	sext.w	a5,a5
    80003f32:	00004717          	auipc	a4,0x4
    80003f36:	0b670713          	addi	a4,a4,182 # 80007fe8 <Td2>
    80003f3a:	1782                	slli	a5,a5,0x20
    80003f3c:	9381                	srli	a5,a5,0x20
    80003f3e:	078a                	slli	a5,a5,0x2
    80003f40:	97ba                	add	a5,a5,a4
    80003f42:	439c                	lw	a5,0(a5)
    80003f44:	8736                	mv	a4,a3
    80003f46:	8fb9                	xor	a5,a5,a4
    80003f48:	0007869b          	sext.w	a3,a5
    80003f4c:	fec42783          	lw	a5,-20(s0)
    80003f50:	0ff7f793          	andi	a5,a5,255
    80003f54:	2781                	sext.w	a5,a5
    80003f56:	00004717          	auipc	a4,0x4
    80003f5a:	49270713          	addi	a4,a4,1170 # 800083e8 <Td3>
    80003f5e:	1782                	slli	a5,a5,0x20
    80003f60:	9381                	srli	a5,a5,0x20
    80003f62:	078a                	slli	a5,a5,0x2
    80003f64:	97ba                	add	a5,a5,a4
    80003f66:	439c                	lw	a5,0(a5)
    80003f68:	8736                	mv	a4,a3
    80003f6a:	8fb9                	xor	a5,a5,a4
    80003f6c:	0007871b          	sext.w	a4,a5
    80003f70:	fb843783          	ld	a5,-72(s0)
    80003f74:	5ffc                	lw	a5,124(a5)
    80003f76:	8fb9                	xor	a5,a5,a4
    80003f78:	fcf42823          	sw	a5,-48(s0)
    80003f7c:	fdc42783          	lw	a5,-36(s0)
    80003f80:	0187d79b          	srliw	a5,a5,0x18
    80003f84:	2781                	sext.w	a5,a5
    80003f86:	00004717          	auipc	a4,0x4
    80003f8a:	86270713          	addi	a4,a4,-1950 # 800077e8 <Td0>
    80003f8e:	1782                	slli	a5,a5,0x20
    80003f90:	9381                	srli	a5,a5,0x20
    80003f92:	078a                	slli	a5,a5,0x2
    80003f94:	97ba                	add	a5,a5,a4
    80003f96:	4394                	lw	a3,0(a5)
    80003f98:	fd042783          	lw	a5,-48(s0)
    80003f9c:	0107d79b          	srliw	a5,a5,0x10
    80003fa0:	2781                	sext.w	a5,a5
    80003fa2:	0ff7f793          	andi	a5,a5,255
    80003fa6:	2781                	sext.w	a5,a5
    80003fa8:	00004717          	auipc	a4,0x4
    80003fac:	c4070713          	addi	a4,a4,-960 # 80007be8 <Td1>
    80003fb0:	1782                	slli	a5,a5,0x20
    80003fb2:	9381                	srli	a5,a5,0x20
    80003fb4:	078a                	slli	a5,a5,0x2
    80003fb6:	97ba                	add	a5,a5,a4
    80003fb8:	439c                	lw	a5,0(a5)
    80003fba:	8736                	mv	a4,a3
    80003fbc:	8fb9                	xor	a5,a5,a4
    80003fbe:	0007869b          	sext.w	a3,a5
    80003fc2:	fd442783          	lw	a5,-44(s0)
    80003fc6:	0087d79b          	srliw	a5,a5,0x8
    80003fca:	2781                	sext.w	a5,a5
    80003fcc:	0ff7f793          	andi	a5,a5,255
    80003fd0:	2781                	sext.w	a5,a5
    80003fd2:	00004717          	auipc	a4,0x4
    80003fd6:	01670713          	addi	a4,a4,22 # 80007fe8 <Td2>
    80003fda:	1782                	slli	a5,a5,0x20
    80003fdc:	9381                	srli	a5,a5,0x20
    80003fde:	078a                	slli	a5,a5,0x2
    80003fe0:	97ba                	add	a5,a5,a4
    80003fe2:	439c                	lw	a5,0(a5)
    80003fe4:	8736                	mv	a4,a3
    80003fe6:	8fb9                	xor	a5,a5,a4
    80003fe8:	0007869b          	sext.w	a3,a5
    80003fec:	fd842783          	lw	a5,-40(s0)
    80003ff0:	0ff7f793          	andi	a5,a5,255
    80003ff4:	2781                	sext.w	a5,a5
    80003ff6:	00004717          	auipc	a4,0x4
    80003ffa:	3f270713          	addi	a4,a4,1010 # 800083e8 <Td3>
    80003ffe:	1782                	slli	a5,a5,0x20
    80004000:	9381                	srli	a5,a5,0x20
    80004002:	078a                	slli	a5,a5,0x2
    80004004:	97ba                	add	a5,a5,a4
    80004006:	439c                	lw	a5,0(a5)
    80004008:	8736                	mv	a4,a3
    8000400a:	8fb9                	xor	a5,a5,a4
    8000400c:	0007871b          	sext.w	a4,a5
    80004010:	fb843783          	ld	a5,-72(s0)
    80004014:	0807a783          	lw	a5,128(a5)
    80004018:	8fb9                	xor	a5,a5,a4
    8000401a:	fef42623          	sw	a5,-20(s0)
    8000401e:	fd842783          	lw	a5,-40(s0)
    80004022:	0187d79b          	srliw	a5,a5,0x18
    80004026:	2781                	sext.w	a5,a5
    80004028:	00003717          	auipc	a4,0x3
    8000402c:	7c070713          	addi	a4,a4,1984 # 800077e8 <Td0>
    80004030:	1782                	slli	a5,a5,0x20
    80004032:	9381                	srli	a5,a5,0x20
    80004034:	078a                	slli	a5,a5,0x2
    80004036:	97ba                	add	a5,a5,a4
    80004038:	4394                	lw	a3,0(a5)
    8000403a:	fdc42783          	lw	a5,-36(s0)
    8000403e:	0107d79b          	srliw	a5,a5,0x10
    80004042:	2781                	sext.w	a5,a5
    80004044:	0ff7f793          	andi	a5,a5,255
    80004048:	2781                	sext.w	a5,a5
    8000404a:	00004717          	auipc	a4,0x4
    8000404e:	b9e70713          	addi	a4,a4,-1122 # 80007be8 <Td1>
    80004052:	1782                	slli	a5,a5,0x20
    80004054:	9381                	srli	a5,a5,0x20
    80004056:	078a                	slli	a5,a5,0x2
    80004058:	97ba                	add	a5,a5,a4
    8000405a:	439c                	lw	a5,0(a5)
    8000405c:	8736                	mv	a4,a3
    8000405e:	8fb9                	xor	a5,a5,a4
    80004060:	0007869b          	sext.w	a3,a5
    80004064:	fd042783          	lw	a5,-48(s0)
    80004068:	0087d79b          	srliw	a5,a5,0x8
    8000406c:	2781                	sext.w	a5,a5
    8000406e:	0ff7f793          	andi	a5,a5,255
    80004072:	2781                	sext.w	a5,a5
    80004074:	00004717          	auipc	a4,0x4
    80004078:	f7470713          	addi	a4,a4,-140 # 80007fe8 <Td2>
    8000407c:	1782                	slli	a5,a5,0x20
    8000407e:	9381                	srli	a5,a5,0x20
    80004080:	078a                	slli	a5,a5,0x2
    80004082:	97ba                	add	a5,a5,a4
    80004084:	439c                	lw	a5,0(a5)
    80004086:	8736                	mv	a4,a3
    80004088:	8fb9                	xor	a5,a5,a4
    8000408a:	0007869b          	sext.w	a3,a5
    8000408e:	fd442783          	lw	a5,-44(s0)
    80004092:	0ff7f793          	andi	a5,a5,255
    80004096:	2781                	sext.w	a5,a5
    80004098:	00004717          	auipc	a4,0x4
    8000409c:	35070713          	addi	a4,a4,848 # 800083e8 <Td3>
    800040a0:	1782                	slli	a5,a5,0x20
    800040a2:	9381                	srli	a5,a5,0x20
    800040a4:	078a                	slli	a5,a5,0x2
    800040a6:	97ba                	add	a5,a5,a4
    800040a8:	439c                	lw	a5,0(a5)
    800040aa:	8736                	mv	a4,a3
    800040ac:	8fb9                	xor	a5,a5,a4
    800040ae:	0007871b          	sext.w	a4,a5
    800040b2:	fb843783          	ld	a5,-72(s0)
    800040b6:	0847a783          	lw	a5,132(a5)
    800040ba:	8fb9                	xor	a5,a5,a4
    800040bc:	fef42423          	sw	a5,-24(s0)
    800040c0:	fd442783          	lw	a5,-44(s0)
    800040c4:	0187d79b          	srliw	a5,a5,0x18
    800040c8:	2781                	sext.w	a5,a5
    800040ca:	00003717          	auipc	a4,0x3
    800040ce:	71e70713          	addi	a4,a4,1822 # 800077e8 <Td0>
    800040d2:	1782                	slli	a5,a5,0x20
    800040d4:	9381                	srli	a5,a5,0x20
    800040d6:	078a                	slli	a5,a5,0x2
    800040d8:	97ba                	add	a5,a5,a4
    800040da:	4394                	lw	a3,0(a5)
    800040dc:	fd842783          	lw	a5,-40(s0)
    800040e0:	0107d79b          	srliw	a5,a5,0x10
    800040e4:	2781                	sext.w	a5,a5
    800040e6:	0ff7f793          	andi	a5,a5,255
    800040ea:	2781                	sext.w	a5,a5
    800040ec:	00004717          	auipc	a4,0x4
    800040f0:	afc70713          	addi	a4,a4,-1284 # 80007be8 <Td1>
    800040f4:	1782                	slli	a5,a5,0x20
    800040f6:	9381                	srli	a5,a5,0x20
    800040f8:	078a                	slli	a5,a5,0x2
    800040fa:	97ba                	add	a5,a5,a4
    800040fc:	439c                	lw	a5,0(a5)
    800040fe:	8736                	mv	a4,a3
    80004100:	8fb9                	xor	a5,a5,a4
    80004102:	0007869b          	sext.w	a3,a5
    80004106:	fdc42783          	lw	a5,-36(s0)
    8000410a:	0087d79b          	srliw	a5,a5,0x8
    8000410e:	2781                	sext.w	a5,a5
    80004110:	0ff7f793          	andi	a5,a5,255
    80004114:	2781                	sext.w	a5,a5
    80004116:	00004717          	auipc	a4,0x4
    8000411a:	ed270713          	addi	a4,a4,-302 # 80007fe8 <Td2>
    8000411e:	1782                	slli	a5,a5,0x20
    80004120:	9381                	srli	a5,a5,0x20
    80004122:	078a                	slli	a5,a5,0x2
    80004124:	97ba                	add	a5,a5,a4
    80004126:	439c                	lw	a5,0(a5)
    80004128:	8736                	mv	a4,a3
    8000412a:	8fb9                	xor	a5,a5,a4
    8000412c:	0007869b          	sext.w	a3,a5
    80004130:	fd042783          	lw	a5,-48(s0)
    80004134:	0ff7f793          	andi	a5,a5,255
    80004138:	2781                	sext.w	a5,a5
    8000413a:	00004717          	auipc	a4,0x4
    8000413e:	2ae70713          	addi	a4,a4,686 # 800083e8 <Td3>
    80004142:	1782                	slli	a5,a5,0x20
    80004144:	9381                	srli	a5,a5,0x20
    80004146:	078a                	slli	a5,a5,0x2
    80004148:	97ba                	add	a5,a5,a4
    8000414a:	439c                	lw	a5,0(a5)
    8000414c:	8736                	mv	a4,a3
    8000414e:	8fb9                	xor	a5,a5,a4
    80004150:	0007871b          	sext.w	a4,a5
    80004154:	fb843783          	ld	a5,-72(s0)
    80004158:	0887a783          	lw	a5,136(a5)
    8000415c:	8fb9                	xor	a5,a5,a4
    8000415e:	fef42223          	sw	a5,-28(s0)
    80004162:	fd042783          	lw	a5,-48(s0)
    80004166:	0187d79b          	srliw	a5,a5,0x18
    8000416a:	2781                	sext.w	a5,a5
    8000416c:	00003717          	auipc	a4,0x3
    80004170:	67c70713          	addi	a4,a4,1660 # 800077e8 <Td0>
    80004174:	1782                	slli	a5,a5,0x20
    80004176:	9381                	srli	a5,a5,0x20
    80004178:	078a                	slli	a5,a5,0x2
    8000417a:	97ba                	add	a5,a5,a4
    8000417c:	4394                	lw	a3,0(a5)
    8000417e:	fd442783          	lw	a5,-44(s0)
    80004182:	0107d79b          	srliw	a5,a5,0x10
    80004186:	2781                	sext.w	a5,a5
    80004188:	0ff7f793          	andi	a5,a5,255
    8000418c:	2781                	sext.w	a5,a5
    8000418e:	00004717          	auipc	a4,0x4
    80004192:	a5a70713          	addi	a4,a4,-1446 # 80007be8 <Td1>
    80004196:	1782                	slli	a5,a5,0x20
    80004198:	9381                	srli	a5,a5,0x20
    8000419a:	078a                	slli	a5,a5,0x2
    8000419c:	97ba                	add	a5,a5,a4
    8000419e:	439c                	lw	a5,0(a5)
    800041a0:	8736                	mv	a4,a3
    800041a2:	8fb9                	xor	a5,a5,a4
    800041a4:	0007869b          	sext.w	a3,a5
    800041a8:	fd842783          	lw	a5,-40(s0)
    800041ac:	0087d79b          	srliw	a5,a5,0x8
    800041b0:	2781                	sext.w	a5,a5
    800041b2:	0ff7f793          	andi	a5,a5,255
    800041b6:	2781                	sext.w	a5,a5
    800041b8:	00004717          	auipc	a4,0x4
    800041bc:	e3070713          	addi	a4,a4,-464 # 80007fe8 <Td2>
    800041c0:	1782                	slli	a5,a5,0x20
    800041c2:	9381                	srli	a5,a5,0x20
    800041c4:	078a                	slli	a5,a5,0x2
    800041c6:	97ba                	add	a5,a5,a4
    800041c8:	439c                	lw	a5,0(a5)
    800041ca:	8736                	mv	a4,a3
    800041cc:	8fb9                	xor	a5,a5,a4
    800041ce:	0007869b          	sext.w	a3,a5
    800041d2:	fdc42783          	lw	a5,-36(s0)
    800041d6:	0ff7f793          	andi	a5,a5,255
    800041da:	2781                	sext.w	a5,a5
    800041dc:	00004717          	auipc	a4,0x4
    800041e0:	20c70713          	addi	a4,a4,524 # 800083e8 <Td3>
    800041e4:	1782                	slli	a5,a5,0x20
    800041e6:	9381                	srli	a5,a5,0x20
    800041e8:	078a                	slli	a5,a5,0x2
    800041ea:	97ba                	add	a5,a5,a4
    800041ec:	439c                	lw	a5,0(a5)
    800041ee:	8736                	mv	a4,a3
    800041f0:	8fb9                	xor	a5,a5,a4
    800041f2:	0007871b          	sext.w	a4,a5
    800041f6:	fb843783          	ld	a5,-72(s0)
    800041fa:	08c7a783          	lw	a5,140(a5)
    800041fe:	8fb9                	xor	a5,a5,a4
    80004200:	fef42023          	sw	a5,-32(s0)
    80004204:	fec42783          	lw	a5,-20(s0)
    80004208:	0187d79b          	srliw	a5,a5,0x18
    8000420c:	2781                	sext.w	a5,a5
    8000420e:	00003717          	auipc	a4,0x3
    80004212:	5da70713          	addi	a4,a4,1498 # 800077e8 <Td0>
    80004216:	1782                	slli	a5,a5,0x20
    80004218:	9381                	srli	a5,a5,0x20
    8000421a:	078a                	slli	a5,a5,0x2
    8000421c:	97ba                	add	a5,a5,a4
    8000421e:	4394                	lw	a3,0(a5)
    80004220:	fe042783          	lw	a5,-32(s0)
    80004224:	0107d79b          	srliw	a5,a5,0x10
    80004228:	2781                	sext.w	a5,a5
    8000422a:	0ff7f793          	andi	a5,a5,255
    8000422e:	2781                	sext.w	a5,a5
    80004230:	00004717          	auipc	a4,0x4
    80004234:	9b870713          	addi	a4,a4,-1608 # 80007be8 <Td1>
    80004238:	1782                	slli	a5,a5,0x20
    8000423a:	9381                	srli	a5,a5,0x20
    8000423c:	078a                	slli	a5,a5,0x2
    8000423e:	97ba                	add	a5,a5,a4
    80004240:	439c                	lw	a5,0(a5)
    80004242:	8736                	mv	a4,a3
    80004244:	8fb9                	xor	a5,a5,a4
    80004246:	0007869b          	sext.w	a3,a5
    8000424a:	fe442783          	lw	a5,-28(s0)
    8000424e:	0087d79b          	srliw	a5,a5,0x8
    80004252:	2781                	sext.w	a5,a5
    80004254:	0ff7f793          	andi	a5,a5,255
    80004258:	2781                	sext.w	a5,a5
    8000425a:	00004717          	auipc	a4,0x4
    8000425e:	d8e70713          	addi	a4,a4,-626 # 80007fe8 <Td2>
    80004262:	1782                	slli	a5,a5,0x20
    80004264:	9381                	srli	a5,a5,0x20
    80004266:	078a                	slli	a5,a5,0x2
    80004268:	97ba                	add	a5,a5,a4
    8000426a:	439c                	lw	a5,0(a5)
    8000426c:	8736                	mv	a4,a3
    8000426e:	8fb9                	xor	a5,a5,a4
    80004270:	0007869b          	sext.w	a3,a5
    80004274:	fe842783          	lw	a5,-24(s0)
    80004278:	0ff7f793          	andi	a5,a5,255
    8000427c:	2781                	sext.w	a5,a5
    8000427e:	00004717          	auipc	a4,0x4
    80004282:	16a70713          	addi	a4,a4,362 # 800083e8 <Td3>
    80004286:	1782                	slli	a5,a5,0x20
    80004288:	9381                	srli	a5,a5,0x20
    8000428a:	078a                	slli	a5,a5,0x2
    8000428c:	97ba                	add	a5,a5,a4
    8000428e:	439c                	lw	a5,0(a5)
    80004290:	8736                	mv	a4,a3
    80004292:	8fb9                	xor	a5,a5,a4
    80004294:	0007871b          	sext.w	a4,a5
    80004298:	fb843783          	ld	a5,-72(s0)
    8000429c:	0907a783          	lw	a5,144(a5)
    800042a0:	8fb9                	xor	a5,a5,a4
    800042a2:	fcf42e23          	sw	a5,-36(s0)
    800042a6:	fe842783          	lw	a5,-24(s0)
    800042aa:	0187d79b          	srliw	a5,a5,0x18
    800042ae:	2781                	sext.w	a5,a5
    800042b0:	00003717          	auipc	a4,0x3
    800042b4:	53870713          	addi	a4,a4,1336 # 800077e8 <Td0>
    800042b8:	1782                	slli	a5,a5,0x20
    800042ba:	9381                	srli	a5,a5,0x20
    800042bc:	078a                	slli	a5,a5,0x2
    800042be:	97ba                	add	a5,a5,a4
    800042c0:	4394                	lw	a3,0(a5)
    800042c2:	fec42783          	lw	a5,-20(s0)
    800042c6:	0107d79b          	srliw	a5,a5,0x10
    800042ca:	2781                	sext.w	a5,a5
    800042cc:	0ff7f793          	andi	a5,a5,255
    800042d0:	2781                	sext.w	a5,a5
    800042d2:	00004717          	auipc	a4,0x4
    800042d6:	91670713          	addi	a4,a4,-1770 # 80007be8 <Td1>
    800042da:	1782                	slli	a5,a5,0x20
    800042dc:	9381                	srli	a5,a5,0x20
    800042de:	078a                	slli	a5,a5,0x2
    800042e0:	97ba                	add	a5,a5,a4
    800042e2:	439c                	lw	a5,0(a5)
    800042e4:	8736                	mv	a4,a3
    800042e6:	8fb9                	xor	a5,a5,a4
    800042e8:	0007869b          	sext.w	a3,a5
    800042ec:	fe042783          	lw	a5,-32(s0)
    800042f0:	0087d79b          	srliw	a5,a5,0x8
    800042f4:	2781                	sext.w	a5,a5
    800042f6:	0ff7f793          	andi	a5,a5,255
    800042fa:	2781                	sext.w	a5,a5
    800042fc:	00004717          	auipc	a4,0x4
    80004300:	cec70713          	addi	a4,a4,-788 # 80007fe8 <Td2>
    80004304:	1782                	slli	a5,a5,0x20
    80004306:	9381                	srli	a5,a5,0x20
    80004308:	078a                	slli	a5,a5,0x2
    8000430a:	97ba                	add	a5,a5,a4
    8000430c:	439c                	lw	a5,0(a5)
    8000430e:	8736                	mv	a4,a3
    80004310:	8fb9                	xor	a5,a5,a4
    80004312:	0007869b          	sext.w	a3,a5
    80004316:	fe442783          	lw	a5,-28(s0)
    8000431a:	0ff7f793          	andi	a5,a5,255
    8000431e:	2781                	sext.w	a5,a5
    80004320:	00004717          	auipc	a4,0x4
    80004324:	0c870713          	addi	a4,a4,200 # 800083e8 <Td3>
    80004328:	1782                	slli	a5,a5,0x20
    8000432a:	9381                	srli	a5,a5,0x20
    8000432c:	078a                	slli	a5,a5,0x2
    8000432e:	97ba                	add	a5,a5,a4
    80004330:	439c                	lw	a5,0(a5)
    80004332:	8736                	mv	a4,a3
    80004334:	8fb9                	xor	a5,a5,a4
    80004336:	0007871b          	sext.w	a4,a5
    8000433a:	fb843783          	ld	a5,-72(s0)
    8000433e:	0947a783          	lw	a5,148(a5)
    80004342:	8fb9                	xor	a5,a5,a4
    80004344:	fcf42c23          	sw	a5,-40(s0)
    80004348:	fe442783          	lw	a5,-28(s0)
    8000434c:	0187d79b          	srliw	a5,a5,0x18
    80004350:	2781                	sext.w	a5,a5
    80004352:	00003717          	auipc	a4,0x3
    80004356:	49670713          	addi	a4,a4,1174 # 800077e8 <Td0>
    8000435a:	1782                	slli	a5,a5,0x20
    8000435c:	9381                	srli	a5,a5,0x20
    8000435e:	078a                	slli	a5,a5,0x2
    80004360:	97ba                	add	a5,a5,a4
    80004362:	4394                	lw	a3,0(a5)
    80004364:	fe842783          	lw	a5,-24(s0)
    80004368:	0107d79b          	srliw	a5,a5,0x10
    8000436c:	2781                	sext.w	a5,a5
    8000436e:	0ff7f793          	andi	a5,a5,255
    80004372:	2781                	sext.w	a5,a5
    80004374:	00004717          	auipc	a4,0x4
    80004378:	87470713          	addi	a4,a4,-1932 # 80007be8 <Td1>
    8000437c:	1782                	slli	a5,a5,0x20
    8000437e:	9381                	srli	a5,a5,0x20
    80004380:	078a                	slli	a5,a5,0x2
    80004382:	97ba                	add	a5,a5,a4
    80004384:	439c                	lw	a5,0(a5)
    80004386:	8736                	mv	a4,a3
    80004388:	8fb9                	xor	a5,a5,a4
    8000438a:	0007869b          	sext.w	a3,a5
    8000438e:	fec42783          	lw	a5,-20(s0)
    80004392:	0087d79b          	srliw	a5,a5,0x8
    80004396:	2781                	sext.w	a5,a5
    80004398:	0ff7f793          	andi	a5,a5,255
    8000439c:	2781                	sext.w	a5,a5
    8000439e:	00004717          	auipc	a4,0x4
    800043a2:	c4a70713          	addi	a4,a4,-950 # 80007fe8 <Td2>
    800043a6:	1782                	slli	a5,a5,0x20
    800043a8:	9381                	srli	a5,a5,0x20
    800043aa:	078a                	slli	a5,a5,0x2
    800043ac:	97ba                	add	a5,a5,a4
    800043ae:	439c                	lw	a5,0(a5)
    800043b0:	8736                	mv	a4,a3
    800043b2:	8fb9                	xor	a5,a5,a4
    800043b4:	0007869b          	sext.w	a3,a5
    800043b8:	fe042783          	lw	a5,-32(s0)
    800043bc:	0ff7f793          	andi	a5,a5,255
    800043c0:	2781                	sext.w	a5,a5
    800043c2:	00004717          	auipc	a4,0x4
    800043c6:	02670713          	addi	a4,a4,38 # 800083e8 <Td3>
    800043ca:	1782                	slli	a5,a5,0x20
    800043cc:	9381                	srli	a5,a5,0x20
    800043ce:	078a                	slli	a5,a5,0x2
    800043d0:	97ba                	add	a5,a5,a4
    800043d2:	439c                	lw	a5,0(a5)
    800043d4:	8736                	mv	a4,a3
    800043d6:	8fb9                	xor	a5,a5,a4
    800043d8:	0007871b          	sext.w	a4,a5
    800043dc:	fb843783          	ld	a5,-72(s0)
    800043e0:	0987a783          	lw	a5,152(a5)
    800043e4:	8fb9                	xor	a5,a5,a4
    800043e6:	fcf42a23          	sw	a5,-44(s0)
    800043ea:	fe042783          	lw	a5,-32(s0)
    800043ee:	0187d79b          	srliw	a5,a5,0x18
    800043f2:	2781                	sext.w	a5,a5
    800043f4:	00003717          	auipc	a4,0x3
    800043f8:	3f470713          	addi	a4,a4,1012 # 800077e8 <Td0>
    800043fc:	1782                	slli	a5,a5,0x20
    800043fe:	9381                	srli	a5,a5,0x20
    80004400:	078a                	slli	a5,a5,0x2
    80004402:	97ba                	add	a5,a5,a4
    80004404:	4394                	lw	a3,0(a5)
    80004406:	fe442783          	lw	a5,-28(s0)
    8000440a:	0107d79b          	srliw	a5,a5,0x10
    8000440e:	2781                	sext.w	a5,a5
    80004410:	0ff7f793          	andi	a5,a5,255
    80004414:	2781                	sext.w	a5,a5
    80004416:	00003717          	auipc	a4,0x3
    8000441a:	7d270713          	addi	a4,a4,2002 # 80007be8 <Td1>
    8000441e:	1782                	slli	a5,a5,0x20
    80004420:	9381                	srli	a5,a5,0x20
    80004422:	078a                	slli	a5,a5,0x2
    80004424:	97ba                	add	a5,a5,a4
    80004426:	439c                	lw	a5,0(a5)
    80004428:	8736                	mv	a4,a3
    8000442a:	8fb9                	xor	a5,a5,a4
    8000442c:	0007869b          	sext.w	a3,a5
    80004430:	fe842783          	lw	a5,-24(s0)
    80004434:	0087d79b          	srliw	a5,a5,0x8
    80004438:	2781                	sext.w	a5,a5
    8000443a:	0ff7f793          	andi	a5,a5,255
    8000443e:	2781                	sext.w	a5,a5
    80004440:	00004717          	auipc	a4,0x4
    80004444:	ba870713          	addi	a4,a4,-1112 # 80007fe8 <Td2>
    80004448:	1782                	slli	a5,a5,0x20
    8000444a:	9381                	srli	a5,a5,0x20
    8000444c:	078a                	slli	a5,a5,0x2
    8000444e:	97ba                	add	a5,a5,a4
    80004450:	439c                	lw	a5,0(a5)
    80004452:	8736                	mv	a4,a3
    80004454:	8fb9                	xor	a5,a5,a4
    80004456:	0007869b          	sext.w	a3,a5
    8000445a:	fec42783          	lw	a5,-20(s0)
    8000445e:	0ff7f793          	andi	a5,a5,255
    80004462:	2781                	sext.w	a5,a5
    80004464:	00004717          	auipc	a4,0x4
    80004468:	f8470713          	addi	a4,a4,-124 # 800083e8 <Td3>
    8000446c:	1782                	slli	a5,a5,0x20
    8000446e:	9381                	srli	a5,a5,0x20
    80004470:	078a                	slli	a5,a5,0x2
    80004472:	97ba                	add	a5,a5,a4
    80004474:	439c                	lw	a5,0(a5)
    80004476:	8736                	mv	a4,a3
    80004478:	8fb9                	xor	a5,a5,a4
    8000447a:	0007871b          	sext.w	a4,a5
    8000447e:	fb843783          	ld	a5,-72(s0)
    80004482:	09c7a783          	lw	a5,156(a5)
    80004486:	8fb9                	xor	a5,a5,a4
    80004488:	fcf42823          	sw	a5,-48(s0)
    8000448c:	fdc42783          	lw	a5,-36(s0)
    80004490:	0187d79b          	srliw	a5,a5,0x18
    80004494:	2781                	sext.w	a5,a5
    80004496:	00004717          	auipc	a4,0x4
    8000449a:	35270713          	addi	a4,a4,850 # 800087e8 <Td4>
    8000449e:	1782                	slli	a5,a5,0x20
    800044a0:	9381                	srli	a5,a5,0x20
    800044a2:	078a                	slli	a5,a5,0x2
    800044a4:	97ba                	add	a5,a5,a4
    800044a6:	439c                	lw	a5,0(a5)
    800044a8:	873e                	mv	a4,a5
    800044aa:	ff0007b7          	lui	a5,0xff000
    800044ae:	8ff9                	and	a5,a5,a4
    800044b0:	0007869b          	sext.w	a3,a5
    800044b4:	fd042783          	lw	a5,-48(s0)
    800044b8:	0107d79b          	srliw	a5,a5,0x10
    800044bc:	2781                	sext.w	a5,a5
    800044be:	0ff7f793          	andi	a5,a5,255
    800044c2:	2781                	sext.w	a5,a5
    800044c4:	00004717          	auipc	a4,0x4
    800044c8:	32470713          	addi	a4,a4,804 # 800087e8 <Td4>
    800044cc:	1782                	slli	a5,a5,0x20
    800044ce:	9381                	srli	a5,a5,0x20
    800044d0:	078a                	slli	a5,a5,0x2
    800044d2:	97ba                	add	a5,a5,a4
    800044d4:	439c                	lw	a5,0(a5)
    800044d6:	873e                	mv	a4,a5
    800044d8:	00ff07b7          	lui	a5,0xff0
    800044dc:	8ff9                	and	a5,a5,a4
    800044de:	2781                	sext.w	a5,a5
    800044e0:	8736                	mv	a4,a3
    800044e2:	8fd9                	or	a5,a5,a4
    800044e4:	0007869b          	sext.w	a3,a5
    800044e8:	fd442783          	lw	a5,-44(s0)
    800044ec:	0087d79b          	srliw	a5,a5,0x8
    800044f0:	2781                	sext.w	a5,a5
    800044f2:	0ff7f793          	andi	a5,a5,255
    800044f6:	2781                	sext.w	a5,a5
    800044f8:	00004717          	auipc	a4,0x4
    800044fc:	2f070713          	addi	a4,a4,752 # 800087e8 <Td4>
    80004500:	1782                	slli	a5,a5,0x20
    80004502:	9381                	srli	a5,a5,0x20
    80004504:	078a                	slli	a5,a5,0x2
    80004506:	97ba                	add	a5,a5,a4
    80004508:	439c                	lw	a5,0(a5)
    8000450a:	873e                	mv	a4,a5
    8000450c:	67c1                	lui	a5,0x10
    8000450e:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    80004512:	8ff9                	and	a5,a5,a4
    80004514:	2781                	sext.w	a5,a5
    80004516:	8736                	mv	a4,a3
    80004518:	8fb9                	xor	a5,a5,a4
    8000451a:	0007869b          	sext.w	a3,a5
    8000451e:	fd842783          	lw	a5,-40(s0)
    80004522:	0ff7f793          	andi	a5,a5,255
    80004526:	2781                	sext.w	a5,a5
    80004528:	00004717          	auipc	a4,0x4
    8000452c:	2c070713          	addi	a4,a4,704 # 800087e8 <Td4>
    80004530:	1782                	slli	a5,a5,0x20
    80004532:	9381                	srli	a5,a5,0x20
    80004534:	078a                	slli	a5,a5,0x2
    80004536:	97ba                	add	a5,a5,a4
    80004538:	439c                	lw	a5,0(a5)
    8000453a:	0ff7f793          	andi	a5,a5,255
    8000453e:	2781                	sext.w	a5,a5
    80004540:	8736                	mv	a4,a3
    80004542:	8fb9                	xor	a5,a5,a4
    80004544:	0007871b          	sext.w	a4,a5
    80004548:	fb843783          	ld	a5,-72(s0)
    8000454c:	0a07a783          	lw	a5,160(a5)
    80004550:	8fb9                	xor	a5,a5,a4
    80004552:	fef42623          	sw	a5,-20(s0)
    80004556:	fd842783          	lw	a5,-40(s0)
    8000455a:	0187d79b          	srliw	a5,a5,0x18
    8000455e:	2781                	sext.w	a5,a5
    80004560:	00004717          	auipc	a4,0x4
    80004564:	28870713          	addi	a4,a4,648 # 800087e8 <Td4>
    80004568:	1782                	slli	a5,a5,0x20
    8000456a:	9381                	srli	a5,a5,0x20
    8000456c:	078a                	slli	a5,a5,0x2
    8000456e:	97ba                	add	a5,a5,a4
    80004570:	439c                	lw	a5,0(a5)
    80004572:	873e                	mv	a4,a5
    80004574:	ff0007b7          	lui	a5,0xff000
    80004578:	8ff9                	and	a5,a5,a4
    8000457a:	0007869b          	sext.w	a3,a5
    8000457e:	fdc42783          	lw	a5,-36(s0)
    80004582:	0107d79b          	srliw	a5,a5,0x10
    80004586:	2781                	sext.w	a5,a5
    80004588:	0ff7f793          	andi	a5,a5,255
    8000458c:	2781                	sext.w	a5,a5
    8000458e:	00004717          	auipc	a4,0x4
    80004592:	25a70713          	addi	a4,a4,602 # 800087e8 <Td4>
    80004596:	1782                	slli	a5,a5,0x20
    80004598:	9381                	srli	a5,a5,0x20
    8000459a:	078a                	slli	a5,a5,0x2
    8000459c:	97ba                	add	a5,a5,a4
    8000459e:	439c                	lw	a5,0(a5)
    800045a0:	873e                	mv	a4,a5
    800045a2:	00ff07b7          	lui	a5,0xff0
    800045a6:	8ff9                	and	a5,a5,a4
    800045a8:	2781                	sext.w	a5,a5
    800045aa:	8736                	mv	a4,a3
    800045ac:	8fd9                	or	a5,a5,a4
    800045ae:	0007869b          	sext.w	a3,a5
    800045b2:	fd042783          	lw	a5,-48(s0)
    800045b6:	0087d79b          	srliw	a5,a5,0x8
    800045ba:	2781                	sext.w	a5,a5
    800045bc:	0ff7f793          	andi	a5,a5,255
    800045c0:	2781                	sext.w	a5,a5
    800045c2:	00004717          	auipc	a4,0x4
    800045c6:	22670713          	addi	a4,a4,550 # 800087e8 <Td4>
    800045ca:	1782                	slli	a5,a5,0x20
    800045cc:	9381                	srli	a5,a5,0x20
    800045ce:	078a                	slli	a5,a5,0x2
    800045d0:	97ba                	add	a5,a5,a4
    800045d2:	439c                	lw	a5,0(a5)
    800045d4:	873e                	mv	a4,a5
    800045d6:	67c1                	lui	a5,0x10
    800045d8:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    800045dc:	8ff9                	and	a5,a5,a4
    800045de:	2781                	sext.w	a5,a5
    800045e0:	8736                	mv	a4,a3
    800045e2:	8fb9                	xor	a5,a5,a4
    800045e4:	0007869b          	sext.w	a3,a5
    800045e8:	fd442783          	lw	a5,-44(s0)
    800045ec:	0ff7f793          	andi	a5,a5,255
    800045f0:	2781                	sext.w	a5,a5
    800045f2:	00004717          	auipc	a4,0x4
    800045f6:	1f670713          	addi	a4,a4,502 # 800087e8 <Td4>
    800045fa:	1782                	slli	a5,a5,0x20
    800045fc:	9381                	srli	a5,a5,0x20
    800045fe:	078a                	slli	a5,a5,0x2
    80004600:	97ba                	add	a5,a5,a4
    80004602:	439c                	lw	a5,0(a5)
    80004604:	0ff7f793          	andi	a5,a5,255
    80004608:	2781                	sext.w	a5,a5
    8000460a:	8736                	mv	a4,a3
    8000460c:	8fb9                	xor	a5,a5,a4
    8000460e:	0007871b          	sext.w	a4,a5
    80004612:	fb843783          	ld	a5,-72(s0)
    80004616:	0a47a783          	lw	a5,164(a5)
    8000461a:	8fb9                	xor	a5,a5,a4
    8000461c:	fef42423          	sw	a5,-24(s0)
    80004620:	fd442783          	lw	a5,-44(s0)
    80004624:	0187d79b          	srliw	a5,a5,0x18
    80004628:	2781                	sext.w	a5,a5
    8000462a:	00004717          	auipc	a4,0x4
    8000462e:	1be70713          	addi	a4,a4,446 # 800087e8 <Td4>
    80004632:	1782                	slli	a5,a5,0x20
    80004634:	9381                	srli	a5,a5,0x20
    80004636:	078a                	slli	a5,a5,0x2
    80004638:	97ba                	add	a5,a5,a4
    8000463a:	439c                	lw	a5,0(a5)
    8000463c:	873e                	mv	a4,a5
    8000463e:	ff0007b7          	lui	a5,0xff000
    80004642:	8ff9                	and	a5,a5,a4
    80004644:	0007869b          	sext.w	a3,a5
    80004648:	fd842783          	lw	a5,-40(s0)
    8000464c:	0107d79b          	srliw	a5,a5,0x10
    80004650:	2781                	sext.w	a5,a5
    80004652:	0ff7f793          	andi	a5,a5,255
    80004656:	2781                	sext.w	a5,a5
    80004658:	00004717          	auipc	a4,0x4
    8000465c:	19070713          	addi	a4,a4,400 # 800087e8 <Td4>
    80004660:	1782                	slli	a5,a5,0x20
    80004662:	9381                	srli	a5,a5,0x20
    80004664:	078a                	slli	a5,a5,0x2
    80004666:	97ba                	add	a5,a5,a4
    80004668:	439c                	lw	a5,0(a5)
    8000466a:	873e                	mv	a4,a5
    8000466c:	00ff07b7          	lui	a5,0xff0
    80004670:	8ff9                	and	a5,a5,a4
    80004672:	2781                	sext.w	a5,a5
    80004674:	8736                	mv	a4,a3
    80004676:	8fd9                	or	a5,a5,a4
    80004678:	0007869b          	sext.w	a3,a5
    8000467c:	fdc42783          	lw	a5,-36(s0)
    80004680:	0087d79b          	srliw	a5,a5,0x8
    80004684:	2781                	sext.w	a5,a5
    80004686:	0ff7f793          	andi	a5,a5,255
    8000468a:	2781                	sext.w	a5,a5
    8000468c:	00004717          	auipc	a4,0x4
    80004690:	15c70713          	addi	a4,a4,348 # 800087e8 <Td4>
    80004694:	1782                	slli	a5,a5,0x20
    80004696:	9381                	srli	a5,a5,0x20
    80004698:	078a                	slli	a5,a5,0x2
    8000469a:	97ba                	add	a5,a5,a4
    8000469c:	439c                	lw	a5,0(a5)
    8000469e:	873e                	mv	a4,a5
    800046a0:	67c1                	lui	a5,0x10
    800046a2:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    800046a6:	8ff9                	and	a5,a5,a4
    800046a8:	2781                	sext.w	a5,a5
    800046aa:	8736                	mv	a4,a3
    800046ac:	8fb9                	xor	a5,a5,a4
    800046ae:	0007869b          	sext.w	a3,a5
    800046b2:	fd042783          	lw	a5,-48(s0)
    800046b6:	0ff7f793          	andi	a5,a5,255
    800046ba:	2781                	sext.w	a5,a5
    800046bc:	00004717          	auipc	a4,0x4
    800046c0:	12c70713          	addi	a4,a4,300 # 800087e8 <Td4>
    800046c4:	1782                	slli	a5,a5,0x20
    800046c6:	9381                	srli	a5,a5,0x20
    800046c8:	078a                	slli	a5,a5,0x2
    800046ca:	97ba                	add	a5,a5,a4
    800046cc:	439c                	lw	a5,0(a5)
    800046ce:	0ff7f793          	andi	a5,a5,255
    800046d2:	2781                	sext.w	a5,a5
    800046d4:	8736                	mv	a4,a3
    800046d6:	8fb9                	xor	a5,a5,a4
    800046d8:	0007871b          	sext.w	a4,a5
    800046dc:	fb843783          	ld	a5,-72(s0)
    800046e0:	0a87a783          	lw	a5,168(a5)
    800046e4:	8fb9                	xor	a5,a5,a4
    800046e6:	fef42223          	sw	a5,-28(s0)
    800046ea:	fd042783          	lw	a5,-48(s0)
    800046ee:	0187d79b          	srliw	a5,a5,0x18
    800046f2:	2781                	sext.w	a5,a5
    800046f4:	00004717          	auipc	a4,0x4
    800046f8:	0f470713          	addi	a4,a4,244 # 800087e8 <Td4>
    800046fc:	1782                	slli	a5,a5,0x20
    800046fe:	9381                	srli	a5,a5,0x20
    80004700:	078a                	slli	a5,a5,0x2
    80004702:	97ba                	add	a5,a5,a4
    80004704:	439c                	lw	a5,0(a5)
    80004706:	873e                	mv	a4,a5
    80004708:	ff0007b7          	lui	a5,0xff000
    8000470c:	8ff9                	and	a5,a5,a4
    8000470e:	0007869b          	sext.w	a3,a5
    80004712:	fd442783          	lw	a5,-44(s0)
    80004716:	0107d79b          	srliw	a5,a5,0x10
    8000471a:	2781                	sext.w	a5,a5
    8000471c:	0ff7f793          	andi	a5,a5,255
    80004720:	2781                	sext.w	a5,a5
    80004722:	00004717          	auipc	a4,0x4
    80004726:	0c670713          	addi	a4,a4,198 # 800087e8 <Td4>
    8000472a:	1782                	slli	a5,a5,0x20
    8000472c:	9381                	srli	a5,a5,0x20
    8000472e:	078a                	slli	a5,a5,0x2
    80004730:	97ba                	add	a5,a5,a4
    80004732:	439c                	lw	a5,0(a5)
    80004734:	873e                	mv	a4,a5
    80004736:	00ff07b7          	lui	a5,0xff0
    8000473a:	8ff9                	and	a5,a5,a4
    8000473c:	2781                	sext.w	a5,a5
    8000473e:	8736                	mv	a4,a3
    80004740:	8fd9                	or	a5,a5,a4
    80004742:	0007869b          	sext.w	a3,a5
    80004746:	fd842783          	lw	a5,-40(s0)
    8000474a:	0087d79b          	srliw	a5,a5,0x8
    8000474e:	2781                	sext.w	a5,a5
    80004750:	0ff7f793          	andi	a5,a5,255
    80004754:	2781                	sext.w	a5,a5
    80004756:	00004717          	auipc	a4,0x4
    8000475a:	09270713          	addi	a4,a4,146 # 800087e8 <Td4>
    8000475e:	1782                	slli	a5,a5,0x20
    80004760:	9381                	srli	a5,a5,0x20
    80004762:	078a                	slli	a5,a5,0x2
    80004764:	97ba                	add	a5,a5,a4
    80004766:	439c                	lw	a5,0(a5)
    80004768:	873e                	mv	a4,a5
    8000476a:	67c1                	lui	a5,0x10
    8000476c:	f0078793          	addi	a5,a5,-256 # ff00 <buflen.2+0xfe80>
    80004770:	8ff9                	and	a5,a5,a4
    80004772:	2781                	sext.w	a5,a5
    80004774:	8736                	mv	a4,a3
    80004776:	8fb9                	xor	a5,a5,a4
    80004778:	0007869b          	sext.w	a3,a5
    8000477c:	fdc42783          	lw	a5,-36(s0)
    80004780:	0ff7f793          	andi	a5,a5,255
    80004784:	2781                	sext.w	a5,a5
    80004786:	00004717          	auipc	a4,0x4
    8000478a:	06270713          	addi	a4,a4,98 # 800087e8 <Td4>
    8000478e:	1782                	slli	a5,a5,0x20
    80004790:	9381                	srli	a5,a5,0x20
    80004792:	078a                	slli	a5,a5,0x2
    80004794:	97ba                	add	a5,a5,a4
    80004796:	439c                	lw	a5,0(a5)
    80004798:	0ff7f793          	andi	a5,a5,255
    8000479c:	2781                	sext.w	a5,a5
    8000479e:	8736                	mv	a4,a3
    800047a0:	8fb9                	xor	a5,a5,a4
    800047a2:	0007871b          	sext.w	a4,a5
    800047a6:	fb843783          	ld	a5,-72(s0)
    800047aa:	0ac7a783          	lw	a5,172(a5)
    800047ae:	8fb9                	xor	a5,a5,a4
    800047b0:	fef42023          	sw	a5,-32(s0)
    800047b4:	fb843783          	ld	a5,-72(s0)
    800047b8:	0b07a783          	lw	a5,176(a5)
    800047bc:	fec42703          	lw	a4,-20(s0)
    800047c0:	8fb9                	xor	a5,a5,a4
    800047c2:	2781                	sext.w	a5,a5
    800047c4:	0187d79b          	srliw	a5,a5,0x18
    800047c8:	2781                	sext.w	a5,a5
    800047ca:	0ff7f713          	andi	a4,a5,255
    800047ce:	fa843783          	ld	a5,-88(s0)
    800047d2:	00e78023          	sb	a4,0(a5)
    800047d6:	fb843783          	ld	a5,-72(s0)
    800047da:	0b07a783          	lw	a5,176(a5)
    800047de:	fec42703          	lw	a4,-20(s0)
    800047e2:	8fb9                	xor	a5,a5,a4
    800047e4:	2781                	sext.w	a5,a5
    800047e6:	0107d79b          	srliw	a5,a5,0x10
    800047ea:	0007871b          	sext.w	a4,a5
    800047ee:	fa843783          	ld	a5,-88(s0)
    800047f2:	0785                	addi	a5,a5,1
    800047f4:	0ff77713          	andi	a4,a4,255
    800047f8:	00e78023          	sb	a4,0(a5)
    800047fc:	fb843783          	ld	a5,-72(s0)
    80004800:	0b07a783          	lw	a5,176(a5)
    80004804:	fec42703          	lw	a4,-20(s0)
    80004808:	8fb9                	xor	a5,a5,a4
    8000480a:	2781                	sext.w	a5,a5
    8000480c:	0087d79b          	srliw	a5,a5,0x8
    80004810:	0007871b          	sext.w	a4,a5
    80004814:	fa843783          	ld	a5,-88(s0)
    80004818:	0789                	addi	a5,a5,2
    8000481a:	0ff77713          	andi	a4,a4,255
    8000481e:	00e78023          	sb	a4,0(a5)
    80004822:	fec42783          	lw	a5,-20(s0)
    80004826:	0ff7f693          	andi	a3,a5,255
    8000482a:	fb843783          	ld	a5,-72(s0)
    8000482e:	0b07a783          	lw	a5,176(a5)
    80004832:	0ff7f713          	andi	a4,a5,255
    80004836:	fa843783          	ld	a5,-88(s0)
    8000483a:	078d                	addi	a5,a5,3
    8000483c:	8f35                	xor	a4,a4,a3
    8000483e:	0ff77713          	andi	a4,a4,255
    80004842:	00e78023          	sb	a4,0(a5)
    80004846:	fb843783          	ld	a5,-72(s0)
    8000484a:	0b47a783          	lw	a5,180(a5)
    8000484e:	fe842703          	lw	a4,-24(s0)
    80004852:	8fb9                	xor	a5,a5,a4
    80004854:	2781                	sext.w	a5,a5
    80004856:	0187d79b          	srliw	a5,a5,0x18
    8000485a:	0007871b          	sext.w	a4,a5
    8000485e:	fa843783          	ld	a5,-88(s0)
    80004862:	0791                	addi	a5,a5,4
    80004864:	0ff77713          	andi	a4,a4,255
    80004868:	00e78023          	sb	a4,0(a5)
    8000486c:	fb843783          	ld	a5,-72(s0)
    80004870:	0b47a783          	lw	a5,180(a5)
    80004874:	fe842703          	lw	a4,-24(s0)
    80004878:	8fb9                	xor	a5,a5,a4
    8000487a:	2781                	sext.w	a5,a5
    8000487c:	0107d79b          	srliw	a5,a5,0x10
    80004880:	0007871b          	sext.w	a4,a5
    80004884:	fa843783          	ld	a5,-88(s0)
    80004888:	0795                	addi	a5,a5,5
    8000488a:	0ff77713          	andi	a4,a4,255
    8000488e:	00e78023          	sb	a4,0(a5)
    80004892:	fb843783          	ld	a5,-72(s0)
    80004896:	0b47a783          	lw	a5,180(a5)
    8000489a:	fe842703          	lw	a4,-24(s0)
    8000489e:	8fb9                	xor	a5,a5,a4
    800048a0:	2781                	sext.w	a5,a5
    800048a2:	0087d79b          	srliw	a5,a5,0x8
    800048a6:	0007871b          	sext.w	a4,a5
    800048aa:	fa843783          	ld	a5,-88(s0)
    800048ae:	0799                	addi	a5,a5,6
    800048b0:	0ff77713          	andi	a4,a4,255
    800048b4:	00e78023          	sb	a4,0(a5)
    800048b8:	fe842783          	lw	a5,-24(s0)
    800048bc:	0ff7f693          	andi	a3,a5,255
    800048c0:	fb843783          	ld	a5,-72(s0)
    800048c4:	0b47a783          	lw	a5,180(a5)
    800048c8:	0ff7f713          	andi	a4,a5,255
    800048cc:	fa843783          	ld	a5,-88(s0)
    800048d0:	079d                	addi	a5,a5,7
    800048d2:	8f35                	xor	a4,a4,a3
    800048d4:	0ff77713          	andi	a4,a4,255
    800048d8:	00e78023          	sb	a4,0(a5)
    800048dc:	fb843783          	ld	a5,-72(s0)
    800048e0:	0b87a783          	lw	a5,184(a5)
    800048e4:	fe442703          	lw	a4,-28(s0)
    800048e8:	8fb9                	xor	a5,a5,a4
    800048ea:	2781                	sext.w	a5,a5
    800048ec:	0187d79b          	srliw	a5,a5,0x18
    800048f0:	0007871b          	sext.w	a4,a5
    800048f4:	fa843783          	ld	a5,-88(s0)
    800048f8:	07a1                	addi	a5,a5,8
    800048fa:	0ff77713          	andi	a4,a4,255
    800048fe:	00e78023          	sb	a4,0(a5)
    80004902:	fb843783          	ld	a5,-72(s0)
    80004906:	0b87a783          	lw	a5,184(a5)
    8000490a:	fe442703          	lw	a4,-28(s0)
    8000490e:	8fb9                	xor	a5,a5,a4
    80004910:	2781                	sext.w	a5,a5
    80004912:	0107d79b          	srliw	a5,a5,0x10
    80004916:	0007871b          	sext.w	a4,a5
    8000491a:	fa843783          	ld	a5,-88(s0)
    8000491e:	07a5                	addi	a5,a5,9
    80004920:	0ff77713          	andi	a4,a4,255
    80004924:	00e78023          	sb	a4,0(a5)
    80004928:	fb843783          	ld	a5,-72(s0)
    8000492c:	0b87a783          	lw	a5,184(a5)
    80004930:	fe442703          	lw	a4,-28(s0)
    80004934:	8fb9                	xor	a5,a5,a4
    80004936:	2781                	sext.w	a5,a5
    80004938:	0087d79b          	srliw	a5,a5,0x8
    8000493c:	0007871b          	sext.w	a4,a5
    80004940:	fa843783          	ld	a5,-88(s0)
    80004944:	07a9                	addi	a5,a5,10
    80004946:	0ff77713          	andi	a4,a4,255
    8000494a:	00e78023          	sb	a4,0(a5)
    8000494e:	fe442783          	lw	a5,-28(s0)
    80004952:	0ff7f693          	andi	a3,a5,255
    80004956:	fb843783          	ld	a5,-72(s0)
    8000495a:	0b87a783          	lw	a5,184(a5)
    8000495e:	0ff7f713          	andi	a4,a5,255
    80004962:	fa843783          	ld	a5,-88(s0)
    80004966:	07ad                	addi	a5,a5,11
    80004968:	8f35                	xor	a4,a4,a3
    8000496a:	0ff77713          	andi	a4,a4,255
    8000496e:	00e78023          	sb	a4,0(a5)
    80004972:	fb843783          	ld	a5,-72(s0)
    80004976:	0bc7a783          	lw	a5,188(a5)
    8000497a:	fe042703          	lw	a4,-32(s0)
    8000497e:	8fb9                	xor	a5,a5,a4
    80004980:	2781                	sext.w	a5,a5
    80004982:	0187d79b          	srliw	a5,a5,0x18
    80004986:	0007871b          	sext.w	a4,a5
    8000498a:	fa843783          	ld	a5,-88(s0)
    8000498e:	07b1                	addi	a5,a5,12
    80004990:	0ff77713          	andi	a4,a4,255
    80004994:	00e78023          	sb	a4,0(a5)
    80004998:	fb843783          	ld	a5,-72(s0)
    8000499c:	0bc7a783          	lw	a5,188(a5)
    800049a0:	fe042703          	lw	a4,-32(s0)
    800049a4:	8fb9                	xor	a5,a5,a4
    800049a6:	2781                	sext.w	a5,a5
    800049a8:	0107d79b          	srliw	a5,a5,0x10
    800049ac:	0007871b          	sext.w	a4,a5
    800049b0:	fa843783          	ld	a5,-88(s0)
    800049b4:	07b5                	addi	a5,a5,13
    800049b6:	0ff77713          	andi	a4,a4,255
    800049ba:	00e78023          	sb	a4,0(a5)
    800049be:	fb843783          	ld	a5,-72(s0)
    800049c2:	0bc7a783          	lw	a5,188(a5)
    800049c6:	fe042703          	lw	a4,-32(s0)
    800049ca:	8fb9                	xor	a5,a5,a4
    800049cc:	2781                	sext.w	a5,a5
    800049ce:	0087d79b          	srliw	a5,a5,0x8
    800049d2:	0007871b          	sext.w	a4,a5
    800049d6:	fa843783          	ld	a5,-88(s0)
    800049da:	07b9                	addi	a5,a5,14
    800049dc:	0ff77713          	andi	a4,a4,255
    800049e0:	00e78023          	sb	a4,0(a5)
    800049e4:	fe042783          	lw	a5,-32(s0)
    800049e8:	0ff7f693          	andi	a3,a5,255
    800049ec:	fb843783          	ld	a5,-72(s0)
    800049f0:	0bc7a783          	lw	a5,188(a5)
    800049f4:	0ff7f713          	andi	a4,a5,255
    800049f8:	fa843783          	ld	a5,-88(s0)
    800049fc:	07bd                	addi	a5,a5,15
    800049fe:	8f35                	xor	a4,a4,a3
    80004a00:	0ff77713          	andi	a4,a4,255
    80004a04:	00e78023          	sb	a4,0(a5)
    80004a08:	fc042703          	lw	a4,-64(s0)
    80004a0c:	fb843783          	ld	a5,-72(s0)
    80004a10:	0ae7a823          	sw	a4,176(a5)
    80004a14:	fc442703          	lw	a4,-60(s0)
    80004a18:	fb843783          	ld	a5,-72(s0)
    80004a1c:	0ae7aa23          	sw	a4,180(a5)
    80004a20:	fc842703          	lw	a4,-56(s0)
    80004a24:	fb843783          	ld	a5,-72(s0)
    80004a28:	0ae7ac23          	sw	a4,184(a5)
    80004a2c:	fcc42703          	lw	a4,-52(s0)
    80004a30:	fb843783          	ld	a5,-72(s0)
    80004a34:	0ae7ae23          	sw	a4,188(a5)
    80004a38:	0001                	nop
    80004a3a:	6466                	ld	s0,88(sp)
    80004a3c:	6125                	addi	sp,sp,96
    80004a3e:	8082                	ret

0000000080004a40 <write_reg_u8>:
    80004a40:	7179                	addi	sp,sp,-48
    80004a42:	f422                	sd	s0,40(sp)
    80004a44:	1800                	addi	s0,sp,48
    80004a46:	fca43c23          	sd	a0,-40(s0)
    80004a4a:	87ae                	mv	a5,a1
    80004a4c:	fcf40ba3          	sb	a5,-41(s0)
    80004a50:	fd843783          	ld	a5,-40(s0)
    80004a54:	fef43423          	sd	a5,-24(s0)
    80004a58:	fe843783          	ld	a5,-24(s0)
    80004a5c:	fd744703          	lbu	a4,-41(s0)
    80004a60:	00e78023          	sb	a4,0(a5)
    80004a64:	0001                	nop
    80004a66:	7422                	ld	s0,40(sp)
    80004a68:	6145                	addi	sp,sp,48
    80004a6a:	8082                	ret

0000000080004a6c <read_reg_u8>:
    80004a6c:	1101                	addi	sp,sp,-32
    80004a6e:	ec22                	sd	s0,24(sp)
    80004a70:	1000                	addi	s0,sp,32
    80004a72:	fea43423          	sd	a0,-24(s0)
    80004a76:	fe843783          	ld	a5,-24(s0)
    80004a7a:	0007c783          	lbu	a5,0(a5)
    80004a7e:	0ff7f793          	andi	a5,a5,255
    80004a82:	853e                	mv	a0,a5
    80004a84:	6462                	ld	s0,24(sp)
    80004a86:	6105                	addi	sp,sp,32
    80004a88:	8082                	ret

0000000080004a8a <is_transmit_empty>:
    80004a8a:	1141                	addi	sp,sp,-16
    80004a8c:	e406                	sd	ra,8(sp)
    80004a8e:	e022                	sd	s0,0(sp)
    80004a90:	0800                	addi	s0,sp,16
    80004a92:	100007b7          	lui	a5,0x10000
    80004a96:	01478513          	addi	a0,a5,20 # 10000014 <buflen.2+0xfffff94>
    80004a9a:	fd3ff0ef          	jal	ra,80004a6c <read_reg_u8>
    80004a9e:	87aa                	mv	a5,a0
    80004aa0:	2781                	sext.w	a5,a5
    80004aa2:	0207f793          	andi	a5,a5,32
    80004aa6:	2781                	sext.w	a5,a5
    80004aa8:	853e                	mv	a0,a5
    80004aaa:	60a2                	ld	ra,8(sp)
    80004aac:	6402                	ld	s0,0(sp)
    80004aae:	0141                	addi	sp,sp,16
    80004ab0:	8082                	ret

0000000080004ab2 <is_receive_empty>:
    80004ab2:	1141                	addi	sp,sp,-16
    80004ab4:	e406                	sd	ra,8(sp)
    80004ab6:	e022                	sd	s0,0(sp)
    80004ab8:	0800                	addi	s0,sp,16
    80004aba:	100007b7          	lui	a5,0x10000
    80004abe:	01478513          	addi	a0,a5,20 # 10000014 <buflen.2+0xfffff94>
    80004ac2:	fabff0ef          	jal	ra,80004a6c <read_reg_u8>
    80004ac6:	87aa                	mv	a5,a0
    80004ac8:	2781                	sext.w	a5,a5
    80004aca:	8b85                	andi	a5,a5,1
    80004acc:	2781                	sext.w	a5,a5
    80004ace:	0017b793          	seqz	a5,a5
    80004ad2:	0ff7f793          	andi	a5,a5,255
    80004ad6:	2781                	sext.w	a5,a5
    80004ad8:	853e                	mv	a0,a5
    80004ada:	60a2                	ld	ra,8(sp)
    80004adc:	6402                	ld	s0,0(sp)
    80004ade:	0141                	addi	sp,sp,16
    80004ae0:	8082                	ret

0000000080004ae2 <write_serial>:
    80004ae2:	1101                	addi	sp,sp,-32
    80004ae4:	ec06                	sd	ra,24(sp)
    80004ae6:	e822                	sd	s0,16(sp)
    80004ae8:	1000                	addi	s0,sp,32
    80004aea:	87aa                	mv	a5,a0
    80004aec:	fef407a3          	sb	a5,-17(s0)
    80004af0:	0001                	nop
    80004af2:	f99ff0ef          	jal	ra,80004a8a <is_transmit_empty>
    80004af6:	87aa                	mv	a5,a0
    80004af8:	dfed                	beqz	a5,80004af2 <write_serial+0x10>
    80004afa:	fef44783          	lbu	a5,-17(s0)
    80004afe:	85be                	mv	a1,a5
    80004b00:	10000537          	lui	a0,0x10000
    80004b04:	f3dff0ef          	jal	ra,80004a40 <write_reg_u8>
    80004b08:	0001                	nop
    80004b0a:	60e2                	ld	ra,24(sp)
    80004b0c:	6442                	ld	s0,16(sp)
    80004b0e:	6105                	addi	sp,sp,32
    80004b10:	8082                	ret

0000000080004b12 <read_serial>:
    80004b12:	1101                	addi	sp,sp,-32
    80004b14:	ec06                	sd	ra,24(sp)
    80004b16:	e822                	sd	s0,16(sp)
    80004b18:	1000                	addi	s0,sp,32
    80004b1a:	fea43423          	sd	a0,-24(s0)
    80004b1e:	f95ff0ef          	jal	ra,80004ab2 <is_receive_empty>
    80004b22:	87aa                	mv	a5,a0
    80004b24:	c399                	beqz	a5,80004b2a <read_serial+0x18>
    80004b26:	4781                	li	a5,0
    80004b28:	a821                	j	80004b40 <read_serial+0x2e>
    80004b2a:	10000537          	lui	a0,0x10000
    80004b2e:	f3fff0ef          	jal	ra,80004a6c <read_reg_u8>
    80004b32:	87aa                	mv	a5,a0
    80004b34:	873e                	mv	a4,a5
    80004b36:	fe843783          	ld	a5,-24(s0)
    80004b3a:	00e78023          	sb	a4,0(a5)
    80004b3e:	4785                	li	a5,1
    80004b40:	853e                	mv	a0,a5
    80004b42:	60e2                	ld	ra,24(sp)
    80004b44:	6442                	ld	s0,16(sp)
    80004b46:	6105                	addi	sp,sp,32
    80004b48:	8082                	ret

0000000080004b4a <init_uart>:
    80004b4a:	7179                	addi	sp,sp,-48
    80004b4c:	f406                	sd	ra,40(sp)
    80004b4e:	f022                	sd	s0,32(sp)
    80004b50:	1800                	addi	s0,sp,48
    80004b52:	87aa                	mv	a5,a0
    80004b54:	872e                	mv	a4,a1
    80004b56:	fcf42e23          	sw	a5,-36(s0)
    80004b5a:	87ba                	mv	a5,a4
    80004b5c:	fcf42c23          	sw	a5,-40(s0)
    80004b60:	fd842783          	lw	a5,-40(s0)
    80004b64:	0047979b          	slliw	a5,a5,0x4
    80004b68:	2781                	sext.w	a5,a5
    80004b6a:	fdc42703          	lw	a4,-36(s0)
    80004b6e:	02f757bb          	divuw	a5,a4,a5
    80004b72:	fef42623          	sw	a5,-20(s0)
    80004b76:	4581                	li	a1,0
    80004b78:	100007b7          	lui	a5,0x10000
    80004b7c:	00478513          	addi	a0,a5,4 # 10000004 <buflen.2+0xfffff84>
    80004b80:	ec1ff0ef          	jal	ra,80004a40 <write_reg_u8>
    80004b84:	08000593          	li	a1,128
    80004b88:	100007b7          	lui	a5,0x10000
    80004b8c:	00c78513          	addi	a0,a5,12 # 1000000c <buflen.2+0xfffff8c>
    80004b90:	eb1ff0ef          	jal	ra,80004a40 <write_reg_u8>
    80004b94:	fec42783          	lw	a5,-20(s0)
    80004b98:	0ff7f793          	andi	a5,a5,255
    80004b9c:	85be                	mv	a1,a5
    80004b9e:	10000537          	lui	a0,0x10000
    80004ba2:	e9fff0ef          	jal	ra,80004a40 <write_reg_u8>
    80004ba6:	fec42783          	lw	a5,-20(s0)
    80004baa:	0087d79b          	srliw	a5,a5,0x8
    80004bae:	2781                	sext.w	a5,a5
    80004bb0:	0ff7f793          	andi	a5,a5,255
    80004bb4:	85be                	mv	a1,a5
    80004bb6:	100007b7          	lui	a5,0x10000
    80004bba:	00478513          	addi	a0,a5,4 # 10000004 <buflen.2+0xfffff84>
    80004bbe:	e83ff0ef          	jal	ra,80004a40 <write_reg_u8>
    80004bc2:	458d                	li	a1,3
    80004bc4:	100007b7          	lui	a5,0x10000
    80004bc8:	00c78513          	addi	a0,a5,12 # 1000000c <buflen.2+0xfffff8c>
    80004bcc:	e75ff0ef          	jal	ra,80004a40 <write_reg_u8>
    80004bd0:	0c700593          	li	a1,199
    80004bd4:	100007b7          	lui	a5,0x10000
    80004bd8:	00878513          	addi	a0,a5,8 # 10000008 <buflen.2+0xfffff88>
    80004bdc:	e65ff0ef          	jal	ra,80004a40 <write_reg_u8>
    80004be0:	02000593          	li	a1,32
    80004be4:	100007b7          	lui	a5,0x10000
    80004be8:	01078513          	addi	a0,a5,16 # 10000010 <buflen.2+0xfffff90>
    80004bec:	e55ff0ef          	jal	ra,80004a40 <write_reg_u8>
    80004bf0:	0001                	nop
    80004bf2:	70a2                	ld	ra,40(sp)
    80004bf4:	7402                	ld	s0,32(sp)
    80004bf6:	6145                	addi	sp,sp,48
    80004bf8:	8082                	ret

0000000080004bfa <print_uart>:
    80004bfa:	7179                	addi	sp,sp,-48
    80004bfc:	f406                	sd	ra,40(sp)
    80004bfe:	f022                	sd	s0,32(sp)
    80004c00:	1800                	addi	s0,sp,48
    80004c02:	fca43c23          	sd	a0,-40(s0)
    80004c06:	fd843783          	ld	a5,-40(s0)
    80004c0a:	fef43423          	sd	a5,-24(s0)
    80004c0e:	a829                	j	80004c28 <print_uart+0x2e>
    80004c10:	fe843783          	ld	a5,-24(s0)
    80004c14:	0007c783          	lbu	a5,0(a5)
    80004c18:	853e                	mv	a0,a5
    80004c1a:	ec9ff0ef          	jal	ra,80004ae2 <write_serial>
    80004c1e:	fe843783          	ld	a5,-24(s0)
    80004c22:	0785                	addi	a5,a5,1
    80004c24:	fef43423          	sd	a5,-24(s0)
    80004c28:	fe843783          	ld	a5,-24(s0)
    80004c2c:	0007c783          	lbu	a5,0(a5)
    80004c30:	f3e5                	bnez	a5,80004c10 <print_uart+0x16>
    80004c32:	0001                	nop
    80004c34:	0001                	nop
    80004c36:	70a2                	ld	ra,40(sp)
    80004c38:	7402                	ld	s0,32(sp)
    80004c3a:	6145                	addi	sp,sp,48
    80004c3c:	8082                	ret

0000000080004c3e <bin_to_hex>:
    80004c3e:	1101                	addi	sp,sp,-32
    80004c40:	ec22                	sd	s0,24(sp)
    80004c42:	1000                	addi	s0,sp,32
    80004c44:	87aa                	mv	a5,a0
    80004c46:	feb43023          	sd	a1,-32(s0)
    80004c4a:	fef407a3          	sb	a5,-17(s0)
    80004c4e:	fef44783          	lbu	a5,-17(s0)
    80004c52:	2781                	sext.w	a5,a5
    80004c54:	8bbd                	andi	a5,a5,15
    80004c56:	0007871b          	sext.w	a4,a5
    80004c5a:	fe043783          	ld	a5,-32(s0)
    80004c5e:	0785                	addi	a5,a5,1
    80004c60:	bf018693          	addi	a3,gp,-1040 # 80008ef0 <bin_to_hex_table>
    80004c64:	9736                	add	a4,a4,a3
    80004c66:	00074703          	lbu	a4,0(a4)
    80004c6a:	00e78023          	sb	a4,0(a5)
    80004c6e:	fef44783          	lbu	a5,-17(s0)
    80004c72:	0047d79b          	srliw	a5,a5,0x4
    80004c76:	0ff7f793          	andi	a5,a5,255
    80004c7a:	2781                	sext.w	a5,a5
    80004c7c:	8bbd                	andi	a5,a5,15
    80004c7e:	2781                	sext.w	a5,a5
    80004c80:	bf018713          	addi	a4,gp,-1040 # 80008ef0 <bin_to_hex_table>
    80004c84:	97ba                	add	a5,a5,a4
    80004c86:	0007c703          	lbu	a4,0(a5)
    80004c8a:	fe043783          	ld	a5,-32(s0)
    80004c8e:	00e78023          	sb	a4,0(a5)
    80004c92:	0001                	nop
    80004c94:	6462                	ld	s0,24(sp)
    80004c96:	6105                	addi	sp,sp,32
    80004c98:	8082                	ret

0000000080004c9a <print_uart_int>:
    80004c9a:	7179                	addi	sp,sp,-48
    80004c9c:	f406                	sd	ra,40(sp)
    80004c9e:	f022                	sd	s0,32(sp)
    80004ca0:	1800                	addi	s0,sp,48
    80004ca2:	87aa                	mv	a5,a0
    80004ca4:	fcf42e23          	sw	a5,-36(s0)
    80004ca8:	478d                	li	a5,3
    80004caa:	fef42623          	sw	a5,-20(s0)
    80004cae:	a0a1                	j	80004cf6 <print_uart_int+0x5c>
    80004cb0:	fec42783          	lw	a5,-20(s0)
    80004cb4:	0037979b          	slliw	a5,a5,0x3
    80004cb8:	2781                	sext.w	a5,a5
    80004cba:	fdc42703          	lw	a4,-36(s0)
    80004cbe:	00f757bb          	srlw	a5,a4,a5
    80004cc2:	2781                	sext.w	a5,a5
    80004cc4:	fef405a3          	sb	a5,-21(s0)
    80004cc8:	fe840713          	addi	a4,s0,-24
    80004ccc:	feb44783          	lbu	a5,-21(s0)
    80004cd0:	85ba                	mv	a1,a4
    80004cd2:	853e                	mv	a0,a5
    80004cd4:	f6bff0ef          	jal	ra,80004c3e <bin_to_hex>
    80004cd8:	fe844783          	lbu	a5,-24(s0)
    80004cdc:	853e                	mv	a0,a5
    80004cde:	e05ff0ef          	jal	ra,80004ae2 <write_serial>
    80004ce2:	fe944783          	lbu	a5,-23(s0)
    80004ce6:	853e                	mv	a0,a5
    80004ce8:	dfbff0ef          	jal	ra,80004ae2 <write_serial>
    80004cec:	fec42783          	lw	a5,-20(s0)
    80004cf0:	37fd                	addiw	a5,a5,-1
    80004cf2:	fef42623          	sw	a5,-20(s0)
    80004cf6:	fec42783          	lw	a5,-20(s0)
    80004cfa:	2781                	sext.w	a5,a5
    80004cfc:	fa07dae3          	bgez	a5,80004cb0 <print_uart_int+0x16>
    80004d00:	0001                	nop
    80004d02:	0001                	nop
    80004d04:	70a2                	ld	ra,40(sp)
    80004d06:	7402                	ld	s0,32(sp)
    80004d08:	6145                	addi	sp,sp,48
    80004d0a:	8082                	ret

0000000080004d0c <print_uart_addr>:
    80004d0c:	7179                	addi	sp,sp,-48
    80004d0e:	f406                	sd	ra,40(sp)
    80004d10:	f022                	sd	s0,32(sp)
    80004d12:	1800                	addi	s0,sp,48
    80004d14:	fca43c23          	sd	a0,-40(s0)
    80004d18:	479d                	li	a5,7
    80004d1a:	fef42623          	sw	a5,-20(s0)
    80004d1e:	a0a1                	j	80004d66 <print_uart_addr+0x5a>
    80004d20:	fec42783          	lw	a5,-20(s0)
    80004d24:	0037979b          	slliw	a5,a5,0x3
    80004d28:	2781                	sext.w	a5,a5
    80004d2a:	873e                	mv	a4,a5
    80004d2c:	fd843783          	ld	a5,-40(s0)
    80004d30:	00e7d7b3          	srl	a5,a5,a4
    80004d34:	fef405a3          	sb	a5,-21(s0)
    80004d38:	fe840713          	addi	a4,s0,-24
    80004d3c:	feb44783          	lbu	a5,-21(s0)
    80004d40:	85ba                	mv	a1,a4
    80004d42:	853e                	mv	a0,a5
    80004d44:	efbff0ef          	jal	ra,80004c3e <bin_to_hex>
    80004d48:	fe844783          	lbu	a5,-24(s0)
    80004d4c:	853e                	mv	a0,a5
    80004d4e:	d95ff0ef          	jal	ra,80004ae2 <write_serial>
    80004d52:	fe944783          	lbu	a5,-23(s0)
    80004d56:	853e                	mv	a0,a5
    80004d58:	d8bff0ef          	jal	ra,80004ae2 <write_serial>
    80004d5c:	fec42783          	lw	a5,-20(s0)
    80004d60:	37fd                	addiw	a5,a5,-1
    80004d62:	fef42623          	sw	a5,-20(s0)
    80004d66:	fec42783          	lw	a5,-20(s0)
    80004d6a:	2781                	sext.w	a5,a5
    80004d6c:	fa07dae3          	bgez	a5,80004d20 <print_uart_addr+0x14>
    80004d70:	0001                	nop
    80004d72:	0001                	nop
    80004d74:	70a2                	ld	ra,40(sp)
    80004d76:	7402                	ld	s0,32(sp)
    80004d78:	6145                	addi	sp,sp,48
    80004d7a:	8082                	ret

0000000080004d7c <print_uart_byte>:
    80004d7c:	7179                	addi	sp,sp,-48
    80004d7e:	f406                	sd	ra,40(sp)
    80004d80:	f022                	sd	s0,32(sp)
    80004d82:	1800                	addi	s0,sp,48
    80004d84:	87aa                	mv	a5,a0
    80004d86:	fcf40fa3          	sb	a5,-33(s0)
    80004d8a:	fe840713          	addi	a4,s0,-24
    80004d8e:	fdf44783          	lbu	a5,-33(s0)
    80004d92:	85ba                	mv	a1,a4
    80004d94:	853e                	mv	a0,a5
    80004d96:	ea9ff0ef          	jal	ra,80004c3e <bin_to_hex>
    80004d9a:	fe844783          	lbu	a5,-24(s0)
    80004d9e:	853e                	mv	a0,a5
    80004da0:	d43ff0ef          	jal	ra,80004ae2 <write_serial>
    80004da4:	fe944783          	lbu	a5,-23(s0)
    80004da8:	853e                	mv	a0,a5
    80004daa:	d39ff0ef          	jal	ra,80004ae2 <write_serial>
    80004dae:	0001                	nop
    80004db0:	70a2                	ld	ra,40(sp)
    80004db2:	7402                	ld	s0,32(sp)
    80004db4:	6145                	addi	sp,sp,48
    80004db6:	8082                	ret

0000000080004db8 <read_seed_input_from_uart>:
    80004db8:	7179                	addi	sp,sp,-48
    80004dba:	f406                	sd	ra,40(sp)
    80004dbc:	f022                	sd	s0,32(sp)
    80004dbe:	1800                	addi	s0,sp,48
    80004dc0:	fca43c23          	sd	a0,-40(s0)
    80004dc4:	fcb43823          	sd	a1,-48(s0)
    80004dc8:	91018513          	addi	a0,gp,-1776 # 80008c10 <rcon+0x28>
    80004dcc:	e2fff0ef          	jal	ra,80004bfa <print_uart>
    80004dd0:	fd043783          	ld	a5,-48(s0)
    80004dd4:	2781                	sext.w	a5,a5
    80004dd6:	853e                	mv	a0,a5
    80004dd8:	ec3ff0ef          	jal	ra,80004c9a <print_uart_int>
    80004ddc:	93018513          	addi	a0,gp,-1744 # 80008c30 <rcon+0x48>
    80004de0:	e1bff0ef          	jal	ra,80004bfa <print_uart>
    80004de4:	fe043423          	sd	zero,-24(s0)
    80004de8:	a0a1                	j	80004e30 <read_seed_input_from_uart+0x78>
    80004dea:	0001                	nop
    80004dec:	fe740793          	addi	a5,s0,-25
    80004df0:	853e                	mv	a0,a5
    80004df2:	d21ff0ef          	jal	ra,80004b12 <read_serial>
    80004df6:	87aa                	mv	a5,a0
    80004df8:	dbf5                	beqz	a5,80004dec <read_seed_input_from_uart+0x34>
    80004dfa:	fd843703          	ld	a4,-40(s0)
    80004dfe:	fe843783          	ld	a5,-24(s0)
    80004e02:	97ba                	add	a5,a5,a4
    80004e04:	fe744703          	lbu	a4,-25(s0)
    80004e08:	00e78023          	sb	a4,0(a5)
    80004e0c:	95018513          	addi	a0,gp,-1712 # 80008c50 <rcon+0x68>
    80004e10:	debff0ef          	jal	ra,80004bfa <print_uart>
    80004e14:	fe744783          	lbu	a5,-25(s0)
    80004e18:	853e                	mv	a0,a5
    80004e1a:	f63ff0ef          	jal	ra,80004d7c <print_uart_byte>
    80004e1e:	96018513          	addi	a0,gp,-1696 # 80008c60 <rcon+0x78>
    80004e22:	dd9ff0ef          	jal	ra,80004bfa <print_uart>
    80004e26:	fe843783          	ld	a5,-24(s0)
    80004e2a:	0785                	addi	a5,a5,1
    80004e2c:	fef43423          	sd	a5,-24(s0)
    80004e30:	fe843703          	ld	a4,-24(s0)
    80004e34:	fd043783          	ld	a5,-48(s0)
    80004e38:	faf769e3          	bltu	a4,a5,80004dea <read_seed_input_from_uart+0x32>
    80004e3c:	0001                	nop
    80004e3e:	0001                	nop
    80004e40:	70a2                	ld	ra,40(sp)
    80004e42:	7402                	ld	s0,32(sp)
    80004e44:	6145                	addi	sp,sp,48
    80004e46:	8082                	ret

0000000080004e48 <read_uint32_from_uart>:
    80004e48:	1101                	addi	sp,sp,-32
    80004e4a:	ec06                	sd	ra,24(sp)
    80004e4c:	e822                	sd	s0,16(sp)
    80004e4e:	1000                	addi	s0,sp,32
    80004e50:	fe042623          	sw	zero,-20(s0)
    80004e54:	fe042423          	sw	zero,-24(s0)
    80004e58:	a8a9                	j	80004eb2 <read_uint32_from_uart+0x6a>
    80004e5a:	0001                	nop
    80004e5c:	fe740793          	addi	a5,s0,-25
    80004e60:	853e                	mv	a0,a5
    80004e62:	cb1ff0ef          	jal	ra,80004b12 <read_serial>
    80004e66:	87aa                	mv	a5,a0
    80004e68:	dbf5                	beqz	a5,80004e5c <read_uint32_from_uart+0x14>
    80004e6a:	fe744783          	lbu	a5,-25(s0)
    80004e6e:	0007871b          	sext.w	a4,a5
    80004e72:	fe842783          	lw	a5,-24(s0)
    80004e76:	0037979b          	slliw	a5,a5,0x3
    80004e7a:	2781                	sext.w	a5,a5
    80004e7c:	00f717bb          	sllw	a5,a4,a5
    80004e80:	2781                	sext.w	a5,a5
    80004e82:	2781                	sext.w	a5,a5
    80004e84:	fec42703          	lw	a4,-20(s0)
    80004e88:	8fd9                	or	a5,a5,a4
    80004e8a:	fef42623          	sw	a5,-20(s0)
    80004e8e:	96818513          	addi	a0,gp,-1688 # 80008c68 <rcon+0x80>
    80004e92:	d69ff0ef          	jal	ra,80004bfa <print_uart>
    80004e96:	fe744783          	lbu	a5,-25(s0)
    80004e9a:	853e                	mv	a0,a5
    80004e9c:	ee1ff0ef          	jal	ra,80004d7c <print_uart_byte>
    80004ea0:	96018513          	addi	a0,gp,-1696 # 80008c60 <rcon+0x78>
    80004ea4:	d57ff0ef          	jal	ra,80004bfa <print_uart>
    80004ea8:	fe842783          	lw	a5,-24(s0)
    80004eac:	2785                	addiw	a5,a5,1
    80004eae:	fef42423          	sw	a5,-24(s0)
    80004eb2:	fe842783          	lw	a5,-24(s0)
    80004eb6:	0007871b          	sext.w	a4,a5
    80004eba:	478d                	li	a5,3
    80004ebc:	f8e7dfe3          	ble	a4,a5,80004e5a <read_uint32_from_uart+0x12>
    80004ec0:	fec42783          	lw	a5,-20(s0)
    80004ec4:	853e                	mv	a0,a5
    80004ec6:	60e2                	ld	ra,24(sp)
    80004ec8:	6442                	ld	s0,16(sp)
    80004eca:	6105                	addi	sp,sp,32
    80004ecc:	8082                	ret

0000000080004ece <output>:
    80004ece:	7139                	addi	sp,sp,-64
    80004ed0:	fc06                	sd	ra,56(sp)
    80004ed2:	f822                	sd	s0,48(sp)
    80004ed4:	0080                	addi	s0,sp,64
    80004ed6:	fca43c23          	sd	a0,-40(s0)
    80004eda:	87ae                	mv	a5,a1
    80004edc:	fcc43423          	sd	a2,-56(s0)
    80004ee0:	fcd43023          	sd	a3,-64(s0)
    80004ee4:	fcf42a23          	sw	a5,-44(s0)
    80004ee8:	87ba                	mv	a5,a4
    80004eea:	fcf42823          	sw	a5,-48(s0)
    80004eee:	fd843583          	ld	a1,-40(s0)
    80004ef2:	98818513          	addi	a0,gp,-1656 # 80008c88 <rcon+0xa0>
    80004ef6:	03a010ef          	jal	ra,80005f30 <printf>
    80004efa:	fd442783          	lw	a5,-44(s0)
    80004efe:	85be                	mv	a1,a5
    80004f00:	99018513          	addi	a0,gp,-1648 # 80008c90 <rcon+0xa8>
    80004f04:	02c010ef          	jal	ra,80005f30 <printf>
    80004f08:	fc843583          	ld	a1,-56(s0)
    80004f0c:	98818513          	addi	a0,gp,-1656 # 80008c88 <rcon+0xa0>
    80004f10:	020010ef          	jal	ra,80005f30 <printf>
    80004f14:	fe0407a3          	sb	zero,-17(s0)
    80004f18:	a01d                	j	80004f3e <output+0x70>
    80004f1a:	fef44783          	lbu	a5,-17(s0)
    80004f1e:	fc043703          	ld	a4,-64(s0)
    80004f22:	97ba                	add	a5,a5,a4
    80004f24:	0007c783          	lbu	a5,0(a5)
    80004f28:	2781                	sext.w	a5,a5
    80004f2a:	85be                	mv	a1,a5
    80004f2c:	99818513          	addi	a0,gp,-1640 # 80008c98 <rcon+0xb0>
    80004f30:	000010ef          	jal	ra,80005f30 <printf>
    80004f34:	fef44783          	lbu	a5,-17(s0)
    80004f38:	2785                	addiw	a5,a5,1
    80004f3a:	fef407a3          	sb	a5,-17(s0)
    80004f3e:	fef44783          	lbu	a5,-17(s0)
    80004f42:	0007871b          	sext.w	a4,a5
    80004f46:	fd042783          	lw	a5,-48(s0)
    80004f4a:	2781                	sext.w	a5,a5
    80004f4c:	fcf767e3          	bltu	a4,a5,80004f1a <output+0x4c>
    80004f50:	4529                	li	a0,10
    80004f52:	1b9000ef          	jal	ra,8000590a <putchar>
    80004f56:	0001                	nop
    80004f58:	70e2                	ld	ra,56(sp)
    80004f5a:	7442                	ld	s0,48(sp)
    80004f5c:	6121                	addi	sp,sp,64
    80004f5e:	8082                	ret

0000000080004f60 <cv_xif_CUS_XOR>:
    80004f60:	7179                	addi	sp,sp,-48
    80004f62:	f422                	sd	s0,40(sp)
    80004f64:	1800                	addi	s0,sp,48
    80004f66:	fea43423          	sd	a0,-24(s0)
    80004f6a:	feb43023          	sd	a1,-32(s0)
    80004f6e:	fcc43c23          	sd	a2,-40(s0)
    80004f72:	fe843783          	ld	a5,-24(s0)
    80004f76:	fe043703          	ld	a4,-32(s0)
    80004f7a:	438c                	lw	a1,0(a5)
    80004f7c:	4308                	lw	a0,0(a4)
    80004f7e:	0ab5167b          	0xab5167b
    80004f82:	8732                	mv	a4,a2
    80004f84:	fd843783          	ld	a5,-40(s0)
    80004f88:	c398                	sw	a4,0(a5)
    80004f8a:	0001                	nop
    80004f8c:	7422                	ld	s0,40(sp)
    80004f8e:	6145                	addi	sp,sp,48
    80004f90:	8082                	ret

0000000080004f92 <main>:
    80004f92:	7121                	addi	sp,sp,-448
    80004f94:	ff06                	sd	ra,440(sp)
    80004f96:	fb22                	sd	s0,432(sp)
    80004f98:	0380                	addi	s0,sp,448
    80004f9a:	fa043423          	sd	zero,-88(s0)
    80004f9e:	fa043823          	sd	zero,-80(s0)
    80004fa2:	a2018793          	addi	a5,gp,-1504 # 80008d20 <rcon+0x138>
    80004fa6:	6398                	ld	a4,0(a5)
    80004fa8:	f8e43c23          	sd	a4,-104(s0)
    80004fac:	679c                	ld	a5,8(a5)
    80004fae:	faf43023          	sd	a5,-96(s0)
    80004fb2:	410007b7          	lui	a5,0x41000
    80004fb6:	0791                	addi	a5,a5,4
    80004fb8:	fcf43c23          	sd	a5,-40(s0)
    80004fbc:	fd843783          	ld	a5,-40(s0)
    80004fc0:	4709                	li	a4,2
    80004fc2:	c398                	sw	a4,0(a5)
    80004fc4:	02faf7b7          	lui	a5,0x2faf
    80004fc8:	08078793          	addi	a5,a5,128 # 2faf080 <buflen.2+0x2faf000>
    80004fcc:	fcf42a23          	sw	a5,-44(s0)
    80004fd0:	678d                	lui	a5,0x3
    80004fd2:	0d478793          	addi	a5,a5,212 # 30d4 <buflen.2+0x3054>
    80004fd6:	fcf42823          	sw	a5,-48(s0)
    80004fda:	fd042703          	lw	a4,-48(s0)
    80004fde:	fd442783          	lw	a5,-44(s0)
    80004fe2:	85ba                	mv	a1,a4
    80004fe4:	853e                	mv	a0,a5
    80004fe6:	b65ff0ef          	jal	ra,80004b4a <init_uart>
    80004fea:	9a018513          	addi	a0,gp,-1632 # 80008ca0 <rcon+0xb8>
    80004fee:	c0dff0ef          	jal	ra,80004bfa <print_uart>
    80004ff2:	e6043823          	sd	zero,-400(s0)
    80004ff6:	e6043c23          	sd	zero,-392(s0)
    80004ffa:	e8043023          	sd	zero,-384(s0)
    80004ffe:	e8043423          	sd	zero,-376(s0)
    80005002:	e7040793          	addi	a5,s0,-400
    80005006:	02000593          	li	a1,32
    8000500a:	853e                	mv	a0,a5
    8000500c:	dadff0ef          	jal	ra,80004db8 <read_seed_input_from_uart>
    80005010:	9b018513          	addi	a0,gp,-1616 # 80008cb0 <rcon+0xc8>
    80005014:	be7ff0ef          	jal	ra,80004bfa <print_uart>
    80005018:	fe043423          	sd	zero,-24(s0)
    8000501c:	a01d                	j	80005042 <main+0xb0>
    8000501e:	fe843783          	ld	a5,-24(s0)
    80005022:	17c1                	addi	a5,a5,-16
    80005024:	97a2                	add	a5,a5,s0
    80005026:	e807c783          	lbu	a5,-384(a5)
    8000502a:	853e                	mv	a0,a5
    8000502c:	d51ff0ef          	jal	ra,80004d7c <print_uart_byte>
    80005030:	9c818513          	addi	a0,gp,-1592 # 80008cc8 <rcon+0xe0>
    80005034:	bc7ff0ef          	jal	ra,80004bfa <print_uart>
    80005038:	fe843783          	ld	a5,-24(s0)
    8000503c:	0785                	addi	a5,a5,1
    8000503e:	fef43423          	sd	a5,-24(s0)
    80005042:	fe843703          	ld	a4,-24(s0)
    80005046:	47fd                	li	a5,31
    80005048:	fce7fbe3          	bleu	a4,a5,8000501e <main+0x8c>
    8000504c:	96018513          	addi	a0,gp,-1696 # 80008c60 <rcon+0x78>
    80005050:	babff0ef          	jal	ra,80004bfa <print_uart>
    80005054:	e7043783          	ld	a5,-400(s0)
    80005058:	faf43423          	sd	a5,-88(s0)
    8000505c:	e7843783          	ld	a5,-392(s0)
    80005060:	faf43823          	sd	a5,-80(s0)
    80005064:	fa840693          	addi	a3,s0,-88
    80005068:	f9840713          	addi	a4,s0,-104
    8000506c:	e9840793          	addi	a5,s0,-360
    80005070:	8636                	mv	a2,a3
    80005072:	85ba                	mv	a1,a4
    80005074:	853e                	mv	a0,a5
    80005076:	a12fb0ef          	jal	ra,80000288 <AES_EncryptInit>
    8000507a:	a3018793          	addi	a5,gp,-1488 # 80008d30 <rcon+0x148>
    8000507e:	6390                	ld	a2,0(a5)
    80005080:	6794                	ld	a3,8(a5)
    80005082:	6b98                	ld	a4,16(a5)
    80005084:	6f9c                	ld	a5,24(a5)
    80005086:	e4c43823          	sd	a2,-432(s0)
    8000508a:	e4d43c23          	sd	a3,-424(s0)
    8000508e:	e6e43023          	sd	a4,-416(s0)
    80005092:	e6f43423          	sd	a5,-408(s0)
    80005096:	e5043603          	ld	a2,-432(s0)
    8000509a:	e5843683          	ld	a3,-424(s0)
    8000509e:	e6043703          	ld	a4,-416(s0)
    800050a2:	e6843783          	ld	a5,-408(s0)
    800050a6:	f4c43c23          	sd	a2,-168(s0)
    800050aa:	f6d43023          	sd	a3,-160(s0)
    800050ae:	f6e43423          	sd	a4,-152(s0)
    800050b2:	f6f43823          	sd	a5,-144(s0)
    800050b6:	9d018513          	addi	a0,gp,-1584 # 80008cd0 <rcon+0xe8>
    800050ba:	b41ff0ef          	jal	ra,80004bfa <print_uart>
    800050be:	d8bff0ef          	jal	ra,80004e48 <read_uint32_from_uart>
    800050c2:	87aa                	mv	a5,a0
    800050c4:	fcf42623          	sw	a5,-52(s0)
    800050c8:	a0018513          	addi	a0,gp,-1536 # 80008d00 <rcon+0x118>
    800050cc:	b2fff0ef          	jal	ra,80004bfa <print_uart>
    800050d0:	fcc42783          	lw	a5,-52(s0)
    800050d4:	853e                	mv	a0,a5
    800050d6:	bc5ff0ef          	jal	ra,80004c9a <print_uart_int>
    800050da:	96018513          	addi	a0,gp,-1696 # 80008c60 <rcon+0x78>
    800050de:	b1dff0ef          	jal	ra,80004bfa <print_uart>
    800050e2:	fe042223          	sw	zero,-28(s0)
    800050e6:	a211                	j	800051ea <main+0x258>
    800050e8:	fe042023          	sw	zero,-32(s0)
    800050ec:	a805                	j	8000511c <main+0x18a>
    800050ee:	fe046783          	lwu	a5,-32(s0)
    800050f2:	e5040713          	addi	a4,s0,-432
    800050f6:	00f706b3          	add	a3,a4,a5
    800050fa:	fe046783          	lwu	a5,-32(s0)
    800050fe:	e5040713          	addi	a4,s0,-432
    80005102:	973e                	add	a4,a4,a5
    80005104:	e9840793          	addi	a5,s0,-360
    80005108:	863a                	mv	a2,a4
    8000510a:	85b6                	mv	a1,a3
    8000510c:	853e                	mv	a0,a5
    8000510e:	cbdfb0ef          	jal	ra,80000dca <AES_Encrypt>
    80005112:	fe042783          	lw	a5,-32(s0)
    80005116:	27c1                	addiw	a5,a5,16
    80005118:	fef42023          	sw	a5,-32(s0)
    8000511c:	fe042783          	lw	a5,-32(s0)
    80005120:	0007871b          	sext.w	a4,a5
    80005124:	47fd                	li	a5,31
    80005126:	fce7f4e3          	bleu	a4,a5,800050ee <main+0x15c>
    8000512a:	e5043783          	ld	a5,-432(s0)
    8000512e:	f8f43423          	sd	a5,-120(s0)
    80005132:	e5843783          	ld	a5,-424(s0)
    80005136:	f8f43823          	sd	a5,-112(s0)
    8000513a:	f8844783          	lbu	a5,-120(s0)
    8000513e:	2781                	sext.w	a5,a5
    80005140:	8b85                	andi	a5,a5,1
    80005142:	fcf42423          	sw	a5,-56(s0)
    80005146:	fc842783          	lw	a5,-56(s0)
    8000514a:	2781                	sext.w	a5,a5
    8000514c:	c7b1                	beqz	a5,80005198 <main+0x206>
    8000514e:	f8840793          	addi	a5,s0,-120
    80005152:	0791                	addi	a5,a5,4
    80005154:	439c                	lw	a5,0(a5)
    80005156:	e4f42623          	sw	a5,-436(s0)
    8000515a:	f8840793          	addi	a5,s0,-120
    8000515e:	07a1                	addi	a5,a5,8
    80005160:	439c                	lw	a5,0(a5)
    80005162:	e4f42423          	sw	a5,-440(s0)
    80005166:	410007b7          	lui	a5,0x41000
    8000516a:	0791                	addi	a5,a5,4
    8000516c:	faf43c23          	sd	a5,-72(s0)
    80005170:	fb843783          	ld	a5,-72(s0)
    80005174:	4705                	li	a4,1
    80005176:	c398                	sw	a4,0(a5)
    80005178:	e9440693          	addi	a3,s0,-364
    8000517c:	e4840713          	addi	a4,s0,-440
    80005180:	e4c40793          	addi	a5,s0,-436
    80005184:	8636                	mv	a2,a3
    80005186:	85ba                	mv	a1,a4
    80005188:	853e                	mv	a0,a5
    8000518a:	dd7ff0ef          	jal	ra,80004f60 <cv_xif_CUS_XOR>
    8000518e:	fb843783          	ld	a5,-72(s0)
    80005192:	4709                	li	a4,2
    80005194:	c398                	sw	a4,0(a5)
    80005196:	a0a9                	j	800051e0 <main+0x24e>
    80005198:	deadc7b7          	lui	a5,0xdeadc
    8000519c:	eef78793          	addi	a5,a5,-273 # ffffffffdeadbeef <__global_pointer$+0xffffffff5ead2bef>
    800051a0:	e4f42223          	sw	a5,-444(s0)
    800051a4:	012347b7          	lui	a5,0x1234
    800051a8:	56778793          	addi	a5,a5,1383 # 1234567 <buflen.2+0x12344e7>
    800051ac:	e4f42023          	sw	a5,-448(s0)
    800051b0:	410007b7          	lui	a5,0x41000
    800051b4:	0791                	addi	a5,a5,4
    800051b6:	fcf43023          	sd	a5,-64(s0)
    800051ba:	fc043783          	ld	a5,-64(s0)
    800051be:	4705                	li	a4,1
    800051c0:	c398                	sw	a4,0(a5)
    800051c2:	e9440693          	addi	a3,s0,-364
    800051c6:	e4040713          	addi	a4,s0,-448
    800051ca:	e4440793          	addi	a5,s0,-444
    800051ce:	8636                	mv	a2,a3
    800051d0:	85ba                	mv	a1,a4
    800051d2:	853e                	mv	a0,a5
    800051d4:	d8dff0ef          	jal	ra,80004f60 <cv_xif_CUS_XOR>
    800051d8:	fc043783          	ld	a5,-64(s0)
    800051dc:	4709                	li	a4,2
    800051de:	c398                	sw	a4,0(a5)
    800051e0:	fe442783          	lw	a5,-28(s0)
    800051e4:	2785                	addiw	a5,a5,1
    800051e6:	fef42223          	sw	a5,-28(s0)
    800051ea:	fe442783          	lw	a5,-28(s0)
    800051ee:	873e                	mv	a4,a5
    800051f0:	fcc42783          	lw	a5,-52(s0)
    800051f4:	2701                	sext.w	a4,a4
    800051f6:	2781                	sext.w	a5,a5
    800051f8:	eef768e3          	bltu	a4,a5,800050e8 <main+0x156>
    800051fc:	4781                	li	a5,0
    800051fe:	853e                	mv	a0,a5
    80005200:	70fa                	ld	ra,440(sp)
    80005202:	745a                	ld	s0,432(sp)
    80005204:	6139                	addi	sp,sp,448
    80005206:	8082                	ret

0000000080005208 <verify>:
    80005208:	715d                	addi	sp,sp,-80
    8000520a:	e4a2                	sd	s0,72(sp)
    8000520c:	0880                	addi	s0,sp,80
    8000520e:	87aa                	mv	a5,a0
    80005210:	fcb43023          	sd	a1,-64(s0)
    80005214:	fac43c23          	sd	a2,-72(s0)
    80005218:	fcf42623          	sw	a5,-52(s0)
    8000521c:	fe042623          	sw	zero,-20(s0)
    80005220:	a841                	j	800052b0 <verify+0xa8>
    80005222:	fec42783          	lw	a5,-20(s0)
    80005226:	078a                	slli	a5,a5,0x2
    80005228:	fc043703          	ld	a4,-64(s0)
    8000522c:	97ba                	add	a5,a5,a4
    8000522e:	439c                	lw	a5,0(a5)
    80005230:	fef42423          	sw	a5,-24(s0)
    80005234:	fec42783          	lw	a5,-20(s0)
    80005238:	0785                	addi	a5,a5,1
    8000523a:	078a                	slli	a5,a5,0x2
    8000523c:	fc043703          	ld	a4,-64(s0)
    80005240:	97ba                	add	a5,a5,a4
    80005242:	439c                	lw	a5,0(a5)
    80005244:	fef42223          	sw	a5,-28(s0)
    80005248:	fec42783          	lw	a5,-20(s0)
    8000524c:	078a                	slli	a5,a5,0x2
    8000524e:	fb843703          	ld	a4,-72(s0)
    80005252:	97ba                	add	a5,a5,a4
    80005254:	439c                	lw	a5,0(a5)
    80005256:	fef42023          	sw	a5,-32(s0)
    8000525a:	fec42783          	lw	a5,-20(s0)
    8000525e:	0785                	addi	a5,a5,1
    80005260:	078a                	slli	a5,a5,0x2
    80005262:	fb843703          	ld	a4,-72(s0)
    80005266:	97ba                	add	a5,a5,a4
    80005268:	439c                	lw	a5,0(a5)
    8000526a:	fcf42e23          	sw	a5,-36(s0)
    8000526e:	fe842783          	lw	a5,-24(s0)
    80005272:	873e                	mv	a4,a5
    80005274:	fe042783          	lw	a5,-32(s0)
    80005278:	2701                	sext.w	a4,a4
    8000527a:	2781                	sext.w	a5,a5
    8000527c:	00f70763          	beq	a4,a5,8000528a <verify+0x82>
    80005280:	fec42783          	lw	a5,-20(s0)
    80005284:	2785                	addiw	a5,a5,1
    80005286:	2781                	sext.w	a5,a5
    80005288:	a059                	j	8000530e <verify+0x106>
    8000528a:	fe442783          	lw	a5,-28(s0)
    8000528e:	873e                	mv	a4,a5
    80005290:	fdc42783          	lw	a5,-36(s0)
    80005294:	2701                	sext.w	a4,a4
    80005296:	2781                	sext.w	a5,a5
    80005298:	00f70763          	beq	a4,a5,800052a6 <verify+0x9e>
    8000529c:	fec42783          	lw	a5,-20(s0)
    800052a0:	2789                	addiw	a5,a5,2
    800052a2:	2781                	sext.w	a5,a5
    800052a4:	a0ad                	j	8000530e <verify+0x106>
    800052a6:	fec42783          	lw	a5,-20(s0)
    800052aa:	2789                	addiw	a5,a5,2
    800052ac:	fef42623          	sw	a5,-20(s0)
    800052b0:	fcc42783          	lw	a5,-52(s0)
    800052b4:	01f7d71b          	srliw	a4,a5,0x1f
    800052b8:	9fb9                	addw	a5,a5,a4
    800052ba:	4017d79b          	sraiw	a5,a5,0x1
    800052be:	2781                	sext.w	a5,a5
    800052c0:	0017979b          	slliw	a5,a5,0x1
    800052c4:	0007871b          	sext.w	a4,a5
    800052c8:	fec42783          	lw	a5,-20(s0)
    800052cc:	2781                	sext.w	a5,a5
    800052ce:	f4e7cae3          	blt	a5,a4,80005222 <verify+0x1a>
    800052d2:	fcc42783          	lw	a5,-52(s0)
    800052d6:	8b85                	andi	a5,a5,1
    800052d8:	2781                	sext.w	a5,a5
    800052da:	cb8d                	beqz	a5,8000530c <verify+0x104>
    800052dc:	fcc42783          	lw	a5,-52(s0)
    800052e0:	078a                	slli	a5,a5,0x2
    800052e2:	17f1                	addi	a5,a5,-4
    800052e4:	fc043703          	ld	a4,-64(s0)
    800052e8:	97ba                	add	a5,a5,a4
    800052ea:	439c                	lw	a5,0(a5)
    800052ec:	0007869b          	sext.w	a3,a5
    800052f0:	fcc42783          	lw	a5,-52(s0)
    800052f4:	078a                	slli	a5,a5,0x2
    800052f6:	17f1                	addi	a5,a5,-4
    800052f8:	fb843703          	ld	a4,-72(s0)
    800052fc:	97ba                	add	a5,a5,a4
    800052fe:	439c                	lw	a5,0(a5)
    80005300:	8736                	mv	a4,a3
    80005302:	00f70563          	beq	a4,a5,8000530c <verify+0x104>
    80005306:	fcc42783          	lw	a5,-52(s0)
    8000530a:	a011                	j	8000530e <verify+0x106>
    8000530c:	4781                	li	a5,0
    8000530e:	853e                	mv	a0,a5
    80005310:	6426                	ld	s0,72(sp)
    80005312:	6161                	addi	sp,sp,80
    80005314:	8082                	ret

0000000080005316 <verifyDouble>:
    80005316:	711d                	addi	sp,sp,-96
    80005318:	eca2                	sd	s0,88(sp)
    8000531a:	1080                	addi	s0,sp,96
    8000531c:	87aa                	mv	a5,a0
    8000531e:	fab43823          	sd	a1,-80(s0)
    80005322:	fac43423          	sd	a2,-88(s0)
    80005326:	faf42e23          	sw	a5,-68(s0)
    8000532a:	fe042623          	sw	zero,-20(s0)
    8000532e:	a06d                	j	800053d8 <verifyDouble+0xc2>
    80005330:	fec42783          	lw	a5,-20(s0)
    80005334:	078e                	slli	a5,a5,0x3
    80005336:	fb043703          	ld	a4,-80(s0)
    8000533a:	97ba                	add	a5,a5,a4
    8000533c:	239c                	fld	fa5,0(a5)
    8000533e:	fef43027          	fsd	fa5,-32(s0)
    80005342:	fec42783          	lw	a5,-20(s0)
    80005346:	0785                	addi	a5,a5,1
    80005348:	078e                	slli	a5,a5,0x3
    8000534a:	fb043703          	ld	a4,-80(s0)
    8000534e:	97ba                	add	a5,a5,a4
    80005350:	239c                	fld	fa5,0(a5)
    80005352:	fcf43c27          	fsd	fa5,-40(s0)
    80005356:	fec42783          	lw	a5,-20(s0)
    8000535a:	078e                	slli	a5,a5,0x3
    8000535c:	fa843703          	ld	a4,-88(s0)
    80005360:	97ba                	add	a5,a5,a4
    80005362:	239c                	fld	fa5,0(a5)
    80005364:	fcf43827          	fsd	fa5,-48(s0)
    80005368:	fec42783          	lw	a5,-20(s0)
    8000536c:	0785                	addi	a5,a5,1
    8000536e:	078e                	slli	a5,a5,0x3
    80005370:	fa843703          	ld	a4,-88(s0)
    80005374:	97ba                	add	a5,a5,a4
    80005376:	239c                	fld	fa5,0(a5)
    80005378:	fcf43427          	fsd	fa5,-56(s0)
    8000537c:	fe043707          	fld	fa4,-32(s0)
    80005380:	fd043787          	fld	fa5,-48(s0)
    80005384:	a2f727d3          	feq.d	a5,fa4,fa5
    80005388:	00f037b3          	snez	a5,a5
    8000538c:	0ff7f793          	andi	a5,a5,255
    80005390:	fcf42223          	sw	a5,-60(s0)
    80005394:	fd843707          	fld	fa4,-40(s0)
    80005398:	fc843787          	fld	fa5,-56(s0)
    8000539c:	a2f727d3          	feq.d	a5,fa4,fa5
    800053a0:	00f037b3          	snez	a5,a5
    800053a4:	0ff7f793          	andi	a5,a5,255
    800053a8:	fcf42023          	sw	a5,-64(s0)
    800053ac:	fc442783          	lw	a5,-60(s0)
    800053b0:	873e                	mv	a4,a5
    800053b2:	fc042783          	lw	a5,-64(s0)
    800053b6:	8ff9                	and	a5,a5,a4
    800053b8:	2781                	sext.w	a5,a5
    800053ba:	eb91                	bnez	a5,800053ce <verifyDouble+0xb8>
    800053bc:	fec42783          	lw	a5,-20(s0)
    800053c0:	2785                	addiw	a5,a5,1
    800053c2:	2781                	sext.w	a5,a5
    800053c4:	fc442703          	lw	a4,-60(s0)
    800053c8:	9fb9                	addw	a5,a5,a4
    800053ca:	2781                	sext.w	a5,a5
    800053cc:	a09d                	j	80005432 <verifyDouble+0x11c>
    800053ce:	fec42783          	lw	a5,-20(s0)
    800053d2:	2789                	addiw	a5,a5,2
    800053d4:	fef42623          	sw	a5,-20(s0)
    800053d8:	fbc42783          	lw	a5,-68(s0)
    800053dc:	01f7d71b          	srliw	a4,a5,0x1f
    800053e0:	9fb9                	addw	a5,a5,a4
    800053e2:	4017d79b          	sraiw	a5,a5,0x1
    800053e6:	2781                	sext.w	a5,a5
    800053e8:	0017979b          	slliw	a5,a5,0x1
    800053ec:	0007871b          	sext.w	a4,a5
    800053f0:	fec42783          	lw	a5,-20(s0)
    800053f4:	2781                	sext.w	a5,a5
    800053f6:	f2e7cde3          	blt	a5,a4,80005330 <verifyDouble+0x1a>
    800053fa:	fbc42783          	lw	a5,-68(s0)
    800053fe:	8b85                	andi	a5,a5,1
    80005400:	2781                	sext.w	a5,a5
    80005402:	c79d                	beqz	a5,80005430 <verifyDouble+0x11a>
    80005404:	fbc42783          	lw	a5,-68(s0)
    80005408:	078e                	slli	a5,a5,0x3
    8000540a:	17e1                	addi	a5,a5,-8
    8000540c:	fb043703          	ld	a4,-80(s0)
    80005410:	97ba                	add	a5,a5,a4
    80005412:	2398                	fld	fa4,0(a5)
    80005414:	fbc42783          	lw	a5,-68(s0)
    80005418:	078e                	slli	a5,a5,0x3
    8000541a:	17e1                	addi	a5,a5,-8
    8000541c:	fa843703          	ld	a4,-88(s0)
    80005420:	97ba                	add	a5,a5,a4
    80005422:	239c                	fld	fa5,0(a5)
    80005424:	a2f727d3          	feq.d	a5,fa4,fa5
    80005428:	e781                	bnez	a5,80005430 <verifyDouble+0x11a>
    8000542a:	fbc42783          	lw	a5,-68(s0)
    8000542e:	a011                	j	80005432 <verifyDouble+0x11c>
    80005430:	4781                	li	a5,0
    80005432:	853e                	mv	a0,a5
    80005434:	6466                	ld	s0,88(sp)
    80005436:	6125                	addi	sp,sp,96
    80005438:	8082                	ret

000000008000543a <barrier>:
    8000543a:	1101                	addi	sp,sp,-32
    8000543c:	ec22                	sd	s0,24(sp)
    8000543e:	1000                	addi	s0,sp,32
    80005440:	87aa                	mv	a5,a0
    80005442:	fef42623          	sw	a5,-20(s0)
    80005446:	0ff0000f          	fence
    8000544a:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    8000544e:	0017b793          	seqz	a5,a5
    80005452:	0ff7f793          	andi	a5,a5,255
    80005456:	0007871b          	sext.w	a4,a5
    8000545a:	00e22023          	sw	a4,0(tp) # 0 <threadsense.4>
    8000545e:	c2018793          	addi	a5,gp,-992 # 80008f20 <count.1>
    80005462:	4705                	li	a4,1
    80005464:	0f50000f          	fence	iorw,ow
    80005468:	04e7a6af          	amoadd.w.aq	a3,a4,(a5)
    8000546c:	0006879b          	sext.w	a5,a3
    80005470:	0007871b          	sext.w	a4,a5
    80005474:	fec42783          	lw	a5,-20(s0)
    80005478:	37fd                	addiw	a5,a5,-1
    8000547a:	2781                	sext.w	a5,a5
    8000547c:	00f71c63          	bne	a4,a5,80005494 <barrier+0x5a>
    80005480:	c2018793          	addi	a5,gp,-992 # 80008f20 <count.1>
    80005484:	0007a023          	sw	zero,0(a5) # 41000000 <buflen.2+0x40ffff80>
    80005488:	00022703          	lw	a4,0(tp) # 0 <threadsense.4>
    8000548c:	c2418793          	addi	a5,gp,-988 # 80008f24 <sense.0>
    80005490:	c398                	sw	a4,0(a5)
    80005492:	a819                	j	800054a8 <barrier+0x6e>
    80005494:	0001                	nop
    80005496:	c2418793          	addi	a5,gp,-988 # 80008f24 <sense.0>
    8000549a:	439c                	lw	a5,0(a5)
    8000549c:	0007871b          	sext.w	a4,a5
    800054a0:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    800054a4:	fef719e3          	bne	a4,a5,80005496 <barrier+0x5c>
    800054a8:	0ff0000f          	fence
    800054ac:	0001                	nop
    800054ae:	6462                	ld	s0,24(sp)
    800054b0:	6105                	addi	sp,sp,32
    800054b2:	8082                	ret

00000000800054b4 <lfsr>:
    800054b4:	7179                	addi	sp,sp,-48
    800054b6:	f422                	sd	s0,40(sp)
    800054b8:	1800                	addi	s0,sp,48
    800054ba:	fca43c23          	sd	a0,-40(s0)
    800054be:	fd843783          	ld	a5,-40(s0)
    800054c2:	0017d713          	srli	a4,a5,0x1
    800054c6:	fd843783          	ld	a5,-40(s0)
    800054ca:	8fb9                	xor	a5,a5,a4
    800054cc:	8b85                	andi	a5,a5,1
    800054ce:	fef43423          	sd	a5,-24(s0)
    800054d2:	fd843783          	ld	a5,-40(s0)
    800054d6:	0017d713          	srli	a4,a5,0x1
    800054da:	fe843783          	ld	a5,-24(s0)
    800054de:	17fa                	slli	a5,a5,0x3e
    800054e0:	8fd9                	or	a5,a5,a4
    800054e2:	853e                	mv	a0,a5
    800054e4:	7422                	ld	s0,40(sp)
    800054e6:	6145                	addi	sp,sp,48
    800054e8:	8082                	ret

00000000800054ea <insn_len>:
    800054ea:	1101                	addi	sp,sp,-32
    800054ec:	ec22                	sd	s0,24(sp)
    800054ee:	1000                	addi	s0,sp,32
    800054f0:	fea43423          	sd	a0,-24(s0)
    800054f4:	fe843783          	ld	a5,-24(s0)
    800054f8:	0007d783          	lhu	a5,0(a5)
    800054fc:	2781                	sext.w	a5,a5
    800054fe:	8b8d                	andi	a5,a5,3
    80005500:	2781                	sext.w	a5,a5
    80005502:	c399                	beqz	a5,80005508 <insn_len+0x1e>
    80005504:	4791                	li	a5,4
    80005506:	a011                	j	8000550a <insn_len+0x20>
    80005508:	4789                	li	a5,2
    8000550a:	853e                	mv	a0,a5
    8000550c:	6462                	ld	s0,24(sp)
    8000550e:	6105                	addi	sp,sp,32
    80005510:	8082                	ret

0000000080005512 <syscall>:
    80005512:	7171                	addi	sp,sp,-176
    80005514:	f522                	sd	s0,168(sp)
    80005516:	1900                	addi	s0,sp,176
    80005518:	f6a43c23          	sd	a0,-136(s0)
    8000551c:	f6b43823          	sd	a1,-144(s0)
    80005520:	f6c43423          	sd	a2,-152(s0)
    80005524:	f6d43023          	sd	a3,-160(s0)
    80005528:	ff040793          	addi	a5,s0,-16
    8000552c:	f4f43c23          	sd	a5,-168(s0)
    80005530:	f5843783          	ld	a5,-168(s0)
    80005534:	f9078793          	addi	a5,a5,-112
    80005538:	03f78793          	addi	a5,a5,63
    8000553c:	8399                	srli	a5,a5,0x6
    8000553e:	079a                	slli	a5,a5,0x6
    80005540:	f7843703          	ld	a4,-136(s0)
    80005544:	e398                	sd	a4,0(a5)
    80005546:	f7043703          	ld	a4,-144(s0)
    8000554a:	e798                	sd	a4,8(a5)
    8000554c:	f6843703          	ld	a4,-152(s0)
    80005550:	eb98                	sd	a4,16(a5)
    80005552:	f6043703          	ld	a4,-160(s0)
    80005556:	ef98                	sd	a4,24(a5)
    80005558:	0ff0000f          	fence
    8000555c:	86be                	mv	a3,a5
    8000555e:	577d                	li	a4,-1
    80005560:	8341                	srli	a4,a4,0x10
    80005562:	8ef9                	and	a3,a3,a4
    80005564:	ffffb717          	auipc	a4,0xffffb
    80005568:	c9c70713          	addi	a4,a4,-868 # 80000200 <tohost>
    8000556c:	e314                	sd	a3,0(a4)
    8000556e:	0001                	nop
    80005570:	ffffb717          	auipc	a4,0xffffb
    80005574:	cd070713          	addi	a4,a4,-816 # 80000240 <fromhost>
    80005578:	6318                	ld	a4,0(a4)
    8000557a:	db7d                	beqz	a4,80005570 <syscall+0x5e>
    8000557c:	ffffb717          	auipc	a4,0xffffb
    80005580:	cc470713          	addi	a4,a4,-828 # 80000240 <fromhost>
    80005584:	00073023          	sd	zero,0(a4)
    80005588:	0ff0000f          	fence
    8000558c:	639c                	ld	a5,0(a5)
    8000558e:	853e                	mv	a0,a5
    80005590:	742a                	ld	s0,168(sp)
    80005592:	614d                	addi	sp,sp,176
    80005594:	8082                	ret

0000000080005596 <setStats>:
    80005596:	715d                	addi	sp,sp,-80
    80005598:	e4a2                	sd	s0,72(sp)
    8000559a:	0880                	addi	s0,sp,80
    8000559c:	87aa                	mv	a5,a0
    8000559e:	faf42e23          	sw	a5,-68(s0)
    800055a2:	fc042e23          	sw	zero,-36(s0)
    800055a6:	fdc42783          	lw	a5,-36(s0)
    800055aa:	0007871b          	sext.w	a4,a5
    800055ae:	4785                	li	a5,1
    800055b0:	fee7cbe3          	blt	a5,a4,800055a6 <setStats+0x10>
    800055b4:	b00027f3          	csrr	a5,mcycle
    800055b8:	fcf43823          	sd	a5,-48(s0)
    800055bc:	fd043783          	ld	a5,-48(s0)
    800055c0:	fef43423          	sd	a5,-24(s0)
    800055c4:	fbc42783          	lw	a5,-68(s0)
    800055c8:	2781                	sext.w	a5,a5
    800055ca:	e79d                	bnez	a5,800055f8 <setStats+0x62>
    800055cc:	c0018713          	addi	a4,gp,-1024 # 80008f00 <counters>
    800055d0:	fdc42783          	lw	a5,-36(s0)
    800055d4:	078e                	slli	a5,a5,0x3
    800055d6:	97ba                	add	a5,a5,a4
    800055d8:	639c                	ld	a5,0(a5)
    800055da:	fe843703          	ld	a4,-24(s0)
    800055de:	40f707b3          	sub	a5,a4,a5
    800055e2:	fef43423          	sd	a5,-24(s0)
    800055e6:	c1018713          	addi	a4,gp,-1008 # 80008f10 <counter_names>
    800055ea:	fdc42783          	lw	a5,-36(s0)
    800055ee:	078e                	slli	a5,a5,0x3
    800055f0:	97ba                	add	a5,a5,a4
    800055f2:	a5018713          	addi	a4,gp,-1456 # 80008d50 <rcon+0x168>
    800055f6:	e398                	sd	a4,0(a5)
    800055f8:	fdc42783          	lw	a5,-36(s0)
    800055fc:	0017871b          	addiw	a4,a5,1
    80005600:	fce42e23          	sw	a4,-36(s0)
    80005604:	c0018713          	addi	a4,gp,-1024 # 80008f00 <counters>
    80005608:	078e                	slli	a5,a5,0x3
    8000560a:	97ba                	add	a5,a5,a4
    8000560c:	fe843703          	ld	a4,-24(s0)
    80005610:	e398                	sd	a4,0(a5)
    80005612:	fdc42783          	lw	a5,-36(s0)
    80005616:	0007871b          	sext.w	a4,a5
    8000561a:	4785                	li	a5,1
    8000561c:	fee7cbe3          	blt	a5,a4,80005612 <setStats+0x7c>
    80005620:	b02027f3          	csrr	a5,minstret
    80005624:	fcf43423          	sd	a5,-56(s0)
    80005628:	fc843783          	ld	a5,-56(s0)
    8000562c:	fef43023          	sd	a5,-32(s0)
    80005630:	fbc42783          	lw	a5,-68(s0)
    80005634:	2781                	sext.w	a5,a5
    80005636:	e79d                	bnez	a5,80005664 <setStats+0xce>
    80005638:	c0018713          	addi	a4,gp,-1024 # 80008f00 <counters>
    8000563c:	fdc42783          	lw	a5,-36(s0)
    80005640:	078e                	slli	a5,a5,0x3
    80005642:	97ba                	add	a5,a5,a4
    80005644:	639c                	ld	a5,0(a5)
    80005646:	fe043703          	ld	a4,-32(s0)
    8000564a:	40f707b3          	sub	a5,a4,a5
    8000564e:	fef43023          	sd	a5,-32(s0)
    80005652:	c1018713          	addi	a4,gp,-1008 # 80008f10 <counter_names>
    80005656:	fdc42783          	lw	a5,-36(s0)
    8000565a:	078e                	slli	a5,a5,0x3
    8000565c:	97ba                	add	a5,a5,a4
    8000565e:	a5818713          	addi	a4,gp,-1448 # 80008d58 <rcon+0x170>
    80005662:	e398                	sd	a4,0(a5)
    80005664:	fdc42783          	lw	a5,-36(s0)
    80005668:	0017871b          	addiw	a4,a5,1
    8000566c:	fce42e23          	sw	a4,-36(s0)
    80005670:	c0018713          	addi	a4,gp,-1024 # 80008f00 <counters>
    80005674:	078e                	slli	a5,a5,0x3
    80005676:	97ba                	add	a5,a5,a4
    80005678:	fe043703          	ld	a4,-32(s0)
    8000567c:	e398                	sd	a4,0(a5)
    8000567e:	0001                	nop
    80005680:	6426                	ld	s0,72(sp)
    80005682:	6161                	addi	sp,sp,80
    80005684:	8082                	ret

0000000080005686 <getStats>:
    80005686:	1101                	addi	sp,sp,-32
    80005688:	ec22                	sd	s0,24(sp)
    8000568a:	1000                	addi	s0,sp,32
    8000568c:	87aa                	mv	a5,a0
    8000568e:	fef42623          	sw	a5,-20(s0)
    80005692:	c0018713          	addi	a4,gp,-1024 # 80008f00 <counters>
    80005696:	fec42783          	lw	a5,-20(s0)
    8000569a:	078e                	slli	a5,a5,0x3
    8000569c:	97ba                	add	a5,a5,a4
    8000569e:	639c                	ld	a5,0(a5)
    800056a0:	853e                	mv	a0,a5
    800056a2:	6462                	ld	s0,24(sp)
    800056a4:	6105                	addi	sp,sp,32
    800056a6:	8082                	ret

00000000800056a8 <tohost_exit>:
    800056a8:	1101                	addi	sp,sp,-32
    800056aa:	ec22                	sd	s0,24(sp)
    800056ac:	1000                	addi	s0,sp,32
    800056ae:	fea43423          	sd	a0,-24(s0)
    800056b2:	fe843783          	ld	a5,-24(s0)
    800056b6:	07c6                	slli	a5,a5,0x11
    800056b8:	83c1                	srli	a5,a5,0x10
    800056ba:	0017e713          	ori	a4,a5,1
    800056be:	ffffb797          	auipc	a5,0xffffb
    800056c2:	b4278793          	addi	a5,a5,-1214 # 80000200 <tohost>
    800056c6:	e398                	sd	a4,0(a5)
    800056c8:	0001                	nop
    800056ca:	a001                	j	800056ca <tohost_exit+0x22>

00000000800056cc <handle_trap>:
    800056cc:	7179                	addi	sp,sp,-48
    800056ce:	f406                	sd	ra,40(sp)
    800056d0:	f022                	sd	s0,32(sp)
    800056d2:	1800                	addi	s0,sp,48
    800056d4:	fea43423          	sd	a0,-24(s0)
    800056d8:	feb43023          	sd	a1,-32(s0)
    800056dc:	fcc43c23          	sd	a2,-40(s0)
    800056e0:	53900513          	li	a0,1337
    800056e4:	fc5ff0ef          	jal	ra,800056a8 <tohost_exit>

00000000800056e8 <exit>:
    800056e8:	1101                	addi	sp,sp,-32
    800056ea:	ec06                	sd	ra,24(sp)
    800056ec:	e822                	sd	s0,16(sp)
    800056ee:	1000                	addi	s0,sp,32
    800056f0:	87aa                	mv	a5,a0
    800056f2:	fef42623          	sw	a5,-20(s0)
    800056f6:	fec42783          	lw	a5,-20(s0)
    800056fa:	853e                	mv	a0,a5
    800056fc:	fadff0ef          	jal	ra,800056a8 <tohost_exit>

0000000080005700 <abort>:
    80005700:	1141                	addi	sp,sp,-16
    80005702:	e406                	sd	ra,8(sp)
    80005704:	e022                	sd	s0,0(sp)
    80005706:	0800                	addi	s0,sp,16
    80005708:	08600513          	li	a0,134
    8000570c:	fddff0ef          	jal	ra,800056e8 <exit>

0000000080005710 <printstr>:
    80005710:	7179                	addi	sp,sp,-48
    80005712:	f406                	sd	ra,40(sp)
    80005714:	f022                	sd	s0,32(sp)
    80005716:	ec26                	sd	s1,24(sp)
    80005718:	1800                	addi	s0,sp,48
    8000571a:	fca43c23          	sd	a0,-40(s0)
    8000571e:	fd843483          	ld	s1,-40(s0)
    80005722:	fd843503          	ld	a0,-40(s0)
    80005726:	2a1000ef          	jal	ra,800061c6 <strlen>
    8000572a:	87aa                	mv	a5,a0
    8000572c:	86be                	mv	a3,a5
    8000572e:	8626                	mv	a2,s1
    80005730:	4585                	li	a1,1
    80005732:	04000513          	li	a0,64
    80005736:	dddff0ef          	jal	ra,80005512 <syscall>
    8000573a:	0001                	nop
    8000573c:	70a2                	ld	ra,40(sp)
    8000573e:	7402                	ld	s0,32(sp)
    80005740:	64e2                	ld	s1,24(sp)
    80005742:	6145                	addi	sp,sp,48
    80005744:	8082                	ret

0000000080005746 <thread_entry>:
    80005746:	1101                	addi	sp,sp,-32
    80005748:	ec22                	sd	s0,24(sp)
    8000574a:	1000                	addi	s0,sp,32
    8000574c:	87aa                	mv	a5,a0
    8000574e:	872e                	mv	a4,a1
    80005750:	fef42623          	sw	a5,-20(s0)
    80005754:	87ba                	mv	a5,a4
    80005756:	fef42423          	sw	a5,-24(s0)
    8000575a:	0001                	nop
    8000575c:	fec42783          	lw	a5,-20(s0)
    80005760:	2781                	sext.w	a5,a5
    80005762:	ffed                	bnez	a5,8000575c <thread_entry+0x16>
    80005764:	0001                	nop
    80005766:	0001                	nop
    80005768:	6462                	ld	s0,24(sp)
    8000576a:	6105                	addi	sp,sp,32
    8000576c:	8082                	ret
    8000576e:	1101                	addi	sp,sp,-32
    80005770:	ec06                	sd	ra,24(sp)
    80005772:	e822                	sd	s0,16(sp)
    80005774:	1000                	addi	s0,sp,32
    80005776:	87aa                	mv	a5,a0
    80005778:	feb43023          	sd	a1,-32(s0)
    8000577c:	fef42623          	sw	a5,-20(s0)
    80005780:	a6818513          	addi	a0,gp,-1432 # 80008d68 <rcon+0x180>
    80005784:	f8dff0ef          	jal	ra,80005710 <printstr>
    80005788:	57fd                	li	a5,-1
    8000578a:	853e                	mv	a0,a5
    8000578c:	60e2                	ld	ra,24(sp)
    8000578e:	6442                	ld	s0,16(sp)
    80005790:	6105                	addi	sp,sp,32
    80005792:	8082                	ret

0000000080005794 <init_tls>:
    80005794:	1101                	addi	sp,sp,-32
    80005796:	ec06                	sd	ra,24(sp)
    80005798:	e822                	sd	s0,16(sp)
    8000579a:	1000                	addi	s0,sp,32
    8000579c:	c2818713          	addi	a4,gp,-984 # 80008f28 <_tdata_begin>
    800057a0:	c2818793          	addi	a5,gp,-984 # 80008f28 <_tdata_begin>
    800057a4:	40f707b3          	sub	a5,a4,a5
    800057a8:	fef43423          	sd	a5,-24(s0)
    800057ac:	8792                	mv	a5,tp
    800057ae:	fe843603          	ld	a2,-24(s0)
    800057b2:	c2818593          	addi	a1,gp,-984 # 80008f28 <_tdata_begin>
    800057b6:	853e                	mv	a0,a5
    800057b8:	089000ef          	jal	ra,80006040 <memcpy>
    800057bc:	cc418713          	addi	a4,gp,-828 # 80008fc4 <_tbss_end>
    800057c0:	c2818793          	addi	a5,gp,-984 # 80008f28 <_tdata_begin>
    800057c4:	40f707b3          	sub	a5,a4,a5
    800057c8:	fef43023          	sd	a5,-32(s0)
    800057cc:	8712                	mv	a4,tp
    800057ce:	fe843783          	ld	a5,-24(s0)
    800057d2:	97ba                	add	a5,a5,a4
    800057d4:	fe043603          	ld	a2,-32(s0)
    800057d8:	4581                	li	a1,0
    800057da:	853e                	mv	a0,a5
    800057dc:	11d000ef          	jal	ra,800060f8 <memset>
    800057e0:	0001                	nop
    800057e2:	60e2                	ld	ra,24(sp)
    800057e4:	6442                	ld	s0,16(sp)
    800057e6:	6105                	addi	sp,sp,32
    800057e8:	8082                	ret

00000000800057ea <_init>:
    800057ea:	7171                	addi	sp,sp,-176
    800057ec:	f506                	sd	ra,168(sp)
    800057ee:	f122                	sd	s0,160(sp)
    800057f0:	ed26                	sd	s1,152(sp)
    800057f2:	1900                	addi	s0,sp,176
    800057f4:	87aa                	mv	a5,a0
    800057f6:	872e                	mv	a4,a1
    800057f8:	f4f42e23          	sw	a5,-164(s0)
    800057fc:	87ba                	mv	a5,a4
    800057fe:	f4f42c23          	sw	a5,-168(s0)
    80005802:	fe040793          	addi	a5,s0,-32
    80005806:	f4f43823          	sd	a5,-176(s0)
    8000580a:	f5043783          	ld	a5,-176(s0)
    8000580e:	f8078793          	addi	a5,a5,-128
    80005812:	03f78793          	addi	a5,a5,63
    80005816:	8399                	srli	a5,a5,0x6
    80005818:	00679493          	slli	s1,a5,0x6
    8000581c:	f79ff0ef          	jal	ra,80005794 <init_tls>
    80005820:	f5842703          	lw	a4,-168(s0)
    80005824:	f5c42783          	lw	a5,-164(s0)
    80005828:	85ba                	mv	a1,a4
    8000582a:	853e                	mv	a0,a5
    8000582c:	f1bff0ef          	jal	ra,80005746 <thread_entry>
    80005830:	4581                	li	a1,0
    80005832:	4501                	li	a0,0
    80005834:	f5eff0ef          	jal	ra,80004f92 <main>
    80005838:	87aa                	mv	a5,a0
    8000583a:	fcf42823          	sw	a5,-48(s0)
    8000583e:	fc943c23          	sd	s1,-40(s0)
    80005842:	fc042a23          	sw	zero,-44(s0)
    80005846:	a891                	j	8000589a <_init+0xb0>
    80005848:	c0018713          	addi	a4,gp,-1024 # 80008f00 <counters>
    8000584c:	fd442783          	lw	a5,-44(s0)
    80005850:	078e                	slli	a5,a5,0x3
    80005852:	97ba                	add	a5,a5,a4
    80005854:	639c                	ld	a5,0(a5)
    80005856:	cf8d                	beqz	a5,80005890 <_init+0xa6>
    80005858:	c1018713          	addi	a4,gp,-1008 # 80008f10 <counter_names>
    8000585c:	fd442783          	lw	a5,-44(s0)
    80005860:	078e                	slli	a5,a5,0x3
    80005862:	97ba                	add	a5,a5,a4
    80005864:	6390                	ld	a2,0(a5)
    80005866:	c0018713          	addi	a4,gp,-1024 # 80008f00 <counters>
    8000586a:	fd442783          	lw	a5,-44(s0)
    8000586e:	078e                	slli	a5,a5,0x3
    80005870:	97ba                	add	a5,a5,a4
    80005872:	639c                	ld	a5,0(a5)
    80005874:	86be                	mv	a3,a5
    80005876:	a8018593          	addi	a1,gp,-1408 # 80008d80 <rcon+0x198>
    8000587a:	fd843503          	ld	a0,-40(s0)
    8000587e:	74a000ef          	jal	ra,80005fc8 <sprintf>
    80005882:	87aa                	mv	a5,a0
    80005884:	873e                	mv	a4,a5
    80005886:	fd843783          	ld	a5,-40(s0)
    8000588a:	97ba                	add	a5,a5,a4
    8000588c:	fcf43c23          	sd	a5,-40(s0)
    80005890:	fd442783          	lw	a5,-44(s0)
    80005894:	2785                	addiw	a5,a5,1
    80005896:	fcf42a23          	sw	a5,-44(s0)
    8000589a:	fd442783          	lw	a5,-44(s0)
    8000589e:	0007871b          	sext.w	a4,a5
    800058a2:	4785                	li	a5,1
    800058a4:	fae7d2e3          	ble	a4,a5,80005848 <_init+0x5e>
    800058a8:	fd843783          	ld	a5,-40(s0)
    800058ac:	00f48563          	beq	s1,a5,800058b6 <_init+0xcc>
    800058b0:	8526                	mv	a0,s1
    800058b2:	e5fff0ef          	jal	ra,80005710 <printstr>
    800058b6:	fd042783          	lw	a5,-48(s0)
    800058ba:	853e                	mv	a0,a5
    800058bc:	e2dff0ef          	jal	ra,800056e8 <exit>

00000000800058c0 <puts>:
    800058c0:	7179                	addi	sp,sp,-48
    800058c2:	f406                	sd	ra,40(sp)
    800058c4:	f022                	sd	s0,32(sp)
    800058c6:	1800                	addi	s0,sp,48
    800058c8:	fca43c23          	sd	a0,-40(s0)
    800058cc:	fd843783          	ld	a5,-40(s0)
    800058d0:	fef43423          	sd	a5,-24(s0)
    800058d4:	a829                	j	800058ee <puts+0x2e>
    800058d6:	fe843783          	ld	a5,-24(s0)
    800058da:	00178713          	addi	a4,a5,1
    800058de:	fee43423          	sd	a4,-24(s0)
    800058e2:	0007c783          	lbu	a5,0(a5)
    800058e6:	2781                	sext.w	a5,a5
    800058e8:	853e                	mv	a0,a5
    800058ea:	020000ef          	jal	ra,8000590a <putchar>
    800058ee:	fe843783          	ld	a5,-24(s0)
    800058f2:	0007c783          	lbu	a5,0(a5)
    800058f6:	f3e5                	bnez	a5,800058d6 <puts+0x16>
    800058f8:	4529                	li	a0,10
    800058fa:	010000ef          	jal	ra,8000590a <putchar>
    800058fe:	4781                	li	a5,0
    80005900:	853e                	mv	a0,a5
    80005902:	70a2                	ld	ra,40(sp)
    80005904:	7402                	ld	s0,32(sp)
    80005906:	6145                	addi	sp,sp,48
    80005908:	8082                	ret

000000008000590a <putchar>:
    8000590a:	1101                	addi	sp,sp,-32
    8000590c:	ec06                	sd	ra,24(sp)
    8000590e:	e822                	sd	s0,16(sp)
    80005910:	1000                	addi	s0,sp,32
    80005912:	87aa                	mv	a5,a0
    80005914:	fef42623          	sw	a5,-20(s0)
    80005918:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    8000591c:	0017871b          	addiw	a4,a5,1
    80005920:	0007069b          	sext.w	a3,a4
    80005924:	08d22023          	sw	a3,128(tp) # 80 <buflen.2>
    80005928:	fec42703          	lw	a4,-20(s0)
    8000592c:	0ff77713          	andi	a4,a4,255
    80005930:	04020693          	addi	a3,tp,64 # 40 <buf.3>
    80005934:	97b6                	add	a5,a5,a3
    80005936:	00e78023          	sb	a4,0(a5)
    8000593a:	fec42783          	lw	a5,-20(s0)
    8000593e:	0007871b          	sext.w	a4,a5
    80005942:	47a9                	li	a5,10
    80005944:	00f70963          	beq	a4,a5,80005956 <putchar+0x4c>
    80005948:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    8000594c:	873e                	mv	a4,a5
    8000594e:	04000793          	li	a5,64
    80005952:	00f71f63          	bne	a4,a5,80005970 <putchar+0x66>
    80005956:	04020713          	addi	a4,tp,64 # 40 <buf.3>
    8000595a:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    8000595e:	86be                	mv	a3,a5
    80005960:	863a                	mv	a2,a4
    80005962:	4585                	li	a1,1
    80005964:	04000513          	li	a0,64
    80005968:	babff0ef          	jal	ra,80005512 <syscall>
    8000596c:	08022023          	sw	zero,128(tp) # 80 <buflen.2>
    80005970:	4781                	li	a5,0
    80005972:	853e                	mv	a0,a5
    80005974:	60e2                	ld	ra,24(sp)
    80005976:	6442                	ld	s0,16(sp)
    80005978:	6105                	addi	sp,sp,32
    8000597a:	8082                	ret

000000008000597c <printhex>:
    8000597c:	7139                	addi	sp,sp,-64
    8000597e:	fc06                	sd	ra,56(sp)
    80005980:	f822                	sd	s0,48(sp)
    80005982:	0080                	addi	s0,sp,64
    80005984:	fca43423          	sd	a0,-56(s0)
    80005988:	fe042623          	sw	zero,-20(s0)
    8000598c:	a899                	j	800059e2 <printhex+0x66>
    8000598e:	fc843783          	ld	a5,-56(s0)
    80005992:	0ff7f793          	andi	a5,a5,255
    80005996:	8bbd                	andi	a5,a5,15
    80005998:	0ff7f713          	andi	a4,a5,255
    8000599c:	fc843783          	ld	a5,-56(s0)
    800059a0:	00f7f693          	andi	a3,a5,15
    800059a4:	47a5                	li	a5,9
    800059a6:	00d7e563          	bltu	a5,a3,800059b0 <printhex+0x34>
    800059aa:	03000793          	li	a5,48
    800059ae:	a019                	j	800059b4 <printhex+0x38>
    800059b0:	05700793          	li	a5,87
    800059b4:	46bd                	li	a3,15
    800059b6:	fec42603          	lw	a2,-20(s0)
    800059ba:	9e91                	subw	a3,a3,a2
    800059bc:	2681                	sext.w	a3,a3
    800059be:	9fb9                	addw	a5,a5,a4
    800059c0:	0ff7f713          	andi	a4,a5,255
    800059c4:	ff068793          	addi	a5,a3,-16
    800059c8:	97a2                	add	a5,a5,s0
    800059ca:	fee78423          	sb	a4,-24(a5)
    800059ce:	fc843783          	ld	a5,-56(s0)
    800059d2:	8391                	srli	a5,a5,0x4
    800059d4:	fcf43423          	sd	a5,-56(s0)
    800059d8:	fec42783          	lw	a5,-20(s0)
    800059dc:	2785                	addiw	a5,a5,1
    800059de:	fef42623          	sw	a5,-20(s0)
    800059e2:	fec42783          	lw	a5,-20(s0)
    800059e6:	0007871b          	sext.w	a4,a5
    800059ea:	47bd                	li	a5,15
    800059ec:	fae7d1e3          	ble	a4,a5,8000598e <printhex+0x12>
    800059f0:	fe040423          	sb	zero,-24(s0)
    800059f4:	fd840793          	addi	a5,s0,-40
    800059f8:	853e                	mv	a0,a5
    800059fa:	d17ff0ef          	jal	ra,80005710 <printstr>
    800059fe:	0001                	nop
    80005a00:	70e2                	ld	ra,56(sp)
    80005a02:	7442                	ld	s0,48(sp)
    80005a04:	6121                	addi	sp,sp,64
    80005a06:	8082                	ret

0000000080005a08 <printnum>:
    80005a08:	714d                	addi	sp,sp,-336
    80005a0a:	e686                	sd	ra,328(sp)
    80005a0c:	e2a2                	sd	s0,320(sp)
    80005a0e:	0a80                	addi	s0,sp,336
    80005a10:	eca43c23          	sd	a0,-296(s0)
    80005a14:	ecb43823          	sd	a1,-304(s0)
    80005a18:	ecc43423          	sd	a2,-312(s0)
    80005a1c:	8636                	mv	a2,a3
    80005a1e:	86ba                	mv	a3,a4
    80005a20:	873e                	mv	a4,a5
    80005a22:	87b2                	mv	a5,a2
    80005a24:	ecf42223          	sw	a5,-316(s0)
    80005a28:	87b6                	mv	a5,a3
    80005a2a:	ecf42023          	sw	a5,-320(s0)
    80005a2e:	87ba                	mv	a5,a4
    80005a30:	eaf42e23          	sw	a5,-324(s0)
    80005a34:	fe042623          	sw	zero,-20(s0)
    80005a38:	ec446783          	lwu	a5,-316(s0)
    80005a3c:	ec843703          	ld	a4,-312(s0)
    80005a40:	02f776b3          	remu	a3,a4,a5
    80005a44:	fec42783          	lw	a5,-20(s0)
    80005a48:	0017871b          	addiw	a4,a5,1
    80005a4c:	fee42623          	sw	a4,-20(s0)
    80005a50:	0006871b          	sext.w	a4,a3
    80005a54:	078a                	slli	a5,a5,0x2
    80005a56:	17c1                	addi	a5,a5,-16
    80005a58:	97a2                	add	a5,a5,s0
    80005a5a:	eee7ac23          	sw	a4,-264(a5)
    80005a5e:	ec446783          	lwu	a5,-316(s0)
    80005a62:	ec843703          	ld	a4,-312(s0)
    80005a66:	00f76b63          	bltu	a4,a5,80005a7c <printnum+0x74>
    80005a6a:	ec446783          	lwu	a5,-316(s0)
    80005a6e:	ec843703          	ld	a4,-312(s0)
    80005a72:	02f757b3          	divu	a5,a4,a5
    80005a76:	ecf43423          	sd	a5,-312(s0)
    80005a7a:	bf7d                	j	80005a38 <printnum+0x30>
    80005a7c:	0001                	nop
    80005a7e:	a809                	j	80005a90 <printnum+0x88>
    80005a80:	ebc42703          	lw	a4,-324(s0)
    80005a84:	ed843783          	ld	a5,-296(s0)
    80005a88:	ed043583          	ld	a1,-304(s0)
    80005a8c:	853a                	mv	a0,a4
    80005a8e:	9782                	jalr	a5
    80005a90:	ec042783          	lw	a5,-320(s0)
    80005a94:	fff7871b          	addiw	a4,a5,-1
    80005a98:	ece42023          	sw	a4,-320(s0)
    80005a9c:	fec42703          	lw	a4,-20(s0)
    80005aa0:	2701                	sext.w	a4,a4
    80005aa2:	fcf74fe3          	blt	a4,a5,80005a80 <printnum+0x78>
    80005aa6:	a091                	j	80005aea <printnum+0xe2>
    80005aa8:	fec42783          	lw	a5,-20(s0)
    80005aac:	078a                	slli	a5,a5,0x2
    80005aae:	17c1                	addi	a5,a5,-16
    80005ab0:	97a2                	add	a5,a5,s0
    80005ab2:	ef87a703          	lw	a4,-264(a5)
    80005ab6:	fec42783          	lw	a5,-20(s0)
    80005aba:	078a                	slli	a5,a5,0x2
    80005abc:	17c1                	addi	a5,a5,-16
    80005abe:	97a2                	add	a5,a5,s0
    80005ac0:	ef87a783          	lw	a5,-264(a5)
    80005ac4:	86be                	mv	a3,a5
    80005ac6:	47a5                	li	a5,9
    80005ac8:	00d7f563          	bleu	a3,a5,80005ad2 <printnum+0xca>
    80005acc:	05700793          	li	a5,87
    80005ad0:	a019                	j	80005ad6 <printnum+0xce>
    80005ad2:	03000793          	li	a5,48
    80005ad6:	9fb9                	addw	a5,a5,a4
    80005ad8:	2781                	sext.w	a5,a5
    80005ada:	0007871b          	sext.w	a4,a5
    80005ade:	ed843783          	ld	a5,-296(s0)
    80005ae2:	ed043583          	ld	a1,-304(s0)
    80005ae6:	853a                	mv	a0,a4
    80005ae8:	9782                	jalr	a5
    80005aea:	fec42783          	lw	a5,-20(s0)
    80005aee:	fff7871b          	addiw	a4,a5,-1
    80005af2:	fee42623          	sw	a4,-20(s0)
    80005af6:	faf049e3          	bgtz	a5,80005aa8 <printnum+0xa0>
    80005afa:	0001                	nop
    80005afc:	0001                	nop
    80005afe:	60b6                	ld	ra,328(sp)
    80005b00:	6416                	ld	s0,320(sp)
    80005b02:	6171                	addi	sp,sp,336
    80005b04:	8082                	ret

0000000080005b06 <getuint>:
    80005b06:	1101                	addi	sp,sp,-32
    80005b08:	ec22                	sd	s0,24(sp)
    80005b0a:	1000                	addi	s0,sp,32
    80005b0c:	fea43423          	sd	a0,-24(s0)
    80005b10:	87ae                	mv	a5,a1
    80005b12:	fef42223          	sw	a5,-28(s0)
    80005b16:	fe442783          	lw	a5,-28(s0)
    80005b1a:	0007871b          	sext.w	a4,a5
    80005b1e:	4785                	li	a5,1
    80005b20:	00e7dc63          	ble	a4,a5,80005b38 <getuint+0x32>
    80005b24:	fe843783          	ld	a5,-24(s0)
    80005b28:	639c                	ld	a5,0(a5)
    80005b2a:	00878693          	addi	a3,a5,8
    80005b2e:	fe843703          	ld	a4,-24(s0)
    80005b32:	e314                	sd	a3,0(a4)
    80005b34:	639c                	ld	a5,0(a5)
    80005b36:	a815                	j	80005b6a <getuint+0x64>
    80005b38:	fe442783          	lw	a5,-28(s0)
    80005b3c:	2781                	sext.w	a5,a5
    80005b3e:	cb99                	beqz	a5,80005b54 <getuint+0x4e>
    80005b40:	fe843783          	ld	a5,-24(s0)
    80005b44:	639c                	ld	a5,0(a5)
    80005b46:	00878693          	addi	a3,a5,8
    80005b4a:	fe843703          	ld	a4,-24(s0)
    80005b4e:	e314                	sd	a3,0(a4)
    80005b50:	639c                	ld	a5,0(a5)
    80005b52:	a821                	j	80005b6a <getuint+0x64>
    80005b54:	fe843783          	ld	a5,-24(s0)
    80005b58:	639c                	ld	a5,0(a5)
    80005b5a:	00878693          	addi	a3,a5,8
    80005b5e:	fe843703          	ld	a4,-24(s0)
    80005b62:	e314                	sd	a3,0(a4)
    80005b64:	439c                	lw	a5,0(a5)
    80005b66:	1782                	slli	a5,a5,0x20
    80005b68:	9381                	srli	a5,a5,0x20
    80005b6a:	853e                	mv	a0,a5
    80005b6c:	6462                	ld	s0,24(sp)
    80005b6e:	6105                	addi	sp,sp,32
    80005b70:	8082                	ret

0000000080005b72 <getint>:
    80005b72:	1101                	addi	sp,sp,-32
    80005b74:	ec22                	sd	s0,24(sp)
    80005b76:	1000                	addi	s0,sp,32
    80005b78:	fea43423          	sd	a0,-24(s0)
    80005b7c:	87ae                	mv	a5,a1
    80005b7e:	fef42223          	sw	a5,-28(s0)
    80005b82:	fe442783          	lw	a5,-28(s0)
    80005b86:	0007871b          	sext.w	a4,a5
    80005b8a:	4785                	li	a5,1
    80005b8c:	00e7dc63          	ble	a4,a5,80005ba4 <getint+0x32>
    80005b90:	fe843783          	ld	a5,-24(s0)
    80005b94:	639c                	ld	a5,0(a5)
    80005b96:	00878693          	addi	a3,a5,8
    80005b9a:	fe843703          	ld	a4,-24(s0)
    80005b9e:	e314                	sd	a3,0(a4)
    80005ba0:	639c                	ld	a5,0(a5)
    80005ba2:	a805                	j	80005bd2 <getint+0x60>
    80005ba4:	fe442783          	lw	a5,-28(s0)
    80005ba8:	2781                	sext.w	a5,a5
    80005baa:	cb99                	beqz	a5,80005bc0 <getint+0x4e>
    80005bac:	fe843783          	ld	a5,-24(s0)
    80005bb0:	639c                	ld	a5,0(a5)
    80005bb2:	00878693          	addi	a3,a5,8
    80005bb6:	fe843703          	ld	a4,-24(s0)
    80005bba:	e314                	sd	a3,0(a4)
    80005bbc:	639c                	ld	a5,0(a5)
    80005bbe:	a811                	j	80005bd2 <getint+0x60>
    80005bc0:	fe843783          	ld	a5,-24(s0)
    80005bc4:	639c                	ld	a5,0(a5)
    80005bc6:	00878693          	addi	a3,a5,8
    80005bca:	fe843703          	ld	a4,-24(s0)
    80005bce:	e314                	sd	a3,0(a4)
    80005bd0:	439c                	lw	a5,0(a5)
    80005bd2:	853e                	mv	a0,a5
    80005bd4:	6462                	ld	s0,24(sp)
    80005bd6:	6105                	addi	sp,sp,32
    80005bd8:	8082                	ret

0000000080005bda <vprintfmt>:
    80005bda:	7159                	addi	sp,sp,-112
    80005bdc:	f486                	sd	ra,104(sp)
    80005bde:	f0a2                	sd	s0,96(sp)
    80005be0:	eca6                	sd	s1,88(sp)
    80005be2:	e8ca                	sd	s2,80(sp)
    80005be4:	1880                	addi	s0,sp,112
    80005be6:	faa43423          	sd	a0,-88(s0)
    80005bea:	fab43023          	sd	a1,-96(s0)
    80005bee:	f8c43c23          	sd	a2,-104(s0)
    80005bf2:	f8d43823          	sd	a3,-112(s0)
    80005bf6:	a831                	j	80005c12 <vprintfmt+0x38>
    80005bf8:	32048563          	beqz	s1,80005f22 <vprintfmt+0x348>
    80005bfc:	f9843783          	ld	a5,-104(s0)
    80005c00:	0785                	addi	a5,a5,1
    80005c02:	f8f43c23          	sd	a5,-104(s0)
    80005c06:	fa843783          	ld	a5,-88(s0)
    80005c0a:	fa043583          	ld	a1,-96(s0)
    80005c0e:	8526                	mv	a0,s1
    80005c10:	9782                	jalr	a5
    80005c12:	f9843783          	ld	a5,-104(s0)
    80005c16:	0007c783          	lbu	a5,0(a5)
    80005c1a:	0007849b          	sext.w	s1,a5
    80005c1e:	8726                	mv	a4,s1
    80005c20:	02500793          	li	a5,37
    80005c24:	fcf71ae3          	bne	a4,a5,80005bf8 <vprintfmt+0x1e>
    80005c28:	f9843783          	ld	a5,-104(s0)
    80005c2c:	0785                	addi	a5,a5,1
    80005c2e:	f8f43c23          	sd	a5,-104(s0)
    80005c32:	f9843783          	ld	a5,-104(s0)
    80005c36:	faf43c23          	sd	a5,-72(s0)
    80005c3a:	02000793          	li	a5,32
    80005c3e:	fcf403a3          	sb	a5,-57(s0)
    80005c42:	57fd                	li	a5,-1
    80005c44:	fcf42623          	sw	a5,-52(s0)
    80005c48:	57fd                	li	a5,-1
    80005c4a:	fcf42423          	sw	a5,-56(s0)
    80005c4e:	fc042823          	sw	zero,-48(s0)
    80005c52:	fa042a23          	sw	zero,-76(s0)
    80005c56:	f9843783          	ld	a5,-104(s0)
    80005c5a:	00178713          	addi	a4,a5,1
    80005c5e:	f8e43c23          	sd	a4,-104(s0)
    80005c62:	0007c783          	lbu	a5,0(a5)
    80005c66:	0007849b          	sext.w	s1,a5
    80005c6a:	fdd4869b          	addiw	a3,s1,-35
    80005c6e:	0006871b          	sext.w	a4,a3
    80005c72:	05500793          	li	a5,85
    80005c76:	28e7e963          	bltu	a5,a4,80005f08 <vprintfmt+0x32e>
    80005c7a:	02069793          	slli	a5,a3,0x20
    80005c7e:	9381                	srli	a5,a5,0x20
    80005c80:	00279713          	slli	a4,a5,0x2
    80005c84:	a9818793          	addi	a5,gp,-1384 # 80008d98 <rcon+0x1b0>
    80005c88:	97ba                	add	a5,a5,a4
    80005c8a:	439c                	lw	a5,0(a5)
    80005c8c:	0007871b          	sext.w	a4,a5
    80005c90:	a9818793          	addi	a5,gp,-1384 # 80008d98 <rcon+0x1b0>
    80005c94:	97ba                	add	a5,a5,a4
    80005c96:	8782                	jr	a5
    80005c98:	02d00793          	li	a5,45
    80005c9c:	fcf403a3          	sb	a5,-57(s0)
    80005ca0:	bf5d                	j	80005c56 <vprintfmt+0x7c>
    80005ca2:	03000793          	li	a5,48
    80005ca6:	fcf403a3          	sb	a5,-57(s0)
    80005caa:	b775                	j	80005c56 <vprintfmt+0x7c>
    80005cac:	fc042423          	sw	zero,-56(s0)
    80005cb0:	fc842783          	lw	a5,-56(s0)
    80005cb4:	873e                	mv	a4,a5
    80005cb6:	87ba                	mv	a5,a4
    80005cb8:	0027979b          	slliw	a5,a5,0x2
    80005cbc:	9fb9                	addw	a5,a5,a4
    80005cbe:	0017979b          	slliw	a5,a5,0x1
    80005cc2:	2781                	sext.w	a5,a5
    80005cc4:	9fa5                	addw	a5,a5,s1
    80005cc6:	2781                	sext.w	a5,a5
    80005cc8:	fd07879b          	addiw	a5,a5,-48
    80005ccc:	fcf42423          	sw	a5,-56(s0)
    80005cd0:	f9843783          	ld	a5,-104(s0)
    80005cd4:	0007c783          	lbu	a5,0(a5)
    80005cd8:	0007849b          	sext.w	s1,a5
    80005cdc:	8726                	mv	a4,s1
    80005cde:	02f00793          	li	a5,47
    80005ce2:	04e7d363          	ble	a4,a5,80005d28 <vprintfmt+0x14e>
    80005ce6:	8726                	mv	a4,s1
    80005ce8:	03900793          	li	a5,57
    80005cec:	02e7ce63          	blt	a5,a4,80005d28 <vprintfmt+0x14e>
    80005cf0:	f9843783          	ld	a5,-104(s0)
    80005cf4:	0785                	addi	a5,a5,1
    80005cf6:	f8f43c23          	sd	a5,-104(s0)
    80005cfa:	bf5d                	j	80005cb0 <vprintfmt+0xd6>
    80005cfc:	f9043783          	ld	a5,-112(s0)
    80005d00:	00878713          	addi	a4,a5,8
    80005d04:	f8e43823          	sd	a4,-112(s0)
    80005d08:	439c                	lw	a5,0(a5)
    80005d0a:	fcf42423          	sw	a5,-56(s0)
    80005d0e:	a831                	j	80005d2a <vprintfmt+0x150>
    80005d10:	fcc42783          	lw	a5,-52(s0)
    80005d14:	2781                	sext.w	a5,a5
    80005d16:	f407d0e3          	bgez	a5,80005c56 <vprintfmt+0x7c>
    80005d1a:	fc042623          	sw	zero,-52(s0)
    80005d1e:	bf25                	j	80005c56 <vprintfmt+0x7c>
    80005d20:	4785                	li	a5,1
    80005d22:	faf42a23          	sw	a5,-76(s0)
    80005d26:	bf05                	j	80005c56 <vprintfmt+0x7c>
    80005d28:	0001                	nop
    80005d2a:	fcc42783          	lw	a5,-52(s0)
    80005d2e:	2781                	sext.w	a5,a5
    80005d30:	f207d3e3          	bgez	a5,80005c56 <vprintfmt+0x7c>
    80005d34:	fc842783          	lw	a5,-56(s0)
    80005d38:	fcf42623          	sw	a5,-52(s0)
    80005d3c:	57fd                	li	a5,-1
    80005d3e:	fcf42423          	sw	a5,-56(s0)
    80005d42:	bf11                	j	80005c56 <vprintfmt+0x7c>
    80005d44:	fd042783          	lw	a5,-48(s0)
    80005d48:	2785                	addiw	a5,a5,1
    80005d4a:	fcf42823          	sw	a5,-48(s0)
    80005d4e:	b721                	j	80005c56 <vprintfmt+0x7c>
    80005d50:	f9043783          	ld	a5,-112(s0)
    80005d54:	00878713          	addi	a4,a5,8
    80005d58:	f8e43823          	sd	a4,-112(s0)
    80005d5c:	4398                	lw	a4,0(a5)
    80005d5e:	fa843783          	ld	a5,-88(s0)
    80005d62:	fa043583          	ld	a1,-96(s0)
    80005d66:	853a                	mv	a0,a4
    80005d68:	9782                	jalr	a5
    80005d6a:	aa5d                	j	80005f20 <vprintfmt+0x346>
    80005d6c:	f9043783          	ld	a5,-112(s0)
    80005d70:	00878713          	addi	a4,a5,8
    80005d74:	f8e43823          	sd	a4,-112(s0)
    80005d78:	0007b903          	ld	s2,0(a5)
    80005d7c:	00091463          	bnez	s2,80005d84 <vprintfmt+0x1aa>
    80005d80:	a9018913          	addi	s2,gp,-1392 # 80008d90 <rcon+0x1a8>
    80005d84:	fcc42783          	lw	a5,-52(s0)
    80005d88:	2781                	sext.w	a5,a5
    80005d8a:	06f05b63          	blez	a5,80005e00 <vprintfmt+0x226>
    80005d8e:	fc744783          	lbu	a5,-57(s0)
    80005d92:	0ff7f713          	andi	a4,a5,255
    80005d96:	02d00793          	li	a5,45
    80005d9a:	06f70363          	beq	a4,a5,80005e00 <vprintfmt+0x226>
    80005d9e:	fcc42483          	lw	s1,-52(s0)
    80005da2:	fc842783          	lw	a5,-56(s0)
    80005da6:	85be                	mv	a1,a5
    80005da8:	854a                	mv	a0,s2
    80005daa:	458000ef          	jal	ra,80006202 <strnlen>
    80005dae:	87aa                	mv	a5,a0
    80005db0:	2781                	sext.w	a5,a5
    80005db2:	40f487bb          	subw	a5,s1,a5
    80005db6:	2781                	sext.w	a5,a5
    80005db8:	fcf42623          	sw	a5,-52(s0)
    80005dbc:	a005                	j	80005ddc <vprintfmt+0x202>
    80005dbe:	fc744783          	lbu	a5,-57(s0)
    80005dc2:	0007871b          	sext.w	a4,a5
    80005dc6:	fa843783          	ld	a5,-88(s0)
    80005dca:	fa043583          	ld	a1,-96(s0)
    80005dce:	853a                	mv	a0,a4
    80005dd0:	9782                	jalr	a5
    80005dd2:	fcc42783          	lw	a5,-52(s0)
    80005dd6:	37fd                	addiw	a5,a5,-1
    80005dd8:	fcf42623          	sw	a5,-52(s0)
    80005ddc:	fcc42783          	lw	a5,-52(s0)
    80005de0:	2781                	sext.w	a5,a5
    80005de2:	fcf04ee3          	bgtz	a5,80005dbe <vprintfmt+0x1e4>
    80005de6:	a829                	j	80005e00 <vprintfmt+0x226>
    80005de8:	fa843783          	ld	a5,-88(s0)
    80005dec:	fa043583          	ld	a1,-96(s0)
    80005df0:	8526                	mv	a0,s1
    80005df2:	9782                	jalr	a5
    80005df4:	0905                	addi	s2,s2,1
    80005df6:	fcc42783          	lw	a5,-52(s0)
    80005dfa:	37fd                	addiw	a5,a5,-1
    80005dfc:	fcf42623          	sw	a5,-52(s0)
    80005e00:	00094783          	lbu	a5,0(s2)
    80005e04:	0007849b          	sext.w	s1,a5
    80005e08:	cc8d                	beqz	s1,80005e42 <vprintfmt+0x268>
    80005e0a:	fc842783          	lw	a5,-56(s0)
    80005e0e:	2781                	sext.w	a5,a5
    80005e10:	fc07cce3          	bltz	a5,80005de8 <vprintfmt+0x20e>
    80005e14:	fc842783          	lw	a5,-56(s0)
    80005e18:	37fd                	addiw	a5,a5,-1
    80005e1a:	fcf42423          	sw	a5,-56(s0)
    80005e1e:	fc842783          	lw	a5,-56(s0)
    80005e22:	2781                	sext.w	a5,a5
    80005e24:	fc07d2e3          	bgez	a5,80005de8 <vprintfmt+0x20e>
    80005e28:	a829                	j	80005e42 <vprintfmt+0x268>
    80005e2a:	fa843783          	ld	a5,-88(s0)
    80005e2e:	fa043583          	ld	a1,-96(s0)
    80005e32:	02000513          	li	a0,32
    80005e36:	9782                	jalr	a5
    80005e38:	fcc42783          	lw	a5,-52(s0)
    80005e3c:	37fd                	addiw	a5,a5,-1
    80005e3e:	fcf42623          	sw	a5,-52(s0)
    80005e42:	fcc42783          	lw	a5,-52(s0)
    80005e46:	2781                	sext.w	a5,a5
    80005e48:	fef041e3          	bgtz	a5,80005e2a <vprintfmt+0x250>
    80005e4c:	a8d1                	j	80005f20 <vprintfmt+0x346>
    80005e4e:	fd042703          	lw	a4,-48(s0)
    80005e52:	f9040793          	addi	a5,s0,-112
    80005e56:	85ba                	mv	a1,a4
    80005e58:	853e                	mv	a0,a5
    80005e5a:	d19ff0ef          	jal	ra,80005b72 <getint>
    80005e5e:	87aa                	mv	a5,a0
    80005e60:	fcf43c23          	sd	a5,-40(s0)
    80005e64:	fd843783          	ld	a5,-40(s0)
    80005e68:	0007df63          	bgez	a5,80005e86 <vprintfmt+0x2ac>
    80005e6c:	fa843783          	ld	a5,-88(s0)
    80005e70:	fa043583          	ld	a1,-96(s0)
    80005e74:	02d00513          	li	a0,45
    80005e78:	9782                	jalr	a5
    80005e7a:	fd843783          	ld	a5,-40(s0)
    80005e7e:	40f007b3          	neg	a5,a5
    80005e82:	fcf43c23          	sd	a5,-40(s0)
    80005e86:	47a9                	li	a5,10
    80005e88:	fcf42a23          	sw	a5,-44(s0)
    80005e8c:	a0b9                	j	80005eda <vprintfmt+0x300>
    80005e8e:	47a9                	li	a5,10
    80005e90:	fcf42a23          	sw	a5,-44(s0)
    80005e94:	a80d                	j	80005ec6 <vprintfmt+0x2ec>
    80005e96:	47a1                	li	a5,8
    80005e98:	fcf42a23          	sw	a5,-44(s0)
    80005e9c:	a02d                	j	80005ec6 <vprintfmt+0x2ec>
    80005e9e:	4785                	li	a5,1
    80005ea0:	fcf42823          	sw	a5,-48(s0)
    80005ea4:	fa843783          	ld	a5,-88(s0)
    80005ea8:	fa043583          	ld	a1,-96(s0)
    80005eac:	03000513          	li	a0,48
    80005eb0:	9782                	jalr	a5
    80005eb2:	fa843783          	ld	a5,-88(s0)
    80005eb6:	fa043583          	ld	a1,-96(s0)
    80005eba:	07800513          	li	a0,120
    80005ebe:	9782                	jalr	a5
    80005ec0:	47c1                	li	a5,16
    80005ec2:	fcf42a23          	sw	a5,-44(s0)
    80005ec6:	fd042703          	lw	a4,-48(s0)
    80005eca:	f9040793          	addi	a5,s0,-112
    80005ece:	85ba                	mv	a1,a4
    80005ed0:	853e                	mv	a0,a5
    80005ed2:	c35ff0ef          	jal	ra,80005b06 <getuint>
    80005ed6:	fca43c23          	sd	a0,-40(s0)
    80005eda:	fd442683          	lw	a3,-44(s0)
    80005ede:	fc744783          	lbu	a5,-57(s0)
    80005ee2:	2781                	sext.w	a5,a5
    80005ee4:	fcc42703          	lw	a4,-52(s0)
    80005ee8:	fd843603          	ld	a2,-40(s0)
    80005eec:	fa043583          	ld	a1,-96(s0)
    80005ef0:	fa843503          	ld	a0,-88(s0)
    80005ef4:	b15ff0ef          	jal	ra,80005a08 <printnum>
    80005ef8:	a025                	j	80005f20 <vprintfmt+0x346>
    80005efa:	fa843783          	ld	a5,-88(s0)
    80005efe:	fa043583          	ld	a1,-96(s0)
    80005f02:	8526                	mv	a0,s1
    80005f04:	9782                	jalr	a5
    80005f06:	a829                	j	80005f20 <vprintfmt+0x346>
    80005f08:	fa843783          	ld	a5,-88(s0)
    80005f0c:	fa043583          	ld	a1,-96(s0)
    80005f10:	02500513          	li	a0,37
    80005f14:	9782                	jalr	a5
    80005f16:	fb843783          	ld	a5,-72(s0)
    80005f1a:	f8f43c23          	sd	a5,-104(s0)
    80005f1e:	0001                	nop
    80005f20:	b9cd                	j	80005c12 <vprintfmt+0x38>
    80005f22:	0001                	nop
    80005f24:	70a6                	ld	ra,104(sp)
    80005f26:	7406                	ld	s0,96(sp)
    80005f28:	64e6                	ld	s1,88(sp)
    80005f2a:	6946                	ld	s2,80(sp)
    80005f2c:	6165                	addi	sp,sp,112
    80005f2e:	8082                	ret

0000000080005f30 <printf>:
    80005f30:	7159                	addi	sp,sp,-112
    80005f32:	f406                	sd	ra,40(sp)
    80005f34:	f022                	sd	s0,32(sp)
    80005f36:	1800                	addi	s0,sp,48
    80005f38:	fca43c23          	sd	a0,-40(s0)
    80005f3c:	e40c                	sd	a1,8(s0)
    80005f3e:	e810                	sd	a2,16(s0)
    80005f40:	ec14                	sd	a3,24(s0)
    80005f42:	f018                	sd	a4,32(s0)
    80005f44:	f41c                	sd	a5,40(s0)
    80005f46:	03043823          	sd	a6,48(s0)
    80005f4a:	03143c23          	sd	a7,56(s0)
    80005f4e:	04040793          	addi	a5,s0,64
    80005f52:	fcf43823          	sd	a5,-48(s0)
    80005f56:	fd043783          	ld	a5,-48(s0)
    80005f5a:	fc878793          	addi	a5,a5,-56
    80005f5e:	fef43423          	sd	a5,-24(s0)
    80005f62:	fe843783          	ld	a5,-24(s0)
    80005f66:	86be                	mv	a3,a5
    80005f68:	fd843603          	ld	a2,-40(s0)
    80005f6c:	4581                	li	a1,0
    80005f6e:	00000517          	auipc	a0,0x0
    80005f72:	99c50513          	addi	a0,a0,-1636 # 8000590a <putchar>
    80005f76:	c65ff0ef          	jal	ra,80005bda <vprintfmt>
    80005f7a:	4781                	li	a5,0
    80005f7c:	853e                	mv	a0,a5
    80005f7e:	70a2                	ld	ra,40(sp)
    80005f80:	7402                	ld	s0,32(sp)
    80005f82:	6165                	addi	sp,sp,112
    80005f84:	8082                	ret

0000000080005f86 <sprintf_putch>:
    80005f86:	7179                	addi	sp,sp,-48
    80005f88:	f422                	sd	s0,40(sp)
    80005f8a:	1800                	addi	s0,sp,48
    80005f8c:	87aa                	mv	a5,a0
    80005f8e:	fcb43823          	sd	a1,-48(s0)
    80005f92:	fcf42e23          	sw	a5,-36(s0)
    80005f96:	fd043783          	ld	a5,-48(s0)
    80005f9a:	fef43423          	sd	a5,-24(s0)
    80005f9e:	fe843783          	ld	a5,-24(s0)
    80005fa2:	639c                	ld	a5,0(a5)
    80005fa4:	fdc42703          	lw	a4,-36(s0)
    80005fa8:	0ff77713          	andi	a4,a4,255
    80005fac:	00e78023          	sb	a4,0(a5)
    80005fb0:	fe843783          	ld	a5,-24(s0)
    80005fb4:	639c                	ld	a5,0(a5)
    80005fb6:	00178713          	addi	a4,a5,1
    80005fba:	fe843783          	ld	a5,-24(s0)
    80005fbe:	e398                	sd	a4,0(a5)
    80005fc0:	0001                	nop
    80005fc2:	7422                	ld	s0,40(sp)
    80005fc4:	6145                	addi	sp,sp,48
    80005fc6:	8082                	ret

0000000080005fc8 <sprintf>:
    80005fc8:	7159                	addi	sp,sp,-112
    80005fca:	fc06                	sd	ra,56(sp)
    80005fcc:	f822                	sd	s0,48(sp)
    80005fce:	0080                	addi	s0,sp,64
    80005fd0:	fca43c23          	sd	a0,-40(s0)
    80005fd4:	fcb43823          	sd	a1,-48(s0)
    80005fd8:	e010                	sd	a2,0(s0)
    80005fda:	e414                	sd	a3,8(s0)
    80005fdc:	e818                	sd	a4,16(s0)
    80005fde:	ec1c                	sd	a5,24(s0)
    80005fe0:	03043023          	sd	a6,32(s0)
    80005fe4:	03143423          	sd	a7,40(s0)
    80005fe8:	fd843783          	ld	a5,-40(s0)
    80005fec:	fef43423          	sd	a5,-24(s0)
    80005ff0:	03040793          	addi	a5,s0,48
    80005ff4:	fcf43423          	sd	a5,-56(s0)
    80005ff8:	fc843783          	ld	a5,-56(s0)
    80005ffc:	fd078793          	addi	a5,a5,-48
    80006000:	fef43023          	sd	a5,-32(s0)
    80006004:	fe043703          	ld	a4,-32(s0)
    80006008:	fd840793          	addi	a5,s0,-40
    8000600c:	86ba                	mv	a3,a4
    8000600e:	fd043603          	ld	a2,-48(s0)
    80006012:	85be                	mv	a1,a5
    80006014:	00000517          	auipc	a0,0x0
    80006018:	f7250513          	addi	a0,a0,-142 # 80005f86 <sprintf_putch>
    8000601c:	bbfff0ef          	jal	ra,80005bda <vprintfmt>
    80006020:	fd843783          	ld	a5,-40(s0)
    80006024:	00078023          	sb	zero,0(a5)
    80006028:	fd843703          	ld	a4,-40(s0)
    8000602c:	fe843783          	ld	a5,-24(s0)
    80006030:	40f707b3          	sub	a5,a4,a5
    80006034:	2781                	sext.w	a5,a5
    80006036:	853e                	mv	a0,a5
    80006038:	70e2                	ld	ra,56(sp)
    8000603a:	7442                	ld	s0,48(sp)
    8000603c:	6165                	addi	sp,sp,112
    8000603e:	8082                	ret

0000000080006040 <memcpy>:
    80006040:	715d                	addi	sp,sp,-80
    80006042:	e4a2                	sd	s0,72(sp)
    80006044:	0880                	addi	s0,sp,80
    80006046:	fca43423          	sd	a0,-56(s0)
    8000604a:	fcb43023          	sd	a1,-64(s0)
    8000604e:	fac43c23          	sd	a2,-72(s0)
    80006052:	fc843703          	ld	a4,-56(s0)
    80006056:	fc043783          	ld	a5,-64(s0)
    8000605a:	8f5d                	or	a4,a4,a5
    8000605c:	fb843783          	ld	a5,-72(s0)
    80006060:	8fd9                	or	a5,a5,a4
    80006062:	8b9d                	andi	a5,a5,7
    80006064:	e3b1                	bnez	a5,800060a8 <memcpy+0x68>
    80006066:	fc043783          	ld	a5,-64(s0)
    8000606a:	fef43423          	sd	a5,-24(s0)
    8000606e:	fc843783          	ld	a5,-56(s0)
    80006072:	fef43023          	sd	a5,-32(s0)
    80006076:	a839                	j	80006094 <memcpy+0x54>
    80006078:	fe843703          	ld	a4,-24(s0)
    8000607c:	00870793          	addi	a5,a4,8
    80006080:	fef43423          	sd	a5,-24(s0)
    80006084:	fe043783          	ld	a5,-32(s0)
    80006088:	00878693          	addi	a3,a5,8
    8000608c:	fed43023          	sd	a3,-32(s0)
    80006090:	6318                	ld	a4,0(a4)
    80006092:	e398                	sd	a4,0(a5)
    80006094:	fc843703          	ld	a4,-56(s0)
    80006098:	fb843783          	ld	a5,-72(s0)
    8000609c:	97ba                	add	a5,a5,a4
    8000609e:	fe043703          	ld	a4,-32(s0)
    800060a2:	fcf76be3          	bltu	a4,a5,80006078 <memcpy+0x38>
    800060a6:	a099                	j	800060ec <memcpy+0xac>
    800060a8:	fc043783          	ld	a5,-64(s0)
    800060ac:	fcf43c23          	sd	a5,-40(s0)
    800060b0:	fc843783          	ld	a5,-56(s0)
    800060b4:	fcf43823          	sd	a5,-48(s0)
    800060b8:	a00d                	j	800060da <memcpy+0x9a>
    800060ba:	fd843703          	ld	a4,-40(s0)
    800060be:	00170793          	addi	a5,a4,1
    800060c2:	fcf43c23          	sd	a5,-40(s0)
    800060c6:	fd043783          	ld	a5,-48(s0)
    800060ca:	00178693          	addi	a3,a5,1
    800060ce:	fcd43823          	sd	a3,-48(s0)
    800060d2:	00074703          	lbu	a4,0(a4)
    800060d6:	00e78023          	sb	a4,0(a5)
    800060da:	fc843703          	ld	a4,-56(s0)
    800060de:	fb843783          	ld	a5,-72(s0)
    800060e2:	97ba                	add	a5,a5,a4
    800060e4:	fd043703          	ld	a4,-48(s0)
    800060e8:	fcf769e3          	bltu	a4,a5,800060ba <memcpy+0x7a>
    800060ec:	fc843783          	ld	a5,-56(s0)
    800060f0:	853e                	mv	a0,a5
    800060f2:	6426                	ld	s0,72(sp)
    800060f4:	6161                	addi	sp,sp,80
    800060f6:	8082                	ret

00000000800060f8 <memset>:
    800060f8:	715d                	addi	sp,sp,-80
    800060fa:	e4a2                	sd	s0,72(sp)
    800060fc:	0880                	addi	s0,sp,80
    800060fe:	fca43423          	sd	a0,-56(s0)
    80006102:	87ae                	mv	a5,a1
    80006104:	fac43c23          	sd	a2,-72(s0)
    80006108:	fcf42223          	sw	a5,-60(s0)
    8000610c:	fc843703          	ld	a4,-56(s0)
    80006110:	fb843783          	ld	a5,-72(s0)
    80006114:	8fd9                	or	a5,a5,a4
    80006116:	8b9d                	andi	a5,a5,7
    80006118:	e7bd                	bnez	a5,80006186 <memset+0x8e>
    8000611a:	fc442783          	lw	a5,-60(s0)
    8000611e:	0ff7f793          	andi	a5,a5,255
    80006122:	fcf43c23          	sd	a5,-40(s0)
    80006126:	fd843783          	ld	a5,-40(s0)
    8000612a:	07a2                	slli	a5,a5,0x8
    8000612c:	fd843703          	ld	a4,-40(s0)
    80006130:	8fd9                	or	a5,a5,a4
    80006132:	fcf43c23          	sd	a5,-40(s0)
    80006136:	fd843783          	ld	a5,-40(s0)
    8000613a:	07c2                	slli	a5,a5,0x10
    8000613c:	fd843703          	ld	a4,-40(s0)
    80006140:	8fd9                	or	a5,a5,a4
    80006142:	fcf43c23          	sd	a5,-40(s0)
    80006146:	fd843783          	ld	a5,-40(s0)
    8000614a:	1782                	slli	a5,a5,0x20
    8000614c:	fd843703          	ld	a4,-40(s0)
    80006150:	8fd9                	or	a5,a5,a4
    80006152:	fcf43c23          	sd	a5,-40(s0)
    80006156:	fc843783          	ld	a5,-56(s0)
    8000615a:	fef43423          	sd	a5,-24(s0)
    8000615e:	a811                	j	80006172 <memset+0x7a>
    80006160:	fe843783          	ld	a5,-24(s0)
    80006164:	00878713          	addi	a4,a5,8
    80006168:	fee43423          	sd	a4,-24(s0)
    8000616c:	fd843703          	ld	a4,-40(s0)
    80006170:	e398                	sd	a4,0(a5)
    80006172:	fc843703          	ld	a4,-56(s0)
    80006176:	fb843783          	ld	a5,-72(s0)
    8000617a:	97ba                	add	a5,a5,a4
    8000617c:	fe843703          	ld	a4,-24(s0)
    80006180:	fef760e3          	bltu	a4,a5,80006160 <memset+0x68>
    80006184:	a81d                	j	800061ba <memset+0xc2>
    80006186:	fc843783          	ld	a5,-56(s0)
    8000618a:	fef43023          	sd	a5,-32(s0)
    8000618e:	a829                	j	800061a8 <memset+0xb0>
    80006190:	fe043783          	ld	a5,-32(s0)
    80006194:	00178713          	addi	a4,a5,1
    80006198:	fee43023          	sd	a4,-32(s0)
    8000619c:	fc442703          	lw	a4,-60(s0)
    800061a0:	0ff77713          	andi	a4,a4,255
    800061a4:	00e78023          	sb	a4,0(a5)
    800061a8:	fc843703          	ld	a4,-56(s0)
    800061ac:	fb843783          	ld	a5,-72(s0)
    800061b0:	97ba                	add	a5,a5,a4
    800061b2:	fe043703          	ld	a4,-32(s0)
    800061b6:	fcf76de3          	bltu	a4,a5,80006190 <memset+0x98>
    800061ba:	fc843783          	ld	a5,-56(s0)
    800061be:	853e                	mv	a0,a5
    800061c0:	6426                	ld	s0,72(sp)
    800061c2:	6161                	addi	sp,sp,80
    800061c4:	8082                	ret

00000000800061c6 <strlen>:
    800061c6:	7179                	addi	sp,sp,-48
    800061c8:	f422                	sd	s0,40(sp)
    800061ca:	1800                	addi	s0,sp,48
    800061cc:	fca43c23          	sd	a0,-40(s0)
    800061d0:	fd843783          	ld	a5,-40(s0)
    800061d4:	fef43423          	sd	a5,-24(s0)
    800061d8:	a031                	j	800061e4 <strlen+0x1e>
    800061da:	fe843783          	ld	a5,-24(s0)
    800061de:	0785                	addi	a5,a5,1
    800061e0:	fef43423          	sd	a5,-24(s0)
    800061e4:	fe843783          	ld	a5,-24(s0)
    800061e8:	0007c783          	lbu	a5,0(a5)
    800061ec:	f7fd                	bnez	a5,800061da <strlen+0x14>
    800061ee:	fe843703          	ld	a4,-24(s0)
    800061f2:	fd843783          	ld	a5,-40(s0)
    800061f6:	40f707b3          	sub	a5,a4,a5
    800061fa:	853e                	mv	a0,a5
    800061fc:	7422                	ld	s0,40(sp)
    800061fe:	6145                	addi	sp,sp,48
    80006200:	8082                	ret

0000000080006202 <strnlen>:
    80006202:	7179                	addi	sp,sp,-48
    80006204:	f422                	sd	s0,40(sp)
    80006206:	1800                	addi	s0,sp,48
    80006208:	fca43c23          	sd	a0,-40(s0)
    8000620c:	fcb43823          	sd	a1,-48(s0)
    80006210:	fd843783          	ld	a5,-40(s0)
    80006214:	fef43423          	sd	a5,-24(s0)
    80006218:	a031                	j	80006224 <strnlen+0x22>
    8000621a:	fe843783          	ld	a5,-24(s0)
    8000621e:	0785                	addi	a5,a5,1
    80006220:	fef43423          	sd	a5,-24(s0)
    80006224:	fd043783          	ld	a5,-48(s0)
    80006228:	fff78713          	addi	a4,a5,-1
    8000622c:	fce43823          	sd	a4,-48(s0)
    80006230:	c791                	beqz	a5,8000623c <strnlen+0x3a>
    80006232:	fe843783          	ld	a5,-24(s0)
    80006236:	0007c783          	lbu	a5,0(a5)
    8000623a:	f3e5                	bnez	a5,8000621a <strnlen+0x18>
    8000623c:	fe843703          	ld	a4,-24(s0)
    80006240:	fd843783          	ld	a5,-40(s0)
    80006244:	40f707b3          	sub	a5,a4,a5
    80006248:	853e                	mv	a0,a5
    8000624a:	7422                	ld	s0,40(sp)
    8000624c:	6145                	addi	sp,sp,48
    8000624e:	8082                	ret

0000000080006250 <strcmp>:
    80006250:	7179                	addi	sp,sp,-48
    80006252:	f422                	sd	s0,40(sp)
    80006254:	1800                	addi	s0,sp,48
    80006256:	fca43c23          	sd	a0,-40(s0)
    8000625a:	fcb43823          	sd	a1,-48(s0)
    8000625e:	fd843783          	ld	a5,-40(s0)
    80006262:	00178713          	addi	a4,a5,1
    80006266:	fce43c23          	sd	a4,-40(s0)
    8000626a:	0007c783          	lbu	a5,0(a5)
    8000626e:	fef407a3          	sb	a5,-17(s0)
    80006272:	fd043783          	ld	a5,-48(s0)
    80006276:	00178713          	addi	a4,a5,1
    8000627a:	fce43823          	sd	a4,-48(s0)
    8000627e:	0007c783          	lbu	a5,0(a5)
    80006282:	fef40723          	sb	a5,-18(s0)
    80006286:	fef44783          	lbu	a5,-17(s0)
    8000628a:	0ff7f793          	andi	a5,a5,255
    8000628e:	cf81                	beqz	a5,800062a6 <strcmp+0x56>
    80006290:	fef44783          	lbu	a5,-17(s0)
    80006294:	873e                	mv	a4,a5
    80006296:	fee44783          	lbu	a5,-18(s0)
    8000629a:	0ff77713          	andi	a4,a4,255
    8000629e:	0ff7f793          	andi	a5,a5,255
    800062a2:	faf70ee3          	beq	a4,a5,8000625e <strcmp+0xe>
    800062a6:	fef44783          	lbu	a5,-17(s0)
    800062aa:	0007871b          	sext.w	a4,a5
    800062ae:	fee44783          	lbu	a5,-18(s0)
    800062b2:	2781                	sext.w	a5,a5
    800062b4:	40f707bb          	subw	a5,a4,a5
    800062b8:	2781                	sext.w	a5,a5
    800062ba:	853e                	mv	a0,a5
    800062bc:	7422                	ld	s0,40(sp)
    800062be:	6145                	addi	sp,sp,48
    800062c0:	8082                	ret

00000000800062c2 <strcpy>:
    800062c2:	7179                	addi	sp,sp,-48
    800062c4:	f422                	sd	s0,40(sp)
    800062c6:	1800                	addi	s0,sp,48
    800062c8:	fca43c23          	sd	a0,-40(s0)
    800062cc:	fcb43823          	sd	a1,-48(s0)
    800062d0:	fd843783          	ld	a5,-40(s0)
    800062d4:	fef43423          	sd	a5,-24(s0)
    800062d8:	0001                	nop
    800062da:	fd043703          	ld	a4,-48(s0)
    800062de:	00170793          	addi	a5,a4,1
    800062e2:	fcf43823          	sd	a5,-48(s0)
    800062e6:	fe843783          	ld	a5,-24(s0)
    800062ea:	00178693          	addi	a3,a5,1
    800062ee:	fed43423          	sd	a3,-24(s0)
    800062f2:	00074703          	lbu	a4,0(a4)
    800062f6:	00e78023          	sb	a4,0(a5)
    800062fa:	0007c783          	lbu	a5,0(a5)
    800062fe:	fff1                	bnez	a5,800062da <strcpy+0x18>
    80006300:	fd843783          	ld	a5,-40(s0)
    80006304:	853e                	mv	a0,a5
    80006306:	7422                	ld	s0,40(sp)
    80006308:	6145                	addi	sp,sp,48
    8000630a:	8082                	ret

000000008000630c <atol>:
    8000630c:	7179                	addi	sp,sp,-48
    8000630e:	f422                	sd	s0,40(sp)
    80006310:	1800                	addi	s0,sp,48
    80006312:	fca43c23          	sd	a0,-40(s0)
    80006316:	fe043423          	sd	zero,-24(s0)
    8000631a:	fe042223          	sw	zero,-28(s0)
    8000631e:	a031                	j	8000632a <atol+0x1e>
    80006320:	fd843783          	ld	a5,-40(s0)
    80006324:	0785                	addi	a5,a5,1
    80006326:	fcf43c23          	sd	a5,-40(s0)
    8000632a:	fd843783          	ld	a5,-40(s0)
    8000632e:	0007c783          	lbu	a5,0(a5)
    80006332:	873e                	mv	a4,a5
    80006334:	02000793          	li	a5,32
    80006338:	fef704e3          	beq	a4,a5,80006320 <atol+0x14>
    8000633c:	fd843783          	ld	a5,-40(s0)
    80006340:	0007c783          	lbu	a5,0(a5)
    80006344:	873e                	mv	a4,a5
    80006346:	02d00793          	li	a5,45
    8000634a:	00f70b63          	beq	a4,a5,80006360 <atol+0x54>
    8000634e:	fd843783          	ld	a5,-40(s0)
    80006352:	0007c783          	lbu	a5,0(a5)
    80006356:	873e                	mv	a4,a5
    80006358:	02b00793          	li	a5,43
    8000635c:	06f71263          	bne	a4,a5,800063c0 <atol+0xb4>
    80006360:	fd843783          	ld	a5,-40(s0)
    80006364:	0007c783          	lbu	a5,0(a5)
    80006368:	0007871b          	sext.w	a4,a5
    8000636c:	02d00793          	li	a5,45
    80006370:	40f707b3          	sub	a5,a4,a5
    80006374:	0017b793          	seqz	a5,a5
    80006378:	0ff7f793          	andi	a5,a5,255
    8000637c:	fef42223          	sw	a5,-28(s0)
    80006380:	fd843783          	ld	a5,-40(s0)
    80006384:	0785                	addi	a5,a5,1
    80006386:	fcf43c23          	sd	a5,-40(s0)
    8000638a:	a81d                	j	800063c0 <atol+0xb4>
    8000638c:	fe843703          	ld	a4,-24(s0)
    80006390:	87ba                	mv	a5,a4
    80006392:	078a                	slli	a5,a5,0x2
    80006394:	97ba                	add	a5,a5,a4
    80006396:	0786                	slli	a5,a5,0x1
    80006398:	fef43423          	sd	a5,-24(s0)
    8000639c:	fd843783          	ld	a5,-40(s0)
    800063a0:	00178713          	addi	a4,a5,1
    800063a4:	fce43c23          	sd	a4,-40(s0)
    800063a8:	0007c783          	lbu	a5,0(a5)
    800063ac:	2781                	sext.w	a5,a5
    800063ae:	fd07879b          	addiw	a5,a5,-48
    800063b2:	2781                	sext.w	a5,a5
    800063b4:	873e                	mv	a4,a5
    800063b6:	fe843783          	ld	a5,-24(s0)
    800063ba:	97ba                	add	a5,a5,a4
    800063bc:	fef43423          	sd	a5,-24(s0)
    800063c0:	fd843783          	ld	a5,-40(s0)
    800063c4:	0007c783          	lbu	a5,0(a5)
    800063c8:	f3f1                	bnez	a5,8000638c <atol+0x80>
    800063ca:	fe442783          	lw	a5,-28(s0)
    800063ce:	2781                	sext.w	a5,a5
    800063d0:	c791                	beqz	a5,800063dc <atol+0xd0>
    800063d2:	fe843783          	ld	a5,-24(s0)
    800063d6:	40f007b3          	neg	a5,a5
    800063da:	a019                	j	800063e0 <atol+0xd4>
    800063dc:	fe843783          	ld	a5,-24(s0)
    800063e0:	853e                	mv	a0,a5
    800063e2:	7422                	ld	s0,40(sp)
    800063e4:	6145                	addi	sp,sp,48
    800063e6:	8082                	ret
