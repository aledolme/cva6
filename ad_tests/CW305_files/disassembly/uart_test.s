
/home/a.dolmeta/cva6/verif/sim/../../ad_tests/CW305_files/elf/uart_test.elf:     file format elf64-littleriscv


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
    8000004e:	00001297          	auipc	t0,0x1
    80000052:	faa2a923          	sw	a0,-78(t0) # 80001000 <tohost>
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
    800000f4:	00005197          	auipc	gp,0x5
    800000f8:	10c18193          	addi	gp,gp,268 # 80005200 <__global_pointer$>
    800000fc:	87f18213          	addi	tp,gp,-1921 # 80004a7f <_end+0x3f>
    80000100:	fc027213          	andi	tp,tp,-64
    80000104:	f1402573          	csrr	a0,mhartid
    80000108:	4585                	li	a1,1
    8000010a:	00b57063          	bleu	a1,a0,8000010a <_start+0x10a>
    8000010e:	00150113          	addi	sp,a0,1
    80000112:	0146                	slli	sp,sp,0x11
    80000114:	9112                	add	sp,sp,tp
    80000116:	01151613          	slli	a2,a0,0x11
    8000011a:	9232                	add	tp,tp,a2
    8000011c:	2710306f          	j	80003b8c <_init>

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
    8000016a:	0f1030ef          	jal	ra,80003a5a <handle_trap>
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
    800001c4:	2ea030ef          	jal	ra,800034ae <main>
    800001c8:	a011                	j	800001cc <_exit>
    800001ca:	a009                	j	800001cc <_exit>

00000000800001cc <_exit>:
    800001cc:	0506                	slli	a0,a0,0x1
    800001ce:	0505                	addi	a0,a0,1
    800001d0:	00001f17          	auipc	t5,0x1
    800001d4:	e2af2823          	sw	a0,-464(t5) # 80001000 <tohost>
    800001d8:	0001                	nop
    800001da:	a001                	j	800001da <_exit+0xe>
	...

Disassembly of section .text:

0000000080003000 <write_reg_u8>:
    80003000:	7179                	addi	sp,sp,-48
    80003002:	f422                	sd	s0,40(sp)
    80003004:	1800                	addi	s0,sp,48
    80003006:	fca43c23          	sd	a0,-40(s0)
    8000300a:	87ae                	mv	a5,a1
    8000300c:	fcf40ba3          	sb	a5,-41(s0)
    80003010:	fd843783          	ld	a5,-40(s0)
    80003014:	fef43423          	sd	a5,-24(s0)
    80003018:	fe843783          	ld	a5,-24(s0)
    8000301c:	fd744703          	lbu	a4,-41(s0)
    80003020:	00e78023          	sb	a4,0(a5)
    80003024:	0001                	nop
    80003026:	7422                	ld	s0,40(sp)
    80003028:	6145                	addi	sp,sp,48
    8000302a:	8082                	ret

000000008000302c <read_reg_u8>:
    8000302c:	1101                	addi	sp,sp,-32
    8000302e:	ec22                	sd	s0,24(sp)
    80003030:	1000                	addi	s0,sp,32
    80003032:	fea43423          	sd	a0,-24(s0)
    80003036:	fe843783          	ld	a5,-24(s0)
    8000303a:	0007c783          	lbu	a5,0(a5)
    8000303e:	0ff7f793          	andi	a5,a5,255
    80003042:	853e                	mv	a0,a5
    80003044:	6462                	ld	s0,24(sp)
    80003046:	6105                	addi	sp,sp,32
    80003048:	8082                	ret

000000008000304a <is_transmit_empty>:
    8000304a:	1141                	addi	sp,sp,-16
    8000304c:	e406                	sd	ra,8(sp)
    8000304e:	e022                	sd	s0,0(sp)
    80003050:	0800                	addi	s0,sp,16
    80003052:	100007b7          	lui	a5,0x10000
    80003056:	01478513          	addi	a0,a5,20 # 10000014 <buflen.2+0xfffff94>
    8000305a:	fd3ff0ef          	jal	ra,8000302c <read_reg_u8>
    8000305e:	87aa                	mv	a5,a0
    80003060:	2781                	sext.w	a5,a5
    80003062:	0207f793          	andi	a5,a5,32
    80003066:	2781                	sext.w	a5,a5
    80003068:	853e                	mv	a0,a5
    8000306a:	60a2                	ld	ra,8(sp)
    8000306c:	6402                	ld	s0,0(sp)
    8000306e:	0141                	addi	sp,sp,16
    80003070:	8082                	ret

0000000080003072 <is_receive_empty>:
    80003072:	1141                	addi	sp,sp,-16
    80003074:	e406                	sd	ra,8(sp)
    80003076:	e022                	sd	s0,0(sp)
    80003078:	0800                	addi	s0,sp,16
    8000307a:	100007b7          	lui	a5,0x10000
    8000307e:	01478513          	addi	a0,a5,20 # 10000014 <buflen.2+0xfffff94>
    80003082:	fabff0ef          	jal	ra,8000302c <read_reg_u8>
    80003086:	87aa                	mv	a5,a0
    80003088:	2781                	sext.w	a5,a5
    8000308a:	8b85                	andi	a5,a5,1
    8000308c:	2781                	sext.w	a5,a5
    8000308e:	0017b793          	seqz	a5,a5
    80003092:	0ff7f793          	andi	a5,a5,255
    80003096:	2781                	sext.w	a5,a5
    80003098:	853e                	mv	a0,a5
    8000309a:	60a2                	ld	ra,8(sp)
    8000309c:	6402                	ld	s0,0(sp)
    8000309e:	0141                	addi	sp,sp,16
    800030a0:	8082                	ret

00000000800030a2 <write_serial>:
    800030a2:	1101                	addi	sp,sp,-32
    800030a4:	ec06                	sd	ra,24(sp)
    800030a6:	e822                	sd	s0,16(sp)
    800030a8:	1000                	addi	s0,sp,32
    800030aa:	87aa                	mv	a5,a0
    800030ac:	fef407a3          	sb	a5,-17(s0)
    800030b0:	0001                	nop
    800030b2:	f99ff0ef          	jal	ra,8000304a <is_transmit_empty>
    800030b6:	87aa                	mv	a5,a0
    800030b8:	dfed                	beqz	a5,800030b2 <write_serial+0x10>
    800030ba:	fef44783          	lbu	a5,-17(s0)
    800030be:	85be                	mv	a1,a5
    800030c0:	10000537          	lui	a0,0x10000
    800030c4:	f3dff0ef          	jal	ra,80003000 <write_reg_u8>
    800030c8:	0001                	nop
    800030ca:	60e2                	ld	ra,24(sp)
    800030cc:	6442                	ld	s0,16(sp)
    800030ce:	6105                	addi	sp,sp,32
    800030d0:	8082                	ret

00000000800030d2 <read_serial>:
    800030d2:	1101                	addi	sp,sp,-32
    800030d4:	ec06                	sd	ra,24(sp)
    800030d6:	e822                	sd	s0,16(sp)
    800030d8:	1000                	addi	s0,sp,32
    800030da:	fea43423          	sd	a0,-24(s0)
    800030de:	f95ff0ef          	jal	ra,80003072 <is_receive_empty>
    800030e2:	87aa                	mv	a5,a0
    800030e4:	c399                	beqz	a5,800030ea <read_serial+0x18>
    800030e6:	4781                	li	a5,0
    800030e8:	a821                	j	80003100 <read_serial+0x2e>
    800030ea:	10000537          	lui	a0,0x10000
    800030ee:	f3fff0ef          	jal	ra,8000302c <read_reg_u8>
    800030f2:	87aa                	mv	a5,a0
    800030f4:	873e                	mv	a4,a5
    800030f6:	fe843783          	ld	a5,-24(s0)
    800030fa:	00e78023          	sb	a4,0(a5)
    800030fe:	4785                	li	a5,1
    80003100:	853e                	mv	a0,a5
    80003102:	60e2                	ld	ra,24(sp)
    80003104:	6442                	ld	s0,16(sp)
    80003106:	6105                	addi	sp,sp,32
    80003108:	8082                	ret

000000008000310a <init_uart>:
    8000310a:	7179                	addi	sp,sp,-48
    8000310c:	f406                	sd	ra,40(sp)
    8000310e:	f022                	sd	s0,32(sp)
    80003110:	1800                	addi	s0,sp,48
    80003112:	87aa                	mv	a5,a0
    80003114:	872e                	mv	a4,a1
    80003116:	fcf42e23          	sw	a5,-36(s0)
    8000311a:	87ba                	mv	a5,a4
    8000311c:	fcf42c23          	sw	a5,-40(s0)
    80003120:	fd842783          	lw	a5,-40(s0)
    80003124:	0047979b          	slliw	a5,a5,0x4
    80003128:	2781                	sext.w	a5,a5
    8000312a:	fdc42703          	lw	a4,-36(s0)
    8000312e:	02f757bb          	divuw	a5,a4,a5
    80003132:	fef42623          	sw	a5,-20(s0)
    80003136:	4581                	li	a1,0
    80003138:	100007b7          	lui	a5,0x10000
    8000313c:	00478513          	addi	a0,a5,4 # 10000004 <buflen.2+0xfffff84>
    80003140:	ec1ff0ef          	jal	ra,80003000 <write_reg_u8>
    80003144:	08000593          	li	a1,128
    80003148:	100007b7          	lui	a5,0x10000
    8000314c:	00c78513          	addi	a0,a5,12 # 1000000c <buflen.2+0xfffff8c>
    80003150:	eb1ff0ef          	jal	ra,80003000 <write_reg_u8>
    80003154:	fec42783          	lw	a5,-20(s0)
    80003158:	0ff7f793          	andi	a5,a5,255
    8000315c:	85be                	mv	a1,a5
    8000315e:	10000537          	lui	a0,0x10000
    80003162:	e9fff0ef          	jal	ra,80003000 <write_reg_u8>
    80003166:	fec42783          	lw	a5,-20(s0)
    8000316a:	0087d79b          	srliw	a5,a5,0x8
    8000316e:	2781                	sext.w	a5,a5
    80003170:	0ff7f793          	andi	a5,a5,255
    80003174:	85be                	mv	a1,a5
    80003176:	100007b7          	lui	a5,0x10000
    8000317a:	00478513          	addi	a0,a5,4 # 10000004 <buflen.2+0xfffff84>
    8000317e:	e83ff0ef          	jal	ra,80003000 <write_reg_u8>
    80003182:	458d                	li	a1,3
    80003184:	100007b7          	lui	a5,0x10000
    80003188:	00c78513          	addi	a0,a5,12 # 1000000c <buflen.2+0xfffff8c>
    8000318c:	e75ff0ef          	jal	ra,80003000 <write_reg_u8>
    80003190:	0c700593          	li	a1,199
    80003194:	100007b7          	lui	a5,0x10000
    80003198:	00878513          	addi	a0,a5,8 # 10000008 <buflen.2+0xfffff88>
    8000319c:	e65ff0ef          	jal	ra,80003000 <write_reg_u8>
    800031a0:	02000593          	li	a1,32
    800031a4:	100007b7          	lui	a5,0x10000
    800031a8:	01078513          	addi	a0,a5,16 # 10000010 <buflen.2+0xfffff90>
    800031ac:	e55ff0ef          	jal	ra,80003000 <write_reg_u8>
    800031b0:	0001                	nop
    800031b2:	70a2                	ld	ra,40(sp)
    800031b4:	7402                	ld	s0,32(sp)
    800031b6:	6145                	addi	sp,sp,48
    800031b8:	8082                	ret

00000000800031ba <print_uart>:
    800031ba:	7179                	addi	sp,sp,-48
    800031bc:	f406                	sd	ra,40(sp)
    800031be:	f022                	sd	s0,32(sp)
    800031c0:	1800                	addi	s0,sp,48
    800031c2:	fca43c23          	sd	a0,-40(s0)
    800031c6:	fd843783          	ld	a5,-40(s0)
    800031ca:	fef43423          	sd	a5,-24(s0)
    800031ce:	a829                	j	800031e8 <print_uart+0x2e>
    800031d0:	fe843783          	ld	a5,-24(s0)
    800031d4:	0007c783          	lbu	a5,0(a5)
    800031d8:	853e                	mv	a0,a5
    800031da:	ec9ff0ef          	jal	ra,800030a2 <write_serial>
    800031de:	fe843783          	ld	a5,-24(s0)
    800031e2:	0785                	addi	a5,a5,1
    800031e4:	fef43423          	sd	a5,-24(s0)
    800031e8:	fe843783          	ld	a5,-24(s0)
    800031ec:	0007c783          	lbu	a5,0(a5)
    800031f0:	f3e5                	bnez	a5,800031d0 <print_uart+0x16>
    800031f2:	0001                	nop
    800031f4:	0001                	nop
    800031f6:	70a2                	ld	ra,40(sp)
    800031f8:	7402                	ld	s0,32(sp)
    800031fa:	6145                	addi	sp,sp,48
    800031fc:	8082                	ret

00000000800031fe <bin_to_hex>:
    800031fe:	1101                	addi	sp,sp,-32
    80003200:	ec22                	sd	s0,24(sp)
    80003202:	1000                	addi	s0,sp,32
    80003204:	87aa                	mv	a5,a0
    80003206:	feb43023          	sd	a1,-32(s0)
    8000320a:	fef407a3          	sb	a5,-17(s0)
    8000320e:	fef44783          	lbu	a5,-17(s0)
    80003212:	2781                	sext.w	a5,a5
    80003214:	8bbd                	andi	a5,a5,15
    80003216:	0007871b          	sext.w	a4,a5
    8000321a:	fe043783          	ld	a5,-32(s0)
    8000321e:	0785                	addi	a5,a5,1
    80003220:	00001697          	auipc	a3,0x1
    80003224:	7d068693          	addi	a3,a3,2000 # 800049f0 <bin_to_hex_table>
    80003228:	9736                	add	a4,a4,a3
    8000322a:	00074703          	lbu	a4,0(a4)
    8000322e:	00e78023          	sb	a4,0(a5)
    80003232:	fef44783          	lbu	a5,-17(s0)
    80003236:	0047d79b          	srliw	a5,a5,0x4
    8000323a:	0ff7f793          	andi	a5,a5,255
    8000323e:	2781                	sext.w	a5,a5
    80003240:	8bbd                	andi	a5,a5,15
    80003242:	2781                	sext.w	a5,a5
    80003244:	00001717          	auipc	a4,0x1
    80003248:	7ac70713          	addi	a4,a4,1964 # 800049f0 <bin_to_hex_table>
    8000324c:	97ba                	add	a5,a5,a4
    8000324e:	0007c703          	lbu	a4,0(a5)
    80003252:	fe043783          	ld	a5,-32(s0)
    80003256:	00e78023          	sb	a4,0(a5)
    8000325a:	0001                	nop
    8000325c:	6462                	ld	s0,24(sp)
    8000325e:	6105                	addi	sp,sp,32
    80003260:	8082                	ret

0000000080003262 <print_uart_int>:
    80003262:	7179                	addi	sp,sp,-48
    80003264:	f406                	sd	ra,40(sp)
    80003266:	f022                	sd	s0,32(sp)
    80003268:	1800                	addi	s0,sp,48
    8000326a:	87aa                	mv	a5,a0
    8000326c:	fcf42e23          	sw	a5,-36(s0)
    80003270:	478d                	li	a5,3
    80003272:	fef42623          	sw	a5,-20(s0)
    80003276:	a0a1                	j	800032be <print_uart_int+0x5c>
    80003278:	fec42783          	lw	a5,-20(s0)
    8000327c:	0037979b          	slliw	a5,a5,0x3
    80003280:	2781                	sext.w	a5,a5
    80003282:	fdc42703          	lw	a4,-36(s0)
    80003286:	00f757bb          	srlw	a5,a4,a5
    8000328a:	2781                	sext.w	a5,a5
    8000328c:	fef405a3          	sb	a5,-21(s0)
    80003290:	fe840713          	addi	a4,s0,-24
    80003294:	feb44783          	lbu	a5,-21(s0)
    80003298:	85ba                	mv	a1,a4
    8000329a:	853e                	mv	a0,a5
    8000329c:	f63ff0ef          	jal	ra,800031fe <bin_to_hex>
    800032a0:	fe844783          	lbu	a5,-24(s0)
    800032a4:	853e                	mv	a0,a5
    800032a6:	dfdff0ef          	jal	ra,800030a2 <write_serial>
    800032aa:	fe944783          	lbu	a5,-23(s0)
    800032ae:	853e                	mv	a0,a5
    800032b0:	df3ff0ef          	jal	ra,800030a2 <write_serial>
    800032b4:	fec42783          	lw	a5,-20(s0)
    800032b8:	37fd                	addiw	a5,a5,-1
    800032ba:	fef42623          	sw	a5,-20(s0)
    800032be:	fec42783          	lw	a5,-20(s0)
    800032c2:	2781                	sext.w	a5,a5
    800032c4:	fa07dae3          	bgez	a5,80003278 <print_uart_int+0x16>
    800032c8:	0001                	nop
    800032ca:	0001                	nop
    800032cc:	70a2                	ld	ra,40(sp)
    800032ce:	7402                	ld	s0,32(sp)
    800032d0:	6145                	addi	sp,sp,48
    800032d2:	8082                	ret

00000000800032d4 <print_uart_addr>:
    800032d4:	7179                	addi	sp,sp,-48
    800032d6:	f406                	sd	ra,40(sp)
    800032d8:	f022                	sd	s0,32(sp)
    800032da:	1800                	addi	s0,sp,48
    800032dc:	fca43c23          	sd	a0,-40(s0)
    800032e0:	479d                	li	a5,7
    800032e2:	fef42623          	sw	a5,-20(s0)
    800032e6:	a0a1                	j	8000332e <print_uart_addr+0x5a>
    800032e8:	fec42783          	lw	a5,-20(s0)
    800032ec:	0037979b          	slliw	a5,a5,0x3
    800032f0:	2781                	sext.w	a5,a5
    800032f2:	873e                	mv	a4,a5
    800032f4:	fd843783          	ld	a5,-40(s0)
    800032f8:	00e7d7b3          	srl	a5,a5,a4
    800032fc:	fef405a3          	sb	a5,-21(s0)
    80003300:	fe840713          	addi	a4,s0,-24
    80003304:	feb44783          	lbu	a5,-21(s0)
    80003308:	85ba                	mv	a1,a4
    8000330a:	853e                	mv	a0,a5
    8000330c:	ef3ff0ef          	jal	ra,800031fe <bin_to_hex>
    80003310:	fe844783          	lbu	a5,-24(s0)
    80003314:	853e                	mv	a0,a5
    80003316:	d8dff0ef          	jal	ra,800030a2 <write_serial>
    8000331a:	fe944783          	lbu	a5,-23(s0)
    8000331e:	853e                	mv	a0,a5
    80003320:	d83ff0ef          	jal	ra,800030a2 <write_serial>
    80003324:	fec42783          	lw	a5,-20(s0)
    80003328:	37fd                	addiw	a5,a5,-1
    8000332a:	fef42623          	sw	a5,-20(s0)
    8000332e:	fec42783          	lw	a5,-20(s0)
    80003332:	2781                	sext.w	a5,a5
    80003334:	fa07dae3          	bgez	a5,800032e8 <print_uart_addr+0x14>
    80003338:	0001                	nop
    8000333a:	0001                	nop
    8000333c:	70a2                	ld	ra,40(sp)
    8000333e:	7402                	ld	s0,32(sp)
    80003340:	6145                	addi	sp,sp,48
    80003342:	8082                	ret

0000000080003344 <print_uart_byte>:
    80003344:	7179                	addi	sp,sp,-48
    80003346:	f406                	sd	ra,40(sp)
    80003348:	f022                	sd	s0,32(sp)
    8000334a:	1800                	addi	s0,sp,48
    8000334c:	87aa                	mv	a5,a0
    8000334e:	fcf40fa3          	sb	a5,-33(s0)
    80003352:	fe840713          	addi	a4,s0,-24
    80003356:	fdf44783          	lbu	a5,-33(s0)
    8000335a:	85ba                	mv	a1,a4
    8000335c:	853e                	mv	a0,a5
    8000335e:	ea1ff0ef          	jal	ra,800031fe <bin_to_hex>
    80003362:	fe844783          	lbu	a5,-24(s0)
    80003366:	853e                	mv	a0,a5
    80003368:	d3bff0ef          	jal	ra,800030a2 <write_serial>
    8000336c:	fe944783          	lbu	a5,-23(s0)
    80003370:	853e                	mv	a0,a5
    80003372:	d31ff0ef          	jal	ra,800030a2 <write_serial>
    80003376:	0001                	nop
    80003378:	70a2                	ld	ra,40(sp)
    8000337a:	7402                	ld	s0,32(sp)
    8000337c:	6145                	addi	sp,sp,48
    8000337e:	8082                	ret

0000000080003380 <read_seed_input_from_uart>:
    80003380:	7179                	addi	sp,sp,-48
    80003382:	f406                	sd	ra,40(sp)
    80003384:	f022                	sd	s0,32(sp)
    80003386:	1800                	addi	s0,sp,48
    80003388:	fca43c23          	sd	a0,-40(s0)
    8000338c:	fcb43823          	sd	a1,-48(s0)
    80003390:	00001517          	auipc	a0,0x1
    80003394:	41850513          	addi	a0,a0,1048 # 800047a8 <atol+0xde>
    80003398:	e23ff0ef          	jal	ra,800031ba <print_uart>
    8000339c:	fd043783          	ld	a5,-48(s0)
    800033a0:	2781                	sext.w	a5,a5
    800033a2:	853e                	mv	a0,a5
    800033a4:	ebfff0ef          	jal	ra,80003262 <print_uart_int>
    800033a8:	00001517          	auipc	a0,0x1
    800033ac:	42050513          	addi	a0,a0,1056 # 800047c8 <atol+0xfe>
    800033b0:	e0bff0ef          	jal	ra,800031ba <print_uart>
    800033b4:	fe043423          	sd	zero,-24(s0)
    800033b8:	a881                	j	80003408 <read_seed_input_from_uart+0x88>
    800033ba:	0001                	nop
    800033bc:	fe740793          	addi	a5,s0,-25
    800033c0:	853e                	mv	a0,a5
    800033c2:	d11ff0ef          	jal	ra,800030d2 <read_serial>
    800033c6:	87aa                	mv	a5,a0
    800033c8:	dbf5                	beqz	a5,800033bc <read_seed_input_from_uart+0x3c>
    800033ca:	fd843703          	ld	a4,-40(s0)
    800033ce:	fe843783          	ld	a5,-24(s0)
    800033d2:	97ba                	add	a5,a5,a4
    800033d4:	fe744703          	lbu	a4,-25(s0)
    800033d8:	00e78023          	sb	a4,0(a5)
    800033dc:	00001517          	auipc	a0,0x1
    800033e0:	40c50513          	addi	a0,a0,1036 # 800047e8 <atol+0x11e>
    800033e4:	dd7ff0ef          	jal	ra,800031ba <print_uart>
    800033e8:	fe744783          	lbu	a5,-25(s0)
    800033ec:	853e                	mv	a0,a5
    800033ee:	f57ff0ef          	jal	ra,80003344 <print_uart_byte>
    800033f2:	00001517          	auipc	a0,0x1
    800033f6:	40650513          	addi	a0,a0,1030 # 800047f8 <atol+0x12e>
    800033fa:	dc1ff0ef          	jal	ra,800031ba <print_uart>
    800033fe:	fe843783          	ld	a5,-24(s0)
    80003402:	0785                	addi	a5,a5,1
    80003404:	fef43423          	sd	a5,-24(s0)
    80003408:	fe843703          	ld	a4,-24(s0)
    8000340c:	fd043783          	ld	a5,-48(s0)
    80003410:	faf765e3          	bltu	a4,a5,800033ba <read_seed_input_from_uart+0x3a>
    80003414:	0001                	nop
    80003416:	0001                	nop
    80003418:	70a2                	ld	ra,40(sp)
    8000341a:	7402                	ld	s0,32(sp)
    8000341c:	6145                	addi	sp,sp,48
    8000341e:	8082                	ret

0000000080003420 <read_uint32_from_uart>:
    80003420:	1101                	addi	sp,sp,-32
    80003422:	ec06                	sd	ra,24(sp)
    80003424:	e822                	sd	s0,16(sp)
    80003426:	1000                	addi	s0,sp,32
    80003428:	fe042623          	sw	zero,-20(s0)
    8000342c:	fe042423          	sw	zero,-24(s0)
    80003430:	a08d                	j	80003492 <read_uint32_from_uart+0x72>
    80003432:	0001                	nop
    80003434:	fe740793          	addi	a5,s0,-25
    80003438:	853e                	mv	a0,a5
    8000343a:	c99ff0ef          	jal	ra,800030d2 <read_serial>
    8000343e:	87aa                	mv	a5,a0
    80003440:	dbf5                	beqz	a5,80003434 <read_uint32_from_uart+0x14>
    80003442:	fe744783          	lbu	a5,-25(s0)
    80003446:	0007871b          	sext.w	a4,a5
    8000344a:	fe842783          	lw	a5,-24(s0)
    8000344e:	0037979b          	slliw	a5,a5,0x3
    80003452:	2781                	sext.w	a5,a5
    80003454:	00f717bb          	sllw	a5,a4,a5
    80003458:	2781                	sext.w	a5,a5
    8000345a:	2781                	sext.w	a5,a5
    8000345c:	fec42703          	lw	a4,-20(s0)
    80003460:	8fd9                	or	a5,a5,a4
    80003462:	fef42623          	sw	a5,-20(s0)
    80003466:	00001517          	auipc	a0,0x1
    8000346a:	39a50513          	addi	a0,a0,922 # 80004800 <atol+0x136>
    8000346e:	d4dff0ef          	jal	ra,800031ba <print_uart>
    80003472:	fe744783          	lbu	a5,-25(s0)
    80003476:	853e                	mv	a0,a5
    80003478:	ecdff0ef          	jal	ra,80003344 <print_uart_byte>
    8000347c:	00001517          	auipc	a0,0x1
    80003480:	37c50513          	addi	a0,a0,892 # 800047f8 <atol+0x12e>
    80003484:	d37ff0ef          	jal	ra,800031ba <print_uart>
    80003488:	fe842783          	lw	a5,-24(s0)
    8000348c:	2785                	addiw	a5,a5,1
    8000348e:	fef42423          	sw	a5,-24(s0)
    80003492:	fe842783          	lw	a5,-24(s0)
    80003496:	0007871b          	sext.w	a4,a5
    8000349a:	478d                	li	a5,3
    8000349c:	f8e7dbe3          	ble	a4,a5,80003432 <read_uint32_from_uart+0x12>
    800034a0:	fec42783          	lw	a5,-20(s0)
    800034a4:	853e                	mv	a0,a5
    800034a6:	60e2                	ld	ra,24(sp)
    800034a8:	6442                	ld	s0,16(sp)
    800034aa:	6105                	addi	sp,sp,32
    800034ac:	8082                	ret

00000000800034ae <main>:
    800034ae:	7139                	addi	sp,sp,-64
    800034b0:	fc06                	sd	ra,56(sp)
    800034b2:	f822                	sd	s0,48(sp)
    800034b4:	0080                	addi	s0,sp,64
    800034b6:	02faf7b7          	lui	a5,0x2faf
    800034ba:	08078793          	addi	a5,a5,128 # 2faf080 <buflen.2+0x2faf000>
    800034be:	fef42223          	sw	a5,-28(s0)
    800034c2:	67f1                	lui	a5,0x1c
    800034c4:	20078793          	addi	a5,a5,512 # 1c200 <buflen.2+0x1c180>
    800034c8:	fef42023          	sw	a5,-32(s0)
    800034cc:	fe042703          	lw	a4,-32(s0)
    800034d0:	fe442783          	lw	a5,-28(s0)
    800034d4:	85ba                	mv	a1,a4
    800034d6:	853e                	mv	a0,a5
    800034d8:	c33ff0ef          	jal	ra,8000310a <init_uart>
    800034dc:	00001517          	auipc	a0,0x1
    800034e0:	34450513          	addi	a0,a0,836 # 80004820 <atol+0x156>
    800034e4:	cd7ff0ef          	jal	ra,800031ba <print_uart>
    800034e8:	fc043023          	sd	zero,-64(s0)
    800034ec:	fc043423          	sd	zero,-56(s0)
    800034f0:	fc043823          	sd	zero,-48(s0)
    800034f4:	fc043c23          	sd	zero,-40(s0)
    800034f8:	fc040793          	addi	a5,s0,-64
    800034fc:	02000593          	li	a1,32
    80003500:	853e                	mv	a0,a5
    80003502:	e7fff0ef          	jal	ra,80003380 <read_seed_input_from_uart>
    80003506:	00001517          	auipc	a0,0x1
    8000350a:	32a50513          	addi	a0,a0,810 # 80004830 <atol+0x166>
    8000350e:	cadff0ef          	jal	ra,800031ba <print_uart>
    80003512:	fe043423          	sd	zero,-24(s0)
    80003516:	a02d                	j	80003540 <main+0x92>
    80003518:	fe843783          	ld	a5,-24(s0)
    8000351c:	17c1                	addi	a5,a5,-16
    8000351e:	97a2                	add	a5,a5,s0
    80003520:	fd07c783          	lbu	a5,-48(a5)
    80003524:	853e                	mv	a0,a5
    80003526:	e1fff0ef          	jal	ra,80003344 <print_uart_byte>
    8000352a:	00001517          	auipc	a0,0x1
    8000352e:	31e50513          	addi	a0,a0,798 # 80004848 <atol+0x17e>
    80003532:	c89ff0ef          	jal	ra,800031ba <print_uart>
    80003536:	fe843783          	ld	a5,-24(s0)
    8000353a:	0785                	addi	a5,a5,1
    8000353c:	fef43423          	sd	a5,-24(s0)
    80003540:	fe843703          	ld	a4,-24(s0)
    80003544:	47fd                	li	a5,31
    80003546:	fce7f9e3          	bleu	a4,a5,80003518 <main+0x6a>
    8000354a:	00001517          	auipc	a0,0x1
    8000354e:	2ae50513          	addi	a0,a0,686 # 800047f8 <atol+0x12e>
    80003552:	c69ff0ef          	jal	ra,800031ba <print_uart>
    80003556:	4781                	li	a5,0
    80003558:	853e                	mv	a0,a5
    8000355a:	70e2                	ld	ra,56(sp)
    8000355c:	7442                	ld	s0,48(sp)
    8000355e:	6121                	addi	sp,sp,64
    80003560:	8082                	ret

0000000080003562 <verify>:
    80003562:	715d                	addi	sp,sp,-80
    80003564:	e4a2                	sd	s0,72(sp)
    80003566:	0880                	addi	s0,sp,80
    80003568:	87aa                	mv	a5,a0
    8000356a:	fcb43023          	sd	a1,-64(s0)
    8000356e:	fac43c23          	sd	a2,-72(s0)
    80003572:	fcf42623          	sw	a5,-52(s0)
    80003576:	fe042623          	sw	zero,-20(s0)
    8000357a:	a841                	j	8000360a <verify+0xa8>
    8000357c:	fec42783          	lw	a5,-20(s0)
    80003580:	078a                	slli	a5,a5,0x2
    80003582:	fc043703          	ld	a4,-64(s0)
    80003586:	97ba                	add	a5,a5,a4
    80003588:	439c                	lw	a5,0(a5)
    8000358a:	fef42423          	sw	a5,-24(s0)
    8000358e:	fec42783          	lw	a5,-20(s0)
    80003592:	0785                	addi	a5,a5,1
    80003594:	078a                	slli	a5,a5,0x2
    80003596:	fc043703          	ld	a4,-64(s0)
    8000359a:	97ba                	add	a5,a5,a4
    8000359c:	439c                	lw	a5,0(a5)
    8000359e:	fef42223          	sw	a5,-28(s0)
    800035a2:	fec42783          	lw	a5,-20(s0)
    800035a6:	078a                	slli	a5,a5,0x2
    800035a8:	fb843703          	ld	a4,-72(s0)
    800035ac:	97ba                	add	a5,a5,a4
    800035ae:	439c                	lw	a5,0(a5)
    800035b0:	fef42023          	sw	a5,-32(s0)
    800035b4:	fec42783          	lw	a5,-20(s0)
    800035b8:	0785                	addi	a5,a5,1
    800035ba:	078a                	slli	a5,a5,0x2
    800035bc:	fb843703          	ld	a4,-72(s0)
    800035c0:	97ba                	add	a5,a5,a4
    800035c2:	439c                	lw	a5,0(a5)
    800035c4:	fcf42e23          	sw	a5,-36(s0)
    800035c8:	fe842783          	lw	a5,-24(s0)
    800035cc:	873e                	mv	a4,a5
    800035ce:	fe042783          	lw	a5,-32(s0)
    800035d2:	2701                	sext.w	a4,a4
    800035d4:	2781                	sext.w	a5,a5
    800035d6:	00f70763          	beq	a4,a5,800035e4 <verify+0x82>
    800035da:	fec42783          	lw	a5,-20(s0)
    800035de:	2785                	addiw	a5,a5,1
    800035e0:	2781                	sext.w	a5,a5
    800035e2:	a059                	j	80003668 <verify+0x106>
    800035e4:	fe442783          	lw	a5,-28(s0)
    800035e8:	873e                	mv	a4,a5
    800035ea:	fdc42783          	lw	a5,-36(s0)
    800035ee:	2701                	sext.w	a4,a4
    800035f0:	2781                	sext.w	a5,a5
    800035f2:	00f70763          	beq	a4,a5,80003600 <verify+0x9e>
    800035f6:	fec42783          	lw	a5,-20(s0)
    800035fa:	2789                	addiw	a5,a5,2
    800035fc:	2781                	sext.w	a5,a5
    800035fe:	a0ad                	j	80003668 <verify+0x106>
    80003600:	fec42783          	lw	a5,-20(s0)
    80003604:	2789                	addiw	a5,a5,2
    80003606:	fef42623          	sw	a5,-20(s0)
    8000360a:	fcc42783          	lw	a5,-52(s0)
    8000360e:	01f7d71b          	srliw	a4,a5,0x1f
    80003612:	9fb9                	addw	a5,a5,a4
    80003614:	4017d79b          	sraiw	a5,a5,0x1
    80003618:	2781                	sext.w	a5,a5
    8000361a:	0017979b          	slliw	a5,a5,0x1
    8000361e:	0007871b          	sext.w	a4,a5
    80003622:	fec42783          	lw	a5,-20(s0)
    80003626:	2781                	sext.w	a5,a5
    80003628:	f4e7cae3          	blt	a5,a4,8000357c <verify+0x1a>
    8000362c:	fcc42783          	lw	a5,-52(s0)
    80003630:	8b85                	andi	a5,a5,1
    80003632:	2781                	sext.w	a5,a5
    80003634:	cb8d                	beqz	a5,80003666 <verify+0x104>
    80003636:	fcc42783          	lw	a5,-52(s0)
    8000363a:	078a                	slli	a5,a5,0x2
    8000363c:	17f1                	addi	a5,a5,-4
    8000363e:	fc043703          	ld	a4,-64(s0)
    80003642:	97ba                	add	a5,a5,a4
    80003644:	439c                	lw	a5,0(a5)
    80003646:	0007869b          	sext.w	a3,a5
    8000364a:	fcc42783          	lw	a5,-52(s0)
    8000364e:	078a                	slli	a5,a5,0x2
    80003650:	17f1                	addi	a5,a5,-4
    80003652:	fb843703          	ld	a4,-72(s0)
    80003656:	97ba                	add	a5,a5,a4
    80003658:	439c                	lw	a5,0(a5)
    8000365a:	8736                	mv	a4,a3
    8000365c:	00f70563          	beq	a4,a5,80003666 <verify+0x104>
    80003660:	fcc42783          	lw	a5,-52(s0)
    80003664:	a011                	j	80003668 <verify+0x106>
    80003666:	4781                	li	a5,0
    80003668:	853e                	mv	a0,a5
    8000366a:	6426                	ld	s0,72(sp)
    8000366c:	6161                	addi	sp,sp,80
    8000366e:	8082                	ret

0000000080003670 <verifyDouble>:
    80003670:	711d                	addi	sp,sp,-96
    80003672:	eca2                	sd	s0,88(sp)
    80003674:	1080                	addi	s0,sp,96
    80003676:	87aa                	mv	a5,a0
    80003678:	fab43823          	sd	a1,-80(s0)
    8000367c:	fac43423          	sd	a2,-88(s0)
    80003680:	faf42e23          	sw	a5,-68(s0)
    80003684:	fe042623          	sw	zero,-20(s0)
    80003688:	a06d                	j	80003732 <verifyDouble+0xc2>
    8000368a:	fec42783          	lw	a5,-20(s0)
    8000368e:	078e                	slli	a5,a5,0x3
    80003690:	fb043703          	ld	a4,-80(s0)
    80003694:	97ba                	add	a5,a5,a4
    80003696:	239c                	fld	fa5,0(a5)
    80003698:	fef43027          	fsd	fa5,-32(s0)
    8000369c:	fec42783          	lw	a5,-20(s0)
    800036a0:	0785                	addi	a5,a5,1
    800036a2:	078e                	slli	a5,a5,0x3
    800036a4:	fb043703          	ld	a4,-80(s0)
    800036a8:	97ba                	add	a5,a5,a4
    800036aa:	239c                	fld	fa5,0(a5)
    800036ac:	fcf43c27          	fsd	fa5,-40(s0)
    800036b0:	fec42783          	lw	a5,-20(s0)
    800036b4:	078e                	slli	a5,a5,0x3
    800036b6:	fa843703          	ld	a4,-88(s0)
    800036ba:	97ba                	add	a5,a5,a4
    800036bc:	239c                	fld	fa5,0(a5)
    800036be:	fcf43827          	fsd	fa5,-48(s0)
    800036c2:	fec42783          	lw	a5,-20(s0)
    800036c6:	0785                	addi	a5,a5,1
    800036c8:	078e                	slli	a5,a5,0x3
    800036ca:	fa843703          	ld	a4,-88(s0)
    800036ce:	97ba                	add	a5,a5,a4
    800036d0:	239c                	fld	fa5,0(a5)
    800036d2:	fcf43427          	fsd	fa5,-56(s0)
    800036d6:	fe043707          	fld	fa4,-32(s0)
    800036da:	fd043787          	fld	fa5,-48(s0)
    800036de:	a2f727d3          	feq.d	a5,fa4,fa5
    800036e2:	00f037b3          	snez	a5,a5
    800036e6:	0ff7f793          	andi	a5,a5,255
    800036ea:	fcf42223          	sw	a5,-60(s0)
    800036ee:	fd843707          	fld	fa4,-40(s0)
    800036f2:	fc843787          	fld	fa5,-56(s0)
    800036f6:	a2f727d3          	feq.d	a5,fa4,fa5
    800036fa:	00f037b3          	snez	a5,a5
    800036fe:	0ff7f793          	andi	a5,a5,255
    80003702:	fcf42023          	sw	a5,-64(s0)
    80003706:	fc442783          	lw	a5,-60(s0)
    8000370a:	873e                	mv	a4,a5
    8000370c:	fc042783          	lw	a5,-64(s0)
    80003710:	8ff9                	and	a5,a5,a4
    80003712:	2781                	sext.w	a5,a5
    80003714:	eb91                	bnez	a5,80003728 <verifyDouble+0xb8>
    80003716:	fec42783          	lw	a5,-20(s0)
    8000371a:	2785                	addiw	a5,a5,1
    8000371c:	2781                	sext.w	a5,a5
    8000371e:	fc442703          	lw	a4,-60(s0)
    80003722:	9fb9                	addw	a5,a5,a4
    80003724:	2781                	sext.w	a5,a5
    80003726:	a09d                	j	8000378c <verifyDouble+0x11c>
    80003728:	fec42783          	lw	a5,-20(s0)
    8000372c:	2789                	addiw	a5,a5,2
    8000372e:	fef42623          	sw	a5,-20(s0)
    80003732:	fbc42783          	lw	a5,-68(s0)
    80003736:	01f7d71b          	srliw	a4,a5,0x1f
    8000373a:	9fb9                	addw	a5,a5,a4
    8000373c:	4017d79b          	sraiw	a5,a5,0x1
    80003740:	2781                	sext.w	a5,a5
    80003742:	0017979b          	slliw	a5,a5,0x1
    80003746:	0007871b          	sext.w	a4,a5
    8000374a:	fec42783          	lw	a5,-20(s0)
    8000374e:	2781                	sext.w	a5,a5
    80003750:	f2e7cde3          	blt	a5,a4,8000368a <verifyDouble+0x1a>
    80003754:	fbc42783          	lw	a5,-68(s0)
    80003758:	8b85                	andi	a5,a5,1
    8000375a:	2781                	sext.w	a5,a5
    8000375c:	c79d                	beqz	a5,8000378a <verifyDouble+0x11a>
    8000375e:	fbc42783          	lw	a5,-68(s0)
    80003762:	078e                	slli	a5,a5,0x3
    80003764:	17e1                	addi	a5,a5,-8
    80003766:	fb043703          	ld	a4,-80(s0)
    8000376a:	97ba                	add	a5,a5,a4
    8000376c:	2398                	fld	fa4,0(a5)
    8000376e:	fbc42783          	lw	a5,-68(s0)
    80003772:	078e                	slli	a5,a5,0x3
    80003774:	17e1                	addi	a5,a5,-8
    80003776:	fa843703          	ld	a4,-88(s0)
    8000377a:	97ba                	add	a5,a5,a4
    8000377c:	239c                	fld	fa5,0(a5)
    8000377e:	a2f727d3          	feq.d	a5,fa4,fa5
    80003782:	e781                	bnez	a5,8000378a <verifyDouble+0x11a>
    80003784:	fbc42783          	lw	a5,-68(s0)
    80003788:	a011                	j	8000378c <verifyDouble+0x11c>
    8000378a:	4781                	li	a5,0
    8000378c:	853e                	mv	a0,a5
    8000378e:	6466                	ld	s0,88(sp)
    80003790:	6125                	addi	sp,sp,96
    80003792:	8082                	ret

0000000080003794 <barrier>:
    80003794:	1101                	addi	sp,sp,-32
    80003796:	ec22                	sd	s0,24(sp)
    80003798:	1000                	addi	s0,sp,32
    8000379a:	87aa                	mv	a5,a0
    8000379c:	fef42623          	sw	a5,-20(s0)
    800037a0:	0ff0000f          	fence
    800037a4:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    800037a8:	0017b793          	seqz	a5,a5
    800037ac:	0ff7f793          	andi	a5,a5,255
    800037b0:	0007871b          	sext.w	a4,a5
    800037b4:	00e22023          	sw	a4,0(tp) # 0 <threadsense.4>
    800037b8:	00001797          	auipc	a5,0x1
    800037bc:	26878793          	addi	a5,a5,616 # 80004a20 <count.1>
    800037c0:	4705                	li	a4,1
    800037c2:	0f50000f          	fence	iorw,ow
    800037c6:	04e7a6af          	amoadd.w.aq	a3,a4,(a5)
    800037ca:	0006879b          	sext.w	a5,a3
    800037ce:	0007871b          	sext.w	a4,a5
    800037d2:	fec42783          	lw	a5,-20(s0)
    800037d6:	37fd                	addiw	a5,a5,-1
    800037d8:	2781                	sext.w	a5,a5
    800037da:	02f71063          	bne	a4,a5,800037fa <barrier+0x66>
    800037de:	00001797          	auipc	a5,0x1
    800037e2:	24278793          	addi	a5,a5,578 # 80004a20 <count.1>
    800037e6:	0007a023          	sw	zero,0(a5)
    800037ea:	00022703          	lw	a4,0(tp) # 0 <threadsense.4>
    800037ee:	00001797          	auipc	a5,0x1
    800037f2:	23678793          	addi	a5,a5,566 # 80004a24 <sense.0>
    800037f6:	c398                	sw	a4,0(a5)
    800037f8:	a829                	j	80003812 <barrier+0x7e>
    800037fa:	0001                	nop
    800037fc:	00001797          	auipc	a5,0x1
    80003800:	22878793          	addi	a5,a5,552 # 80004a24 <sense.0>
    80003804:	439c                	lw	a5,0(a5)
    80003806:	0007871b          	sext.w	a4,a5
    8000380a:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    8000380e:	fef717e3          	bne	a4,a5,800037fc <barrier+0x68>
    80003812:	0ff0000f          	fence
    80003816:	0001                	nop
    80003818:	6462                	ld	s0,24(sp)
    8000381a:	6105                	addi	sp,sp,32
    8000381c:	8082                	ret

000000008000381e <lfsr>:
    8000381e:	7179                	addi	sp,sp,-48
    80003820:	f422                	sd	s0,40(sp)
    80003822:	1800                	addi	s0,sp,48
    80003824:	fca43c23          	sd	a0,-40(s0)
    80003828:	fd843783          	ld	a5,-40(s0)
    8000382c:	0017d713          	srli	a4,a5,0x1
    80003830:	fd843783          	ld	a5,-40(s0)
    80003834:	8fb9                	xor	a5,a5,a4
    80003836:	8b85                	andi	a5,a5,1
    80003838:	fef43423          	sd	a5,-24(s0)
    8000383c:	fd843783          	ld	a5,-40(s0)
    80003840:	0017d713          	srli	a4,a5,0x1
    80003844:	fe843783          	ld	a5,-24(s0)
    80003848:	17fa                	slli	a5,a5,0x3e
    8000384a:	8fd9                	or	a5,a5,a4
    8000384c:	853e                	mv	a0,a5
    8000384e:	7422                	ld	s0,40(sp)
    80003850:	6145                	addi	sp,sp,48
    80003852:	8082                	ret

0000000080003854 <insn_len>:
    80003854:	1101                	addi	sp,sp,-32
    80003856:	ec22                	sd	s0,24(sp)
    80003858:	1000                	addi	s0,sp,32
    8000385a:	fea43423          	sd	a0,-24(s0)
    8000385e:	fe843783          	ld	a5,-24(s0)
    80003862:	0007d783          	lhu	a5,0(a5)
    80003866:	2781                	sext.w	a5,a5
    80003868:	8b8d                	andi	a5,a5,3
    8000386a:	2781                	sext.w	a5,a5
    8000386c:	c399                	beqz	a5,80003872 <insn_len+0x1e>
    8000386e:	4791                	li	a5,4
    80003870:	a011                	j	80003874 <insn_len+0x20>
    80003872:	4789                	li	a5,2
    80003874:	853e                	mv	a0,a5
    80003876:	6462                	ld	s0,24(sp)
    80003878:	6105                	addi	sp,sp,32
    8000387a:	8082                	ret

000000008000387c <syscall>:
    8000387c:	7171                	addi	sp,sp,-176
    8000387e:	f522                	sd	s0,168(sp)
    80003880:	1900                	addi	s0,sp,176
    80003882:	f6a43c23          	sd	a0,-136(s0)
    80003886:	f6b43823          	sd	a1,-144(s0)
    8000388a:	f6c43423          	sd	a2,-152(s0)
    8000388e:	f6d43023          	sd	a3,-160(s0)
    80003892:	ff040793          	addi	a5,s0,-16
    80003896:	f4f43c23          	sd	a5,-168(s0)
    8000389a:	f5843783          	ld	a5,-168(s0)
    8000389e:	f9078793          	addi	a5,a5,-112
    800038a2:	03f78793          	addi	a5,a5,63
    800038a6:	8399                	srli	a5,a5,0x6
    800038a8:	079a                	slli	a5,a5,0x6
    800038aa:	f7843703          	ld	a4,-136(s0)
    800038ae:	e398                	sd	a4,0(a5)
    800038b0:	f7043703          	ld	a4,-144(s0)
    800038b4:	e798                	sd	a4,8(a5)
    800038b6:	f6843703          	ld	a4,-152(s0)
    800038ba:	eb98                	sd	a4,16(a5)
    800038bc:	f6043703          	ld	a4,-160(s0)
    800038c0:	ef98                	sd	a4,24(a5)
    800038c2:	0ff0000f          	fence
    800038c6:	86be                	mv	a3,a5
    800038c8:	577d                	li	a4,-1
    800038ca:	8341                	srli	a4,a4,0x10
    800038cc:	8ef9                	and	a3,a3,a4
    800038ce:	ffffd717          	auipc	a4,0xffffd
    800038d2:	73270713          	addi	a4,a4,1842 # 80001000 <tohost>
    800038d6:	e314                	sd	a3,0(a4)
    800038d8:	0001                	nop
    800038da:	ffffd717          	auipc	a4,0xffffd
    800038de:	76670713          	addi	a4,a4,1894 # 80001040 <fromhost>
    800038e2:	6318                	ld	a4,0(a4)
    800038e4:	db7d                	beqz	a4,800038da <syscall+0x5e>
    800038e6:	ffffd717          	auipc	a4,0xffffd
    800038ea:	75a70713          	addi	a4,a4,1882 # 80001040 <fromhost>
    800038ee:	00073023          	sd	zero,0(a4)
    800038f2:	0ff0000f          	fence
    800038f6:	639c                	ld	a5,0(a5)
    800038f8:	853e                	mv	a0,a5
    800038fa:	742a                	ld	s0,168(sp)
    800038fc:	614d                	addi	sp,sp,176
    800038fe:	8082                	ret

0000000080003900 <setStats>:
    80003900:	715d                	addi	sp,sp,-80
    80003902:	e4a2                	sd	s0,72(sp)
    80003904:	0880                	addi	s0,sp,80
    80003906:	87aa                	mv	a5,a0
    80003908:	faf42e23          	sw	a5,-68(s0)
    8000390c:	fc042e23          	sw	zero,-36(s0)
    80003910:	fdc42783          	lw	a5,-36(s0)
    80003914:	0007871b          	sext.w	a4,a5
    80003918:	4785                	li	a5,1
    8000391a:	fee7cbe3          	blt	a5,a4,80003910 <setStats+0x10>
    8000391e:	b00027f3          	csrr	a5,mcycle
    80003922:	fcf43823          	sd	a5,-48(s0)
    80003926:	fd043783          	ld	a5,-48(s0)
    8000392a:	fef43423          	sd	a5,-24(s0)
    8000392e:	fbc42783          	lw	a5,-68(s0)
    80003932:	2781                	sext.w	a5,a5
    80003934:	ef8d                	bnez	a5,8000396e <setStats+0x6e>
    80003936:	00001717          	auipc	a4,0x1
    8000393a:	0ca70713          	addi	a4,a4,202 # 80004a00 <counters>
    8000393e:	fdc42783          	lw	a5,-36(s0)
    80003942:	078e                	slli	a5,a5,0x3
    80003944:	97ba                	add	a5,a5,a4
    80003946:	639c                	ld	a5,0(a5)
    80003948:	fe843703          	ld	a4,-24(s0)
    8000394c:	40f707b3          	sub	a5,a4,a5
    80003950:	fef43423          	sd	a5,-24(s0)
    80003954:	00001717          	auipc	a4,0x1
    80003958:	0bc70713          	addi	a4,a4,188 # 80004a10 <counter_names>
    8000395c:	fdc42783          	lw	a5,-36(s0)
    80003960:	078e                	slli	a5,a5,0x3
    80003962:	97ba                	add	a5,a5,a4
    80003964:	00001717          	auipc	a4,0x1
    80003968:	eec70713          	addi	a4,a4,-276 # 80004850 <atol+0x186>
    8000396c:	e398                	sd	a4,0(a5)
    8000396e:	fdc42783          	lw	a5,-36(s0)
    80003972:	0017871b          	addiw	a4,a5,1
    80003976:	fce42e23          	sw	a4,-36(s0)
    8000397a:	00001717          	auipc	a4,0x1
    8000397e:	08670713          	addi	a4,a4,134 # 80004a00 <counters>
    80003982:	078e                	slli	a5,a5,0x3
    80003984:	97ba                	add	a5,a5,a4
    80003986:	fe843703          	ld	a4,-24(s0)
    8000398a:	e398                	sd	a4,0(a5)
    8000398c:	fdc42783          	lw	a5,-36(s0)
    80003990:	0007871b          	sext.w	a4,a5
    80003994:	4785                	li	a5,1
    80003996:	fee7cbe3          	blt	a5,a4,8000398c <setStats+0x8c>
    8000399a:	b02027f3          	csrr	a5,minstret
    8000399e:	fcf43423          	sd	a5,-56(s0)
    800039a2:	fc843783          	ld	a5,-56(s0)
    800039a6:	fef43023          	sd	a5,-32(s0)
    800039aa:	fbc42783          	lw	a5,-68(s0)
    800039ae:	2781                	sext.w	a5,a5
    800039b0:	ef8d                	bnez	a5,800039ea <setStats+0xea>
    800039b2:	00001717          	auipc	a4,0x1
    800039b6:	04e70713          	addi	a4,a4,78 # 80004a00 <counters>
    800039ba:	fdc42783          	lw	a5,-36(s0)
    800039be:	078e                	slli	a5,a5,0x3
    800039c0:	97ba                	add	a5,a5,a4
    800039c2:	639c                	ld	a5,0(a5)
    800039c4:	fe043703          	ld	a4,-32(s0)
    800039c8:	40f707b3          	sub	a5,a4,a5
    800039cc:	fef43023          	sd	a5,-32(s0)
    800039d0:	00001717          	auipc	a4,0x1
    800039d4:	04070713          	addi	a4,a4,64 # 80004a10 <counter_names>
    800039d8:	fdc42783          	lw	a5,-36(s0)
    800039dc:	078e                	slli	a5,a5,0x3
    800039de:	97ba                	add	a5,a5,a4
    800039e0:	00001717          	auipc	a4,0x1
    800039e4:	e7870713          	addi	a4,a4,-392 # 80004858 <atol+0x18e>
    800039e8:	e398                	sd	a4,0(a5)
    800039ea:	fdc42783          	lw	a5,-36(s0)
    800039ee:	0017871b          	addiw	a4,a5,1
    800039f2:	fce42e23          	sw	a4,-36(s0)
    800039f6:	00001717          	auipc	a4,0x1
    800039fa:	00a70713          	addi	a4,a4,10 # 80004a00 <counters>
    800039fe:	078e                	slli	a5,a5,0x3
    80003a00:	97ba                	add	a5,a5,a4
    80003a02:	fe043703          	ld	a4,-32(s0)
    80003a06:	e398                	sd	a4,0(a5)
    80003a08:	0001                	nop
    80003a0a:	6426                	ld	s0,72(sp)
    80003a0c:	6161                	addi	sp,sp,80
    80003a0e:	8082                	ret

0000000080003a10 <getStats>:
    80003a10:	1101                	addi	sp,sp,-32
    80003a12:	ec22                	sd	s0,24(sp)
    80003a14:	1000                	addi	s0,sp,32
    80003a16:	87aa                	mv	a5,a0
    80003a18:	fef42623          	sw	a5,-20(s0)
    80003a1c:	00001717          	auipc	a4,0x1
    80003a20:	fe470713          	addi	a4,a4,-28 # 80004a00 <counters>
    80003a24:	fec42783          	lw	a5,-20(s0)
    80003a28:	078e                	slli	a5,a5,0x3
    80003a2a:	97ba                	add	a5,a5,a4
    80003a2c:	639c                	ld	a5,0(a5)
    80003a2e:	853e                	mv	a0,a5
    80003a30:	6462                	ld	s0,24(sp)
    80003a32:	6105                	addi	sp,sp,32
    80003a34:	8082                	ret

0000000080003a36 <tohost_exit>:
    80003a36:	1101                	addi	sp,sp,-32
    80003a38:	ec22                	sd	s0,24(sp)
    80003a3a:	1000                	addi	s0,sp,32
    80003a3c:	fea43423          	sd	a0,-24(s0)
    80003a40:	fe843783          	ld	a5,-24(s0)
    80003a44:	07c6                	slli	a5,a5,0x11
    80003a46:	83c1                	srli	a5,a5,0x10
    80003a48:	0017e713          	ori	a4,a5,1
    80003a4c:	ffffd797          	auipc	a5,0xffffd
    80003a50:	5b478793          	addi	a5,a5,1460 # 80001000 <tohost>
    80003a54:	e398                	sd	a4,0(a5)
    80003a56:	0001                	nop
    80003a58:	a001                	j	80003a58 <tohost_exit+0x22>

0000000080003a5a <handle_trap>:
    80003a5a:	7179                	addi	sp,sp,-48
    80003a5c:	f406                	sd	ra,40(sp)
    80003a5e:	f022                	sd	s0,32(sp)
    80003a60:	1800                	addi	s0,sp,48
    80003a62:	fea43423          	sd	a0,-24(s0)
    80003a66:	feb43023          	sd	a1,-32(s0)
    80003a6a:	fcc43c23          	sd	a2,-40(s0)
    80003a6e:	53900513          	li	a0,1337
    80003a72:	fc5ff0ef          	jal	ra,80003a36 <tohost_exit>

0000000080003a76 <exit>:
    80003a76:	1101                	addi	sp,sp,-32
    80003a78:	ec06                	sd	ra,24(sp)
    80003a7a:	e822                	sd	s0,16(sp)
    80003a7c:	1000                	addi	s0,sp,32
    80003a7e:	87aa                	mv	a5,a0
    80003a80:	fef42623          	sw	a5,-20(s0)
    80003a84:	fec42783          	lw	a5,-20(s0)
    80003a88:	853e                	mv	a0,a5
    80003a8a:	fadff0ef          	jal	ra,80003a36 <tohost_exit>

0000000080003a8e <abort>:
    80003a8e:	1141                	addi	sp,sp,-16
    80003a90:	e406                	sd	ra,8(sp)
    80003a92:	e022                	sd	s0,0(sp)
    80003a94:	0800                	addi	s0,sp,16
    80003a96:	08600513          	li	a0,134
    80003a9a:	fddff0ef          	jal	ra,80003a76 <exit>

0000000080003a9e <printstr>:
    80003a9e:	7179                	addi	sp,sp,-48
    80003aa0:	f406                	sd	ra,40(sp)
    80003aa2:	f022                	sd	s0,32(sp)
    80003aa4:	ec26                	sd	s1,24(sp)
    80003aa6:	1800                	addi	s0,sp,48
    80003aa8:	fca43c23          	sd	a0,-40(s0)
    80003aac:	fd843483          	ld	s1,-40(s0)
    80003ab0:	fd843503          	ld	a0,-40(s0)
    80003ab4:	2d1000ef          	jal	ra,80004584 <strlen>
    80003ab8:	87aa                	mv	a5,a0
    80003aba:	86be                	mv	a3,a5
    80003abc:	8626                	mv	a2,s1
    80003abe:	4585                	li	a1,1
    80003ac0:	04000513          	li	a0,64
    80003ac4:	db9ff0ef          	jal	ra,8000387c <syscall>
    80003ac8:	0001                	nop
    80003aca:	70a2                	ld	ra,40(sp)
    80003acc:	7402                	ld	s0,32(sp)
    80003ace:	64e2                	ld	s1,24(sp)
    80003ad0:	6145                	addi	sp,sp,48
    80003ad2:	8082                	ret

0000000080003ad4 <thread_entry>:
    80003ad4:	1101                	addi	sp,sp,-32
    80003ad6:	ec22                	sd	s0,24(sp)
    80003ad8:	1000                	addi	s0,sp,32
    80003ada:	87aa                	mv	a5,a0
    80003adc:	872e                	mv	a4,a1
    80003ade:	fef42623          	sw	a5,-20(s0)
    80003ae2:	87ba                	mv	a5,a4
    80003ae4:	fef42423          	sw	a5,-24(s0)
    80003ae8:	0001                	nop
    80003aea:	fec42783          	lw	a5,-20(s0)
    80003aee:	2781                	sext.w	a5,a5
    80003af0:	ffed                	bnez	a5,80003aea <thread_entry+0x16>
    80003af2:	0001                	nop
    80003af4:	0001                	nop
    80003af6:	6462                	ld	s0,24(sp)
    80003af8:	6105                	addi	sp,sp,32
    80003afa:	8082                	ret
    80003afc:	1101                	addi	sp,sp,-32
    80003afe:	ec06                	sd	ra,24(sp)
    80003b00:	e822                	sd	s0,16(sp)
    80003b02:	1000                	addi	s0,sp,32
    80003b04:	87aa                	mv	a5,a0
    80003b06:	feb43023          	sd	a1,-32(s0)
    80003b0a:	fef42623          	sw	a5,-20(s0)
    80003b0e:	00001517          	auipc	a0,0x1
    80003b12:	d5a50513          	addi	a0,a0,-678 # 80004868 <atol+0x19e>
    80003b16:	f89ff0ef          	jal	ra,80003a9e <printstr>
    80003b1a:	57fd                	li	a5,-1
    80003b1c:	853e                	mv	a0,a5
    80003b1e:	60e2                	ld	ra,24(sp)
    80003b20:	6442                	ld	s0,16(sp)
    80003b22:	6105                	addi	sp,sp,32
    80003b24:	8082                	ret

0000000080003b26 <init_tls>:
    80003b26:	1101                	addi	sp,sp,-32
    80003b28:	ec06                	sd	ra,24(sp)
    80003b2a:	e822                	sd	s0,16(sp)
    80003b2c:	1000                	addi	s0,sp,32
    80003b2e:	00001717          	auipc	a4,0x1
    80003b32:	efa70713          	addi	a4,a4,-262 # 80004a28 <_tdata_begin>
    80003b36:	00001797          	auipc	a5,0x1
    80003b3a:	ef278793          	addi	a5,a5,-270 # 80004a28 <_tdata_begin>
    80003b3e:	40f707b3          	sub	a5,a4,a5
    80003b42:	fef43423          	sd	a5,-24(s0)
    80003b46:	8792                	mv	a5,tp
    80003b48:	fe843603          	ld	a2,-24(s0)
    80003b4c:	00001597          	auipc	a1,0x1
    80003b50:	edc58593          	addi	a1,a1,-292 # 80004a28 <_tdata_begin>
    80003b54:	853e                	mv	a0,a5
    80003b56:	0a9000ef          	jal	ra,800043fe <memcpy>
    80003b5a:	8c418713          	addi	a4,gp,-1852 # 80004ac4 <_tbss_end>
    80003b5e:	00001797          	auipc	a5,0x1
    80003b62:	eca78793          	addi	a5,a5,-310 # 80004a28 <_tdata_begin>
    80003b66:	40f707b3          	sub	a5,a4,a5
    80003b6a:	fef43023          	sd	a5,-32(s0)
    80003b6e:	8712                	mv	a4,tp
    80003b70:	fe843783          	ld	a5,-24(s0)
    80003b74:	97ba                	add	a5,a5,a4
    80003b76:	fe043603          	ld	a2,-32(s0)
    80003b7a:	4581                	li	a1,0
    80003b7c:	853e                	mv	a0,a5
    80003b7e:	139000ef          	jal	ra,800044b6 <memset>
    80003b82:	0001                	nop
    80003b84:	60e2                	ld	ra,24(sp)
    80003b86:	6442                	ld	s0,16(sp)
    80003b88:	6105                	addi	sp,sp,32
    80003b8a:	8082                	ret

0000000080003b8c <_init>:
    80003b8c:	7171                	addi	sp,sp,-176
    80003b8e:	f506                	sd	ra,168(sp)
    80003b90:	f122                	sd	s0,160(sp)
    80003b92:	ed26                	sd	s1,152(sp)
    80003b94:	1900                	addi	s0,sp,176
    80003b96:	87aa                	mv	a5,a0
    80003b98:	872e                	mv	a4,a1
    80003b9a:	f4f42e23          	sw	a5,-164(s0)
    80003b9e:	87ba                	mv	a5,a4
    80003ba0:	f4f42c23          	sw	a5,-168(s0)
    80003ba4:	fe040793          	addi	a5,s0,-32
    80003ba8:	f4f43823          	sd	a5,-176(s0)
    80003bac:	f5043783          	ld	a5,-176(s0)
    80003bb0:	f8078793          	addi	a5,a5,-128
    80003bb4:	03f78793          	addi	a5,a5,63
    80003bb8:	8399                	srli	a5,a5,0x6
    80003bba:	00679493          	slli	s1,a5,0x6
    80003bbe:	f69ff0ef          	jal	ra,80003b26 <init_tls>
    80003bc2:	f5842703          	lw	a4,-168(s0)
    80003bc6:	f5c42783          	lw	a5,-164(s0)
    80003bca:	85ba                	mv	a1,a4
    80003bcc:	853e                	mv	a0,a5
    80003bce:	f07ff0ef          	jal	ra,80003ad4 <thread_entry>
    80003bd2:	4581                	li	a1,0
    80003bd4:	4501                	li	a0,0
    80003bd6:	8d9ff0ef          	jal	ra,800034ae <main>
    80003bda:	87aa                	mv	a5,a0
    80003bdc:	fcf42823          	sw	a5,-48(s0)
    80003be0:	fc943c23          	sd	s1,-40(s0)
    80003be4:	fc042a23          	sw	zero,-44(s0)
    80003be8:	a095                	j	80003c4c <_init+0xc0>
    80003bea:	00001717          	auipc	a4,0x1
    80003bee:	e1670713          	addi	a4,a4,-490 # 80004a00 <counters>
    80003bf2:	fd442783          	lw	a5,-44(s0)
    80003bf6:	078e                	slli	a5,a5,0x3
    80003bf8:	97ba                	add	a5,a5,a4
    80003bfa:	639c                	ld	a5,0(a5)
    80003bfc:	c3b9                	beqz	a5,80003c42 <_init+0xb6>
    80003bfe:	00001717          	auipc	a4,0x1
    80003c02:	e1270713          	addi	a4,a4,-494 # 80004a10 <counter_names>
    80003c06:	fd442783          	lw	a5,-44(s0)
    80003c0a:	078e                	slli	a5,a5,0x3
    80003c0c:	97ba                	add	a5,a5,a4
    80003c0e:	6390                	ld	a2,0(a5)
    80003c10:	00001717          	auipc	a4,0x1
    80003c14:	df070713          	addi	a4,a4,-528 # 80004a00 <counters>
    80003c18:	fd442783          	lw	a5,-44(s0)
    80003c1c:	078e                	slli	a5,a5,0x3
    80003c1e:	97ba                	add	a5,a5,a4
    80003c20:	639c                	ld	a5,0(a5)
    80003c22:	86be                	mv	a3,a5
    80003c24:	00001597          	auipc	a1,0x1
    80003c28:	c5c58593          	addi	a1,a1,-932 # 80004880 <atol+0x1b6>
    80003c2c:	fd843503          	ld	a0,-40(s0)
    80003c30:	756000ef          	jal	ra,80004386 <sprintf>
    80003c34:	87aa                	mv	a5,a0
    80003c36:	873e                	mv	a4,a5
    80003c38:	fd843783          	ld	a5,-40(s0)
    80003c3c:	97ba                	add	a5,a5,a4
    80003c3e:	fcf43c23          	sd	a5,-40(s0)
    80003c42:	fd442783          	lw	a5,-44(s0)
    80003c46:	2785                	addiw	a5,a5,1
    80003c48:	fcf42a23          	sw	a5,-44(s0)
    80003c4c:	fd442783          	lw	a5,-44(s0)
    80003c50:	0007871b          	sext.w	a4,a5
    80003c54:	4785                	li	a5,1
    80003c56:	f8e7dae3          	ble	a4,a5,80003bea <_init+0x5e>
    80003c5a:	fd843783          	ld	a5,-40(s0)
    80003c5e:	00f48563          	beq	s1,a5,80003c68 <_init+0xdc>
    80003c62:	8526                	mv	a0,s1
    80003c64:	e3bff0ef          	jal	ra,80003a9e <printstr>
    80003c68:	fd042783          	lw	a5,-48(s0)
    80003c6c:	853e                	mv	a0,a5
    80003c6e:	e09ff0ef          	jal	ra,80003a76 <exit>

0000000080003c72 <puts>:
    80003c72:	7179                	addi	sp,sp,-48
    80003c74:	f406                	sd	ra,40(sp)
    80003c76:	f022                	sd	s0,32(sp)
    80003c78:	1800                	addi	s0,sp,48
    80003c7a:	fca43c23          	sd	a0,-40(s0)
    80003c7e:	fd843783          	ld	a5,-40(s0)
    80003c82:	fef43423          	sd	a5,-24(s0)
    80003c86:	a829                	j	80003ca0 <puts+0x2e>
    80003c88:	fe843783          	ld	a5,-24(s0)
    80003c8c:	00178713          	addi	a4,a5,1
    80003c90:	fee43423          	sd	a4,-24(s0)
    80003c94:	0007c783          	lbu	a5,0(a5)
    80003c98:	2781                	sext.w	a5,a5
    80003c9a:	853e                	mv	a0,a5
    80003c9c:	020000ef          	jal	ra,80003cbc <putchar>
    80003ca0:	fe843783          	ld	a5,-24(s0)
    80003ca4:	0007c783          	lbu	a5,0(a5)
    80003ca8:	f3e5                	bnez	a5,80003c88 <puts+0x16>
    80003caa:	4529                	li	a0,10
    80003cac:	010000ef          	jal	ra,80003cbc <putchar>
    80003cb0:	4781                	li	a5,0
    80003cb2:	853e                	mv	a0,a5
    80003cb4:	70a2                	ld	ra,40(sp)
    80003cb6:	7402                	ld	s0,32(sp)
    80003cb8:	6145                	addi	sp,sp,48
    80003cba:	8082                	ret

0000000080003cbc <putchar>:
    80003cbc:	1101                	addi	sp,sp,-32
    80003cbe:	ec06                	sd	ra,24(sp)
    80003cc0:	e822                	sd	s0,16(sp)
    80003cc2:	1000                	addi	s0,sp,32
    80003cc4:	87aa                	mv	a5,a0
    80003cc6:	fef42623          	sw	a5,-20(s0)
    80003cca:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003cce:	0017871b          	addiw	a4,a5,1
    80003cd2:	0007069b          	sext.w	a3,a4
    80003cd6:	08d22023          	sw	a3,128(tp) # 80 <buflen.2>
    80003cda:	fec42703          	lw	a4,-20(s0)
    80003cde:	0ff77713          	andi	a4,a4,255
    80003ce2:	04020693          	addi	a3,tp,64 # 40 <buf.3>
    80003ce6:	97b6                	add	a5,a5,a3
    80003ce8:	00e78023          	sb	a4,0(a5)
    80003cec:	fec42783          	lw	a5,-20(s0)
    80003cf0:	0007871b          	sext.w	a4,a5
    80003cf4:	47a9                	li	a5,10
    80003cf6:	00f70963          	beq	a4,a5,80003d08 <putchar+0x4c>
    80003cfa:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003cfe:	873e                	mv	a4,a5
    80003d00:	04000793          	li	a5,64
    80003d04:	00f71f63          	bne	a4,a5,80003d22 <putchar+0x66>
    80003d08:	04020713          	addi	a4,tp,64 # 40 <buf.3>
    80003d0c:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003d10:	86be                	mv	a3,a5
    80003d12:	863a                	mv	a2,a4
    80003d14:	4585                	li	a1,1
    80003d16:	04000513          	li	a0,64
    80003d1a:	b63ff0ef          	jal	ra,8000387c <syscall>
    80003d1e:	08022023          	sw	zero,128(tp) # 80 <buflen.2>
    80003d22:	4781                	li	a5,0
    80003d24:	853e                	mv	a0,a5
    80003d26:	60e2                	ld	ra,24(sp)
    80003d28:	6442                	ld	s0,16(sp)
    80003d2a:	6105                	addi	sp,sp,32
    80003d2c:	8082                	ret

0000000080003d2e <printhex>:
    80003d2e:	7139                	addi	sp,sp,-64
    80003d30:	fc06                	sd	ra,56(sp)
    80003d32:	f822                	sd	s0,48(sp)
    80003d34:	0080                	addi	s0,sp,64
    80003d36:	fca43423          	sd	a0,-56(s0)
    80003d3a:	fe042623          	sw	zero,-20(s0)
    80003d3e:	a899                	j	80003d94 <printhex+0x66>
    80003d40:	fc843783          	ld	a5,-56(s0)
    80003d44:	0ff7f793          	andi	a5,a5,255
    80003d48:	8bbd                	andi	a5,a5,15
    80003d4a:	0ff7f713          	andi	a4,a5,255
    80003d4e:	fc843783          	ld	a5,-56(s0)
    80003d52:	00f7f693          	andi	a3,a5,15
    80003d56:	47a5                	li	a5,9
    80003d58:	00d7e563          	bltu	a5,a3,80003d62 <printhex+0x34>
    80003d5c:	03000793          	li	a5,48
    80003d60:	a019                	j	80003d66 <printhex+0x38>
    80003d62:	05700793          	li	a5,87
    80003d66:	46bd                	li	a3,15
    80003d68:	fec42603          	lw	a2,-20(s0)
    80003d6c:	9e91                	subw	a3,a3,a2
    80003d6e:	2681                	sext.w	a3,a3
    80003d70:	9fb9                	addw	a5,a5,a4
    80003d72:	0ff7f713          	andi	a4,a5,255
    80003d76:	ff068793          	addi	a5,a3,-16
    80003d7a:	97a2                	add	a5,a5,s0
    80003d7c:	fee78423          	sb	a4,-24(a5)
    80003d80:	fc843783          	ld	a5,-56(s0)
    80003d84:	8391                	srli	a5,a5,0x4
    80003d86:	fcf43423          	sd	a5,-56(s0)
    80003d8a:	fec42783          	lw	a5,-20(s0)
    80003d8e:	2785                	addiw	a5,a5,1
    80003d90:	fef42623          	sw	a5,-20(s0)
    80003d94:	fec42783          	lw	a5,-20(s0)
    80003d98:	0007871b          	sext.w	a4,a5
    80003d9c:	47bd                	li	a5,15
    80003d9e:	fae7d1e3          	ble	a4,a5,80003d40 <printhex+0x12>
    80003da2:	fe040423          	sb	zero,-24(s0)
    80003da6:	fd840793          	addi	a5,s0,-40
    80003daa:	853e                	mv	a0,a5
    80003dac:	cf3ff0ef          	jal	ra,80003a9e <printstr>
    80003db0:	0001                	nop
    80003db2:	70e2                	ld	ra,56(sp)
    80003db4:	7442                	ld	s0,48(sp)
    80003db6:	6121                	addi	sp,sp,64
    80003db8:	8082                	ret

0000000080003dba <printnum>:
    80003dba:	714d                	addi	sp,sp,-336
    80003dbc:	e686                	sd	ra,328(sp)
    80003dbe:	e2a2                	sd	s0,320(sp)
    80003dc0:	0a80                	addi	s0,sp,336
    80003dc2:	eca43c23          	sd	a0,-296(s0)
    80003dc6:	ecb43823          	sd	a1,-304(s0)
    80003dca:	ecc43423          	sd	a2,-312(s0)
    80003dce:	8636                	mv	a2,a3
    80003dd0:	86ba                	mv	a3,a4
    80003dd2:	873e                	mv	a4,a5
    80003dd4:	87b2                	mv	a5,a2
    80003dd6:	ecf42223          	sw	a5,-316(s0)
    80003dda:	87b6                	mv	a5,a3
    80003ddc:	ecf42023          	sw	a5,-320(s0)
    80003de0:	87ba                	mv	a5,a4
    80003de2:	eaf42e23          	sw	a5,-324(s0)
    80003de6:	fe042623          	sw	zero,-20(s0)
    80003dea:	ec446783          	lwu	a5,-316(s0)
    80003dee:	ec843703          	ld	a4,-312(s0)
    80003df2:	02f776b3          	remu	a3,a4,a5
    80003df6:	fec42783          	lw	a5,-20(s0)
    80003dfa:	0017871b          	addiw	a4,a5,1
    80003dfe:	fee42623          	sw	a4,-20(s0)
    80003e02:	0006871b          	sext.w	a4,a3
    80003e06:	078a                	slli	a5,a5,0x2
    80003e08:	17c1                	addi	a5,a5,-16
    80003e0a:	97a2                	add	a5,a5,s0
    80003e0c:	eee7ac23          	sw	a4,-264(a5)
    80003e10:	ec446783          	lwu	a5,-316(s0)
    80003e14:	ec843703          	ld	a4,-312(s0)
    80003e18:	00f76b63          	bltu	a4,a5,80003e2e <printnum+0x74>
    80003e1c:	ec446783          	lwu	a5,-316(s0)
    80003e20:	ec843703          	ld	a4,-312(s0)
    80003e24:	02f757b3          	divu	a5,a4,a5
    80003e28:	ecf43423          	sd	a5,-312(s0)
    80003e2c:	bf7d                	j	80003dea <printnum+0x30>
    80003e2e:	0001                	nop
    80003e30:	a809                	j	80003e42 <printnum+0x88>
    80003e32:	ebc42703          	lw	a4,-324(s0)
    80003e36:	ed843783          	ld	a5,-296(s0)
    80003e3a:	ed043583          	ld	a1,-304(s0)
    80003e3e:	853a                	mv	a0,a4
    80003e40:	9782                	jalr	a5
    80003e42:	ec042783          	lw	a5,-320(s0)
    80003e46:	fff7871b          	addiw	a4,a5,-1
    80003e4a:	ece42023          	sw	a4,-320(s0)
    80003e4e:	fec42703          	lw	a4,-20(s0)
    80003e52:	2701                	sext.w	a4,a4
    80003e54:	fcf74fe3          	blt	a4,a5,80003e32 <printnum+0x78>
    80003e58:	a091                	j	80003e9c <printnum+0xe2>
    80003e5a:	fec42783          	lw	a5,-20(s0)
    80003e5e:	078a                	slli	a5,a5,0x2
    80003e60:	17c1                	addi	a5,a5,-16
    80003e62:	97a2                	add	a5,a5,s0
    80003e64:	ef87a703          	lw	a4,-264(a5)
    80003e68:	fec42783          	lw	a5,-20(s0)
    80003e6c:	078a                	slli	a5,a5,0x2
    80003e6e:	17c1                	addi	a5,a5,-16
    80003e70:	97a2                	add	a5,a5,s0
    80003e72:	ef87a783          	lw	a5,-264(a5)
    80003e76:	86be                	mv	a3,a5
    80003e78:	47a5                	li	a5,9
    80003e7a:	00d7f563          	bleu	a3,a5,80003e84 <printnum+0xca>
    80003e7e:	05700793          	li	a5,87
    80003e82:	a019                	j	80003e88 <printnum+0xce>
    80003e84:	03000793          	li	a5,48
    80003e88:	9fb9                	addw	a5,a5,a4
    80003e8a:	2781                	sext.w	a5,a5
    80003e8c:	0007871b          	sext.w	a4,a5
    80003e90:	ed843783          	ld	a5,-296(s0)
    80003e94:	ed043583          	ld	a1,-304(s0)
    80003e98:	853a                	mv	a0,a4
    80003e9a:	9782                	jalr	a5
    80003e9c:	fec42783          	lw	a5,-20(s0)
    80003ea0:	fff7871b          	addiw	a4,a5,-1
    80003ea4:	fee42623          	sw	a4,-20(s0)
    80003ea8:	faf049e3          	bgtz	a5,80003e5a <printnum+0xa0>
    80003eac:	0001                	nop
    80003eae:	0001                	nop
    80003eb0:	60b6                	ld	ra,328(sp)
    80003eb2:	6416                	ld	s0,320(sp)
    80003eb4:	6171                	addi	sp,sp,336
    80003eb6:	8082                	ret

0000000080003eb8 <getuint>:
    80003eb8:	1101                	addi	sp,sp,-32
    80003eba:	ec22                	sd	s0,24(sp)
    80003ebc:	1000                	addi	s0,sp,32
    80003ebe:	fea43423          	sd	a0,-24(s0)
    80003ec2:	87ae                	mv	a5,a1
    80003ec4:	fef42223          	sw	a5,-28(s0)
    80003ec8:	fe442783          	lw	a5,-28(s0)
    80003ecc:	0007871b          	sext.w	a4,a5
    80003ed0:	4785                	li	a5,1
    80003ed2:	00e7dc63          	ble	a4,a5,80003eea <getuint+0x32>
    80003ed6:	fe843783          	ld	a5,-24(s0)
    80003eda:	639c                	ld	a5,0(a5)
    80003edc:	00878693          	addi	a3,a5,8
    80003ee0:	fe843703          	ld	a4,-24(s0)
    80003ee4:	e314                	sd	a3,0(a4)
    80003ee6:	639c                	ld	a5,0(a5)
    80003ee8:	a815                	j	80003f1c <getuint+0x64>
    80003eea:	fe442783          	lw	a5,-28(s0)
    80003eee:	2781                	sext.w	a5,a5
    80003ef0:	cb99                	beqz	a5,80003f06 <getuint+0x4e>
    80003ef2:	fe843783          	ld	a5,-24(s0)
    80003ef6:	639c                	ld	a5,0(a5)
    80003ef8:	00878693          	addi	a3,a5,8
    80003efc:	fe843703          	ld	a4,-24(s0)
    80003f00:	e314                	sd	a3,0(a4)
    80003f02:	639c                	ld	a5,0(a5)
    80003f04:	a821                	j	80003f1c <getuint+0x64>
    80003f06:	fe843783          	ld	a5,-24(s0)
    80003f0a:	639c                	ld	a5,0(a5)
    80003f0c:	00878693          	addi	a3,a5,8
    80003f10:	fe843703          	ld	a4,-24(s0)
    80003f14:	e314                	sd	a3,0(a4)
    80003f16:	439c                	lw	a5,0(a5)
    80003f18:	1782                	slli	a5,a5,0x20
    80003f1a:	9381                	srli	a5,a5,0x20
    80003f1c:	853e                	mv	a0,a5
    80003f1e:	6462                	ld	s0,24(sp)
    80003f20:	6105                	addi	sp,sp,32
    80003f22:	8082                	ret

0000000080003f24 <getint>:
    80003f24:	1101                	addi	sp,sp,-32
    80003f26:	ec22                	sd	s0,24(sp)
    80003f28:	1000                	addi	s0,sp,32
    80003f2a:	fea43423          	sd	a0,-24(s0)
    80003f2e:	87ae                	mv	a5,a1
    80003f30:	fef42223          	sw	a5,-28(s0)
    80003f34:	fe442783          	lw	a5,-28(s0)
    80003f38:	0007871b          	sext.w	a4,a5
    80003f3c:	4785                	li	a5,1
    80003f3e:	00e7dc63          	ble	a4,a5,80003f56 <getint+0x32>
    80003f42:	fe843783          	ld	a5,-24(s0)
    80003f46:	639c                	ld	a5,0(a5)
    80003f48:	00878693          	addi	a3,a5,8
    80003f4c:	fe843703          	ld	a4,-24(s0)
    80003f50:	e314                	sd	a3,0(a4)
    80003f52:	639c                	ld	a5,0(a5)
    80003f54:	a805                	j	80003f84 <getint+0x60>
    80003f56:	fe442783          	lw	a5,-28(s0)
    80003f5a:	2781                	sext.w	a5,a5
    80003f5c:	cb99                	beqz	a5,80003f72 <getint+0x4e>
    80003f5e:	fe843783          	ld	a5,-24(s0)
    80003f62:	639c                	ld	a5,0(a5)
    80003f64:	00878693          	addi	a3,a5,8
    80003f68:	fe843703          	ld	a4,-24(s0)
    80003f6c:	e314                	sd	a3,0(a4)
    80003f6e:	639c                	ld	a5,0(a5)
    80003f70:	a811                	j	80003f84 <getint+0x60>
    80003f72:	fe843783          	ld	a5,-24(s0)
    80003f76:	639c                	ld	a5,0(a5)
    80003f78:	00878693          	addi	a3,a5,8
    80003f7c:	fe843703          	ld	a4,-24(s0)
    80003f80:	e314                	sd	a3,0(a4)
    80003f82:	439c                	lw	a5,0(a5)
    80003f84:	853e                	mv	a0,a5
    80003f86:	6462                	ld	s0,24(sp)
    80003f88:	6105                	addi	sp,sp,32
    80003f8a:	8082                	ret

0000000080003f8c <vprintfmt>:
    80003f8c:	7159                	addi	sp,sp,-112
    80003f8e:	f486                	sd	ra,104(sp)
    80003f90:	f0a2                	sd	s0,96(sp)
    80003f92:	eca6                	sd	s1,88(sp)
    80003f94:	e8ca                	sd	s2,80(sp)
    80003f96:	1880                	addi	s0,sp,112
    80003f98:	faa43423          	sd	a0,-88(s0)
    80003f9c:	fab43023          	sd	a1,-96(s0)
    80003fa0:	f8c43c23          	sd	a2,-104(s0)
    80003fa4:	f8d43823          	sd	a3,-112(s0)
    80003fa8:	a831                	j	80003fc4 <vprintfmt+0x38>
    80003faa:	32048b63          	beqz	s1,800042e0 <vprintfmt+0x354>
    80003fae:	f9843783          	ld	a5,-104(s0)
    80003fb2:	0785                	addi	a5,a5,1
    80003fb4:	f8f43c23          	sd	a5,-104(s0)
    80003fb8:	fa843783          	ld	a5,-88(s0)
    80003fbc:	fa043583          	ld	a1,-96(s0)
    80003fc0:	8526                	mv	a0,s1
    80003fc2:	9782                	jalr	a5
    80003fc4:	f9843783          	ld	a5,-104(s0)
    80003fc8:	0007c783          	lbu	a5,0(a5)
    80003fcc:	0007849b          	sext.w	s1,a5
    80003fd0:	8726                	mv	a4,s1
    80003fd2:	02500793          	li	a5,37
    80003fd6:	fcf71ae3          	bne	a4,a5,80003faa <vprintfmt+0x1e>
    80003fda:	f9843783          	ld	a5,-104(s0)
    80003fde:	0785                	addi	a5,a5,1
    80003fe0:	f8f43c23          	sd	a5,-104(s0)
    80003fe4:	f9843783          	ld	a5,-104(s0)
    80003fe8:	faf43c23          	sd	a5,-72(s0)
    80003fec:	02000793          	li	a5,32
    80003ff0:	fcf403a3          	sb	a5,-57(s0)
    80003ff4:	57fd                	li	a5,-1
    80003ff6:	fcf42623          	sw	a5,-52(s0)
    80003ffa:	57fd                	li	a5,-1
    80003ffc:	fcf42423          	sw	a5,-56(s0)
    80004000:	fc042823          	sw	zero,-48(s0)
    80004004:	fa042a23          	sw	zero,-76(s0)
    80004008:	f9843783          	ld	a5,-104(s0)
    8000400c:	00178713          	addi	a4,a5,1
    80004010:	f8e43c23          	sd	a4,-104(s0)
    80004014:	0007c783          	lbu	a5,0(a5)
    80004018:	0007849b          	sext.w	s1,a5
    8000401c:	fdd4869b          	addiw	a3,s1,-35
    80004020:	0006871b          	sext.w	a4,a3
    80004024:	05500793          	li	a5,85
    80004028:	28e7ef63          	bltu	a5,a4,800042c6 <vprintfmt+0x33a>
    8000402c:	02069793          	slli	a5,a3,0x20
    80004030:	9381                	srli	a5,a5,0x20
    80004032:	00279713          	slli	a4,a5,0x2
    80004036:	00001797          	auipc	a5,0x1
    8000403a:	86278793          	addi	a5,a5,-1950 # 80004898 <atol+0x1ce>
    8000403e:	97ba                	add	a5,a5,a4
    80004040:	439c                	lw	a5,0(a5)
    80004042:	0007871b          	sext.w	a4,a5
    80004046:	00001797          	auipc	a5,0x1
    8000404a:	85278793          	addi	a5,a5,-1966 # 80004898 <atol+0x1ce>
    8000404e:	97ba                	add	a5,a5,a4
    80004050:	8782                	jr	a5
    80004052:	02d00793          	li	a5,45
    80004056:	fcf403a3          	sb	a5,-57(s0)
    8000405a:	b77d                	j	80004008 <vprintfmt+0x7c>
    8000405c:	03000793          	li	a5,48
    80004060:	fcf403a3          	sb	a5,-57(s0)
    80004064:	b755                	j	80004008 <vprintfmt+0x7c>
    80004066:	fc042423          	sw	zero,-56(s0)
    8000406a:	fc842783          	lw	a5,-56(s0)
    8000406e:	873e                	mv	a4,a5
    80004070:	87ba                	mv	a5,a4
    80004072:	0027979b          	slliw	a5,a5,0x2
    80004076:	9fb9                	addw	a5,a5,a4
    80004078:	0017979b          	slliw	a5,a5,0x1
    8000407c:	2781                	sext.w	a5,a5
    8000407e:	9fa5                	addw	a5,a5,s1
    80004080:	2781                	sext.w	a5,a5
    80004082:	fd07879b          	addiw	a5,a5,-48
    80004086:	fcf42423          	sw	a5,-56(s0)
    8000408a:	f9843783          	ld	a5,-104(s0)
    8000408e:	0007c783          	lbu	a5,0(a5)
    80004092:	0007849b          	sext.w	s1,a5
    80004096:	8726                	mv	a4,s1
    80004098:	02f00793          	li	a5,47
    8000409c:	04e7d363          	ble	a4,a5,800040e2 <vprintfmt+0x156>
    800040a0:	8726                	mv	a4,s1
    800040a2:	03900793          	li	a5,57
    800040a6:	02e7ce63          	blt	a5,a4,800040e2 <vprintfmt+0x156>
    800040aa:	f9843783          	ld	a5,-104(s0)
    800040ae:	0785                	addi	a5,a5,1
    800040b0:	f8f43c23          	sd	a5,-104(s0)
    800040b4:	bf5d                	j	8000406a <vprintfmt+0xde>
    800040b6:	f9043783          	ld	a5,-112(s0)
    800040ba:	00878713          	addi	a4,a5,8
    800040be:	f8e43823          	sd	a4,-112(s0)
    800040c2:	439c                	lw	a5,0(a5)
    800040c4:	fcf42423          	sw	a5,-56(s0)
    800040c8:	a831                	j	800040e4 <vprintfmt+0x158>
    800040ca:	fcc42783          	lw	a5,-52(s0)
    800040ce:	2781                	sext.w	a5,a5
    800040d0:	f207dce3          	bgez	a5,80004008 <vprintfmt+0x7c>
    800040d4:	fc042623          	sw	zero,-52(s0)
    800040d8:	bf05                	j	80004008 <vprintfmt+0x7c>
    800040da:	4785                	li	a5,1
    800040dc:	faf42a23          	sw	a5,-76(s0)
    800040e0:	b725                	j	80004008 <vprintfmt+0x7c>
    800040e2:	0001                	nop
    800040e4:	fcc42783          	lw	a5,-52(s0)
    800040e8:	2781                	sext.w	a5,a5
    800040ea:	f007dfe3          	bgez	a5,80004008 <vprintfmt+0x7c>
    800040ee:	fc842783          	lw	a5,-56(s0)
    800040f2:	fcf42623          	sw	a5,-52(s0)
    800040f6:	57fd                	li	a5,-1
    800040f8:	fcf42423          	sw	a5,-56(s0)
    800040fc:	b731                	j	80004008 <vprintfmt+0x7c>
    800040fe:	fd042783          	lw	a5,-48(s0)
    80004102:	2785                	addiw	a5,a5,1
    80004104:	fcf42823          	sw	a5,-48(s0)
    80004108:	b701                	j	80004008 <vprintfmt+0x7c>
    8000410a:	f9043783          	ld	a5,-112(s0)
    8000410e:	00878713          	addi	a4,a5,8
    80004112:	f8e43823          	sd	a4,-112(s0)
    80004116:	4398                	lw	a4,0(a5)
    80004118:	fa843783          	ld	a5,-88(s0)
    8000411c:	fa043583          	ld	a1,-96(s0)
    80004120:	853a                	mv	a0,a4
    80004122:	9782                	jalr	a5
    80004124:	aa6d                	j	800042de <vprintfmt+0x352>
    80004126:	f9043783          	ld	a5,-112(s0)
    8000412a:	00878713          	addi	a4,a5,8
    8000412e:	f8e43823          	sd	a4,-112(s0)
    80004132:	0007b903          	ld	s2,0(a5)
    80004136:	00091663          	bnez	s2,80004142 <vprintfmt+0x1b6>
    8000413a:	00000917          	auipc	s2,0x0
    8000413e:	75690913          	addi	s2,s2,1878 # 80004890 <atol+0x1c6>
    80004142:	fcc42783          	lw	a5,-52(s0)
    80004146:	2781                	sext.w	a5,a5
    80004148:	06f05b63          	blez	a5,800041be <vprintfmt+0x232>
    8000414c:	fc744783          	lbu	a5,-57(s0)
    80004150:	0ff7f713          	andi	a4,a5,255
    80004154:	02d00793          	li	a5,45
    80004158:	06f70363          	beq	a4,a5,800041be <vprintfmt+0x232>
    8000415c:	fcc42483          	lw	s1,-52(s0)
    80004160:	fc842783          	lw	a5,-56(s0)
    80004164:	85be                	mv	a1,a5
    80004166:	854a                	mv	a0,s2
    80004168:	458000ef          	jal	ra,800045c0 <strnlen>
    8000416c:	87aa                	mv	a5,a0
    8000416e:	2781                	sext.w	a5,a5
    80004170:	40f487bb          	subw	a5,s1,a5
    80004174:	2781                	sext.w	a5,a5
    80004176:	fcf42623          	sw	a5,-52(s0)
    8000417a:	a005                	j	8000419a <vprintfmt+0x20e>
    8000417c:	fc744783          	lbu	a5,-57(s0)
    80004180:	0007871b          	sext.w	a4,a5
    80004184:	fa843783          	ld	a5,-88(s0)
    80004188:	fa043583          	ld	a1,-96(s0)
    8000418c:	853a                	mv	a0,a4
    8000418e:	9782                	jalr	a5
    80004190:	fcc42783          	lw	a5,-52(s0)
    80004194:	37fd                	addiw	a5,a5,-1
    80004196:	fcf42623          	sw	a5,-52(s0)
    8000419a:	fcc42783          	lw	a5,-52(s0)
    8000419e:	2781                	sext.w	a5,a5
    800041a0:	fcf04ee3          	bgtz	a5,8000417c <vprintfmt+0x1f0>
    800041a4:	a829                	j	800041be <vprintfmt+0x232>
    800041a6:	fa843783          	ld	a5,-88(s0)
    800041aa:	fa043583          	ld	a1,-96(s0)
    800041ae:	8526                	mv	a0,s1
    800041b0:	9782                	jalr	a5
    800041b2:	0905                	addi	s2,s2,1
    800041b4:	fcc42783          	lw	a5,-52(s0)
    800041b8:	37fd                	addiw	a5,a5,-1
    800041ba:	fcf42623          	sw	a5,-52(s0)
    800041be:	00094783          	lbu	a5,0(s2)
    800041c2:	0007849b          	sext.w	s1,a5
    800041c6:	cc8d                	beqz	s1,80004200 <vprintfmt+0x274>
    800041c8:	fc842783          	lw	a5,-56(s0)
    800041cc:	2781                	sext.w	a5,a5
    800041ce:	fc07cce3          	bltz	a5,800041a6 <vprintfmt+0x21a>
    800041d2:	fc842783          	lw	a5,-56(s0)
    800041d6:	37fd                	addiw	a5,a5,-1
    800041d8:	fcf42423          	sw	a5,-56(s0)
    800041dc:	fc842783          	lw	a5,-56(s0)
    800041e0:	2781                	sext.w	a5,a5
    800041e2:	fc07d2e3          	bgez	a5,800041a6 <vprintfmt+0x21a>
    800041e6:	a829                	j	80004200 <vprintfmt+0x274>
    800041e8:	fa843783          	ld	a5,-88(s0)
    800041ec:	fa043583          	ld	a1,-96(s0)
    800041f0:	02000513          	li	a0,32
    800041f4:	9782                	jalr	a5
    800041f6:	fcc42783          	lw	a5,-52(s0)
    800041fa:	37fd                	addiw	a5,a5,-1
    800041fc:	fcf42623          	sw	a5,-52(s0)
    80004200:	fcc42783          	lw	a5,-52(s0)
    80004204:	2781                	sext.w	a5,a5
    80004206:	fef041e3          	bgtz	a5,800041e8 <vprintfmt+0x25c>
    8000420a:	a8d1                	j	800042de <vprintfmt+0x352>
    8000420c:	fd042703          	lw	a4,-48(s0)
    80004210:	f9040793          	addi	a5,s0,-112
    80004214:	85ba                	mv	a1,a4
    80004216:	853e                	mv	a0,a5
    80004218:	d0dff0ef          	jal	ra,80003f24 <getint>
    8000421c:	87aa                	mv	a5,a0
    8000421e:	fcf43c23          	sd	a5,-40(s0)
    80004222:	fd843783          	ld	a5,-40(s0)
    80004226:	0007df63          	bgez	a5,80004244 <vprintfmt+0x2b8>
    8000422a:	fa843783          	ld	a5,-88(s0)
    8000422e:	fa043583          	ld	a1,-96(s0)
    80004232:	02d00513          	li	a0,45
    80004236:	9782                	jalr	a5
    80004238:	fd843783          	ld	a5,-40(s0)
    8000423c:	40f007b3          	neg	a5,a5
    80004240:	fcf43c23          	sd	a5,-40(s0)
    80004244:	47a9                	li	a5,10
    80004246:	fcf42a23          	sw	a5,-44(s0)
    8000424a:	a0b9                	j	80004298 <vprintfmt+0x30c>
    8000424c:	47a9                	li	a5,10
    8000424e:	fcf42a23          	sw	a5,-44(s0)
    80004252:	a80d                	j	80004284 <vprintfmt+0x2f8>
    80004254:	47a1                	li	a5,8
    80004256:	fcf42a23          	sw	a5,-44(s0)
    8000425a:	a02d                	j	80004284 <vprintfmt+0x2f8>
    8000425c:	4785                	li	a5,1
    8000425e:	fcf42823          	sw	a5,-48(s0)
    80004262:	fa843783          	ld	a5,-88(s0)
    80004266:	fa043583          	ld	a1,-96(s0)
    8000426a:	03000513          	li	a0,48
    8000426e:	9782                	jalr	a5
    80004270:	fa843783          	ld	a5,-88(s0)
    80004274:	fa043583          	ld	a1,-96(s0)
    80004278:	07800513          	li	a0,120
    8000427c:	9782                	jalr	a5
    8000427e:	47c1                	li	a5,16
    80004280:	fcf42a23          	sw	a5,-44(s0)
    80004284:	fd042703          	lw	a4,-48(s0)
    80004288:	f9040793          	addi	a5,s0,-112
    8000428c:	85ba                	mv	a1,a4
    8000428e:	853e                	mv	a0,a5
    80004290:	c29ff0ef          	jal	ra,80003eb8 <getuint>
    80004294:	fca43c23          	sd	a0,-40(s0)
    80004298:	fd442683          	lw	a3,-44(s0)
    8000429c:	fc744783          	lbu	a5,-57(s0)
    800042a0:	2781                	sext.w	a5,a5
    800042a2:	fcc42703          	lw	a4,-52(s0)
    800042a6:	fd843603          	ld	a2,-40(s0)
    800042aa:	fa043583          	ld	a1,-96(s0)
    800042ae:	fa843503          	ld	a0,-88(s0)
    800042b2:	b09ff0ef          	jal	ra,80003dba <printnum>
    800042b6:	a025                	j	800042de <vprintfmt+0x352>
    800042b8:	fa843783          	ld	a5,-88(s0)
    800042bc:	fa043583          	ld	a1,-96(s0)
    800042c0:	8526                	mv	a0,s1
    800042c2:	9782                	jalr	a5
    800042c4:	a829                	j	800042de <vprintfmt+0x352>
    800042c6:	fa843783          	ld	a5,-88(s0)
    800042ca:	fa043583          	ld	a1,-96(s0)
    800042ce:	02500513          	li	a0,37
    800042d2:	9782                	jalr	a5
    800042d4:	fb843783          	ld	a5,-72(s0)
    800042d8:	f8f43c23          	sd	a5,-104(s0)
    800042dc:	0001                	nop
    800042de:	b1dd                	j	80003fc4 <vprintfmt+0x38>
    800042e0:	0001                	nop
    800042e2:	70a6                	ld	ra,104(sp)
    800042e4:	7406                	ld	s0,96(sp)
    800042e6:	64e6                	ld	s1,88(sp)
    800042e8:	6946                	ld	s2,80(sp)
    800042ea:	6165                	addi	sp,sp,112
    800042ec:	8082                	ret

00000000800042ee <printf>:
    800042ee:	7159                	addi	sp,sp,-112
    800042f0:	f406                	sd	ra,40(sp)
    800042f2:	f022                	sd	s0,32(sp)
    800042f4:	1800                	addi	s0,sp,48
    800042f6:	fca43c23          	sd	a0,-40(s0)
    800042fa:	e40c                	sd	a1,8(s0)
    800042fc:	e810                	sd	a2,16(s0)
    800042fe:	ec14                	sd	a3,24(s0)
    80004300:	f018                	sd	a4,32(s0)
    80004302:	f41c                	sd	a5,40(s0)
    80004304:	03043823          	sd	a6,48(s0)
    80004308:	03143c23          	sd	a7,56(s0)
    8000430c:	04040793          	addi	a5,s0,64
    80004310:	fcf43823          	sd	a5,-48(s0)
    80004314:	fd043783          	ld	a5,-48(s0)
    80004318:	fc878793          	addi	a5,a5,-56
    8000431c:	fef43423          	sd	a5,-24(s0)
    80004320:	fe843783          	ld	a5,-24(s0)
    80004324:	86be                	mv	a3,a5
    80004326:	fd843603          	ld	a2,-40(s0)
    8000432a:	4581                	li	a1,0
    8000432c:	00000517          	auipc	a0,0x0
    80004330:	99050513          	addi	a0,a0,-1648 # 80003cbc <putchar>
    80004334:	c59ff0ef          	jal	ra,80003f8c <vprintfmt>
    80004338:	4781                	li	a5,0
    8000433a:	853e                	mv	a0,a5
    8000433c:	70a2                	ld	ra,40(sp)
    8000433e:	7402                	ld	s0,32(sp)
    80004340:	6165                	addi	sp,sp,112
    80004342:	8082                	ret

0000000080004344 <sprintf_putch>:
    80004344:	7179                	addi	sp,sp,-48
    80004346:	f422                	sd	s0,40(sp)
    80004348:	1800                	addi	s0,sp,48
    8000434a:	87aa                	mv	a5,a0
    8000434c:	fcb43823          	sd	a1,-48(s0)
    80004350:	fcf42e23          	sw	a5,-36(s0)
    80004354:	fd043783          	ld	a5,-48(s0)
    80004358:	fef43423          	sd	a5,-24(s0)
    8000435c:	fe843783          	ld	a5,-24(s0)
    80004360:	639c                	ld	a5,0(a5)
    80004362:	fdc42703          	lw	a4,-36(s0)
    80004366:	0ff77713          	andi	a4,a4,255
    8000436a:	00e78023          	sb	a4,0(a5)
    8000436e:	fe843783          	ld	a5,-24(s0)
    80004372:	639c                	ld	a5,0(a5)
    80004374:	00178713          	addi	a4,a5,1
    80004378:	fe843783          	ld	a5,-24(s0)
    8000437c:	e398                	sd	a4,0(a5)
    8000437e:	0001                	nop
    80004380:	7422                	ld	s0,40(sp)
    80004382:	6145                	addi	sp,sp,48
    80004384:	8082                	ret

0000000080004386 <sprintf>:
    80004386:	7159                	addi	sp,sp,-112
    80004388:	fc06                	sd	ra,56(sp)
    8000438a:	f822                	sd	s0,48(sp)
    8000438c:	0080                	addi	s0,sp,64
    8000438e:	fca43c23          	sd	a0,-40(s0)
    80004392:	fcb43823          	sd	a1,-48(s0)
    80004396:	e010                	sd	a2,0(s0)
    80004398:	e414                	sd	a3,8(s0)
    8000439a:	e818                	sd	a4,16(s0)
    8000439c:	ec1c                	sd	a5,24(s0)
    8000439e:	03043023          	sd	a6,32(s0)
    800043a2:	03143423          	sd	a7,40(s0)
    800043a6:	fd843783          	ld	a5,-40(s0)
    800043aa:	fef43423          	sd	a5,-24(s0)
    800043ae:	03040793          	addi	a5,s0,48
    800043b2:	fcf43423          	sd	a5,-56(s0)
    800043b6:	fc843783          	ld	a5,-56(s0)
    800043ba:	fd078793          	addi	a5,a5,-48
    800043be:	fef43023          	sd	a5,-32(s0)
    800043c2:	fe043703          	ld	a4,-32(s0)
    800043c6:	fd840793          	addi	a5,s0,-40
    800043ca:	86ba                	mv	a3,a4
    800043cc:	fd043603          	ld	a2,-48(s0)
    800043d0:	85be                	mv	a1,a5
    800043d2:	00000517          	auipc	a0,0x0
    800043d6:	f7250513          	addi	a0,a0,-142 # 80004344 <sprintf_putch>
    800043da:	bb3ff0ef          	jal	ra,80003f8c <vprintfmt>
    800043de:	fd843783          	ld	a5,-40(s0)
    800043e2:	00078023          	sb	zero,0(a5)
    800043e6:	fd843703          	ld	a4,-40(s0)
    800043ea:	fe843783          	ld	a5,-24(s0)
    800043ee:	40f707b3          	sub	a5,a4,a5
    800043f2:	2781                	sext.w	a5,a5
    800043f4:	853e                	mv	a0,a5
    800043f6:	70e2                	ld	ra,56(sp)
    800043f8:	7442                	ld	s0,48(sp)
    800043fa:	6165                	addi	sp,sp,112
    800043fc:	8082                	ret

00000000800043fe <memcpy>:
    800043fe:	715d                	addi	sp,sp,-80
    80004400:	e4a2                	sd	s0,72(sp)
    80004402:	0880                	addi	s0,sp,80
    80004404:	fca43423          	sd	a0,-56(s0)
    80004408:	fcb43023          	sd	a1,-64(s0)
    8000440c:	fac43c23          	sd	a2,-72(s0)
    80004410:	fc843703          	ld	a4,-56(s0)
    80004414:	fc043783          	ld	a5,-64(s0)
    80004418:	8f5d                	or	a4,a4,a5
    8000441a:	fb843783          	ld	a5,-72(s0)
    8000441e:	8fd9                	or	a5,a5,a4
    80004420:	8b9d                	andi	a5,a5,7
    80004422:	e3b1                	bnez	a5,80004466 <memcpy+0x68>
    80004424:	fc043783          	ld	a5,-64(s0)
    80004428:	fef43423          	sd	a5,-24(s0)
    8000442c:	fc843783          	ld	a5,-56(s0)
    80004430:	fef43023          	sd	a5,-32(s0)
    80004434:	a839                	j	80004452 <memcpy+0x54>
    80004436:	fe843703          	ld	a4,-24(s0)
    8000443a:	00870793          	addi	a5,a4,8
    8000443e:	fef43423          	sd	a5,-24(s0)
    80004442:	fe043783          	ld	a5,-32(s0)
    80004446:	00878693          	addi	a3,a5,8
    8000444a:	fed43023          	sd	a3,-32(s0)
    8000444e:	6318                	ld	a4,0(a4)
    80004450:	e398                	sd	a4,0(a5)
    80004452:	fc843703          	ld	a4,-56(s0)
    80004456:	fb843783          	ld	a5,-72(s0)
    8000445a:	97ba                	add	a5,a5,a4
    8000445c:	fe043703          	ld	a4,-32(s0)
    80004460:	fcf76be3          	bltu	a4,a5,80004436 <memcpy+0x38>
    80004464:	a099                	j	800044aa <memcpy+0xac>
    80004466:	fc043783          	ld	a5,-64(s0)
    8000446a:	fcf43c23          	sd	a5,-40(s0)
    8000446e:	fc843783          	ld	a5,-56(s0)
    80004472:	fcf43823          	sd	a5,-48(s0)
    80004476:	a00d                	j	80004498 <memcpy+0x9a>
    80004478:	fd843703          	ld	a4,-40(s0)
    8000447c:	00170793          	addi	a5,a4,1
    80004480:	fcf43c23          	sd	a5,-40(s0)
    80004484:	fd043783          	ld	a5,-48(s0)
    80004488:	00178693          	addi	a3,a5,1
    8000448c:	fcd43823          	sd	a3,-48(s0)
    80004490:	00074703          	lbu	a4,0(a4)
    80004494:	00e78023          	sb	a4,0(a5)
    80004498:	fc843703          	ld	a4,-56(s0)
    8000449c:	fb843783          	ld	a5,-72(s0)
    800044a0:	97ba                	add	a5,a5,a4
    800044a2:	fd043703          	ld	a4,-48(s0)
    800044a6:	fcf769e3          	bltu	a4,a5,80004478 <memcpy+0x7a>
    800044aa:	fc843783          	ld	a5,-56(s0)
    800044ae:	853e                	mv	a0,a5
    800044b0:	6426                	ld	s0,72(sp)
    800044b2:	6161                	addi	sp,sp,80
    800044b4:	8082                	ret

00000000800044b6 <memset>:
    800044b6:	715d                	addi	sp,sp,-80
    800044b8:	e4a2                	sd	s0,72(sp)
    800044ba:	0880                	addi	s0,sp,80
    800044bc:	fca43423          	sd	a0,-56(s0)
    800044c0:	87ae                	mv	a5,a1
    800044c2:	fac43c23          	sd	a2,-72(s0)
    800044c6:	fcf42223          	sw	a5,-60(s0)
    800044ca:	fc843703          	ld	a4,-56(s0)
    800044ce:	fb843783          	ld	a5,-72(s0)
    800044d2:	8fd9                	or	a5,a5,a4
    800044d4:	8b9d                	andi	a5,a5,7
    800044d6:	e7bd                	bnez	a5,80004544 <memset+0x8e>
    800044d8:	fc442783          	lw	a5,-60(s0)
    800044dc:	0ff7f793          	andi	a5,a5,255
    800044e0:	fcf43c23          	sd	a5,-40(s0)
    800044e4:	fd843783          	ld	a5,-40(s0)
    800044e8:	07a2                	slli	a5,a5,0x8
    800044ea:	fd843703          	ld	a4,-40(s0)
    800044ee:	8fd9                	or	a5,a5,a4
    800044f0:	fcf43c23          	sd	a5,-40(s0)
    800044f4:	fd843783          	ld	a5,-40(s0)
    800044f8:	07c2                	slli	a5,a5,0x10
    800044fa:	fd843703          	ld	a4,-40(s0)
    800044fe:	8fd9                	or	a5,a5,a4
    80004500:	fcf43c23          	sd	a5,-40(s0)
    80004504:	fd843783          	ld	a5,-40(s0)
    80004508:	1782                	slli	a5,a5,0x20
    8000450a:	fd843703          	ld	a4,-40(s0)
    8000450e:	8fd9                	or	a5,a5,a4
    80004510:	fcf43c23          	sd	a5,-40(s0)
    80004514:	fc843783          	ld	a5,-56(s0)
    80004518:	fef43423          	sd	a5,-24(s0)
    8000451c:	a811                	j	80004530 <memset+0x7a>
    8000451e:	fe843783          	ld	a5,-24(s0)
    80004522:	00878713          	addi	a4,a5,8
    80004526:	fee43423          	sd	a4,-24(s0)
    8000452a:	fd843703          	ld	a4,-40(s0)
    8000452e:	e398                	sd	a4,0(a5)
    80004530:	fc843703          	ld	a4,-56(s0)
    80004534:	fb843783          	ld	a5,-72(s0)
    80004538:	97ba                	add	a5,a5,a4
    8000453a:	fe843703          	ld	a4,-24(s0)
    8000453e:	fef760e3          	bltu	a4,a5,8000451e <memset+0x68>
    80004542:	a81d                	j	80004578 <memset+0xc2>
    80004544:	fc843783          	ld	a5,-56(s0)
    80004548:	fef43023          	sd	a5,-32(s0)
    8000454c:	a829                	j	80004566 <memset+0xb0>
    8000454e:	fe043783          	ld	a5,-32(s0)
    80004552:	00178713          	addi	a4,a5,1
    80004556:	fee43023          	sd	a4,-32(s0)
    8000455a:	fc442703          	lw	a4,-60(s0)
    8000455e:	0ff77713          	andi	a4,a4,255
    80004562:	00e78023          	sb	a4,0(a5)
    80004566:	fc843703          	ld	a4,-56(s0)
    8000456a:	fb843783          	ld	a5,-72(s0)
    8000456e:	97ba                	add	a5,a5,a4
    80004570:	fe043703          	ld	a4,-32(s0)
    80004574:	fcf76de3          	bltu	a4,a5,8000454e <memset+0x98>
    80004578:	fc843783          	ld	a5,-56(s0)
    8000457c:	853e                	mv	a0,a5
    8000457e:	6426                	ld	s0,72(sp)
    80004580:	6161                	addi	sp,sp,80
    80004582:	8082                	ret

0000000080004584 <strlen>:
    80004584:	7179                	addi	sp,sp,-48
    80004586:	f422                	sd	s0,40(sp)
    80004588:	1800                	addi	s0,sp,48
    8000458a:	fca43c23          	sd	a0,-40(s0)
    8000458e:	fd843783          	ld	a5,-40(s0)
    80004592:	fef43423          	sd	a5,-24(s0)
    80004596:	a031                	j	800045a2 <strlen+0x1e>
    80004598:	fe843783          	ld	a5,-24(s0)
    8000459c:	0785                	addi	a5,a5,1
    8000459e:	fef43423          	sd	a5,-24(s0)
    800045a2:	fe843783          	ld	a5,-24(s0)
    800045a6:	0007c783          	lbu	a5,0(a5)
    800045aa:	f7fd                	bnez	a5,80004598 <strlen+0x14>
    800045ac:	fe843703          	ld	a4,-24(s0)
    800045b0:	fd843783          	ld	a5,-40(s0)
    800045b4:	40f707b3          	sub	a5,a4,a5
    800045b8:	853e                	mv	a0,a5
    800045ba:	7422                	ld	s0,40(sp)
    800045bc:	6145                	addi	sp,sp,48
    800045be:	8082                	ret

00000000800045c0 <strnlen>:
    800045c0:	7179                	addi	sp,sp,-48
    800045c2:	f422                	sd	s0,40(sp)
    800045c4:	1800                	addi	s0,sp,48
    800045c6:	fca43c23          	sd	a0,-40(s0)
    800045ca:	fcb43823          	sd	a1,-48(s0)
    800045ce:	fd843783          	ld	a5,-40(s0)
    800045d2:	fef43423          	sd	a5,-24(s0)
    800045d6:	a031                	j	800045e2 <strnlen+0x22>
    800045d8:	fe843783          	ld	a5,-24(s0)
    800045dc:	0785                	addi	a5,a5,1
    800045de:	fef43423          	sd	a5,-24(s0)
    800045e2:	fd043783          	ld	a5,-48(s0)
    800045e6:	fff78713          	addi	a4,a5,-1
    800045ea:	fce43823          	sd	a4,-48(s0)
    800045ee:	c791                	beqz	a5,800045fa <strnlen+0x3a>
    800045f0:	fe843783          	ld	a5,-24(s0)
    800045f4:	0007c783          	lbu	a5,0(a5)
    800045f8:	f3e5                	bnez	a5,800045d8 <strnlen+0x18>
    800045fa:	fe843703          	ld	a4,-24(s0)
    800045fe:	fd843783          	ld	a5,-40(s0)
    80004602:	40f707b3          	sub	a5,a4,a5
    80004606:	853e                	mv	a0,a5
    80004608:	7422                	ld	s0,40(sp)
    8000460a:	6145                	addi	sp,sp,48
    8000460c:	8082                	ret

000000008000460e <strcmp>:
    8000460e:	7179                	addi	sp,sp,-48
    80004610:	f422                	sd	s0,40(sp)
    80004612:	1800                	addi	s0,sp,48
    80004614:	fca43c23          	sd	a0,-40(s0)
    80004618:	fcb43823          	sd	a1,-48(s0)
    8000461c:	fd843783          	ld	a5,-40(s0)
    80004620:	00178713          	addi	a4,a5,1
    80004624:	fce43c23          	sd	a4,-40(s0)
    80004628:	0007c783          	lbu	a5,0(a5)
    8000462c:	fef407a3          	sb	a5,-17(s0)
    80004630:	fd043783          	ld	a5,-48(s0)
    80004634:	00178713          	addi	a4,a5,1
    80004638:	fce43823          	sd	a4,-48(s0)
    8000463c:	0007c783          	lbu	a5,0(a5)
    80004640:	fef40723          	sb	a5,-18(s0)
    80004644:	fef44783          	lbu	a5,-17(s0)
    80004648:	0ff7f793          	andi	a5,a5,255
    8000464c:	cf81                	beqz	a5,80004664 <strcmp+0x56>
    8000464e:	fef44783          	lbu	a5,-17(s0)
    80004652:	873e                	mv	a4,a5
    80004654:	fee44783          	lbu	a5,-18(s0)
    80004658:	0ff77713          	andi	a4,a4,255
    8000465c:	0ff7f793          	andi	a5,a5,255
    80004660:	faf70ee3          	beq	a4,a5,8000461c <strcmp+0xe>
    80004664:	fef44783          	lbu	a5,-17(s0)
    80004668:	0007871b          	sext.w	a4,a5
    8000466c:	fee44783          	lbu	a5,-18(s0)
    80004670:	2781                	sext.w	a5,a5
    80004672:	40f707bb          	subw	a5,a4,a5
    80004676:	2781                	sext.w	a5,a5
    80004678:	853e                	mv	a0,a5
    8000467a:	7422                	ld	s0,40(sp)
    8000467c:	6145                	addi	sp,sp,48
    8000467e:	8082                	ret

0000000080004680 <strcpy>:
    80004680:	7179                	addi	sp,sp,-48
    80004682:	f422                	sd	s0,40(sp)
    80004684:	1800                	addi	s0,sp,48
    80004686:	fca43c23          	sd	a0,-40(s0)
    8000468a:	fcb43823          	sd	a1,-48(s0)
    8000468e:	fd843783          	ld	a5,-40(s0)
    80004692:	fef43423          	sd	a5,-24(s0)
    80004696:	0001                	nop
    80004698:	fd043703          	ld	a4,-48(s0)
    8000469c:	00170793          	addi	a5,a4,1
    800046a0:	fcf43823          	sd	a5,-48(s0)
    800046a4:	fe843783          	ld	a5,-24(s0)
    800046a8:	00178693          	addi	a3,a5,1
    800046ac:	fed43423          	sd	a3,-24(s0)
    800046b0:	00074703          	lbu	a4,0(a4)
    800046b4:	00e78023          	sb	a4,0(a5)
    800046b8:	0007c783          	lbu	a5,0(a5)
    800046bc:	fff1                	bnez	a5,80004698 <strcpy+0x18>
    800046be:	fd843783          	ld	a5,-40(s0)
    800046c2:	853e                	mv	a0,a5
    800046c4:	7422                	ld	s0,40(sp)
    800046c6:	6145                	addi	sp,sp,48
    800046c8:	8082                	ret

00000000800046ca <atol>:
    800046ca:	7179                	addi	sp,sp,-48
    800046cc:	f422                	sd	s0,40(sp)
    800046ce:	1800                	addi	s0,sp,48
    800046d0:	fca43c23          	sd	a0,-40(s0)
    800046d4:	fe043423          	sd	zero,-24(s0)
    800046d8:	fe042223          	sw	zero,-28(s0)
    800046dc:	a031                	j	800046e8 <atol+0x1e>
    800046de:	fd843783          	ld	a5,-40(s0)
    800046e2:	0785                	addi	a5,a5,1
    800046e4:	fcf43c23          	sd	a5,-40(s0)
    800046e8:	fd843783          	ld	a5,-40(s0)
    800046ec:	0007c783          	lbu	a5,0(a5)
    800046f0:	873e                	mv	a4,a5
    800046f2:	02000793          	li	a5,32
    800046f6:	fef704e3          	beq	a4,a5,800046de <atol+0x14>
    800046fa:	fd843783          	ld	a5,-40(s0)
    800046fe:	0007c783          	lbu	a5,0(a5)
    80004702:	873e                	mv	a4,a5
    80004704:	02d00793          	li	a5,45
    80004708:	00f70b63          	beq	a4,a5,8000471e <atol+0x54>
    8000470c:	fd843783          	ld	a5,-40(s0)
    80004710:	0007c783          	lbu	a5,0(a5)
    80004714:	873e                	mv	a4,a5
    80004716:	02b00793          	li	a5,43
    8000471a:	06f71263          	bne	a4,a5,8000477e <atol+0xb4>
    8000471e:	fd843783          	ld	a5,-40(s0)
    80004722:	0007c783          	lbu	a5,0(a5)
    80004726:	0007871b          	sext.w	a4,a5
    8000472a:	02d00793          	li	a5,45
    8000472e:	40f707b3          	sub	a5,a4,a5
    80004732:	0017b793          	seqz	a5,a5
    80004736:	0ff7f793          	andi	a5,a5,255
    8000473a:	fef42223          	sw	a5,-28(s0)
    8000473e:	fd843783          	ld	a5,-40(s0)
    80004742:	0785                	addi	a5,a5,1
    80004744:	fcf43c23          	sd	a5,-40(s0)
    80004748:	a81d                	j	8000477e <atol+0xb4>
    8000474a:	fe843703          	ld	a4,-24(s0)
    8000474e:	87ba                	mv	a5,a4
    80004750:	078a                	slli	a5,a5,0x2
    80004752:	97ba                	add	a5,a5,a4
    80004754:	0786                	slli	a5,a5,0x1
    80004756:	fef43423          	sd	a5,-24(s0)
    8000475a:	fd843783          	ld	a5,-40(s0)
    8000475e:	00178713          	addi	a4,a5,1
    80004762:	fce43c23          	sd	a4,-40(s0)
    80004766:	0007c783          	lbu	a5,0(a5)
    8000476a:	2781                	sext.w	a5,a5
    8000476c:	fd07879b          	addiw	a5,a5,-48
    80004770:	2781                	sext.w	a5,a5
    80004772:	873e                	mv	a4,a5
    80004774:	fe843783          	ld	a5,-24(s0)
    80004778:	97ba                	add	a5,a5,a4
    8000477a:	fef43423          	sd	a5,-24(s0)
    8000477e:	fd843783          	ld	a5,-40(s0)
    80004782:	0007c783          	lbu	a5,0(a5)
    80004786:	f3f1                	bnez	a5,8000474a <atol+0x80>
    80004788:	fe442783          	lw	a5,-28(s0)
    8000478c:	2781                	sext.w	a5,a5
    8000478e:	c791                	beqz	a5,8000479a <atol+0xd0>
    80004790:	fe843783          	ld	a5,-24(s0)
    80004794:	40f007b3          	neg	a5,a5
    80004798:	a019                	j	8000479e <atol+0xd4>
    8000479a:	fe843783          	ld	a5,-24(s0)
    8000479e:	853e                	mv	a0,a5
    800047a0:	7422                	ld	s0,40(sp)
    800047a2:	6145                	addi	sp,sp,48
    800047a4:	8082                	ret
