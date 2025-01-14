
./FPGA_output/FPGA/trigger.elf:     file format elf64-littleriscv


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
    800000ec:	03c28293          	addi	t0,t0,60 # 80000124 <trap_entry>
    800000f0:	30529073          	csrw	mtvec,t0
    800000f4:	00001197          	auipc	gp,0x1
    800000f8:	70c18193          	addi	gp,gp,1804 # 80001800 <__global_pointer$>
    800000fc:	00002217          	auipc	tp,0x2
    80000100:	74320213          	addi	tp,tp,1859 # 8000283f <__stack_end+0x3f>
    80000104:	fc027213          	andi	tp,tp,-64
    80000108:	f1402573          	csrr	a0,mhartid
    8000010c:	4585                	li	a1,1
    8000010e:	00b57063          	bleu	a1,a0,8000010e <_start+0x10e>
    80000112:	00150113          	addi	sp,a0,1
    80000116:	0146                	slli	sp,sp,0x11
    80000118:	9112                	add	sp,sp,tp
    8000011a:	01151613          	slli	a2,a0,0x11
    8000011e:	9232                	add	tp,tp,a2
    80000120:	4050006f          	j	80000d24 <_init>

0000000080000124 <trap_entry>:
    80000124:	716d                	addi	sp,sp,-272
    80000126:	e406                	sd	ra,8(sp)
    80000128:	e80a                	sd	sp,16(sp)
    8000012a:	ec0e                	sd	gp,24(sp)
    8000012c:	f012                	sd	tp,32(sp)
    8000012e:	f416                	sd	t0,40(sp)
    80000130:	f81a                	sd	t1,48(sp)
    80000132:	fc1e                	sd	t2,56(sp)
    80000134:	e0a2                	sd	s0,64(sp)
    80000136:	e4a6                	sd	s1,72(sp)
    80000138:	e8aa                	sd	a0,80(sp)
    8000013a:	ecae                	sd	a1,88(sp)
    8000013c:	f0b2                	sd	a2,96(sp)
    8000013e:	f4b6                	sd	a3,104(sp)
    80000140:	f8ba                	sd	a4,112(sp)
    80000142:	fcbe                	sd	a5,120(sp)
    80000144:	e142                	sd	a6,128(sp)
    80000146:	e546                	sd	a7,136(sp)
    80000148:	e94a                	sd	s2,144(sp)
    8000014a:	ed4e                	sd	s3,152(sp)
    8000014c:	f152                	sd	s4,160(sp)
    8000014e:	f556                	sd	s5,168(sp)
    80000150:	f95a                	sd	s6,176(sp)
    80000152:	fd5e                	sd	s7,184(sp)
    80000154:	e1e2                	sd	s8,192(sp)
    80000156:	e5e6                	sd	s9,200(sp)
    80000158:	e9ea                	sd	s10,208(sp)
    8000015a:	edee                	sd	s11,216(sp)
    8000015c:	f1f2                	sd	t3,224(sp)
    8000015e:	f5f6                	sd	t4,232(sp)
    80000160:	f9fa                	sd	t5,240(sp)
    80000162:	fdfe                	sd	t6,248(sp)
    80000164:	34202573          	csrr	a0,mcause
    80000168:	341025f3          	csrr	a1,mepc
    8000016c:	860a                	mv	a2,sp
    8000016e:	289000ef          	jal	ra,80000bf6 <handle_trap>
    80000172:	34151073          	csrw	mepc,a0
    80000176:	6289                	lui	t0,0x2
    80000178:	8002829b          	addiw	t0,t0,-2048
    8000017c:	3002a073          	csrs	mstatus,t0
    80000180:	60a2                	ld	ra,8(sp)
    80000182:	6142                	ld	sp,16(sp)
    80000184:	61e2                	ld	gp,24(sp)
    80000186:	7202                	ld	tp,32(sp)
    80000188:	72a2                	ld	t0,40(sp)
    8000018a:	7342                	ld	t1,48(sp)
    8000018c:	73e2                	ld	t2,56(sp)
    8000018e:	6406                	ld	s0,64(sp)
    80000190:	64a6                	ld	s1,72(sp)
    80000192:	6546                	ld	a0,80(sp)
    80000194:	65e6                	ld	a1,88(sp)
    80000196:	7606                	ld	a2,96(sp)
    80000198:	76a6                	ld	a3,104(sp)
    8000019a:	7746                	ld	a4,112(sp)
    8000019c:	77e6                	ld	a5,120(sp)
    8000019e:	680a                	ld	a6,128(sp)
    800001a0:	68aa                	ld	a7,136(sp)
    800001a2:	694a                	ld	s2,144(sp)
    800001a4:	69ea                	ld	s3,152(sp)
    800001a6:	7a0a                	ld	s4,160(sp)
    800001a8:	7aaa                	ld	s5,168(sp)
    800001aa:	7b4a                	ld	s6,176(sp)
    800001ac:	7bea                	ld	s7,184(sp)
    800001ae:	6c0e                	ld	s8,192(sp)
    800001b0:	6cae                	ld	s9,200(sp)
    800001b2:	6d4e                	ld	s10,208(sp)
    800001b4:	6dee                	ld	s11,216(sp)
    800001b6:	7e0e                	ld	t3,224(sp)
    800001b8:	7eae                	ld	t4,232(sp)
    800001ba:	7f4e                	ld	t5,240(sp)
    800001bc:	7fee                	ld	t6,248(sp)
    800001be:	6151                	addi	sp,sp,272
    800001c0:	30200073          	mret
    800001c4:	5501                	li	a0,-32
    800001c6:	a029                	j	800001d0 <_exit>
    800001c8:	54e000ef          	jal	ra,80000716 <main>
    800001cc:	a011                	j	800001d0 <_exit>
    800001ce:	a009                	j	800001d0 <_exit>

00000000800001d0 <_exit>:
    800001d0:	0506                	slli	a0,a0,0x1
    800001d2:	0505                	addi	a0,a0,1
    800001d4:	00000f17          	auipc	t5,0x0
    800001d8:	02af2623          	sw	a0,44(t5) # 80000200 <tohost>
    800001dc:	0001                	nop
    800001de:	a001                	j	800001de <_exit+0xe>
	...

Disassembly of section .text:

0000000080000288 <write_reg_u8>:
    80000288:	7179                	addi	sp,sp,-48
    8000028a:	f422                	sd	s0,40(sp)
    8000028c:	1800                	addi	s0,sp,48
    8000028e:	fca43c23          	sd	a0,-40(s0)
    80000292:	87ae                	mv	a5,a1
    80000294:	fcf40ba3          	sb	a5,-41(s0)
    80000298:	fd843783          	ld	a5,-40(s0)
    8000029c:	fef43423          	sd	a5,-24(s0)
    800002a0:	fe843783          	ld	a5,-24(s0)
    800002a4:	fd744703          	lbu	a4,-41(s0)
    800002a8:	00e78023          	sb	a4,0(a5)
    800002ac:	0001                	nop
    800002ae:	7422                	ld	s0,40(sp)
    800002b0:	6145                	addi	sp,sp,48
    800002b2:	8082                	ret

00000000800002b4 <read_reg_u8>:
    800002b4:	1101                	addi	sp,sp,-32
    800002b6:	ec22                	sd	s0,24(sp)
    800002b8:	1000                	addi	s0,sp,32
    800002ba:	fea43423          	sd	a0,-24(s0)
    800002be:	fe843783          	ld	a5,-24(s0)
    800002c2:	0007c783          	lbu	a5,0(a5)
    800002c6:	0ff7f793          	andi	a5,a5,255
    800002ca:	853e                	mv	a0,a5
    800002cc:	6462                	ld	s0,24(sp)
    800002ce:	6105                	addi	sp,sp,32
    800002d0:	8082                	ret

00000000800002d2 <is_transmit_empty>:
    800002d2:	1141                	addi	sp,sp,-16
    800002d4:	e406                	sd	ra,8(sp)
    800002d6:	e022                	sd	s0,0(sp)
    800002d8:	0800                	addi	s0,sp,16
    800002da:	100007b7          	lui	a5,0x10000
    800002de:	01478513          	addi	a0,a5,20 # 10000014 <buflen.2+0xfffff94>
    800002e2:	fd3ff0ef          	jal	ra,800002b4 <read_reg_u8>
    800002e6:	87aa                	mv	a5,a0
    800002e8:	2781                	sext.w	a5,a5
    800002ea:	0207f793          	andi	a5,a5,32
    800002ee:	2781                	sext.w	a5,a5
    800002f0:	853e                	mv	a0,a5
    800002f2:	60a2                	ld	ra,8(sp)
    800002f4:	6402                	ld	s0,0(sp)
    800002f6:	0141                	addi	sp,sp,16
    800002f8:	8082                	ret

00000000800002fa <is_receive_empty>:
    800002fa:	1141                	addi	sp,sp,-16
    800002fc:	e406                	sd	ra,8(sp)
    800002fe:	e022                	sd	s0,0(sp)
    80000300:	0800                	addi	s0,sp,16
    80000302:	100007b7          	lui	a5,0x10000
    80000306:	01478513          	addi	a0,a5,20 # 10000014 <buflen.2+0xfffff94>
    8000030a:	fabff0ef          	jal	ra,800002b4 <read_reg_u8>
    8000030e:	87aa                	mv	a5,a0
    80000310:	2781                	sext.w	a5,a5
    80000312:	8b85                	andi	a5,a5,1
    80000314:	2781                	sext.w	a5,a5
    80000316:	0017b793          	seqz	a5,a5
    8000031a:	0ff7f793          	andi	a5,a5,255
    8000031e:	2781                	sext.w	a5,a5
    80000320:	853e                	mv	a0,a5
    80000322:	60a2                	ld	ra,8(sp)
    80000324:	6402                	ld	s0,0(sp)
    80000326:	0141                	addi	sp,sp,16
    80000328:	8082                	ret

000000008000032a <write_serial>:
    8000032a:	1101                	addi	sp,sp,-32
    8000032c:	ec06                	sd	ra,24(sp)
    8000032e:	e822                	sd	s0,16(sp)
    80000330:	1000                	addi	s0,sp,32
    80000332:	87aa                	mv	a5,a0
    80000334:	fef407a3          	sb	a5,-17(s0)
    80000338:	0001                	nop
    8000033a:	f99ff0ef          	jal	ra,800002d2 <is_transmit_empty>
    8000033e:	87aa                	mv	a5,a0
    80000340:	dfed                	beqz	a5,8000033a <write_serial+0x10>
    80000342:	fef44783          	lbu	a5,-17(s0)
    80000346:	85be                	mv	a1,a5
    80000348:	10000537          	lui	a0,0x10000
    8000034c:	f3dff0ef          	jal	ra,80000288 <write_reg_u8>
    80000350:	0001                	nop
    80000352:	60e2                	ld	ra,24(sp)
    80000354:	6442                	ld	s0,16(sp)
    80000356:	6105                	addi	sp,sp,32
    80000358:	8082                	ret

000000008000035a <read_serial>:
    8000035a:	1101                	addi	sp,sp,-32
    8000035c:	ec06                	sd	ra,24(sp)
    8000035e:	e822                	sd	s0,16(sp)
    80000360:	1000                	addi	s0,sp,32
    80000362:	fea43423          	sd	a0,-24(s0)
    80000366:	f95ff0ef          	jal	ra,800002fa <is_receive_empty>
    8000036a:	87aa                	mv	a5,a0
    8000036c:	c399                	beqz	a5,80000372 <read_serial+0x18>
    8000036e:	4781                	li	a5,0
    80000370:	a821                	j	80000388 <read_serial+0x2e>
    80000372:	10000537          	lui	a0,0x10000
    80000376:	f3fff0ef          	jal	ra,800002b4 <read_reg_u8>
    8000037a:	87aa                	mv	a5,a0
    8000037c:	873e                	mv	a4,a5
    8000037e:	fe843783          	ld	a5,-24(s0)
    80000382:	00e78023          	sb	a4,0(a5)
    80000386:	4785                	li	a5,1
    80000388:	853e                	mv	a0,a5
    8000038a:	60e2                	ld	ra,24(sp)
    8000038c:	6442                	ld	s0,16(sp)
    8000038e:	6105                	addi	sp,sp,32
    80000390:	8082                	ret

0000000080000392 <init_uart>:
    80000392:	7179                	addi	sp,sp,-48
    80000394:	f406                	sd	ra,40(sp)
    80000396:	f022                	sd	s0,32(sp)
    80000398:	1800                	addi	s0,sp,48
    8000039a:	87aa                	mv	a5,a0
    8000039c:	872e                	mv	a4,a1
    8000039e:	fcf42e23          	sw	a5,-36(s0)
    800003a2:	87ba                	mv	a5,a4
    800003a4:	fcf42c23          	sw	a5,-40(s0)
    800003a8:	fd842783          	lw	a5,-40(s0)
    800003ac:	0047979b          	slliw	a5,a5,0x4
    800003b0:	2781                	sext.w	a5,a5
    800003b2:	fdc42703          	lw	a4,-36(s0)
    800003b6:	02f757bb          	divuw	a5,a4,a5
    800003ba:	fef42623          	sw	a5,-20(s0)
    800003be:	4581                	li	a1,0
    800003c0:	100007b7          	lui	a5,0x10000
    800003c4:	00478513          	addi	a0,a5,4 # 10000004 <buflen.2+0xfffff84>
    800003c8:	ec1ff0ef          	jal	ra,80000288 <write_reg_u8>
    800003cc:	08000593          	li	a1,128
    800003d0:	100007b7          	lui	a5,0x10000
    800003d4:	00c78513          	addi	a0,a5,12 # 1000000c <buflen.2+0xfffff8c>
    800003d8:	eb1ff0ef          	jal	ra,80000288 <write_reg_u8>
    800003dc:	fec42783          	lw	a5,-20(s0)
    800003e0:	0ff7f793          	andi	a5,a5,255
    800003e4:	85be                	mv	a1,a5
    800003e6:	10000537          	lui	a0,0x10000
    800003ea:	e9fff0ef          	jal	ra,80000288 <write_reg_u8>
    800003ee:	fec42783          	lw	a5,-20(s0)
    800003f2:	0087d79b          	srliw	a5,a5,0x8
    800003f6:	2781                	sext.w	a5,a5
    800003f8:	0ff7f793          	andi	a5,a5,255
    800003fc:	85be                	mv	a1,a5
    800003fe:	100007b7          	lui	a5,0x10000
    80000402:	00478513          	addi	a0,a5,4 # 10000004 <buflen.2+0xfffff84>
    80000406:	e83ff0ef          	jal	ra,80000288 <write_reg_u8>
    8000040a:	458d                	li	a1,3
    8000040c:	100007b7          	lui	a5,0x10000
    80000410:	00c78513          	addi	a0,a5,12 # 1000000c <buflen.2+0xfffff8c>
    80000414:	e75ff0ef          	jal	ra,80000288 <write_reg_u8>
    80000418:	0c700593          	li	a1,199
    8000041c:	100007b7          	lui	a5,0x10000
    80000420:	00878513          	addi	a0,a5,8 # 10000008 <buflen.2+0xfffff88>
    80000424:	e65ff0ef          	jal	ra,80000288 <write_reg_u8>
    80000428:	02000593          	li	a1,32
    8000042c:	100007b7          	lui	a5,0x10000
    80000430:	01078513          	addi	a0,a5,16 # 10000010 <buflen.2+0xfffff90>
    80000434:	e55ff0ef          	jal	ra,80000288 <write_reg_u8>
    80000438:	0001                	nop
    8000043a:	70a2                	ld	ra,40(sp)
    8000043c:	7402                	ld	s0,32(sp)
    8000043e:	6145                	addi	sp,sp,48
    80000440:	8082                	ret

0000000080000442 <print_uart>:
    80000442:	7179                	addi	sp,sp,-48
    80000444:	f406                	sd	ra,40(sp)
    80000446:	f022                	sd	s0,32(sp)
    80000448:	1800                	addi	s0,sp,48
    8000044a:	fca43c23          	sd	a0,-40(s0)
    8000044e:	fd843783          	ld	a5,-40(s0)
    80000452:	fef43423          	sd	a5,-24(s0)
    80000456:	a829                	j	80000470 <print_uart+0x2e>
    80000458:	fe843783          	ld	a5,-24(s0)
    8000045c:	0007c783          	lbu	a5,0(a5)
    80000460:	853e                	mv	a0,a5
    80000462:	ec9ff0ef          	jal	ra,8000032a <write_serial>
    80000466:	fe843783          	ld	a5,-24(s0)
    8000046a:	0785                	addi	a5,a5,1
    8000046c:	fef43423          	sd	a5,-24(s0)
    80000470:	fe843783          	ld	a5,-24(s0)
    80000474:	0007c783          	lbu	a5,0(a5)
    80000478:	f3e5                	bnez	a5,80000458 <print_uart+0x16>
    8000047a:	0001                	nop
    8000047c:	0001                	nop
    8000047e:	70a2                	ld	ra,40(sp)
    80000480:	7402                	ld	s0,32(sp)
    80000482:	6145                	addi	sp,sp,48
    80000484:	8082                	ret

0000000080000486 <bin_to_hex>:
    80000486:	1101                	addi	sp,sp,-32
    80000488:	ec22                	sd	s0,24(sp)
    8000048a:	1000                	addi	s0,sp,32
    8000048c:	87aa                	mv	a5,a0
    8000048e:	feb43023          	sd	a1,-32(s0)
    80000492:	fef407a3          	sb	a5,-17(s0)
    80000496:	fef44783          	lbu	a5,-17(s0)
    8000049a:	2781                	sext.w	a5,a5
    8000049c:	8bbd                	andi	a5,a5,15
    8000049e:	0007871b          	sext.w	a4,a5
    800004a2:	fe043783          	ld	a5,-32(s0)
    800004a6:	0785                	addi	a5,a5,1
    800004a8:	35018693          	addi	a3,gp,848 # 80001b50 <bin_to_hex_table>
    800004ac:	9736                	add	a4,a4,a3
    800004ae:	00074703          	lbu	a4,0(a4)
    800004b2:	00e78023          	sb	a4,0(a5)
    800004b6:	fef44783          	lbu	a5,-17(s0)
    800004ba:	0047d79b          	srliw	a5,a5,0x4
    800004be:	0ff7f793          	andi	a5,a5,255
    800004c2:	2781                	sext.w	a5,a5
    800004c4:	8bbd                	andi	a5,a5,15
    800004c6:	2781                	sext.w	a5,a5
    800004c8:	35018713          	addi	a4,gp,848 # 80001b50 <bin_to_hex_table>
    800004cc:	97ba                	add	a5,a5,a4
    800004ce:	0007c703          	lbu	a4,0(a5)
    800004d2:	fe043783          	ld	a5,-32(s0)
    800004d6:	00e78023          	sb	a4,0(a5)
    800004da:	0001                	nop
    800004dc:	6462                	ld	s0,24(sp)
    800004de:	6105                	addi	sp,sp,32
    800004e0:	8082                	ret

00000000800004e2 <print_uart_int>:
    800004e2:	7179                	addi	sp,sp,-48
    800004e4:	f406                	sd	ra,40(sp)
    800004e6:	f022                	sd	s0,32(sp)
    800004e8:	1800                	addi	s0,sp,48
    800004ea:	87aa                	mv	a5,a0
    800004ec:	fcf42e23          	sw	a5,-36(s0)
    800004f0:	478d                	li	a5,3
    800004f2:	fef42623          	sw	a5,-20(s0)
    800004f6:	a0a1                	j	8000053e <print_uart_int+0x5c>
    800004f8:	fec42783          	lw	a5,-20(s0)
    800004fc:	0037979b          	slliw	a5,a5,0x3
    80000500:	2781                	sext.w	a5,a5
    80000502:	fdc42703          	lw	a4,-36(s0)
    80000506:	00f757bb          	srlw	a5,a4,a5
    8000050a:	2781                	sext.w	a5,a5
    8000050c:	fef405a3          	sb	a5,-21(s0)
    80000510:	fe840713          	addi	a4,s0,-24
    80000514:	feb44783          	lbu	a5,-21(s0)
    80000518:	85ba                	mv	a1,a4
    8000051a:	853e                	mv	a0,a5
    8000051c:	f6bff0ef          	jal	ra,80000486 <bin_to_hex>
    80000520:	fe844783          	lbu	a5,-24(s0)
    80000524:	853e                	mv	a0,a5
    80000526:	e05ff0ef          	jal	ra,8000032a <write_serial>
    8000052a:	fe944783          	lbu	a5,-23(s0)
    8000052e:	853e                	mv	a0,a5
    80000530:	dfbff0ef          	jal	ra,8000032a <write_serial>
    80000534:	fec42783          	lw	a5,-20(s0)
    80000538:	37fd                	addiw	a5,a5,-1
    8000053a:	fef42623          	sw	a5,-20(s0)
    8000053e:	fec42783          	lw	a5,-20(s0)
    80000542:	2781                	sext.w	a5,a5
    80000544:	fa07dae3          	bgez	a5,800004f8 <print_uart_int+0x16>
    80000548:	0001                	nop
    8000054a:	0001                	nop
    8000054c:	70a2                	ld	ra,40(sp)
    8000054e:	7402                	ld	s0,32(sp)
    80000550:	6145                	addi	sp,sp,48
    80000552:	8082                	ret

0000000080000554 <print_uart_addr>:
    80000554:	7179                	addi	sp,sp,-48
    80000556:	f406                	sd	ra,40(sp)
    80000558:	f022                	sd	s0,32(sp)
    8000055a:	1800                	addi	s0,sp,48
    8000055c:	fca43c23          	sd	a0,-40(s0)
    80000560:	479d                	li	a5,7
    80000562:	fef42623          	sw	a5,-20(s0)
    80000566:	a0a1                	j	800005ae <print_uart_addr+0x5a>
    80000568:	fec42783          	lw	a5,-20(s0)
    8000056c:	0037979b          	slliw	a5,a5,0x3
    80000570:	2781                	sext.w	a5,a5
    80000572:	873e                	mv	a4,a5
    80000574:	fd843783          	ld	a5,-40(s0)
    80000578:	00e7d7b3          	srl	a5,a5,a4
    8000057c:	fef405a3          	sb	a5,-21(s0)
    80000580:	fe840713          	addi	a4,s0,-24
    80000584:	feb44783          	lbu	a5,-21(s0)
    80000588:	85ba                	mv	a1,a4
    8000058a:	853e                	mv	a0,a5
    8000058c:	efbff0ef          	jal	ra,80000486 <bin_to_hex>
    80000590:	fe844783          	lbu	a5,-24(s0)
    80000594:	853e                	mv	a0,a5
    80000596:	d95ff0ef          	jal	ra,8000032a <write_serial>
    8000059a:	fe944783          	lbu	a5,-23(s0)
    8000059e:	853e                	mv	a0,a5
    800005a0:	d8bff0ef          	jal	ra,8000032a <write_serial>
    800005a4:	fec42783          	lw	a5,-20(s0)
    800005a8:	37fd                	addiw	a5,a5,-1
    800005aa:	fef42623          	sw	a5,-20(s0)
    800005ae:	fec42783          	lw	a5,-20(s0)
    800005b2:	2781                	sext.w	a5,a5
    800005b4:	fa07dae3          	bgez	a5,80000568 <print_uart_addr+0x14>
    800005b8:	0001                	nop
    800005ba:	0001                	nop
    800005bc:	70a2                	ld	ra,40(sp)
    800005be:	7402                	ld	s0,32(sp)
    800005c0:	6145                	addi	sp,sp,48
    800005c2:	8082                	ret

00000000800005c4 <print_uart_byte>:
    800005c4:	7179                	addi	sp,sp,-48
    800005c6:	f406                	sd	ra,40(sp)
    800005c8:	f022                	sd	s0,32(sp)
    800005ca:	1800                	addi	s0,sp,48
    800005cc:	87aa                	mv	a5,a0
    800005ce:	fcf40fa3          	sb	a5,-33(s0)
    800005d2:	fe840713          	addi	a4,s0,-24
    800005d6:	fdf44783          	lbu	a5,-33(s0)
    800005da:	85ba                	mv	a1,a4
    800005dc:	853e                	mv	a0,a5
    800005de:	ea9ff0ef          	jal	ra,80000486 <bin_to_hex>
    800005e2:	fe844783          	lbu	a5,-24(s0)
    800005e6:	853e                	mv	a0,a5
    800005e8:	d43ff0ef          	jal	ra,8000032a <write_serial>
    800005ec:	fe944783          	lbu	a5,-23(s0)
    800005f0:	853e                	mv	a0,a5
    800005f2:	d39ff0ef          	jal	ra,8000032a <write_serial>
    800005f6:	0001                	nop
    800005f8:	70a2                	ld	ra,40(sp)
    800005fa:	7402                	ld	s0,32(sp)
    800005fc:	6145                	addi	sp,sp,48
    800005fe:	8082                	ret

0000000080000600 <read_seed_input_from_uart>:
    80000600:	7179                	addi	sp,sp,-48
    80000602:	f406                	sd	ra,40(sp)
    80000604:	f022                	sd	s0,32(sp)
    80000606:	1800                	addi	s0,sp,48
    80000608:	fca43c23          	sd	a0,-40(s0)
    8000060c:	fcb43823          	sd	a1,-48(s0)
    80000610:	12818513          	addi	a0,gp,296 # 80001928 <atol+0xe2>
    80000614:	e2fff0ef          	jal	ra,80000442 <print_uart>
    80000618:	fd043783          	ld	a5,-48(s0)
    8000061c:	2781                	sext.w	a5,a5
    8000061e:	853e                	mv	a0,a5
    80000620:	ec3ff0ef          	jal	ra,800004e2 <print_uart_int>
    80000624:	14818513          	addi	a0,gp,328 # 80001948 <atol+0x102>
    80000628:	e1bff0ef          	jal	ra,80000442 <print_uart>
    8000062c:	fe043423          	sd	zero,-24(s0)
    80000630:	a0a1                	j	80000678 <read_seed_input_from_uart+0x78>
    80000632:	0001                	nop
    80000634:	fe740793          	addi	a5,s0,-25
    80000638:	853e                	mv	a0,a5
    8000063a:	d21ff0ef          	jal	ra,8000035a <read_serial>
    8000063e:	87aa                	mv	a5,a0
    80000640:	dbf5                	beqz	a5,80000634 <read_seed_input_from_uart+0x34>
    80000642:	fd843703          	ld	a4,-40(s0)
    80000646:	fe843783          	ld	a5,-24(s0)
    8000064a:	97ba                	add	a5,a5,a4
    8000064c:	fe744703          	lbu	a4,-25(s0)
    80000650:	00e78023          	sb	a4,0(a5)
    80000654:	16818513          	addi	a0,gp,360 # 80001968 <atol+0x122>
    80000658:	debff0ef          	jal	ra,80000442 <print_uart>
    8000065c:	fe744783          	lbu	a5,-25(s0)
    80000660:	853e                	mv	a0,a5
    80000662:	f63ff0ef          	jal	ra,800005c4 <print_uart_byte>
    80000666:	17818513          	addi	a0,gp,376 # 80001978 <atol+0x132>
    8000066a:	dd9ff0ef          	jal	ra,80000442 <print_uart>
    8000066e:	fe843783          	ld	a5,-24(s0)
    80000672:	0785                	addi	a5,a5,1
    80000674:	fef43423          	sd	a5,-24(s0)
    80000678:	fe843703          	ld	a4,-24(s0)
    8000067c:	fd043783          	ld	a5,-48(s0)
    80000680:	faf769e3          	bltu	a4,a5,80000632 <read_seed_input_from_uart+0x32>
    80000684:	0001                	nop
    80000686:	0001                	nop
    80000688:	70a2                	ld	ra,40(sp)
    8000068a:	7402                	ld	s0,32(sp)
    8000068c:	6145                	addi	sp,sp,48
    8000068e:	8082                	ret

0000000080000690 <read_uint32_from_uart>:
    80000690:	1101                	addi	sp,sp,-32
    80000692:	ec06                	sd	ra,24(sp)
    80000694:	e822                	sd	s0,16(sp)
    80000696:	1000                	addi	s0,sp,32
    80000698:	fe042623          	sw	zero,-20(s0)
    8000069c:	fe042423          	sw	zero,-24(s0)
    800006a0:	a8a9                	j	800006fa <read_uint32_from_uart+0x6a>
    800006a2:	0001                	nop
    800006a4:	fe740793          	addi	a5,s0,-25
    800006a8:	853e                	mv	a0,a5
    800006aa:	cb1ff0ef          	jal	ra,8000035a <read_serial>
    800006ae:	87aa                	mv	a5,a0
    800006b0:	dbf5                	beqz	a5,800006a4 <read_uint32_from_uart+0x14>
    800006b2:	fe744783          	lbu	a5,-25(s0)
    800006b6:	0007871b          	sext.w	a4,a5
    800006ba:	fe842783          	lw	a5,-24(s0)
    800006be:	0037979b          	slliw	a5,a5,0x3
    800006c2:	2781                	sext.w	a5,a5
    800006c4:	00f717bb          	sllw	a5,a4,a5
    800006c8:	2781                	sext.w	a5,a5
    800006ca:	2781                	sext.w	a5,a5
    800006cc:	fec42703          	lw	a4,-20(s0)
    800006d0:	8fd9                	or	a5,a5,a4
    800006d2:	fef42623          	sw	a5,-20(s0)
    800006d6:	18018513          	addi	a0,gp,384 # 80001980 <atol+0x13a>
    800006da:	d69ff0ef          	jal	ra,80000442 <print_uart>
    800006de:	fe744783          	lbu	a5,-25(s0)
    800006e2:	853e                	mv	a0,a5
    800006e4:	ee1ff0ef          	jal	ra,800005c4 <print_uart_byte>
    800006e8:	17818513          	addi	a0,gp,376 # 80001978 <atol+0x132>
    800006ec:	d57ff0ef          	jal	ra,80000442 <print_uart>
    800006f0:	fe842783          	lw	a5,-24(s0)
    800006f4:	2785                	addiw	a5,a5,1
    800006f6:	fef42423          	sw	a5,-24(s0)
    800006fa:	fe842783          	lw	a5,-24(s0)
    800006fe:	0007871b          	sext.w	a4,a5
    80000702:	478d                	li	a5,3
    80000704:	f8e7dfe3          	ble	a4,a5,800006a2 <read_uint32_from_uart+0x12>
    80000708:	fec42783          	lw	a5,-20(s0)
    8000070c:	853e                	mv	a0,a5
    8000070e:	60e2                	ld	ra,24(sp)
    80000710:	6442                	ld	s0,16(sp)
    80000712:	6105                	addi	sp,sp,32
    80000714:	8082                	ret

0000000080000716 <main>:
    80000716:	1141                	addi	sp,sp,-16
    80000718:	e406                	sd	ra,8(sp)
    8000071a:	e022                	sd	s0,0(sp)
    8000071c:	0800                	addi	s0,sp,16
    8000071e:	1a018513          	addi	a0,gp,416 # 800019a0 <atol+0x15a>
    80000722:	d21ff0ef          	jal	ra,80000442 <print_uart>
    80000726:	4781                	li	a5,0
    80000728:	853e                	mv	a0,a5
    8000072a:	60a2                	ld	ra,8(sp)
    8000072c:	6402                	ld	s0,0(sp)
    8000072e:	0141                	addi	sp,sp,16
    80000730:	8082                	ret

0000000080000732 <verify>:
    80000732:	715d                	addi	sp,sp,-80
    80000734:	e4a2                	sd	s0,72(sp)
    80000736:	0880                	addi	s0,sp,80
    80000738:	87aa                	mv	a5,a0
    8000073a:	fcb43023          	sd	a1,-64(s0)
    8000073e:	fac43c23          	sd	a2,-72(s0)
    80000742:	fcf42623          	sw	a5,-52(s0)
    80000746:	fe042623          	sw	zero,-20(s0)
    8000074a:	a841                	j	800007da <verify+0xa8>
    8000074c:	fec42783          	lw	a5,-20(s0)
    80000750:	078a                	slli	a5,a5,0x2
    80000752:	fc043703          	ld	a4,-64(s0)
    80000756:	97ba                	add	a5,a5,a4
    80000758:	439c                	lw	a5,0(a5)
    8000075a:	fef42423          	sw	a5,-24(s0)
    8000075e:	fec42783          	lw	a5,-20(s0)
    80000762:	0785                	addi	a5,a5,1
    80000764:	078a                	slli	a5,a5,0x2
    80000766:	fc043703          	ld	a4,-64(s0)
    8000076a:	97ba                	add	a5,a5,a4
    8000076c:	439c                	lw	a5,0(a5)
    8000076e:	fef42223          	sw	a5,-28(s0)
    80000772:	fec42783          	lw	a5,-20(s0)
    80000776:	078a                	slli	a5,a5,0x2
    80000778:	fb843703          	ld	a4,-72(s0)
    8000077c:	97ba                	add	a5,a5,a4
    8000077e:	439c                	lw	a5,0(a5)
    80000780:	fef42023          	sw	a5,-32(s0)
    80000784:	fec42783          	lw	a5,-20(s0)
    80000788:	0785                	addi	a5,a5,1
    8000078a:	078a                	slli	a5,a5,0x2
    8000078c:	fb843703          	ld	a4,-72(s0)
    80000790:	97ba                	add	a5,a5,a4
    80000792:	439c                	lw	a5,0(a5)
    80000794:	fcf42e23          	sw	a5,-36(s0)
    80000798:	fe842783          	lw	a5,-24(s0)
    8000079c:	873e                	mv	a4,a5
    8000079e:	fe042783          	lw	a5,-32(s0)
    800007a2:	2701                	sext.w	a4,a4
    800007a4:	2781                	sext.w	a5,a5
    800007a6:	00f70763          	beq	a4,a5,800007b4 <verify+0x82>
    800007aa:	fec42783          	lw	a5,-20(s0)
    800007ae:	2785                	addiw	a5,a5,1
    800007b0:	2781                	sext.w	a5,a5
    800007b2:	a059                	j	80000838 <verify+0x106>
    800007b4:	fe442783          	lw	a5,-28(s0)
    800007b8:	873e                	mv	a4,a5
    800007ba:	fdc42783          	lw	a5,-36(s0)
    800007be:	2701                	sext.w	a4,a4
    800007c0:	2781                	sext.w	a5,a5
    800007c2:	00f70763          	beq	a4,a5,800007d0 <verify+0x9e>
    800007c6:	fec42783          	lw	a5,-20(s0)
    800007ca:	2789                	addiw	a5,a5,2
    800007cc:	2781                	sext.w	a5,a5
    800007ce:	a0ad                	j	80000838 <verify+0x106>
    800007d0:	fec42783          	lw	a5,-20(s0)
    800007d4:	2789                	addiw	a5,a5,2
    800007d6:	fef42623          	sw	a5,-20(s0)
    800007da:	fcc42783          	lw	a5,-52(s0)
    800007de:	01f7d71b          	srliw	a4,a5,0x1f
    800007e2:	9fb9                	addw	a5,a5,a4
    800007e4:	4017d79b          	sraiw	a5,a5,0x1
    800007e8:	2781                	sext.w	a5,a5
    800007ea:	0017979b          	slliw	a5,a5,0x1
    800007ee:	0007871b          	sext.w	a4,a5
    800007f2:	fec42783          	lw	a5,-20(s0)
    800007f6:	2781                	sext.w	a5,a5
    800007f8:	f4e7cae3          	blt	a5,a4,8000074c <verify+0x1a>
    800007fc:	fcc42783          	lw	a5,-52(s0)
    80000800:	8b85                	andi	a5,a5,1
    80000802:	2781                	sext.w	a5,a5
    80000804:	cb8d                	beqz	a5,80000836 <verify+0x104>
    80000806:	fcc42783          	lw	a5,-52(s0)
    8000080a:	078a                	slli	a5,a5,0x2
    8000080c:	17f1                	addi	a5,a5,-4
    8000080e:	fc043703          	ld	a4,-64(s0)
    80000812:	97ba                	add	a5,a5,a4
    80000814:	439c                	lw	a5,0(a5)
    80000816:	0007869b          	sext.w	a3,a5
    8000081a:	fcc42783          	lw	a5,-52(s0)
    8000081e:	078a                	slli	a5,a5,0x2
    80000820:	17f1                	addi	a5,a5,-4
    80000822:	fb843703          	ld	a4,-72(s0)
    80000826:	97ba                	add	a5,a5,a4
    80000828:	439c                	lw	a5,0(a5)
    8000082a:	8736                	mv	a4,a3
    8000082c:	00f70563          	beq	a4,a5,80000836 <verify+0x104>
    80000830:	fcc42783          	lw	a5,-52(s0)
    80000834:	a011                	j	80000838 <verify+0x106>
    80000836:	4781                	li	a5,0
    80000838:	853e                	mv	a0,a5
    8000083a:	6426                	ld	s0,72(sp)
    8000083c:	6161                	addi	sp,sp,80
    8000083e:	8082                	ret

0000000080000840 <verifyDouble>:
    80000840:	711d                	addi	sp,sp,-96
    80000842:	eca2                	sd	s0,88(sp)
    80000844:	1080                	addi	s0,sp,96
    80000846:	87aa                	mv	a5,a0
    80000848:	fab43823          	sd	a1,-80(s0)
    8000084c:	fac43423          	sd	a2,-88(s0)
    80000850:	faf42e23          	sw	a5,-68(s0)
    80000854:	fe042623          	sw	zero,-20(s0)
    80000858:	a06d                	j	80000902 <verifyDouble+0xc2>
    8000085a:	fec42783          	lw	a5,-20(s0)
    8000085e:	078e                	slli	a5,a5,0x3
    80000860:	fb043703          	ld	a4,-80(s0)
    80000864:	97ba                	add	a5,a5,a4
    80000866:	239c                	fld	fa5,0(a5)
    80000868:	fef43027          	fsd	fa5,-32(s0)
    8000086c:	fec42783          	lw	a5,-20(s0)
    80000870:	0785                	addi	a5,a5,1
    80000872:	078e                	slli	a5,a5,0x3
    80000874:	fb043703          	ld	a4,-80(s0)
    80000878:	97ba                	add	a5,a5,a4
    8000087a:	239c                	fld	fa5,0(a5)
    8000087c:	fcf43c27          	fsd	fa5,-40(s0)
    80000880:	fec42783          	lw	a5,-20(s0)
    80000884:	078e                	slli	a5,a5,0x3
    80000886:	fa843703          	ld	a4,-88(s0)
    8000088a:	97ba                	add	a5,a5,a4
    8000088c:	239c                	fld	fa5,0(a5)
    8000088e:	fcf43827          	fsd	fa5,-48(s0)
    80000892:	fec42783          	lw	a5,-20(s0)
    80000896:	0785                	addi	a5,a5,1
    80000898:	078e                	slli	a5,a5,0x3
    8000089a:	fa843703          	ld	a4,-88(s0)
    8000089e:	97ba                	add	a5,a5,a4
    800008a0:	239c                	fld	fa5,0(a5)
    800008a2:	fcf43427          	fsd	fa5,-56(s0)
    800008a6:	fe043707          	fld	fa4,-32(s0)
    800008aa:	fd043787          	fld	fa5,-48(s0)
    800008ae:	a2f727d3          	feq.d	a5,fa4,fa5
    800008b2:	00f037b3          	snez	a5,a5
    800008b6:	0ff7f793          	andi	a5,a5,255
    800008ba:	fcf42223          	sw	a5,-60(s0)
    800008be:	fd843707          	fld	fa4,-40(s0)
    800008c2:	fc843787          	fld	fa5,-56(s0)
    800008c6:	a2f727d3          	feq.d	a5,fa4,fa5
    800008ca:	00f037b3          	snez	a5,a5
    800008ce:	0ff7f793          	andi	a5,a5,255
    800008d2:	fcf42023          	sw	a5,-64(s0)
    800008d6:	fc442783          	lw	a5,-60(s0)
    800008da:	873e                	mv	a4,a5
    800008dc:	fc042783          	lw	a5,-64(s0)
    800008e0:	8ff9                	and	a5,a5,a4
    800008e2:	2781                	sext.w	a5,a5
    800008e4:	eb91                	bnez	a5,800008f8 <verifyDouble+0xb8>
    800008e6:	fec42783          	lw	a5,-20(s0)
    800008ea:	2785                	addiw	a5,a5,1
    800008ec:	2781                	sext.w	a5,a5
    800008ee:	fc442703          	lw	a4,-60(s0)
    800008f2:	9fb9                	addw	a5,a5,a4
    800008f4:	2781                	sext.w	a5,a5
    800008f6:	a09d                	j	8000095c <verifyDouble+0x11c>
    800008f8:	fec42783          	lw	a5,-20(s0)
    800008fc:	2789                	addiw	a5,a5,2
    800008fe:	fef42623          	sw	a5,-20(s0)
    80000902:	fbc42783          	lw	a5,-68(s0)
    80000906:	01f7d71b          	srliw	a4,a5,0x1f
    8000090a:	9fb9                	addw	a5,a5,a4
    8000090c:	4017d79b          	sraiw	a5,a5,0x1
    80000910:	2781                	sext.w	a5,a5
    80000912:	0017979b          	slliw	a5,a5,0x1
    80000916:	0007871b          	sext.w	a4,a5
    8000091a:	fec42783          	lw	a5,-20(s0)
    8000091e:	2781                	sext.w	a5,a5
    80000920:	f2e7cde3          	blt	a5,a4,8000085a <verifyDouble+0x1a>
    80000924:	fbc42783          	lw	a5,-68(s0)
    80000928:	8b85                	andi	a5,a5,1
    8000092a:	2781                	sext.w	a5,a5
    8000092c:	c79d                	beqz	a5,8000095a <verifyDouble+0x11a>
    8000092e:	fbc42783          	lw	a5,-68(s0)
    80000932:	078e                	slli	a5,a5,0x3
    80000934:	17e1                	addi	a5,a5,-8
    80000936:	fb043703          	ld	a4,-80(s0)
    8000093a:	97ba                	add	a5,a5,a4
    8000093c:	2398                	fld	fa4,0(a5)
    8000093e:	fbc42783          	lw	a5,-68(s0)
    80000942:	078e                	slli	a5,a5,0x3
    80000944:	17e1                	addi	a5,a5,-8
    80000946:	fa843703          	ld	a4,-88(s0)
    8000094a:	97ba                	add	a5,a5,a4
    8000094c:	239c                	fld	fa5,0(a5)
    8000094e:	a2f727d3          	feq.d	a5,fa4,fa5
    80000952:	e781                	bnez	a5,8000095a <verifyDouble+0x11a>
    80000954:	fbc42783          	lw	a5,-68(s0)
    80000958:	a011                	j	8000095c <verifyDouble+0x11c>
    8000095a:	4781                	li	a5,0
    8000095c:	853e                	mv	a0,a5
    8000095e:	6466                	ld	s0,88(sp)
    80000960:	6125                	addi	sp,sp,96
    80000962:	8082                	ret

0000000080000964 <barrier>:
    80000964:	1101                	addi	sp,sp,-32
    80000966:	ec22                	sd	s0,24(sp)
    80000968:	1000                	addi	s0,sp,32
    8000096a:	87aa                	mv	a5,a0
    8000096c:	fef42623          	sw	a5,-20(s0)
    80000970:	0ff0000f          	fence
    80000974:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    80000978:	0017b793          	seqz	a5,a5
    8000097c:	0ff7f793          	andi	a5,a5,255
    80000980:	0007871b          	sext.w	a4,a5
    80000984:	00e22023          	sw	a4,0(tp) # 0 <threadsense.4>
    80000988:	38018793          	addi	a5,gp,896 # 80001b80 <count.1>
    8000098c:	4705                	li	a4,1
    8000098e:	0f50000f          	fence	iorw,ow
    80000992:	04e7a6af          	amoadd.w.aq	a3,a4,(a5)
    80000996:	0006879b          	sext.w	a5,a3
    8000099a:	0007871b          	sext.w	a4,a5
    8000099e:	fec42783          	lw	a5,-20(s0)
    800009a2:	37fd                	addiw	a5,a5,-1
    800009a4:	2781                	sext.w	a5,a5
    800009a6:	00f71c63          	bne	a4,a5,800009be <barrier+0x5a>
    800009aa:	38018793          	addi	a5,gp,896 # 80001b80 <count.1>
    800009ae:	0007a023          	sw	zero,0(a5)
    800009b2:	00022703          	lw	a4,0(tp) # 0 <threadsense.4>
    800009b6:	38418793          	addi	a5,gp,900 # 80001b84 <sense.0>
    800009ba:	c398                	sw	a4,0(a5)
    800009bc:	a819                	j	800009d2 <barrier+0x6e>
    800009be:	0001                	nop
    800009c0:	38418793          	addi	a5,gp,900 # 80001b84 <sense.0>
    800009c4:	439c                	lw	a5,0(a5)
    800009c6:	0007871b          	sext.w	a4,a5
    800009ca:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    800009ce:	fef719e3          	bne	a4,a5,800009c0 <barrier+0x5c>
    800009d2:	0ff0000f          	fence
    800009d6:	0001                	nop
    800009d8:	6462                	ld	s0,24(sp)
    800009da:	6105                	addi	sp,sp,32
    800009dc:	8082                	ret

00000000800009de <lfsr>:
    800009de:	7179                	addi	sp,sp,-48
    800009e0:	f422                	sd	s0,40(sp)
    800009e2:	1800                	addi	s0,sp,48
    800009e4:	fca43c23          	sd	a0,-40(s0)
    800009e8:	fd843783          	ld	a5,-40(s0)
    800009ec:	0017d713          	srli	a4,a5,0x1
    800009f0:	fd843783          	ld	a5,-40(s0)
    800009f4:	8fb9                	xor	a5,a5,a4
    800009f6:	8b85                	andi	a5,a5,1
    800009f8:	fef43423          	sd	a5,-24(s0)
    800009fc:	fd843783          	ld	a5,-40(s0)
    80000a00:	0017d713          	srli	a4,a5,0x1
    80000a04:	fe843783          	ld	a5,-24(s0)
    80000a08:	17fa                	slli	a5,a5,0x3e
    80000a0a:	8fd9                	or	a5,a5,a4
    80000a0c:	853e                	mv	a0,a5
    80000a0e:	7422                	ld	s0,40(sp)
    80000a10:	6145                	addi	sp,sp,48
    80000a12:	8082                	ret

0000000080000a14 <insn_len>:
    80000a14:	1101                	addi	sp,sp,-32
    80000a16:	ec22                	sd	s0,24(sp)
    80000a18:	1000                	addi	s0,sp,32
    80000a1a:	fea43423          	sd	a0,-24(s0)
    80000a1e:	fe843783          	ld	a5,-24(s0)
    80000a22:	0007d783          	lhu	a5,0(a5)
    80000a26:	2781                	sext.w	a5,a5
    80000a28:	8b8d                	andi	a5,a5,3
    80000a2a:	2781                	sext.w	a5,a5
    80000a2c:	c399                	beqz	a5,80000a32 <insn_len+0x1e>
    80000a2e:	4791                	li	a5,4
    80000a30:	a011                	j	80000a34 <insn_len+0x20>
    80000a32:	4789                	li	a5,2
    80000a34:	853e                	mv	a0,a5
    80000a36:	6462                	ld	s0,24(sp)
    80000a38:	6105                	addi	sp,sp,32
    80000a3a:	8082                	ret

0000000080000a3c <syscall>:
    80000a3c:	7171                	addi	sp,sp,-176
    80000a3e:	f522                	sd	s0,168(sp)
    80000a40:	1900                	addi	s0,sp,176
    80000a42:	f6a43c23          	sd	a0,-136(s0)
    80000a46:	f6b43823          	sd	a1,-144(s0)
    80000a4a:	f6c43423          	sd	a2,-152(s0)
    80000a4e:	f6d43023          	sd	a3,-160(s0)
    80000a52:	ff040793          	addi	a5,s0,-16
    80000a56:	f4f43c23          	sd	a5,-168(s0)
    80000a5a:	f5843783          	ld	a5,-168(s0)
    80000a5e:	f9078793          	addi	a5,a5,-112
    80000a62:	03f78793          	addi	a5,a5,63
    80000a66:	8399                	srli	a5,a5,0x6
    80000a68:	079a                	slli	a5,a5,0x6
    80000a6a:	f7843703          	ld	a4,-136(s0)
    80000a6e:	e398                	sd	a4,0(a5)
    80000a70:	f7043703          	ld	a4,-144(s0)
    80000a74:	e798                	sd	a4,8(a5)
    80000a76:	f6843703          	ld	a4,-152(s0)
    80000a7a:	eb98                	sd	a4,16(a5)
    80000a7c:	f6043703          	ld	a4,-160(s0)
    80000a80:	ef98                	sd	a4,24(a5)
    80000a82:	0ff0000f          	fence
    80000a86:	86be                	mv	a3,a5
    80000a88:	577d                	li	a4,-1
    80000a8a:	8341                	srli	a4,a4,0x10
    80000a8c:	8ef9                	and	a3,a3,a4
    80000a8e:	fffff717          	auipc	a4,0xfffff
    80000a92:	77270713          	addi	a4,a4,1906 # 80000200 <tohost>
    80000a96:	e314                	sd	a3,0(a4)
    80000a98:	0001                	nop
    80000a9a:	fffff717          	auipc	a4,0xfffff
    80000a9e:	7a670713          	addi	a4,a4,1958 # 80000240 <fromhost>
    80000aa2:	6318                	ld	a4,0(a4)
    80000aa4:	db7d                	beqz	a4,80000a9a <syscall+0x5e>
    80000aa6:	fffff717          	auipc	a4,0xfffff
    80000aaa:	79a70713          	addi	a4,a4,1946 # 80000240 <fromhost>
    80000aae:	00073023          	sd	zero,0(a4)
    80000ab2:	0ff0000f          	fence
    80000ab6:	639c                	ld	a5,0(a5)
    80000ab8:	853e                	mv	a0,a5
    80000aba:	742a                	ld	s0,168(sp)
    80000abc:	614d                	addi	sp,sp,176
    80000abe:	8082                	ret

0000000080000ac0 <setStats>:
    80000ac0:	715d                	addi	sp,sp,-80
    80000ac2:	e4a2                	sd	s0,72(sp)
    80000ac4:	0880                	addi	s0,sp,80
    80000ac6:	87aa                	mv	a5,a0
    80000ac8:	faf42e23          	sw	a5,-68(s0)
    80000acc:	fc042e23          	sw	zero,-36(s0)
    80000ad0:	fdc42783          	lw	a5,-36(s0)
    80000ad4:	0007871b          	sext.w	a4,a5
    80000ad8:	4785                	li	a5,1
    80000ada:	fee7cbe3          	blt	a5,a4,80000ad0 <setStats+0x10>
    80000ade:	b00027f3          	csrr	a5,mcycle
    80000ae2:	fcf43823          	sd	a5,-48(s0)
    80000ae6:	fd043783          	ld	a5,-48(s0)
    80000aea:	fef43423          	sd	a5,-24(s0)
    80000aee:	fbc42783          	lw	a5,-68(s0)
    80000af2:	2781                	sext.w	a5,a5
    80000af4:	e79d                	bnez	a5,80000b22 <setStats+0x62>
    80000af6:	36018713          	addi	a4,gp,864 # 80001b60 <counters>
    80000afa:	fdc42783          	lw	a5,-36(s0)
    80000afe:	078e                	slli	a5,a5,0x3
    80000b00:	97ba                	add	a5,a5,a4
    80000b02:	639c                	ld	a5,0(a5)
    80000b04:	fe843703          	ld	a4,-24(s0)
    80000b08:	40f707b3          	sub	a5,a4,a5
    80000b0c:	fef43423          	sd	a5,-24(s0)
    80000b10:	37018713          	addi	a4,gp,880 # 80001b70 <counter_names>
    80000b14:	fdc42783          	lw	a5,-36(s0)
    80000b18:	078e                	slli	a5,a5,0x3
    80000b1a:	97ba                	add	a5,a5,a4
    80000b1c:	1b018713          	addi	a4,gp,432 # 800019b0 <atol+0x16a>
    80000b20:	e398                	sd	a4,0(a5)
    80000b22:	fdc42783          	lw	a5,-36(s0)
    80000b26:	0017871b          	addiw	a4,a5,1
    80000b2a:	fce42e23          	sw	a4,-36(s0)
    80000b2e:	36018713          	addi	a4,gp,864 # 80001b60 <counters>
    80000b32:	078e                	slli	a5,a5,0x3
    80000b34:	97ba                	add	a5,a5,a4
    80000b36:	fe843703          	ld	a4,-24(s0)
    80000b3a:	e398                	sd	a4,0(a5)
    80000b3c:	fdc42783          	lw	a5,-36(s0)
    80000b40:	0007871b          	sext.w	a4,a5
    80000b44:	4785                	li	a5,1
    80000b46:	fee7cbe3          	blt	a5,a4,80000b3c <setStats+0x7c>
    80000b4a:	b02027f3          	csrr	a5,minstret
    80000b4e:	fcf43423          	sd	a5,-56(s0)
    80000b52:	fc843783          	ld	a5,-56(s0)
    80000b56:	fef43023          	sd	a5,-32(s0)
    80000b5a:	fbc42783          	lw	a5,-68(s0)
    80000b5e:	2781                	sext.w	a5,a5
    80000b60:	e79d                	bnez	a5,80000b8e <setStats+0xce>
    80000b62:	36018713          	addi	a4,gp,864 # 80001b60 <counters>
    80000b66:	fdc42783          	lw	a5,-36(s0)
    80000b6a:	078e                	slli	a5,a5,0x3
    80000b6c:	97ba                	add	a5,a5,a4
    80000b6e:	639c                	ld	a5,0(a5)
    80000b70:	fe043703          	ld	a4,-32(s0)
    80000b74:	40f707b3          	sub	a5,a4,a5
    80000b78:	fef43023          	sd	a5,-32(s0)
    80000b7c:	37018713          	addi	a4,gp,880 # 80001b70 <counter_names>
    80000b80:	fdc42783          	lw	a5,-36(s0)
    80000b84:	078e                	slli	a5,a5,0x3
    80000b86:	97ba                	add	a5,a5,a4
    80000b88:	1b818713          	addi	a4,gp,440 # 800019b8 <atol+0x172>
    80000b8c:	e398                	sd	a4,0(a5)
    80000b8e:	fdc42783          	lw	a5,-36(s0)
    80000b92:	0017871b          	addiw	a4,a5,1
    80000b96:	fce42e23          	sw	a4,-36(s0)
    80000b9a:	36018713          	addi	a4,gp,864 # 80001b60 <counters>
    80000b9e:	078e                	slli	a5,a5,0x3
    80000ba0:	97ba                	add	a5,a5,a4
    80000ba2:	fe043703          	ld	a4,-32(s0)
    80000ba6:	e398                	sd	a4,0(a5)
    80000ba8:	0001                	nop
    80000baa:	6426                	ld	s0,72(sp)
    80000bac:	6161                	addi	sp,sp,80
    80000bae:	8082                	ret

0000000080000bb0 <getStats>:
    80000bb0:	1101                	addi	sp,sp,-32
    80000bb2:	ec22                	sd	s0,24(sp)
    80000bb4:	1000                	addi	s0,sp,32
    80000bb6:	87aa                	mv	a5,a0
    80000bb8:	fef42623          	sw	a5,-20(s0)
    80000bbc:	36018713          	addi	a4,gp,864 # 80001b60 <counters>
    80000bc0:	fec42783          	lw	a5,-20(s0)
    80000bc4:	078e                	slli	a5,a5,0x3
    80000bc6:	97ba                	add	a5,a5,a4
    80000bc8:	639c                	ld	a5,0(a5)
    80000bca:	853e                	mv	a0,a5
    80000bcc:	6462                	ld	s0,24(sp)
    80000bce:	6105                	addi	sp,sp,32
    80000bd0:	8082                	ret

0000000080000bd2 <tohost_exit>:
    80000bd2:	1101                	addi	sp,sp,-32
    80000bd4:	ec22                	sd	s0,24(sp)
    80000bd6:	1000                	addi	s0,sp,32
    80000bd8:	fea43423          	sd	a0,-24(s0)
    80000bdc:	fe843783          	ld	a5,-24(s0)
    80000be0:	07c6                	slli	a5,a5,0x11
    80000be2:	83c1                	srli	a5,a5,0x10
    80000be4:	0017e713          	ori	a4,a5,1
    80000be8:	fffff797          	auipc	a5,0xfffff
    80000bec:	61878793          	addi	a5,a5,1560 # 80000200 <tohost>
    80000bf0:	e398                	sd	a4,0(a5)
    80000bf2:	0001                	nop
    80000bf4:	a001                	j	80000bf4 <tohost_exit+0x22>

0000000080000bf6 <handle_trap>:
    80000bf6:	7179                	addi	sp,sp,-48
    80000bf8:	f406                	sd	ra,40(sp)
    80000bfa:	f022                	sd	s0,32(sp)
    80000bfc:	1800                	addi	s0,sp,48
    80000bfe:	fea43423          	sd	a0,-24(s0)
    80000c02:	feb43023          	sd	a1,-32(s0)
    80000c06:	fcc43c23          	sd	a2,-40(s0)
    80000c0a:	53900513          	li	a0,1337
    80000c0e:	fc5ff0ef          	jal	ra,80000bd2 <tohost_exit>

0000000080000c12 <exit>:
    80000c12:	1101                	addi	sp,sp,-32
    80000c14:	ec06                	sd	ra,24(sp)
    80000c16:	e822                	sd	s0,16(sp)
    80000c18:	1000                	addi	s0,sp,32
    80000c1a:	87aa                	mv	a5,a0
    80000c1c:	fef42623          	sw	a5,-20(s0)
    80000c20:	fec42783          	lw	a5,-20(s0)
    80000c24:	853e                	mv	a0,a5
    80000c26:	fadff0ef          	jal	ra,80000bd2 <tohost_exit>

0000000080000c2a <abort>:
    80000c2a:	1141                	addi	sp,sp,-16
    80000c2c:	e406                	sd	ra,8(sp)
    80000c2e:	e022                	sd	s0,0(sp)
    80000c30:	0800                	addi	s0,sp,16
    80000c32:	08600513          	li	a0,134
    80000c36:	fddff0ef          	jal	ra,80000c12 <exit>

0000000080000c3a <printstr>:
    80000c3a:	7179                	addi	sp,sp,-48
    80000c3c:	f406                	sd	ra,40(sp)
    80000c3e:	f022                	sd	s0,32(sp)
    80000c40:	ec26                	sd	s1,24(sp)
    80000c42:	1800                	addi	s0,sp,48
    80000c44:	fca43c23          	sd	a0,-40(s0)
    80000c48:	fd843483          	ld	s1,-40(s0)
    80000c4c:	fd843503          	ld	a0,-40(s0)
    80000c50:	2b1000ef          	jal	ra,80001700 <strlen>
    80000c54:	87aa                	mv	a5,a0
    80000c56:	86be                	mv	a3,a5
    80000c58:	8626                	mv	a2,s1
    80000c5a:	4585                	li	a1,1
    80000c5c:	04000513          	li	a0,64
    80000c60:	dddff0ef          	jal	ra,80000a3c <syscall>
    80000c64:	0001                	nop
    80000c66:	70a2                	ld	ra,40(sp)
    80000c68:	7402                	ld	s0,32(sp)
    80000c6a:	64e2                	ld	s1,24(sp)
    80000c6c:	6145                	addi	sp,sp,48
    80000c6e:	8082                	ret

0000000080000c70 <thread_entry>:
    80000c70:	1101                	addi	sp,sp,-32
    80000c72:	ec22                	sd	s0,24(sp)
    80000c74:	1000                	addi	s0,sp,32
    80000c76:	87aa                	mv	a5,a0
    80000c78:	872e                	mv	a4,a1
    80000c7a:	fef42623          	sw	a5,-20(s0)
    80000c7e:	87ba                	mv	a5,a4
    80000c80:	fef42423          	sw	a5,-24(s0)
    80000c84:	0001                	nop
    80000c86:	fec42783          	lw	a5,-20(s0)
    80000c8a:	2781                	sext.w	a5,a5
    80000c8c:	ffed                	bnez	a5,80000c86 <thread_entry+0x16>
    80000c8e:	0001                	nop
    80000c90:	0001                	nop
    80000c92:	6462                	ld	s0,24(sp)
    80000c94:	6105                	addi	sp,sp,32
    80000c96:	8082                	ret
    80000c98:	1101                	addi	sp,sp,-32
    80000c9a:	ec06                	sd	ra,24(sp)
    80000c9c:	e822                	sd	s0,16(sp)
    80000c9e:	1000                	addi	s0,sp,32
    80000ca0:	87aa                	mv	a5,a0
    80000ca2:	feb43023          	sd	a1,-32(s0)
    80000ca6:	fef42623          	sw	a5,-20(s0)
    80000caa:	1c818513          	addi	a0,gp,456 # 800019c8 <atol+0x182>
    80000cae:	f8dff0ef          	jal	ra,80000c3a <printstr>
    80000cb2:	57fd                	li	a5,-1
    80000cb4:	853e                	mv	a0,a5
    80000cb6:	60e2                	ld	ra,24(sp)
    80000cb8:	6442                	ld	s0,16(sp)
    80000cba:	6105                	addi	sp,sp,32
    80000cbc:	8082                	ret

0000000080000cbe <init_tls>:
    80000cbe:	1101                	addi	sp,sp,-32
    80000cc0:	ec06                	sd	ra,24(sp)
    80000cc2:	e822                	sd	s0,16(sp)
    80000cc4:	1000                	addi	s0,sp,32
    80000cc6:	00000717          	auipc	a4,0x0
    80000cca:	33a70713          	addi	a4,a4,826 # 80001000 <_tdata_begin>
    80000cce:	00000797          	auipc	a5,0x0
    80000cd2:	33278793          	addi	a5,a5,818 # 80001000 <_tdata_begin>
    80000cd6:	40f707b3          	sub	a5,a4,a5
    80000cda:	fef43423          	sd	a5,-24(s0)
    80000cde:	8792                	mv	a5,tp
    80000ce0:	fe843603          	ld	a2,-24(s0)
    80000ce4:	00000597          	auipc	a1,0x0
    80000ce8:	31c58593          	addi	a1,a1,796 # 80001000 <_tdata_begin>
    80000cec:	853e                	mv	a0,a5
    80000cee:	08d000ef          	jal	ra,8000157a <memcpy>
    80000cf2:	44418713          	addi	a4,gp,1092 # 80001c44 <_tbss_end>
    80000cf6:	00000797          	auipc	a5,0x0
    80000cfa:	30a78793          	addi	a5,a5,778 # 80001000 <_tdata_begin>
    80000cfe:	40f707b3          	sub	a5,a4,a5
    80000d02:	fef43023          	sd	a5,-32(s0)
    80000d06:	8712                	mv	a4,tp
    80000d08:	fe843783          	ld	a5,-24(s0)
    80000d0c:	97ba                	add	a5,a5,a4
    80000d0e:	fe043603          	ld	a2,-32(s0)
    80000d12:	4581                	li	a1,0
    80000d14:	853e                	mv	a0,a5
    80000d16:	11d000ef          	jal	ra,80001632 <memset>
    80000d1a:	0001                	nop
    80000d1c:	60e2                	ld	ra,24(sp)
    80000d1e:	6442                	ld	s0,16(sp)
    80000d20:	6105                	addi	sp,sp,32
    80000d22:	8082                	ret

0000000080000d24 <_init>:
    80000d24:	7171                	addi	sp,sp,-176
    80000d26:	f506                	sd	ra,168(sp)
    80000d28:	f122                	sd	s0,160(sp)
    80000d2a:	ed26                	sd	s1,152(sp)
    80000d2c:	1900                	addi	s0,sp,176
    80000d2e:	87aa                	mv	a5,a0
    80000d30:	872e                	mv	a4,a1
    80000d32:	f4f42e23          	sw	a5,-164(s0)
    80000d36:	87ba                	mv	a5,a4
    80000d38:	f4f42c23          	sw	a5,-168(s0)
    80000d3c:	fe040793          	addi	a5,s0,-32
    80000d40:	f4f43823          	sd	a5,-176(s0)
    80000d44:	f5043783          	ld	a5,-176(s0)
    80000d48:	f8078793          	addi	a5,a5,-128
    80000d4c:	03f78793          	addi	a5,a5,63
    80000d50:	8399                	srli	a5,a5,0x6
    80000d52:	00679493          	slli	s1,a5,0x6
    80000d56:	f69ff0ef          	jal	ra,80000cbe <init_tls>
    80000d5a:	f5842703          	lw	a4,-168(s0)
    80000d5e:	f5c42783          	lw	a5,-164(s0)
    80000d62:	85ba                	mv	a1,a4
    80000d64:	853e                	mv	a0,a5
    80000d66:	f0bff0ef          	jal	ra,80000c70 <thread_entry>
    80000d6a:	4581                	li	a1,0
    80000d6c:	4501                	li	a0,0
    80000d6e:	9a9ff0ef          	jal	ra,80000716 <main>
    80000d72:	87aa                	mv	a5,a0
    80000d74:	fcf42823          	sw	a5,-48(s0)
    80000d78:	fc943c23          	sd	s1,-40(s0)
    80000d7c:	fc042a23          	sw	zero,-44(s0)
    80000d80:	a891                	j	80000dd4 <_init+0xb0>
    80000d82:	36018713          	addi	a4,gp,864 # 80001b60 <counters>
    80000d86:	fd442783          	lw	a5,-44(s0)
    80000d8a:	078e                	slli	a5,a5,0x3
    80000d8c:	97ba                	add	a5,a5,a4
    80000d8e:	639c                	ld	a5,0(a5)
    80000d90:	cf8d                	beqz	a5,80000dca <_init+0xa6>
    80000d92:	37018713          	addi	a4,gp,880 # 80001b70 <counter_names>
    80000d96:	fd442783          	lw	a5,-44(s0)
    80000d9a:	078e                	slli	a5,a5,0x3
    80000d9c:	97ba                	add	a5,a5,a4
    80000d9e:	6390                	ld	a2,0(a5)
    80000da0:	36018713          	addi	a4,gp,864 # 80001b60 <counters>
    80000da4:	fd442783          	lw	a5,-44(s0)
    80000da8:	078e                	slli	a5,a5,0x3
    80000daa:	97ba                	add	a5,a5,a4
    80000dac:	639c                	ld	a5,0(a5)
    80000dae:	86be                	mv	a3,a5
    80000db0:	1e018593          	addi	a1,gp,480 # 800019e0 <atol+0x19a>
    80000db4:	fd843503          	ld	a0,-40(s0)
    80000db8:	74a000ef          	jal	ra,80001502 <sprintf>
    80000dbc:	87aa                	mv	a5,a0
    80000dbe:	873e                	mv	a4,a5
    80000dc0:	fd843783          	ld	a5,-40(s0)
    80000dc4:	97ba                	add	a5,a5,a4
    80000dc6:	fcf43c23          	sd	a5,-40(s0)
    80000dca:	fd442783          	lw	a5,-44(s0)
    80000dce:	2785                	addiw	a5,a5,1
    80000dd0:	fcf42a23          	sw	a5,-44(s0)
    80000dd4:	fd442783          	lw	a5,-44(s0)
    80000dd8:	0007871b          	sext.w	a4,a5
    80000ddc:	4785                	li	a5,1
    80000dde:	fae7d2e3          	ble	a4,a5,80000d82 <_init+0x5e>
    80000de2:	fd843783          	ld	a5,-40(s0)
    80000de6:	00f48563          	beq	s1,a5,80000df0 <_init+0xcc>
    80000dea:	8526                	mv	a0,s1
    80000dec:	e4fff0ef          	jal	ra,80000c3a <printstr>
    80000df0:	fd042783          	lw	a5,-48(s0)
    80000df4:	853e                	mv	a0,a5
    80000df6:	e1dff0ef          	jal	ra,80000c12 <exit>

0000000080000dfa <puts>:
    80000dfa:	7179                	addi	sp,sp,-48
    80000dfc:	f406                	sd	ra,40(sp)
    80000dfe:	f022                	sd	s0,32(sp)
    80000e00:	1800                	addi	s0,sp,48
    80000e02:	fca43c23          	sd	a0,-40(s0)
    80000e06:	fd843783          	ld	a5,-40(s0)
    80000e0a:	fef43423          	sd	a5,-24(s0)
    80000e0e:	a829                	j	80000e28 <puts+0x2e>
    80000e10:	fe843783          	ld	a5,-24(s0)
    80000e14:	00178713          	addi	a4,a5,1
    80000e18:	fee43423          	sd	a4,-24(s0)
    80000e1c:	0007c783          	lbu	a5,0(a5)
    80000e20:	2781                	sext.w	a5,a5
    80000e22:	853e                	mv	a0,a5
    80000e24:	020000ef          	jal	ra,80000e44 <putchar>
    80000e28:	fe843783          	ld	a5,-24(s0)
    80000e2c:	0007c783          	lbu	a5,0(a5)
    80000e30:	f3e5                	bnez	a5,80000e10 <puts+0x16>
    80000e32:	4529                	li	a0,10
    80000e34:	010000ef          	jal	ra,80000e44 <putchar>
    80000e38:	4781                	li	a5,0
    80000e3a:	853e                	mv	a0,a5
    80000e3c:	70a2                	ld	ra,40(sp)
    80000e3e:	7402                	ld	s0,32(sp)
    80000e40:	6145                	addi	sp,sp,48
    80000e42:	8082                	ret

0000000080000e44 <putchar>:
    80000e44:	1101                	addi	sp,sp,-32
    80000e46:	ec06                	sd	ra,24(sp)
    80000e48:	e822                	sd	s0,16(sp)
    80000e4a:	1000                	addi	s0,sp,32
    80000e4c:	87aa                	mv	a5,a0
    80000e4e:	fef42623          	sw	a5,-20(s0)
    80000e52:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80000e56:	0017871b          	addiw	a4,a5,1
    80000e5a:	0007069b          	sext.w	a3,a4
    80000e5e:	08d22023          	sw	a3,128(tp) # 80 <buflen.2>
    80000e62:	fec42703          	lw	a4,-20(s0)
    80000e66:	0ff77713          	andi	a4,a4,255
    80000e6a:	04020693          	addi	a3,tp,64 # 40 <buf.3>
    80000e6e:	97b6                	add	a5,a5,a3
    80000e70:	00e78023          	sb	a4,0(a5)
    80000e74:	fec42783          	lw	a5,-20(s0)
    80000e78:	0007871b          	sext.w	a4,a5
    80000e7c:	47a9                	li	a5,10
    80000e7e:	00f70963          	beq	a4,a5,80000e90 <putchar+0x4c>
    80000e82:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80000e86:	873e                	mv	a4,a5
    80000e88:	04000793          	li	a5,64
    80000e8c:	00f71f63          	bne	a4,a5,80000eaa <putchar+0x66>
    80000e90:	04020713          	addi	a4,tp,64 # 40 <buf.3>
    80000e94:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80000e98:	86be                	mv	a3,a5
    80000e9a:	863a                	mv	a2,a4
    80000e9c:	4585                	li	a1,1
    80000e9e:	04000513          	li	a0,64
    80000ea2:	b9bff0ef          	jal	ra,80000a3c <syscall>
    80000ea6:	08022023          	sw	zero,128(tp) # 80 <buflen.2>
    80000eaa:	4781                	li	a5,0
    80000eac:	853e                	mv	a0,a5
    80000eae:	60e2                	ld	ra,24(sp)
    80000eb0:	6442                	ld	s0,16(sp)
    80000eb2:	6105                	addi	sp,sp,32
    80000eb4:	8082                	ret

0000000080000eb6 <printhex>:
    80000eb6:	7139                	addi	sp,sp,-64
    80000eb8:	fc06                	sd	ra,56(sp)
    80000eba:	f822                	sd	s0,48(sp)
    80000ebc:	0080                	addi	s0,sp,64
    80000ebe:	fca43423          	sd	a0,-56(s0)
    80000ec2:	fe042623          	sw	zero,-20(s0)
    80000ec6:	a899                	j	80000f1c <printhex+0x66>
    80000ec8:	fc843783          	ld	a5,-56(s0)
    80000ecc:	0ff7f793          	andi	a5,a5,255
    80000ed0:	8bbd                	andi	a5,a5,15
    80000ed2:	0ff7f713          	andi	a4,a5,255
    80000ed6:	fc843783          	ld	a5,-56(s0)
    80000eda:	00f7f693          	andi	a3,a5,15
    80000ede:	47a5                	li	a5,9
    80000ee0:	00d7e563          	bltu	a5,a3,80000eea <printhex+0x34>
    80000ee4:	03000793          	li	a5,48
    80000ee8:	a019                	j	80000eee <printhex+0x38>
    80000eea:	05700793          	li	a5,87
    80000eee:	46bd                	li	a3,15
    80000ef0:	fec42603          	lw	a2,-20(s0)
    80000ef4:	9e91                	subw	a3,a3,a2
    80000ef6:	2681                	sext.w	a3,a3
    80000ef8:	9fb9                	addw	a5,a5,a4
    80000efa:	0ff7f713          	andi	a4,a5,255
    80000efe:	ff068793          	addi	a5,a3,-16
    80000f02:	97a2                	add	a5,a5,s0
    80000f04:	fee78423          	sb	a4,-24(a5)
    80000f08:	fc843783          	ld	a5,-56(s0)
    80000f0c:	8391                	srli	a5,a5,0x4
    80000f0e:	fcf43423          	sd	a5,-56(s0)
    80000f12:	fec42783          	lw	a5,-20(s0)
    80000f16:	2785                	addiw	a5,a5,1
    80000f18:	fef42623          	sw	a5,-20(s0)
    80000f1c:	fec42783          	lw	a5,-20(s0)
    80000f20:	0007871b          	sext.w	a4,a5
    80000f24:	47bd                	li	a5,15
    80000f26:	fae7d1e3          	ble	a4,a5,80000ec8 <printhex+0x12>
    80000f2a:	fe040423          	sb	zero,-24(s0)
    80000f2e:	fd840793          	addi	a5,s0,-40
    80000f32:	853e                	mv	a0,a5
    80000f34:	d07ff0ef          	jal	ra,80000c3a <printstr>
    80000f38:	0001                	nop
    80000f3a:	70e2                	ld	ra,56(sp)
    80000f3c:	7442                	ld	s0,48(sp)
    80000f3e:	6121                	addi	sp,sp,64
    80000f40:	8082                	ret

0000000080000f42 <printnum>:
    80000f42:	714d                	addi	sp,sp,-336
    80000f44:	e686                	sd	ra,328(sp)
    80000f46:	e2a2                	sd	s0,320(sp)
    80000f48:	0a80                	addi	s0,sp,336
    80000f4a:	eca43c23          	sd	a0,-296(s0)
    80000f4e:	ecb43823          	sd	a1,-304(s0)
    80000f52:	ecc43423          	sd	a2,-312(s0)
    80000f56:	8636                	mv	a2,a3
    80000f58:	86ba                	mv	a3,a4
    80000f5a:	873e                	mv	a4,a5
    80000f5c:	87b2                	mv	a5,a2
    80000f5e:	ecf42223          	sw	a5,-316(s0)
    80000f62:	87b6                	mv	a5,a3
    80000f64:	ecf42023          	sw	a5,-320(s0)
    80000f68:	87ba                	mv	a5,a4
    80000f6a:	eaf42e23          	sw	a5,-324(s0)
    80000f6e:	fe042623          	sw	zero,-20(s0)
    80000f72:	ec446783          	lwu	a5,-316(s0)
    80000f76:	ec843703          	ld	a4,-312(s0)
    80000f7a:	02f776b3          	remu	a3,a4,a5
    80000f7e:	fec42783          	lw	a5,-20(s0)
    80000f82:	0017871b          	addiw	a4,a5,1
    80000f86:	fee42623          	sw	a4,-20(s0)
    80000f8a:	0006871b          	sext.w	a4,a3
    80000f8e:	078a                	slli	a5,a5,0x2
    80000f90:	17c1                	addi	a5,a5,-16
    80000f92:	97a2                	add	a5,a5,s0
    80000f94:	eee7ac23          	sw	a4,-264(a5)
    80000f98:	ec446783          	lwu	a5,-316(s0)
    80000f9c:	ec843703          	ld	a4,-312(s0)
    80000fa0:	00f76b63          	bltu	a4,a5,80000fb6 <printnum+0x74>
    80000fa4:	ec446783          	lwu	a5,-316(s0)
    80000fa8:	ec843703          	ld	a4,-312(s0)
    80000fac:	02f757b3          	divu	a5,a4,a5
    80000fb0:	ecf43423          	sd	a5,-312(s0)
    80000fb4:	bf7d                	j	80000f72 <printnum+0x30>
    80000fb6:	0001                	nop
    80000fb8:	a809                	j	80000fca <printnum+0x88>
    80000fba:	ebc42703          	lw	a4,-324(s0)
    80000fbe:	ed843783          	ld	a5,-296(s0)
    80000fc2:	ed043583          	ld	a1,-304(s0)
    80000fc6:	853a                	mv	a0,a4
    80000fc8:	9782                	jalr	a5
    80000fca:	ec042783          	lw	a5,-320(s0)
    80000fce:	fff7871b          	addiw	a4,a5,-1
    80000fd2:	ece42023          	sw	a4,-320(s0)
    80000fd6:	fec42703          	lw	a4,-20(s0)
    80000fda:	2701                	sext.w	a4,a4
    80000fdc:	fcf74fe3          	blt	a4,a5,80000fba <printnum+0x78>
    80000fe0:	a091                	j	80001024 <_tdata_begin+0x24>
    80000fe2:	fec42783          	lw	a5,-20(s0)
    80000fe6:	078a                	slli	a5,a5,0x2
    80000fe8:	17c1                	addi	a5,a5,-16
    80000fea:	97a2                	add	a5,a5,s0
    80000fec:	ef87a703          	lw	a4,-264(a5)
    80000ff0:	fec42783          	lw	a5,-20(s0)
    80000ff4:	078a                	slli	a5,a5,0x2
    80000ff6:	17c1                	addi	a5,a5,-16
    80000ff8:	97a2                	add	a5,a5,s0
    80000ffa:	ef87a783          	lw	a5,-264(a5)
    80000ffe:	86be                	mv	a3,a5
    80001000:	47a5                	li	a5,9
    80001002:	00d7f563          	bleu	a3,a5,8000100c <_tdata_begin+0xc>
    80001006:	05700793          	li	a5,87
    8000100a:	a019                	j	80001010 <_tdata_begin+0x10>
    8000100c:	03000793          	li	a5,48
    80001010:	9fb9                	addw	a5,a5,a4
    80001012:	2781                	sext.w	a5,a5
    80001014:	0007871b          	sext.w	a4,a5
    80001018:	ed843783          	ld	a5,-296(s0)
    8000101c:	ed043583          	ld	a1,-304(s0)
    80001020:	853a                	mv	a0,a4
    80001022:	9782                	jalr	a5
    80001024:	fec42783          	lw	a5,-20(s0)
    80001028:	fff7871b          	addiw	a4,a5,-1
    8000102c:	fee42623          	sw	a4,-20(s0)
    80001030:	faf049e3          	bgtz	a5,80000fe2 <printnum+0xa0>
    80001034:	0001                	nop
    80001036:	0001                	nop
    80001038:	60b6                	ld	ra,328(sp)
    8000103a:	6416                	ld	s0,320(sp)
    8000103c:	6171                	addi	sp,sp,336
    8000103e:	8082                	ret

0000000080001040 <getuint>:
    80001040:	1101                	addi	sp,sp,-32
    80001042:	ec22                	sd	s0,24(sp)
    80001044:	1000                	addi	s0,sp,32
    80001046:	fea43423          	sd	a0,-24(s0)
    8000104a:	87ae                	mv	a5,a1
    8000104c:	fef42223          	sw	a5,-28(s0)
    80001050:	fe442783          	lw	a5,-28(s0)
    80001054:	0007871b          	sext.w	a4,a5
    80001058:	4785                	li	a5,1
    8000105a:	00e7dc63          	ble	a4,a5,80001072 <getuint+0x32>
    8000105e:	fe843783          	ld	a5,-24(s0)
    80001062:	639c                	ld	a5,0(a5)
    80001064:	00878693          	addi	a3,a5,8
    80001068:	fe843703          	ld	a4,-24(s0)
    8000106c:	e314                	sd	a3,0(a4)
    8000106e:	639c                	ld	a5,0(a5)
    80001070:	a815                	j	800010a4 <getuint+0x64>
    80001072:	fe442783          	lw	a5,-28(s0)
    80001076:	2781                	sext.w	a5,a5
    80001078:	cb99                	beqz	a5,8000108e <getuint+0x4e>
    8000107a:	fe843783          	ld	a5,-24(s0)
    8000107e:	639c                	ld	a5,0(a5)
    80001080:	00878693          	addi	a3,a5,8
    80001084:	fe843703          	ld	a4,-24(s0)
    80001088:	e314                	sd	a3,0(a4)
    8000108a:	639c                	ld	a5,0(a5)
    8000108c:	a821                	j	800010a4 <getuint+0x64>
    8000108e:	fe843783          	ld	a5,-24(s0)
    80001092:	639c                	ld	a5,0(a5)
    80001094:	00878693          	addi	a3,a5,8
    80001098:	fe843703          	ld	a4,-24(s0)
    8000109c:	e314                	sd	a3,0(a4)
    8000109e:	439c                	lw	a5,0(a5)
    800010a0:	1782                	slli	a5,a5,0x20
    800010a2:	9381                	srli	a5,a5,0x20
    800010a4:	853e                	mv	a0,a5
    800010a6:	6462                	ld	s0,24(sp)
    800010a8:	6105                	addi	sp,sp,32
    800010aa:	8082                	ret

00000000800010ac <getint>:
    800010ac:	1101                	addi	sp,sp,-32
    800010ae:	ec22                	sd	s0,24(sp)
    800010b0:	1000                	addi	s0,sp,32
    800010b2:	fea43423          	sd	a0,-24(s0)
    800010b6:	87ae                	mv	a5,a1
    800010b8:	fef42223          	sw	a5,-28(s0)
    800010bc:	fe442783          	lw	a5,-28(s0)
    800010c0:	0007871b          	sext.w	a4,a5
    800010c4:	4785                	li	a5,1
    800010c6:	00e7dc63          	ble	a4,a5,800010de <getint+0x32>
    800010ca:	fe843783          	ld	a5,-24(s0)
    800010ce:	639c                	ld	a5,0(a5)
    800010d0:	00878693          	addi	a3,a5,8
    800010d4:	fe843703          	ld	a4,-24(s0)
    800010d8:	e314                	sd	a3,0(a4)
    800010da:	639c                	ld	a5,0(a5)
    800010dc:	a805                	j	8000110c <getint+0x60>
    800010de:	fe442783          	lw	a5,-28(s0)
    800010e2:	2781                	sext.w	a5,a5
    800010e4:	cb99                	beqz	a5,800010fa <getint+0x4e>
    800010e6:	fe843783          	ld	a5,-24(s0)
    800010ea:	639c                	ld	a5,0(a5)
    800010ec:	00878693          	addi	a3,a5,8
    800010f0:	fe843703          	ld	a4,-24(s0)
    800010f4:	e314                	sd	a3,0(a4)
    800010f6:	639c                	ld	a5,0(a5)
    800010f8:	a811                	j	8000110c <getint+0x60>
    800010fa:	fe843783          	ld	a5,-24(s0)
    800010fe:	639c                	ld	a5,0(a5)
    80001100:	00878693          	addi	a3,a5,8
    80001104:	fe843703          	ld	a4,-24(s0)
    80001108:	e314                	sd	a3,0(a4)
    8000110a:	439c                	lw	a5,0(a5)
    8000110c:	853e                	mv	a0,a5
    8000110e:	6462                	ld	s0,24(sp)
    80001110:	6105                	addi	sp,sp,32
    80001112:	8082                	ret

0000000080001114 <vprintfmt>:
    80001114:	7159                	addi	sp,sp,-112
    80001116:	f486                	sd	ra,104(sp)
    80001118:	f0a2                	sd	s0,96(sp)
    8000111a:	eca6                	sd	s1,88(sp)
    8000111c:	e8ca                	sd	s2,80(sp)
    8000111e:	1880                	addi	s0,sp,112
    80001120:	faa43423          	sd	a0,-88(s0)
    80001124:	fab43023          	sd	a1,-96(s0)
    80001128:	f8c43c23          	sd	a2,-104(s0)
    8000112c:	f8d43823          	sd	a3,-112(s0)
    80001130:	a831                	j	8000114c <vprintfmt+0x38>
    80001132:	32048563          	beqz	s1,8000145c <vprintfmt+0x348>
    80001136:	f9843783          	ld	a5,-104(s0)
    8000113a:	0785                	addi	a5,a5,1
    8000113c:	f8f43c23          	sd	a5,-104(s0)
    80001140:	fa843783          	ld	a5,-88(s0)
    80001144:	fa043583          	ld	a1,-96(s0)
    80001148:	8526                	mv	a0,s1
    8000114a:	9782                	jalr	a5
    8000114c:	f9843783          	ld	a5,-104(s0)
    80001150:	0007c783          	lbu	a5,0(a5)
    80001154:	0007849b          	sext.w	s1,a5
    80001158:	8726                	mv	a4,s1
    8000115a:	02500793          	li	a5,37
    8000115e:	fcf71ae3          	bne	a4,a5,80001132 <vprintfmt+0x1e>
    80001162:	f9843783          	ld	a5,-104(s0)
    80001166:	0785                	addi	a5,a5,1
    80001168:	f8f43c23          	sd	a5,-104(s0)
    8000116c:	f9843783          	ld	a5,-104(s0)
    80001170:	faf43c23          	sd	a5,-72(s0)
    80001174:	02000793          	li	a5,32
    80001178:	fcf403a3          	sb	a5,-57(s0)
    8000117c:	57fd                	li	a5,-1
    8000117e:	fcf42623          	sw	a5,-52(s0)
    80001182:	57fd                	li	a5,-1
    80001184:	fcf42423          	sw	a5,-56(s0)
    80001188:	fc042823          	sw	zero,-48(s0)
    8000118c:	fa042a23          	sw	zero,-76(s0)
    80001190:	f9843783          	ld	a5,-104(s0)
    80001194:	00178713          	addi	a4,a5,1
    80001198:	f8e43c23          	sd	a4,-104(s0)
    8000119c:	0007c783          	lbu	a5,0(a5)
    800011a0:	0007849b          	sext.w	s1,a5
    800011a4:	fdd4869b          	addiw	a3,s1,-35
    800011a8:	0006871b          	sext.w	a4,a3
    800011ac:	05500793          	li	a5,85
    800011b0:	28e7e963          	bltu	a5,a4,80001442 <vprintfmt+0x32e>
    800011b4:	02069793          	slli	a5,a3,0x20
    800011b8:	9381                	srli	a5,a5,0x20
    800011ba:	00279713          	slli	a4,a5,0x2
    800011be:	1f818793          	addi	a5,gp,504 # 800019f8 <atol+0x1b2>
    800011c2:	97ba                	add	a5,a5,a4
    800011c4:	439c                	lw	a5,0(a5)
    800011c6:	0007871b          	sext.w	a4,a5
    800011ca:	1f818793          	addi	a5,gp,504 # 800019f8 <atol+0x1b2>
    800011ce:	97ba                	add	a5,a5,a4
    800011d0:	8782                	jr	a5
    800011d2:	02d00793          	li	a5,45
    800011d6:	fcf403a3          	sb	a5,-57(s0)
    800011da:	bf5d                	j	80001190 <vprintfmt+0x7c>
    800011dc:	03000793          	li	a5,48
    800011e0:	fcf403a3          	sb	a5,-57(s0)
    800011e4:	b775                	j	80001190 <vprintfmt+0x7c>
    800011e6:	fc042423          	sw	zero,-56(s0)
    800011ea:	fc842783          	lw	a5,-56(s0)
    800011ee:	873e                	mv	a4,a5
    800011f0:	87ba                	mv	a5,a4
    800011f2:	0027979b          	slliw	a5,a5,0x2
    800011f6:	9fb9                	addw	a5,a5,a4
    800011f8:	0017979b          	slliw	a5,a5,0x1
    800011fc:	2781                	sext.w	a5,a5
    800011fe:	9fa5                	addw	a5,a5,s1
    80001200:	2781                	sext.w	a5,a5
    80001202:	fd07879b          	addiw	a5,a5,-48
    80001206:	fcf42423          	sw	a5,-56(s0)
    8000120a:	f9843783          	ld	a5,-104(s0)
    8000120e:	0007c783          	lbu	a5,0(a5)
    80001212:	0007849b          	sext.w	s1,a5
    80001216:	8726                	mv	a4,s1
    80001218:	02f00793          	li	a5,47
    8000121c:	04e7d363          	ble	a4,a5,80001262 <vprintfmt+0x14e>
    80001220:	8726                	mv	a4,s1
    80001222:	03900793          	li	a5,57
    80001226:	02e7ce63          	blt	a5,a4,80001262 <vprintfmt+0x14e>
    8000122a:	f9843783          	ld	a5,-104(s0)
    8000122e:	0785                	addi	a5,a5,1
    80001230:	f8f43c23          	sd	a5,-104(s0)
    80001234:	bf5d                	j	800011ea <vprintfmt+0xd6>
    80001236:	f9043783          	ld	a5,-112(s0)
    8000123a:	00878713          	addi	a4,a5,8
    8000123e:	f8e43823          	sd	a4,-112(s0)
    80001242:	439c                	lw	a5,0(a5)
    80001244:	fcf42423          	sw	a5,-56(s0)
    80001248:	a831                	j	80001264 <vprintfmt+0x150>
    8000124a:	fcc42783          	lw	a5,-52(s0)
    8000124e:	2781                	sext.w	a5,a5
    80001250:	f407d0e3          	bgez	a5,80001190 <vprintfmt+0x7c>
    80001254:	fc042623          	sw	zero,-52(s0)
    80001258:	bf25                	j	80001190 <vprintfmt+0x7c>
    8000125a:	4785                	li	a5,1
    8000125c:	faf42a23          	sw	a5,-76(s0)
    80001260:	bf05                	j	80001190 <vprintfmt+0x7c>
    80001262:	0001                	nop
    80001264:	fcc42783          	lw	a5,-52(s0)
    80001268:	2781                	sext.w	a5,a5
    8000126a:	f207d3e3          	bgez	a5,80001190 <vprintfmt+0x7c>
    8000126e:	fc842783          	lw	a5,-56(s0)
    80001272:	fcf42623          	sw	a5,-52(s0)
    80001276:	57fd                	li	a5,-1
    80001278:	fcf42423          	sw	a5,-56(s0)
    8000127c:	bf11                	j	80001190 <vprintfmt+0x7c>
    8000127e:	fd042783          	lw	a5,-48(s0)
    80001282:	2785                	addiw	a5,a5,1
    80001284:	fcf42823          	sw	a5,-48(s0)
    80001288:	b721                	j	80001190 <vprintfmt+0x7c>
    8000128a:	f9043783          	ld	a5,-112(s0)
    8000128e:	00878713          	addi	a4,a5,8
    80001292:	f8e43823          	sd	a4,-112(s0)
    80001296:	4398                	lw	a4,0(a5)
    80001298:	fa843783          	ld	a5,-88(s0)
    8000129c:	fa043583          	ld	a1,-96(s0)
    800012a0:	853a                	mv	a0,a4
    800012a2:	9782                	jalr	a5
    800012a4:	aa5d                	j	8000145a <vprintfmt+0x346>
    800012a6:	f9043783          	ld	a5,-112(s0)
    800012aa:	00878713          	addi	a4,a5,8
    800012ae:	f8e43823          	sd	a4,-112(s0)
    800012b2:	0007b903          	ld	s2,0(a5)
    800012b6:	00091463          	bnez	s2,800012be <vprintfmt+0x1aa>
    800012ba:	1f018913          	addi	s2,gp,496 # 800019f0 <atol+0x1aa>
    800012be:	fcc42783          	lw	a5,-52(s0)
    800012c2:	2781                	sext.w	a5,a5
    800012c4:	06f05b63          	blez	a5,8000133a <vprintfmt+0x226>
    800012c8:	fc744783          	lbu	a5,-57(s0)
    800012cc:	0ff7f713          	andi	a4,a5,255
    800012d0:	02d00793          	li	a5,45
    800012d4:	06f70363          	beq	a4,a5,8000133a <vprintfmt+0x226>
    800012d8:	fcc42483          	lw	s1,-52(s0)
    800012dc:	fc842783          	lw	a5,-56(s0)
    800012e0:	85be                	mv	a1,a5
    800012e2:	854a                	mv	a0,s2
    800012e4:	458000ef          	jal	ra,8000173c <strnlen>
    800012e8:	87aa                	mv	a5,a0
    800012ea:	2781                	sext.w	a5,a5
    800012ec:	40f487bb          	subw	a5,s1,a5
    800012f0:	2781                	sext.w	a5,a5
    800012f2:	fcf42623          	sw	a5,-52(s0)
    800012f6:	a005                	j	80001316 <vprintfmt+0x202>
    800012f8:	fc744783          	lbu	a5,-57(s0)
    800012fc:	0007871b          	sext.w	a4,a5
    80001300:	fa843783          	ld	a5,-88(s0)
    80001304:	fa043583          	ld	a1,-96(s0)
    80001308:	853a                	mv	a0,a4
    8000130a:	9782                	jalr	a5
    8000130c:	fcc42783          	lw	a5,-52(s0)
    80001310:	37fd                	addiw	a5,a5,-1
    80001312:	fcf42623          	sw	a5,-52(s0)
    80001316:	fcc42783          	lw	a5,-52(s0)
    8000131a:	2781                	sext.w	a5,a5
    8000131c:	fcf04ee3          	bgtz	a5,800012f8 <vprintfmt+0x1e4>
    80001320:	a829                	j	8000133a <vprintfmt+0x226>
    80001322:	fa843783          	ld	a5,-88(s0)
    80001326:	fa043583          	ld	a1,-96(s0)
    8000132a:	8526                	mv	a0,s1
    8000132c:	9782                	jalr	a5
    8000132e:	0905                	addi	s2,s2,1
    80001330:	fcc42783          	lw	a5,-52(s0)
    80001334:	37fd                	addiw	a5,a5,-1
    80001336:	fcf42623          	sw	a5,-52(s0)
    8000133a:	00094783          	lbu	a5,0(s2)
    8000133e:	0007849b          	sext.w	s1,a5
    80001342:	cc8d                	beqz	s1,8000137c <vprintfmt+0x268>
    80001344:	fc842783          	lw	a5,-56(s0)
    80001348:	2781                	sext.w	a5,a5
    8000134a:	fc07cce3          	bltz	a5,80001322 <vprintfmt+0x20e>
    8000134e:	fc842783          	lw	a5,-56(s0)
    80001352:	37fd                	addiw	a5,a5,-1
    80001354:	fcf42423          	sw	a5,-56(s0)
    80001358:	fc842783          	lw	a5,-56(s0)
    8000135c:	2781                	sext.w	a5,a5
    8000135e:	fc07d2e3          	bgez	a5,80001322 <vprintfmt+0x20e>
    80001362:	a829                	j	8000137c <vprintfmt+0x268>
    80001364:	fa843783          	ld	a5,-88(s0)
    80001368:	fa043583          	ld	a1,-96(s0)
    8000136c:	02000513          	li	a0,32
    80001370:	9782                	jalr	a5
    80001372:	fcc42783          	lw	a5,-52(s0)
    80001376:	37fd                	addiw	a5,a5,-1
    80001378:	fcf42623          	sw	a5,-52(s0)
    8000137c:	fcc42783          	lw	a5,-52(s0)
    80001380:	2781                	sext.w	a5,a5
    80001382:	fef041e3          	bgtz	a5,80001364 <vprintfmt+0x250>
    80001386:	a8d1                	j	8000145a <vprintfmt+0x346>
    80001388:	fd042703          	lw	a4,-48(s0)
    8000138c:	f9040793          	addi	a5,s0,-112
    80001390:	85ba                	mv	a1,a4
    80001392:	853e                	mv	a0,a5
    80001394:	d19ff0ef          	jal	ra,800010ac <getint>
    80001398:	87aa                	mv	a5,a0
    8000139a:	fcf43c23          	sd	a5,-40(s0)
    8000139e:	fd843783          	ld	a5,-40(s0)
    800013a2:	0007df63          	bgez	a5,800013c0 <vprintfmt+0x2ac>
    800013a6:	fa843783          	ld	a5,-88(s0)
    800013aa:	fa043583          	ld	a1,-96(s0)
    800013ae:	02d00513          	li	a0,45
    800013b2:	9782                	jalr	a5
    800013b4:	fd843783          	ld	a5,-40(s0)
    800013b8:	40f007b3          	neg	a5,a5
    800013bc:	fcf43c23          	sd	a5,-40(s0)
    800013c0:	47a9                	li	a5,10
    800013c2:	fcf42a23          	sw	a5,-44(s0)
    800013c6:	a0b9                	j	80001414 <vprintfmt+0x300>
    800013c8:	47a9                	li	a5,10
    800013ca:	fcf42a23          	sw	a5,-44(s0)
    800013ce:	a80d                	j	80001400 <vprintfmt+0x2ec>
    800013d0:	47a1                	li	a5,8
    800013d2:	fcf42a23          	sw	a5,-44(s0)
    800013d6:	a02d                	j	80001400 <vprintfmt+0x2ec>
    800013d8:	4785                	li	a5,1
    800013da:	fcf42823          	sw	a5,-48(s0)
    800013de:	fa843783          	ld	a5,-88(s0)
    800013e2:	fa043583          	ld	a1,-96(s0)
    800013e6:	03000513          	li	a0,48
    800013ea:	9782                	jalr	a5
    800013ec:	fa843783          	ld	a5,-88(s0)
    800013f0:	fa043583          	ld	a1,-96(s0)
    800013f4:	07800513          	li	a0,120
    800013f8:	9782                	jalr	a5
    800013fa:	47c1                	li	a5,16
    800013fc:	fcf42a23          	sw	a5,-44(s0)
    80001400:	fd042703          	lw	a4,-48(s0)
    80001404:	f9040793          	addi	a5,s0,-112
    80001408:	85ba                	mv	a1,a4
    8000140a:	853e                	mv	a0,a5
    8000140c:	c35ff0ef          	jal	ra,80001040 <getuint>
    80001410:	fca43c23          	sd	a0,-40(s0)
    80001414:	fd442683          	lw	a3,-44(s0)
    80001418:	fc744783          	lbu	a5,-57(s0)
    8000141c:	2781                	sext.w	a5,a5
    8000141e:	fcc42703          	lw	a4,-52(s0)
    80001422:	fd843603          	ld	a2,-40(s0)
    80001426:	fa043583          	ld	a1,-96(s0)
    8000142a:	fa843503          	ld	a0,-88(s0)
    8000142e:	b15ff0ef          	jal	ra,80000f42 <printnum>
    80001432:	a025                	j	8000145a <vprintfmt+0x346>
    80001434:	fa843783          	ld	a5,-88(s0)
    80001438:	fa043583          	ld	a1,-96(s0)
    8000143c:	8526                	mv	a0,s1
    8000143e:	9782                	jalr	a5
    80001440:	a829                	j	8000145a <vprintfmt+0x346>
    80001442:	fa843783          	ld	a5,-88(s0)
    80001446:	fa043583          	ld	a1,-96(s0)
    8000144a:	02500513          	li	a0,37
    8000144e:	9782                	jalr	a5
    80001450:	fb843783          	ld	a5,-72(s0)
    80001454:	f8f43c23          	sd	a5,-104(s0)
    80001458:	0001                	nop
    8000145a:	b9cd                	j	8000114c <vprintfmt+0x38>
    8000145c:	0001                	nop
    8000145e:	70a6                	ld	ra,104(sp)
    80001460:	7406                	ld	s0,96(sp)
    80001462:	64e6                	ld	s1,88(sp)
    80001464:	6946                	ld	s2,80(sp)
    80001466:	6165                	addi	sp,sp,112
    80001468:	8082                	ret

000000008000146a <printf>:
    8000146a:	7159                	addi	sp,sp,-112
    8000146c:	f406                	sd	ra,40(sp)
    8000146e:	f022                	sd	s0,32(sp)
    80001470:	1800                	addi	s0,sp,48
    80001472:	fca43c23          	sd	a0,-40(s0)
    80001476:	e40c                	sd	a1,8(s0)
    80001478:	e810                	sd	a2,16(s0)
    8000147a:	ec14                	sd	a3,24(s0)
    8000147c:	f018                	sd	a4,32(s0)
    8000147e:	f41c                	sd	a5,40(s0)
    80001480:	03043823          	sd	a6,48(s0)
    80001484:	03143c23          	sd	a7,56(s0)
    80001488:	04040793          	addi	a5,s0,64
    8000148c:	fcf43823          	sd	a5,-48(s0)
    80001490:	fd043783          	ld	a5,-48(s0)
    80001494:	fc878793          	addi	a5,a5,-56
    80001498:	fef43423          	sd	a5,-24(s0)
    8000149c:	fe843783          	ld	a5,-24(s0)
    800014a0:	86be                	mv	a3,a5
    800014a2:	fd843603          	ld	a2,-40(s0)
    800014a6:	4581                	li	a1,0
    800014a8:	00000517          	auipc	a0,0x0
    800014ac:	99c50513          	addi	a0,a0,-1636 # 80000e44 <putchar>
    800014b0:	c65ff0ef          	jal	ra,80001114 <vprintfmt>
    800014b4:	4781                	li	a5,0
    800014b6:	853e                	mv	a0,a5
    800014b8:	70a2                	ld	ra,40(sp)
    800014ba:	7402                	ld	s0,32(sp)
    800014bc:	6165                	addi	sp,sp,112
    800014be:	8082                	ret

00000000800014c0 <sprintf_putch>:
    800014c0:	7179                	addi	sp,sp,-48
    800014c2:	f422                	sd	s0,40(sp)
    800014c4:	1800                	addi	s0,sp,48
    800014c6:	87aa                	mv	a5,a0
    800014c8:	fcb43823          	sd	a1,-48(s0)
    800014cc:	fcf42e23          	sw	a5,-36(s0)
    800014d0:	fd043783          	ld	a5,-48(s0)
    800014d4:	fef43423          	sd	a5,-24(s0)
    800014d8:	fe843783          	ld	a5,-24(s0)
    800014dc:	639c                	ld	a5,0(a5)
    800014de:	fdc42703          	lw	a4,-36(s0)
    800014e2:	0ff77713          	andi	a4,a4,255
    800014e6:	00e78023          	sb	a4,0(a5)
    800014ea:	fe843783          	ld	a5,-24(s0)
    800014ee:	639c                	ld	a5,0(a5)
    800014f0:	00178713          	addi	a4,a5,1
    800014f4:	fe843783          	ld	a5,-24(s0)
    800014f8:	e398                	sd	a4,0(a5)
    800014fa:	0001                	nop
    800014fc:	7422                	ld	s0,40(sp)
    800014fe:	6145                	addi	sp,sp,48
    80001500:	8082                	ret

0000000080001502 <sprintf>:
    80001502:	7159                	addi	sp,sp,-112
    80001504:	fc06                	sd	ra,56(sp)
    80001506:	f822                	sd	s0,48(sp)
    80001508:	0080                	addi	s0,sp,64
    8000150a:	fca43c23          	sd	a0,-40(s0)
    8000150e:	fcb43823          	sd	a1,-48(s0)
    80001512:	e010                	sd	a2,0(s0)
    80001514:	e414                	sd	a3,8(s0)
    80001516:	e818                	sd	a4,16(s0)
    80001518:	ec1c                	sd	a5,24(s0)
    8000151a:	03043023          	sd	a6,32(s0)
    8000151e:	03143423          	sd	a7,40(s0)
    80001522:	fd843783          	ld	a5,-40(s0)
    80001526:	fef43423          	sd	a5,-24(s0)
    8000152a:	03040793          	addi	a5,s0,48
    8000152e:	fcf43423          	sd	a5,-56(s0)
    80001532:	fc843783          	ld	a5,-56(s0)
    80001536:	fd078793          	addi	a5,a5,-48
    8000153a:	fef43023          	sd	a5,-32(s0)
    8000153e:	fe043703          	ld	a4,-32(s0)
    80001542:	fd840793          	addi	a5,s0,-40
    80001546:	86ba                	mv	a3,a4
    80001548:	fd043603          	ld	a2,-48(s0)
    8000154c:	85be                	mv	a1,a5
    8000154e:	00000517          	auipc	a0,0x0
    80001552:	f7250513          	addi	a0,a0,-142 # 800014c0 <sprintf_putch>
    80001556:	bbfff0ef          	jal	ra,80001114 <vprintfmt>
    8000155a:	fd843783          	ld	a5,-40(s0)
    8000155e:	00078023          	sb	zero,0(a5)
    80001562:	fd843703          	ld	a4,-40(s0)
    80001566:	fe843783          	ld	a5,-24(s0)
    8000156a:	40f707b3          	sub	a5,a4,a5
    8000156e:	2781                	sext.w	a5,a5
    80001570:	853e                	mv	a0,a5
    80001572:	70e2                	ld	ra,56(sp)
    80001574:	7442                	ld	s0,48(sp)
    80001576:	6165                	addi	sp,sp,112
    80001578:	8082                	ret

000000008000157a <memcpy>:
    8000157a:	715d                	addi	sp,sp,-80
    8000157c:	e4a2                	sd	s0,72(sp)
    8000157e:	0880                	addi	s0,sp,80
    80001580:	fca43423          	sd	a0,-56(s0)
    80001584:	fcb43023          	sd	a1,-64(s0)
    80001588:	fac43c23          	sd	a2,-72(s0)
    8000158c:	fc843703          	ld	a4,-56(s0)
    80001590:	fc043783          	ld	a5,-64(s0)
    80001594:	8f5d                	or	a4,a4,a5
    80001596:	fb843783          	ld	a5,-72(s0)
    8000159a:	8fd9                	or	a5,a5,a4
    8000159c:	8b9d                	andi	a5,a5,7
    8000159e:	e3b1                	bnez	a5,800015e2 <memcpy+0x68>
    800015a0:	fc043783          	ld	a5,-64(s0)
    800015a4:	fef43423          	sd	a5,-24(s0)
    800015a8:	fc843783          	ld	a5,-56(s0)
    800015ac:	fef43023          	sd	a5,-32(s0)
    800015b0:	a839                	j	800015ce <memcpy+0x54>
    800015b2:	fe843703          	ld	a4,-24(s0)
    800015b6:	00870793          	addi	a5,a4,8
    800015ba:	fef43423          	sd	a5,-24(s0)
    800015be:	fe043783          	ld	a5,-32(s0)
    800015c2:	00878693          	addi	a3,a5,8
    800015c6:	fed43023          	sd	a3,-32(s0)
    800015ca:	6318                	ld	a4,0(a4)
    800015cc:	e398                	sd	a4,0(a5)
    800015ce:	fc843703          	ld	a4,-56(s0)
    800015d2:	fb843783          	ld	a5,-72(s0)
    800015d6:	97ba                	add	a5,a5,a4
    800015d8:	fe043703          	ld	a4,-32(s0)
    800015dc:	fcf76be3          	bltu	a4,a5,800015b2 <memcpy+0x38>
    800015e0:	a099                	j	80001626 <memcpy+0xac>
    800015e2:	fc043783          	ld	a5,-64(s0)
    800015e6:	fcf43c23          	sd	a5,-40(s0)
    800015ea:	fc843783          	ld	a5,-56(s0)
    800015ee:	fcf43823          	sd	a5,-48(s0)
    800015f2:	a00d                	j	80001614 <memcpy+0x9a>
    800015f4:	fd843703          	ld	a4,-40(s0)
    800015f8:	00170793          	addi	a5,a4,1
    800015fc:	fcf43c23          	sd	a5,-40(s0)
    80001600:	fd043783          	ld	a5,-48(s0)
    80001604:	00178693          	addi	a3,a5,1
    80001608:	fcd43823          	sd	a3,-48(s0)
    8000160c:	00074703          	lbu	a4,0(a4)
    80001610:	00e78023          	sb	a4,0(a5)
    80001614:	fc843703          	ld	a4,-56(s0)
    80001618:	fb843783          	ld	a5,-72(s0)
    8000161c:	97ba                	add	a5,a5,a4
    8000161e:	fd043703          	ld	a4,-48(s0)
    80001622:	fcf769e3          	bltu	a4,a5,800015f4 <memcpy+0x7a>
    80001626:	fc843783          	ld	a5,-56(s0)
    8000162a:	853e                	mv	a0,a5
    8000162c:	6426                	ld	s0,72(sp)
    8000162e:	6161                	addi	sp,sp,80
    80001630:	8082                	ret

0000000080001632 <memset>:
    80001632:	715d                	addi	sp,sp,-80
    80001634:	e4a2                	sd	s0,72(sp)
    80001636:	0880                	addi	s0,sp,80
    80001638:	fca43423          	sd	a0,-56(s0)
    8000163c:	87ae                	mv	a5,a1
    8000163e:	fac43c23          	sd	a2,-72(s0)
    80001642:	fcf42223          	sw	a5,-60(s0)
    80001646:	fc843703          	ld	a4,-56(s0)
    8000164a:	fb843783          	ld	a5,-72(s0)
    8000164e:	8fd9                	or	a5,a5,a4
    80001650:	8b9d                	andi	a5,a5,7
    80001652:	e7bd                	bnez	a5,800016c0 <memset+0x8e>
    80001654:	fc442783          	lw	a5,-60(s0)
    80001658:	0ff7f793          	andi	a5,a5,255
    8000165c:	fcf43c23          	sd	a5,-40(s0)
    80001660:	fd843783          	ld	a5,-40(s0)
    80001664:	07a2                	slli	a5,a5,0x8
    80001666:	fd843703          	ld	a4,-40(s0)
    8000166a:	8fd9                	or	a5,a5,a4
    8000166c:	fcf43c23          	sd	a5,-40(s0)
    80001670:	fd843783          	ld	a5,-40(s0)
    80001674:	07c2                	slli	a5,a5,0x10
    80001676:	fd843703          	ld	a4,-40(s0)
    8000167a:	8fd9                	or	a5,a5,a4
    8000167c:	fcf43c23          	sd	a5,-40(s0)
    80001680:	fd843783          	ld	a5,-40(s0)
    80001684:	1782                	slli	a5,a5,0x20
    80001686:	fd843703          	ld	a4,-40(s0)
    8000168a:	8fd9                	or	a5,a5,a4
    8000168c:	fcf43c23          	sd	a5,-40(s0)
    80001690:	fc843783          	ld	a5,-56(s0)
    80001694:	fef43423          	sd	a5,-24(s0)
    80001698:	a811                	j	800016ac <memset+0x7a>
    8000169a:	fe843783          	ld	a5,-24(s0)
    8000169e:	00878713          	addi	a4,a5,8
    800016a2:	fee43423          	sd	a4,-24(s0)
    800016a6:	fd843703          	ld	a4,-40(s0)
    800016aa:	e398                	sd	a4,0(a5)
    800016ac:	fc843703          	ld	a4,-56(s0)
    800016b0:	fb843783          	ld	a5,-72(s0)
    800016b4:	97ba                	add	a5,a5,a4
    800016b6:	fe843703          	ld	a4,-24(s0)
    800016ba:	fef760e3          	bltu	a4,a5,8000169a <memset+0x68>
    800016be:	a81d                	j	800016f4 <memset+0xc2>
    800016c0:	fc843783          	ld	a5,-56(s0)
    800016c4:	fef43023          	sd	a5,-32(s0)
    800016c8:	a829                	j	800016e2 <memset+0xb0>
    800016ca:	fe043783          	ld	a5,-32(s0)
    800016ce:	00178713          	addi	a4,a5,1
    800016d2:	fee43023          	sd	a4,-32(s0)
    800016d6:	fc442703          	lw	a4,-60(s0)
    800016da:	0ff77713          	andi	a4,a4,255
    800016de:	00e78023          	sb	a4,0(a5)
    800016e2:	fc843703          	ld	a4,-56(s0)
    800016e6:	fb843783          	ld	a5,-72(s0)
    800016ea:	97ba                	add	a5,a5,a4
    800016ec:	fe043703          	ld	a4,-32(s0)
    800016f0:	fcf76de3          	bltu	a4,a5,800016ca <memset+0x98>
    800016f4:	fc843783          	ld	a5,-56(s0)
    800016f8:	853e                	mv	a0,a5
    800016fa:	6426                	ld	s0,72(sp)
    800016fc:	6161                	addi	sp,sp,80
    800016fe:	8082                	ret

0000000080001700 <strlen>:
    80001700:	7179                	addi	sp,sp,-48
    80001702:	f422                	sd	s0,40(sp)
    80001704:	1800                	addi	s0,sp,48
    80001706:	fca43c23          	sd	a0,-40(s0)
    8000170a:	fd843783          	ld	a5,-40(s0)
    8000170e:	fef43423          	sd	a5,-24(s0)
    80001712:	a031                	j	8000171e <strlen+0x1e>
    80001714:	fe843783          	ld	a5,-24(s0)
    80001718:	0785                	addi	a5,a5,1
    8000171a:	fef43423          	sd	a5,-24(s0)
    8000171e:	fe843783          	ld	a5,-24(s0)
    80001722:	0007c783          	lbu	a5,0(a5)
    80001726:	f7fd                	bnez	a5,80001714 <strlen+0x14>
    80001728:	fe843703          	ld	a4,-24(s0)
    8000172c:	fd843783          	ld	a5,-40(s0)
    80001730:	40f707b3          	sub	a5,a4,a5
    80001734:	853e                	mv	a0,a5
    80001736:	7422                	ld	s0,40(sp)
    80001738:	6145                	addi	sp,sp,48
    8000173a:	8082                	ret

000000008000173c <strnlen>:
    8000173c:	7179                	addi	sp,sp,-48
    8000173e:	f422                	sd	s0,40(sp)
    80001740:	1800                	addi	s0,sp,48
    80001742:	fca43c23          	sd	a0,-40(s0)
    80001746:	fcb43823          	sd	a1,-48(s0)
    8000174a:	fd843783          	ld	a5,-40(s0)
    8000174e:	fef43423          	sd	a5,-24(s0)
    80001752:	a031                	j	8000175e <strnlen+0x22>
    80001754:	fe843783          	ld	a5,-24(s0)
    80001758:	0785                	addi	a5,a5,1
    8000175a:	fef43423          	sd	a5,-24(s0)
    8000175e:	fd043783          	ld	a5,-48(s0)
    80001762:	fff78713          	addi	a4,a5,-1
    80001766:	fce43823          	sd	a4,-48(s0)
    8000176a:	c791                	beqz	a5,80001776 <strnlen+0x3a>
    8000176c:	fe843783          	ld	a5,-24(s0)
    80001770:	0007c783          	lbu	a5,0(a5)
    80001774:	f3e5                	bnez	a5,80001754 <strnlen+0x18>
    80001776:	fe843703          	ld	a4,-24(s0)
    8000177a:	fd843783          	ld	a5,-40(s0)
    8000177e:	40f707b3          	sub	a5,a4,a5
    80001782:	853e                	mv	a0,a5
    80001784:	7422                	ld	s0,40(sp)
    80001786:	6145                	addi	sp,sp,48
    80001788:	8082                	ret

000000008000178a <strcmp>:
    8000178a:	7179                	addi	sp,sp,-48
    8000178c:	f422                	sd	s0,40(sp)
    8000178e:	1800                	addi	s0,sp,48
    80001790:	fca43c23          	sd	a0,-40(s0)
    80001794:	fcb43823          	sd	a1,-48(s0)
    80001798:	fd843783          	ld	a5,-40(s0)
    8000179c:	00178713          	addi	a4,a5,1
    800017a0:	fce43c23          	sd	a4,-40(s0)
    800017a4:	0007c783          	lbu	a5,0(a5)
    800017a8:	fef407a3          	sb	a5,-17(s0)
    800017ac:	fd043783          	ld	a5,-48(s0)
    800017b0:	00178713          	addi	a4,a5,1
    800017b4:	fce43823          	sd	a4,-48(s0)
    800017b8:	0007c783          	lbu	a5,0(a5)
    800017bc:	fef40723          	sb	a5,-18(s0)
    800017c0:	fef44783          	lbu	a5,-17(s0)
    800017c4:	0ff7f793          	andi	a5,a5,255
    800017c8:	cf81                	beqz	a5,800017e0 <strcmp+0x56>
    800017ca:	fef44783          	lbu	a5,-17(s0)
    800017ce:	873e                	mv	a4,a5
    800017d0:	fee44783          	lbu	a5,-18(s0)
    800017d4:	0ff77713          	andi	a4,a4,255
    800017d8:	0ff7f793          	andi	a5,a5,255
    800017dc:	faf70ee3          	beq	a4,a5,80001798 <strcmp+0xe>
    800017e0:	fef44783          	lbu	a5,-17(s0)
    800017e4:	0007871b          	sext.w	a4,a5
    800017e8:	fee44783          	lbu	a5,-18(s0)
    800017ec:	2781                	sext.w	a5,a5
    800017ee:	40f707bb          	subw	a5,a4,a5
    800017f2:	2781                	sext.w	a5,a5
    800017f4:	853e                	mv	a0,a5
    800017f6:	7422                	ld	s0,40(sp)
    800017f8:	6145                	addi	sp,sp,48
    800017fa:	8082                	ret

00000000800017fc <strcpy>:
    800017fc:	7179                	addi	sp,sp,-48
    800017fe:	f422                	sd	s0,40(sp)
    80001800:	1800                	addi	s0,sp,48
    80001802:	fca43c23          	sd	a0,-40(s0)
    80001806:	fcb43823          	sd	a1,-48(s0)
    8000180a:	fd843783          	ld	a5,-40(s0)
    8000180e:	fef43423          	sd	a5,-24(s0)
    80001812:	0001                	nop
    80001814:	fd043703          	ld	a4,-48(s0)
    80001818:	00170793          	addi	a5,a4,1
    8000181c:	fcf43823          	sd	a5,-48(s0)
    80001820:	fe843783          	ld	a5,-24(s0)
    80001824:	00178693          	addi	a3,a5,1
    80001828:	fed43423          	sd	a3,-24(s0)
    8000182c:	00074703          	lbu	a4,0(a4)
    80001830:	00e78023          	sb	a4,0(a5)
    80001834:	0007c783          	lbu	a5,0(a5)
    80001838:	fff1                	bnez	a5,80001814 <__global_pointer$+0x14>
    8000183a:	fd843783          	ld	a5,-40(s0)
    8000183e:	853e                	mv	a0,a5
    80001840:	7422                	ld	s0,40(sp)
    80001842:	6145                	addi	sp,sp,48
    80001844:	8082                	ret

0000000080001846 <atol>:
    80001846:	7179                	addi	sp,sp,-48
    80001848:	f422                	sd	s0,40(sp)
    8000184a:	1800                	addi	s0,sp,48
    8000184c:	fca43c23          	sd	a0,-40(s0)
    80001850:	fe043423          	sd	zero,-24(s0)
    80001854:	fe042223          	sw	zero,-28(s0)
    80001858:	a031                	j	80001864 <atol+0x1e>
    8000185a:	fd843783          	ld	a5,-40(s0)
    8000185e:	0785                	addi	a5,a5,1
    80001860:	fcf43c23          	sd	a5,-40(s0)
    80001864:	fd843783          	ld	a5,-40(s0)
    80001868:	0007c783          	lbu	a5,0(a5)
    8000186c:	873e                	mv	a4,a5
    8000186e:	02000793          	li	a5,32
    80001872:	fef704e3          	beq	a4,a5,8000185a <atol+0x14>
    80001876:	fd843783          	ld	a5,-40(s0)
    8000187a:	0007c783          	lbu	a5,0(a5)
    8000187e:	873e                	mv	a4,a5
    80001880:	02d00793          	li	a5,45
    80001884:	00f70b63          	beq	a4,a5,8000189a <atol+0x54>
    80001888:	fd843783          	ld	a5,-40(s0)
    8000188c:	0007c783          	lbu	a5,0(a5)
    80001890:	873e                	mv	a4,a5
    80001892:	02b00793          	li	a5,43
    80001896:	06f71263          	bne	a4,a5,800018fa <atol+0xb4>
    8000189a:	fd843783          	ld	a5,-40(s0)
    8000189e:	0007c783          	lbu	a5,0(a5)
    800018a2:	0007871b          	sext.w	a4,a5
    800018a6:	02d00793          	li	a5,45
    800018aa:	40f707b3          	sub	a5,a4,a5
    800018ae:	0017b793          	seqz	a5,a5
    800018b2:	0ff7f793          	andi	a5,a5,255
    800018b6:	fef42223          	sw	a5,-28(s0)
    800018ba:	fd843783          	ld	a5,-40(s0)
    800018be:	0785                	addi	a5,a5,1
    800018c0:	fcf43c23          	sd	a5,-40(s0)
    800018c4:	a81d                	j	800018fa <atol+0xb4>
    800018c6:	fe843703          	ld	a4,-24(s0)
    800018ca:	87ba                	mv	a5,a4
    800018cc:	078a                	slli	a5,a5,0x2
    800018ce:	97ba                	add	a5,a5,a4
    800018d0:	0786                	slli	a5,a5,0x1
    800018d2:	fef43423          	sd	a5,-24(s0)
    800018d6:	fd843783          	ld	a5,-40(s0)
    800018da:	00178713          	addi	a4,a5,1
    800018de:	fce43c23          	sd	a4,-40(s0)
    800018e2:	0007c783          	lbu	a5,0(a5)
    800018e6:	2781                	sext.w	a5,a5
    800018e8:	fd07879b          	addiw	a5,a5,-48
    800018ec:	2781                	sext.w	a5,a5
    800018ee:	873e                	mv	a4,a5
    800018f0:	fe843783          	ld	a5,-24(s0)
    800018f4:	97ba                	add	a5,a5,a4
    800018f6:	fef43423          	sd	a5,-24(s0)
    800018fa:	fd843783          	ld	a5,-40(s0)
    800018fe:	0007c783          	lbu	a5,0(a5)
    80001902:	f3f1                	bnez	a5,800018c6 <atol+0x80>
    80001904:	fe442783          	lw	a5,-28(s0)
    80001908:	2781                	sext.w	a5,a5
    8000190a:	c791                	beqz	a5,80001916 <atol+0xd0>
    8000190c:	fe843783          	ld	a5,-24(s0)
    80001910:	40f007b3          	neg	a5,a5
    80001914:	a019                	j	8000191a <atol+0xd4>
    80001916:	fe843783          	ld	a5,-24(s0)
    8000191a:	853e                	mv	a0,a5
    8000191c:	7422                	ld	s0,40(sp)
    8000191e:	6145                	addi	sp,sp,48
    80001920:	8082                	ret
