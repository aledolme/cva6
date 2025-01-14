
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
    800000f8:	07c18193          	addi	gp,gp,124 # 80005170 <__global_pointer$>
    800000fc:	88f18213          	addi	tp,gp,-1905 # 800049ff <_end+0x3f>
    80000100:	fc027213          	andi	tp,tp,-64
    80000104:	f1402573          	csrr	a0,mhartid
    80000108:	4585                	li	a1,1
    8000010a:	00b57063          	bleu	a1,a0,8000010a <_start+0x10a>
    8000010e:	00150113          	addi	sp,a0,1
    80000112:	0146                	slli	sp,sp,0x11
    80000114:	9112                	add	sp,sp,tp
    80000116:	01151613          	slli	a2,a0,0x11
    8000011a:	9232                	add	tp,tp,a2
    8000011c:	20d0306f          	j	80003b28 <_init>

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
    8000016a:	08d030ef          	jal	ra,800039f6 <handle_trap>
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
    80003224:	74068693          	addi	a3,a3,1856 # 80004960 <bin_to_hex_table>
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
    80003248:	71c70713          	addi	a4,a4,1820 # 80004960 <bin_to_hex_table>
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
    80003394:	3b850513          	addi	a0,a0,952 # 80004748 <atol+0xe2>
    80003398:	e23ff0ef          	jal	ra,800031ba <print_uart>
    8000339c:	fd043783          	ld	a5,-48(s0)
    800033a0:	2781                	sext.w	a5,a5
    800033a2:	853e                	mv	a0,a5
    800033a4:	ebfff0ef          	jal	ra,80003262 <print_uart_int>
    800033a8:	00001517          	auipc	a0,0x1
    800033ac:	3c050513          	addi	a0,a0,960 # 80004768 <atol+0x102>
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
    800033e0:	3ac50513          	addi	a0,a0,940 # 80004788 <atol+0x122>
    800033e4:	dd7ff0ef          	jal	ra,800031ba <print_uart>
    800033e8:	fe744783          	lbu	a5,-25(s0)
    800033ec:	853e                	mv	a0,a5
    800033ee:	f57ff0ef          	jal	ra,80003344 <print_uart_byte>
    800033f2:	00001517          	auipc	a0,0x1
    800033f6:	3a650513          	addi	a0,a0,934 # 80004798 <atol+0x132>
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
    8000346a:	33a50513          	addi	a0,a0,826 # 800047a0 <atol+0x13a>
    8000346e:	d4dff0ef          	jal	ra,800031ba <print_uart>
    80003472:	fe744783          	lbu	a5,-25(s0)
    80003476:	853e                	mv	a0,a5
    80003478:	ecdff0ef          	jal	ra,80003344 <print_uart_byte>
    8000347c:	00001517          	auipc	a0,0x1
    80003480:	31c50513          	addi	a0,a0,796 # 80004798 <atol+0x132>
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
    800034ae:	1101                	addi	sp,sp,-32
    800034b0:	ec06                	sd	ra,24(sp)
    800034b2:	e822                	sd	s0,16(sp)
    800034b4:	1000                	addi	s0,sp,32
    800034b6:	02faf7b7          	lui	a5,0x2faf
    800034ba:	08078793          	addi	a5,a5,128 # 2faf080 <buflen.2+0x2faf000>
    800034be:	fef42623          	sw	a5,-20(s0)
    800034c2:	67f1                	lui	a5,0x1c
    800034c4:	20078793          	addi	a5,a5,512 # 1c200 <buflen.2+0x1c180>
    800034c8:	fef42423          	sw	a5,-24(s0)
    800034cc:	fe842703          	lw	a4,-24(s0)
    800034d0:	fec42783          	lw	a5,-20(s0)
    800034d4:	85ba                	mv	a1,a4
    800034d6:	853e                	mv	a0,a5
    800034d8:	c33ff0ef          	jal	ra,8000310a <init_uart>
    800034dc:	fe744783          	lbu	a5,-25(s0)
    800034e0:	4585                	li	a1,1
    800034e2:	853e                	mv	a0,a5
    800034e4:	e9dff0ef          	jal	ra,80003380 <read_seed_input_from_uart>
    800034e8:	fe744783          	lbu	a5,-25(s0)
    800034ec:	853e                	mv	a0,a5
    800034ee:	e57ff0ef          	jal	ra,80003344 <print_uart_byte>
    800034f2:	4781                	li	a5,0
    800034f4:	853e                	mv	a0,a5
    800034f6:	60e2                	ld	ra,24(sp)
    800034f8:	6442                	ld	s0,16(sp)
    800034fa:	6105                	addi	sp,sp,32
    800034fc:	8082                	ret

00000000800034fe <verify>:
    800034fe:	715d                	addi	sp,sp,-80
    80003500:	e4a2                	sd	s0,72(sp)
    80003502:	0880                	addi	s0,sp,80
    80003504:	87aa                	mv	a5,a0
    80003506:	fcb43023          	sd	a1,-64(s0)
    8000350a:	fac43c23          	sd	a2,-72(s0)
    8000350e:	fcf42623          	sw	a5,-52(s0)
    80003512:	fe042623          	sw	zero,-20(s0)
    80003516:	a841                	j	800035a6 <verify+0xa8>
    80003518:	fec42783          	lw	a5,-20(s0)
    8000351c:	078a                	slli	a5,a5,0x2
    8000351e:	fc043703          	ld	a4,-64(s0)
    80003522:	97ba                	add	a5,a5,a4
    80003524:	439c                	lw	a5,0(a5)
    80003526:	fef42423          	sw	a5,-24(s0)
    8000352a:	fec42783          	lw	a5,-20(s0)
    8000352e:	0785                	addi	a5,a5,1
    80003530:	078a                	slli	a5,a5,0x2
    80003532:	fc043703          	ld	a4,-64(s0)
    80003536:	97ba                	add	a5,a5,a4
    80003538:	439c                	lw	a5,0(a5)
    8000353a:	fef42223          	sw	a5,-28(s0)
    8000353e:	fec42783          	lw	a5,-20(s0)
    80003542:	078a                	slli	a5,a5,0x2
    80003544:	fb843703          	ld	a4,-72(s0)
    80003548:	97ba                	add	a5,a5,a4
    8000354a:	439c                	lw	a5,0(a5)
    8000354c:	fef42023          	sw	a5,-32(s0)
    80003550:	fec42783          	lw	a5,-20(s0)
    80003554:	0785                	addi	a5,a5,1
    80003556:	078a                	slli	a5,a5,0x2
    80003558:	fb843703          	ld	a4,-72(s0)
    8000355c:	97ba                	add	a5,a5,a4
    8000355e:	439c                	lw	a5,0(a5)
    80003560:	fcf42e23          	sw	a5,-36(s0)
    80003564:	fe842783          	lw	a5,-24(s0)
    80003568:	873e                	mv	a4,a5
    8000356a:	fe042783          	lw	a5,-32(s0)
    8000356e:	2701                	sext.w	a4,a4
    80003570:	2781                	sext.w	a5,a5
    80003572:	00f70763          	beq	a4,a5,80003580 <verify+0x82>
    80003576:	fec42783          	lw	a5,-20(s0)
    8000357a:	2785                	addiw	a5,a5,1
    8000357c:	2781                	sext.w	a5,a5
    8000357e:	a059                	j	80003604 <verify+0x106>
    80003580:	fe442783          	lw	a5,-28(s0)
    80003584:	873e                	mv	a4,a5
    80003586:	fdc42783          	lw	a5,-36(s0)
    8000358a:	2701                	sext.w	a4,a4
    8000358c:	2781                	sext.w	a5,a5
    8000358e:	00f70763          	beq	a4,a5,8000359c <verify+0x9e>
    80003592:	fec42783          	lw	a5,-20(s0)
    80003596:	2789                	addiw	a5,a5,2
    80003598:	2781                	sext.w	a5,a5
    8000359a:	a0ad                	j	80003604 <verify+0x106>
    8000359c:	fec42783          	lw	a5,-20(s0)
    800035a0:	2789                	addiw	a5,a5,2
    800035a2:	fef42623          	sw	a5,-20(s0)
    800035a6:	fcc42783          	lw	a5,-52(s0)
    800035aa:	01f7d71b          	srliw	a4,a5,0x1f
    800035ae:	9fb9                	addw	a5,a5,a4
    800035b0:	4017d79b          	sraiw	a5,a5,0x1
    800035b4:	2781                	sext.w	a5,a5
    800035b6:	0017979b          	slliw	a5,a5,0x1
    800035ba:	0007871b          	sext.w	a4,a5
    800035be:	fec42783          	lw	a5,-20(s0)
    800035c2:	2781                	sext.w	a5,a5
    800035c4:	f4e7cae3          	blt	a5,a4,80003518 <verify+0x1a>
    800035c8:	fcc42783          	lw	a5,-52(s0)
    800035cc:	8b85                	andi	a5,a5,1
    800035ce:	2781                	sext.w	a5,a5
    800035d0:	cb8d                	beqz	a5,80003602 <verify+0x104>
    800035d2:	fcc42783          	lw	a5,-52(s0)
    800035d6:	078a                	slli	a5,a5,0x2
    800035d8:	17f1                	addi	a5,a5,-4
    800035da:	fc043703          	ld	a4,-64(s0)
    800035de:	97ba                	add	a5,a5,a4
    800035e0:	439c                	lw	a5,0(a5)
    800035e2:	0007869b          	sext.w	a3,a5
    800035e6:	fcc42783          	lw	a5,-52(s0)
    800035ea:	078a                	slli	a5,a5,0x2
    800035ec:	17f1                	addi	a5,a5,-4
    800035ee:	fb843703          	ld	a4,-72(s0)
    800035f2:	97ba                	add	a5,a5,a4
    800035f4:	439c                	lw	a5,0(a5)
    800035f6:	8736                	mv	a4,a3
    800035f8:	00f70563          	beq	a4,a5,80003602 <verify+0x104>
    800035fc:	fcc42783          	lw	a5,-52(s0)
    80003600:	a011                	j	80003604 <verify+0x106>
    80003602:	4781                	li	a5,0
    80003604:	853e                	mv	a0,a5
    80003606:	6426                	ld	s0,72(sp)
    80003608:	6161                	addi	sp,sp,80
    8000360a:	8082                	ret

000000008000360c <verifyDouble>:
    8000360c:	711d                	addi	sp,sp,-96
    8000360e:	eca2                	sd	s0,88(sp)
    80003610:	1080                	addi	s0,sp,96
    80003612:	87aa                	mv	a5,a0
    80003614:	fab43823          	sd	a1,-80(s0)
    80003618:	fac43423          	sd	a2,-88(s0)
    8000361c:	faf42e23          	sw	a5,-68(s0)
    80003620:	fe042623          	sw	zero,-20(s0)
    80003624:	a06d                	j	800036ce <verifyDouble+0xc2>
    80003626:	fec42783          	lw	a5,-20(s0)
    8000362a:	078e                	slli	a5,a5,0x3
    8000362c:	fb043703          	ld	a4,-80(s0)
    80003630:	97ba                	add	a5,a5,a4
    80003632:	239c                	fld	fa5,0(a5)
    80003634:	fef43027          	fsd	fa5,-32(s0)
    80003638:	fec42783          	lw	a5,-20(s0)
    8000363c:	0785                	addi	a5,a5,1
    8000363e:	078e                	slli	a5,a5,0x3
    80003640:	fb043703          	ld	a4,-80(s0)
    80003644:	97ba                	add	a5,a5,a4
    80003646:	239c                	fld	fa5,0(a5)
    80003648:	fcf43c27          	fsd	fa5,-40(s0)
    8000364c:	fec42783          	lw	a5,-20(s0)
    80003650:	078e                	slli	a5,a5,0x3
    80003652:	fa843703          	ld	a4,-88(s0)
    80003656:	97ba                	add	a5,a5,a4
    80003658:	239c                	fld	fa5,0(a5)
    8000365a:	fcf43827          	fsd	fa5,-48(s0)
    8000365e:	fec42783          	lw	a5,-20(s0)
    80003662:	0785                	addi	a5,a5,1
    80003664:	078e                	slli	a5,a5,0x3
    80003666:	fa843703          	ld	a4,-88(s0)
    8000366a:	97ba                	add	a5,a5,a4
    8000366c:	239c                	fld	fa5,0(a5)
    8000366e:	fcf43427          	fsd	fa5,-56(s0)
    80003672:	fe043707          	fld	fa4,-32(s0)
    80003676:	fd043787          	fld	fa5,-48(s0)
    8000367a:	a2f727d3          	feq.d	a5,fa4,fa5
    8000367e:	00f037b3          	snez	a5,a5
    80003682:	0ff7f793          	andi	a5,a5,255
    80003686:	fcf42223          	sw	a5,-60(s0)
    8000368a:	fd843707          	fld	fa4,-40(s0)
    8000368e:	fc843787          	fld	fa5,-56(s0)
    80003692:	a2f727d3          	feq.d	a5,fa4,fa5
    80003696:	00f037b3          	snez	a5,a5
    8000369a:	0ff7f793          	andi	a5,a5,255
    8000369e:	fcf42023          	sw	a5,-64(s0)
    800036a2:	fc442783          	lw	a5,-60(s0)
    800036a6:	873e                	mv	a4,a5
    800036a8:	fc042783          	lw	a5,-64(s0)
    800036ac:	8ff9                	and	a5,a5,a4
    800036ae:	2781                	sext.w	a5,a5
    800036b0:	eb91                	bnez	a5,800036c4 <verifyDouble+0xb8>
    800036b2:	fec42783          	lw	a5,-20(s0)
    800036b6:	2785                	addiw	a5,a5,1
    800036b8:	2781                	sext.w	a5,a5
    800036ba:	fc442703          	lw	a4,-60(s0)
    800036be:	9fb9                	addw	a5,a5,a4
    800036c0:	2781                	sext.w	a5,a5
    800036c2:	a09d                	j	80003728 <verifyDouble+0x11c>
    800036c4:	fec42783          	lw	a5,-20(s0)
    800036c8:	2789                	addiw	a5,a5,2
    800036ca:	fef42623          	sw	a5,-20(s0)
    800036ce:	fbc42783          	lw	a5,-68(s0)
    800036d2:	01f7d71b          	srliw	a4,a5,0x1f
    800036d6:	9fb9                	addw	a5,a5,a4
    800036d8:	4017d79b          	sraiw	a5,a5,0x1
    800036dc:	2781                	sext.w	a5,a5
    800036de:	0017979b          	slliw	a5,a5,0x1
    800036e2:	0007871b          	sext.w	a4,a5
    800036e6:	fec42783          	lw	a5,-20(s0)
    800036ea:	2781                	sext.w	a5,a5
    800036ec:	f2e7cde3          	blt	a5,a4,80003626 <verifyDouble+0x1a>
    800036f0:	fbc42783          	lw	a5,-68(s0)
    800036f4:	8b85                	andi	a5,a5,1
    800036f6:	2781                	sext.w	a5,a5
    800036f8:	c79d                	beqz	a5,80003726 <verifyDouble+0x11a>
    800036fa:	fbc42783          	lw	a5,-68(s0)
    800036fe:	078e                	slli	a5,a5,0x3
    80003700:	17e1                	addi	a5,a5,-8
    80003702:	fb043703          	ld	a4,-80(s0)
    80003706:	97ba                	add	a5,a5,a4
    80003708:	2398                	fld	fa4,0(a5)
    8000370a:	fbc42783          	lw	a5,-68(s0)
    8000370e:	078e                	slli	a5,a5,0x3
    80003710:	17e1                	addi	a5,a5,-8
    80003712:	fa843703          	ld	a4,-88(s0)
    80003716:	97ba                	add	a5,a5,a4
    80003718:	239c                	fld	fa5,0(a5)
    8000371a:	a2f727d3          	feq.d	a5,fa4,fa5
    8000371e:	e781                	bnez	a5,80003726 <verifyDouble+0x11a>
    80003720:	fbc42783          	lw	a5,-68(s0)
    80003724:	a011                	j	80003728 <verifyDouble+0x11c>
    80003726:	4781                	li	a5,0
    80003728:	853e                	mv	a0,a5
    8000372a:	6466                	ld	s0,88(sp)
    8000372c:	6125                	addi	sp,sp,96
    8000372e:	8082                	ret

0000000080003730 <barrier>:
    80003730:	1101                	addi	sp,sp,-32
    80003732:	ec22                	sd	s0,24(sp)
    80003734:	1000                	addi	s0,sp,32
    80003736:	87aa                	mv	a5,a0
    80003738:	fef42623          	sw	a5,-20(s0)
    8000373c:	0ff0000f          	fence
    80003740:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    80003744:	0017b793          	seqz	a5,a5
    80003748:	0ff7f793          	andi	a5,a5,255
    8000374c:	0007871b          	sext.w	a4,a5
    80003750:	00e22023          	sw	a4,0(tp) # 0 <threadsense.4>
    80003754:	00001797          	auipc	a5,0x1
    80003758:	23c78793          	addi	a5,a5,572 # 80004990 <count.1>
    8000375c:	4705                	li	a4,1
    8000375e:	0f50000f          	fence	iorw,ow
    80003762:	04e7a6af          	amoadd.w.aq	a3,a4,(a5)
    80003766:	0006879b          	sext.w	a5,a3
    8000376a:	0007871b          	sext.w	a4,a5
    8000376e:	fec42783          	lw	a5,-20(s0)
    80003772:	37fd                	addiw	a5,a5,-1
    80003774:	2781                	sext.w	a5,a5
    80003776:	02f71063          	bne	a4,a5,80003796 <barrier+0x66>
    8000377a:	00001797          	auipc	a5,0x1
    8000377e:	21678793          	addi	a5,a5,534 # 80004990 <count.1>
    80003782:	0007a023          	sw	zero,0(a5)
    80003786:	00022703          	lw	a4,0(tp) # 0 <threadsense.4>
    8000378a:	00001797          	auipc	a5,0x1
    8000378e:	20a78793          	addi	a5,a5,522 # 80004994 <sense.0>
    80003792:	c398                	sw	a4,0(a5)
    80003794:	a829                	j	800037ae <barrier+0x7e>
    80003796:	0001                	nop
    80003798:	00001797          	auipc	a5,0x1
    8000379c:	1fc78793          	addi	a5,a5,508 # 80004994 <sense.0>
    800037a0:	439c                	lw	a5,0(a5)
    800037a2:	0007871b          	sext.w	a4,a5
    800037a6:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    800037aa:	fef717e3          	bne	a4,a5,80003798 <barrier+0x68>
    800037ae:	0ff0000f          	fence
    800037b2:	0001                	nop
    800037b4:	6462                	ld	s0,24(sp)
    800037b6:	6105                	addi	sp,sp,32
    800037b8:	8082                	ret

00000000800037ba <lfsr>:
    800037ba:	7179                	addi	sp,sp,-48
    800037bc:	f422                	sd	s0,40(sp)
    800037be:	1800                	addi	s0,sp,48
    800037c0:	fca43c23          	sd	a0,-40(s0)
    800037c4:	fd843783          	ld	a5,-40(s0)
    800037c8:	0017d713          	srli	a4,a5,0x1
    800037cc:	fd843783          	ld	a5,-40(s0)
    800037d0:	8fb9                	xor	a5,a5,a4
    800037d2:	8b85                	andi	a5,a5,1
    800037d4:	fef43423          	sd	a5,-24(s0)
    800037d8:	fd843783          	ld	a5,-40(s0)
    800037dc:	0017d713          	srli	a4,a5,0x1
    800037e0:	fe843783          	ld	a5,-24(s0)
    800037e4:	17fa                	slli	a5,a5,0x3e
    800037e6:	8fd9                	or	a5,a5,a4
    800037e8:	853e                	mv	a0,a5
    800037ea:	7422                	ld	s0,40(sp)
    800037ec:	6145                	addi	sp,sp,48
    800037ee:	8082                	ret

00000000800037f0 <insn_len>:
    800037f0:	1101                	addi	sp,sp,-32
    800037f2:	ec22                	sd	s0,24(sp)
    800037f4:	1000                	addi	s0,sp,32
    800037f6:	fea43423          	sd	a0,-24(s0)
    800037fa:	fe843783          	ld	a5,-24(s0)
    800037fe:	0007d783          	lhu	a5,0(a5)
    80003802:	2781                	sext.w	a5,a5
    80003804:	8b8d                	andi	a5,a5,3
    80003806:	2781                	sext.w	a5,a5
    80003808:	c399                	beqz	a5,8000380e <insn_len+0x1e>
    8000380a:	4791                	li	a5,4
    8000380c:	a011                	j	80003810 <insn_len+0x20>
    8000380e:	4789                	li	a5,2
    80003810:	853e                	mv	a0,a5
    80003812:	6462                	ld	s0,24(sp)
    80003814:	6105                	addi	sp,sp,32
    80003816:	8082                	ret

0000000080003818 <syscall>:
    80003818:	7171                	addi	sp,sp,-176
    8000381a:	f522                	sd	s0,168(sp)
    8000381c:	1900                	addi	s0,sp,176
    8000381e:	f6a43c23          	sd	a0,-136(s0)
    80003822:	f6b43823          	sd	a1,-144(s0)
    80003826:	f6c43423          	sd	a2,-152(s0)
    8000382a:	f6d43023          	sd	a3,-160(s0)
    8000382e:	ff040793          	addi	a5,s0,-16
    80003832:	f4f43c23          	sd	a5,-168(s0)
    80003836:	f5843783          	ld	a5,-168(s0)
    8000383a:	f9078793          	addi	a5,a5,-112
    8000383e:	03f78793          	addi	a5,a5,63
    80003842:	8399                	srli	a5,a5,0x6
    80003844:	079a                	slli	a5,a5,0x6
    80003846:	f7843703          	ld	a4,-136(s0)
    8000384a:	e398                	sd	a4,0(a5)
    8000384c:	f7043703          	ld	a4,-144(s0)
    80003850:	e798                	sd	a4,8(a5)
    80003852:	f6843703          	ld	a4,-152(s0)
    80003856:	eb98                	sd	a4,16(a5)
    80003858:	f6043703          	ld	a4,-160(s0)
    8000385c:	ef98                	sd	a4,24(a5)
    8000385e:	0ff0000f          	fence
    80003862:	86be                	mv	a3,a5
    80003864:	577d                	li	a4,-1
    80003866:	8341                	srli	a4,a4,0x10
    80003868:	8ef9                	and	a3,a3,a4
    8000386a:	ffffd717          	auipc	a4,0xffffd
    8000386e:	79670713          	addi	a4,a4,1942 # 80001000 <tohost>
    80003872:	e314                	sd	a3,0(a4)
    80003874:	0001                	nop
    80003876:	ffffd717          	auipc	a4,0xffffd
    8000387a:	7ca70713          	addi	a4,a4,1994 # 80001040 <fromhost>
    8000387e:	6318                	ld	a4,0(a4)
    80003880:	db7d                	beqz	a4,80003876 <syscall+0x5e>
    80003882:	ffffd717          	auipc	a4,0xffffd
    80003886:	7be70713          	addi	a4,a4,1982 # 80001040 <fromhost>
    8000388a:	00073023          	sd	zero,0(a4)
    8000388e:	0ff0000f          	fence
    80003892:	639c                	ld	a5,0(a5)
    80003894:	853e                	mv	a0,a5
    80003896:	742a                	ld	s0,168(sp)
    80003898:	614d                	addi	sp,sp,176
    8000389a:	8082                	ret

000000008000389c <setStats>:
    8000389c:	715d                	addi	sp,sp,-80
    8000389e:	e4a2                	sd	s0,72(sp)
    800038a0:	0880                	addi	s0,sp,80
    800038a2:	87aa                	mv	a5,a0
    800038a4:	faf42e23          	sw	a5,-68(s0)
    800038a8:	fc042e23          	sw	zero,-36(s0)
    800038ac:	fdc42783          	lw	a5,-36(s0)
    800038b0:	0007871b          	sext.w	a4,a5
    800038b4:	4785                	li	a5,1
    800038b6:	fee7cbe3          	blt	a5,a4,800038ac <setStats+0x10>
    800038ba:	b00027f3          	csrr	a5,mcycle
    800038be:	fcf43823          	sd	a5,-48(s0)
    800038c2:	fd043783          	ld	a5,-48(s0)
    800038c6:	fef43423          	sd	a5,-24(s0)
    800038ca:	fbc42783          	lw	a5,-68(s0)
    800038ce:	2781                	sext.w	a5,a5
    800038d0:	ef8d                	bnez	a5,8000390a <setStats+0x6e>
    800038d2:	00001717          	auipc	a4,0x1
    800038d6:	09e70713          	addi	a4,a4,158 # 80004970 <counters>
    800038da:	fdc42783          	lw	a5,-36(s0)
    800038de:	078e                	slli	a5,a5,0x3
    800038e0:	97ba                	add	a5,a5,a4
    800038e2:	639c                	ld	a5,0(a5)
    800038e4:	fe843703          	ld	a4,-24(s0)
    800038e8:	40f707b3          	sub	a5,a4,a5
    800038ec:	fef43423          	sd	a5,-24(s0)
    800038f0:	00001717          	auipc	a4,0x1
    800038f4:	09070713          	addi	a4,a4,144 # 80004980 <counter_names>
    800038f8:	fdc42783          	lw	a5,-36(s0)
    800038fc:	078e                	slli	a5,a5,0x3
    800038fe:	97ba                	add	a5,a5,a4
    80003900:	00001717          	auipc	a4,0x1
    80003904:	ec070713          	addi	a4,a4,-320 # 800047c0 <atol+0x15a>
    80003908:	e398                	sd	a4,0(a5)
    8000390a:	fdc42783          	lw	a5,-36(s0)
    8000390e:	0017871b          	addiw	a4,a5,1
    80003912:	fce42e23          	sw	a4,-36(s0)
    80003916:	00001717          	auipc	a4,0x1
    8000391a:	05a70713          	addi	a4,a4,90 # 80004970 <counters>
    8000391e:	078e                	slli	a5,a5,0x3
    80003920:	97ba                	add	a5,a5,a4
    80003922:	fe843703          	ld	a4,-24(s0)
    80003926:	e398                	sd	a4,0(a5)
    80003928:	fdc42783          	lw	a5,-36(s0)
    8000392c:	0007871b          	sext.w	a4,a5
    80003930:	4785                	li	a5,1
    80003932:	fee7cbe3          	blt	a5,a4,80003928 <setStats+0x8c>
    80003936:	b02027f3          	csrr	a5,minstret
    8000393a:	fcf43423          	sd	a5,-56(s0)
    8000393e:	fc843783          	ld	a5,-56(s0)
    80003942:	fef43023          	sd	a5,-32(s0)
    80003946:	fbc42783          	lw	a5,-68(s0)
    8000394a:	2781                	sext.w	a5,a5
    8000394c:	ef8d                	bnez	a5,80003986 <setStats+0xea>
    8000394e:	00001717          	auipc	a4,0x1
    80003952:	02270713          	addi	a4,a4,34 # 80004970 <counters>
    80003956:	fdc42783          	lw	a5,-36(s0)
    8000395a:	078e                	slli	a5,a5,0x3
    8000395c:	97ba                	add	a5,a5,a4
    8000395e:	639c                	ld	a5,0(a5)
    80003960:	fe043703          	ld	a4,-32(s0)
    80003964:	40f707b3          	sub	a5,a4,a5
    80003968:	fef43023          	sd	a5,-32(s0)
    8000396c:	00001717          	auipc	a4,0x1
    80003970:	01470713          	addi	a4,a4,20 # 80004980 <counter_names>
    80003974:	fdc42783          	lw	a5,-36(s0)
    80003978:	078e                	slli	a5,a5,0x3
    8000397a:	97ba                	add	a5,a5,a4
    8000397c:	00001717          	auipc	a4,0x1
    80003980:	e4c70713          	addi	a4,a4,-436 # 800047c8 <atol+0x162>
    80003984:	e398                	sd	a4,0(a5)
    80003986:	fdc42783          	lw	a5,-36(s0)
    8000398a:	0017871b          	addiw	a4,a5,1
    8000398e:	fce42e23          	sw	a4,-36(s0)
    80003992:	00001717          	auipc	a4,0x1
    80003996:	fde70713          	addi	a4,a4,-34 # 80004970 <counters>
    8000399a:	078e                	slli	a5,a5,0x3
    8000399c:	97ba                	add	a5,a5,a4
    8000399e:	fe043703          	ld	a4,-32(s0)
    800039a2:	e398                	sd	a4,0(a5)
    800039a4:	0001                	nop
    800039a6:	6426                	ld	s0,72(sp)
    800039a8:	6161                	addi	sp,sp,80
    800039aa:	8082                	ret

00000000800039ac <getStats>:
    800039ac:	1101                	addi	sp,sp,-32
    800039ae:	ec22                	sd	s0,24(sp)
    800039b0:	1000                	addi	s0,sp,32
    800039b2:	87aa                	mv	a5,a0
    800039b4:	fef42623          	sw	a5,-20(s0)
    800039b8:	00001717          	auipc	a4,0x1
    800039bc:	fb870713          	addi	a4,a4,-72 # 80004970 <counters>
    800039c0:	fec42783          	lw	a5,-20(s0)
    800039c4:	078e                	slli	a5,a5,0x3
    800039c6:	97ba                	add	a5,a5,a4
    800039c8:	639c                	ld	a5,0(a5)
    800039ca:	853e                	mv	a0,a5
    800039cc:	6462                	ld	s0,24(sp)
    800039ce:	6105                	addi	sp,sp,32
    800039d0:	8082                	ret

00000000800039d2 <tohost_exit>:
    800039d2:	1101                	addi	sp,sp,-32
    800039d4:	ec22                	sd	s0,24(sp)
    800039d6:	1000                	addi	s0,sp,32
    800039d8:	fea43423          	sd	a0,-24(s0)
    800039dc:	fe843783          	ld	a5,-24(s0)
    800039e0:	07c6                	slli	a5,a5,0x11
    800039e2:	83c1                	srli	a5,a5,0x10
    800039e4:	0017e713          	ori	a4,a5,1
    800039e8:	ffffd797          	auipc	a5,0xffffd
    800039ec:	61878793          	addi	a5,a5,1560 # 80001000 <tohost>
    800039f0:	e398                	sd	a4,0(a5)
    800039f2:	0001                	nop
    800039f4:	a001                	j	800039f4 <tohost_exit+0x22>

00000000800039f6 <handle_trap>:
    800039f6:	7179                	addi	sp,sp,-48
    800039f8:	f406                	sd	ra,40(sp)
    800039fa:	f022                	sd	s0,32(sp)
    800039fc:	1800                	addi	s0,sp,48
    800039fe:	fea43423          	sd	a0,-24(s0)
    80003a02:	feb43023          	sd	a1,-32(s0)
    80003a06:	fcc43c23          	sd	a2,-40(s0)
    80003a0a:	53900513          	li	a0,1337
    80003a0e:	fc5ff0ef          	jal	ra,800039d2 <tohost_exit>

0000000080003a12 <exit>:
    80003a12:	1101                	addi	sp,sp,-32
    80003a14:	ec06                	sd	ra,24(sp)
    80003a16:	e822                	sd	s0,16(sp)
    80003a18:	1000                	addi	s0,sp,32
    80003a1a:	87aa                	mv	a5,a0
    80003a1c:	fef42623          	sw	a5,-20(s0)
    80003a20:	fec42783          	lw	a5,-20(s0)
    80003a24:	853e                	mv	a0,a5
    80003a26:	fadff0ef          	jal	ra,800039d2 <tohost_exit>

0000000080003a2a <abort>:
    80003a2a:	1141                	addi	sp,sp,-16
    80003a2c:	e406                	sd	ra,8(sp)
    80003a2e:	e022                	sd	s0,0(sp)
    80003a30:	0800                	addi	s0,sp,16
    80003a32:	08600513          	li	a0,134
    80003a36:	fddff0ef          	jal	ra,80003a12 <exit>

0000000080003a3a <printstr>:
    80003a3a:	7179                	addi	sp,sp,-48
    80003a3c:	f406                	sd	ra,40(sp)
    80003a3e:	f022                	sd	s0,32(sp)
    80003a40:	ec26                	sd	s1,24(sp)
    80003a42:	1800                	addi	s0,sp,48
    80003a44:	fca43c23          	sd	a0,-40(s0)
    80003a48:	fd843483          	ld	s1,-40(s0)
    80003a4c:	fd843503          	ld	a0,-40(s0)
    80003a50:	2d1000ef          	jal	ra,80004520 <strlen>
    80003a54:	87aa                	mv	a5,a0
    80003a56:	86be                	mv	a3,a5
    80003a58:	8626                	mv	a2,s1
    80003a5a:	4585                	li	a1,1
    80003a5c:	04000513          	li	a0,64
    80003a60:	db9ff0ef          	jal	ra,80003818 <syscall>
    80003a64:	0001                	nop
    80003a66:	70a2                	ld	ra,40(sp)
    80003a68:	7402                	ld	s0,32(sp)
    80003a6a:	64e2                	ld	s1,24(sp)
    80003a6c:	6145                	addi	sp,sp,48
    80003a6e:	8082                	ret

0000000080003a70 <thread_entry>:
    80003a70:	1101                	addi	sp,sp,-32
    80003a72:	ec22                	sd	s0,24(sp)
    80003a74:	1000                	addi	s0,sp,32
    80003a76:	87aa                	mv	a5,a0
    80003a78:	872e                	mv	a4,a1
    80003a7a:	fef42623          	sw	a5,-20(s0)
    80003a7e:	87ba                	mv	a5,a4
    80003a80:	fef42423          	sw	a5,-24(s0)
    80003a84:	0001                	nop
    80003a86:	fec42783          	lw	a5,-20(s0)
    80003a8a:	2781                	sext.w	a5,a5
    80003a8c:	ffed                	bnez	a5,80003a86 <thread_entry+0x16>
    80003a8e:	0001                	nop
    80003a90:	0001                	nop
    80003a92:	6462                	ld	s0,24(sp)
    80003a94:	6105                	addi	sp,sp,32
    80003a96:	8082                	ret
    80003a98:	1101                	addi	sp,sp,-32
    80003a9a:	ec06                	sd	ra,24(sp)
    80003a9c:	e822                	sd	s0,16(sp)
    80003a9e:	1000                	addi	s0,sp,32
    80003aa0:	87aa                	mv	a5,a0
    80003aa2:	feb43023          	sd	a1,-32(s0)
    80003aa6:	fef42623          	sw	a5,-20(s0)
    80003aaa:	00001517          	auipc	a0,0x1
    80003aae:	d2e50513          	addi	a0,a0,-722 # 800047d8 <atol+0x172>
    80003ab2:	f89ff0ef          	jal	ra,80003a3a <printstr>
    80003ab6:	57fd                	li	a5,-1
    80003ab8:	853e                	mv	a0,a5
    80003aba:	60e2                	ld	ra,24(sp)
    80003abc:	6442                	ld	s0,16(sp)
    80003abe:	6105                	addi	sp,sp,32
    80003ac0:	8082                	ret

0000000080003ac2 <init_tls>:
    80003ac2:	1101                	addi	sp,sp,-32
    80003ac4:	ec06                	sd	ra,24(sp)
    80003ac6:	e822                	sd	s0,16(sp)
    80003ac8:	1000                	addi	s0,sp,32
    80003aca:	00001717          	auipc	a4,0x1
    80003ace:	ece70713          	addi	a4,a4,-306 # 80004998 <_tdata_begin>
    80003ad2:	00001797          	auipc	a5,0x1
    80003ad6:	ec678793          	addi	a5,a5,-314 # 80004998 <_tdata_begin>
    80003ada:	40f707b3          	sub	a5,a4,a5
    80003ade:	fef43423          	sd	a5,-24(s0)
    80003ae2:	8792                	mv	a5,tp
    80003ae4:	fe843603          	ld	a2,-24(s0)
    80003ae8:	00001597          	auipc	a1,0x1
    80003aec:	eb058593          	addi	a1,a1,-336 # 80004998 <_tdata_begin>
    80003af0:	853e                	mv	a0,a5
    80003af2:	0a9000ef          	jal	ra,8000439a <memcpy>
    80003af6:	8d418713          	addi	a4,gp,-1836 # 80004a44 <_tbss_end>
    80003afa:	00001797          	auipc	a5,0x1
    80003afe:	e9e78793          	addi	a5,a5,-354 # 80004998 <_tdata_begin>
    80003b02:	40f707b3          	sub	a5,a4,a5
    80003b06:	fef43023          	sd	a5,-32(s0)
    80003b0a:	8712                	mv	a4,tp
    80003b0c:	fe843783          	ld	a5,-24(s0)
    80003b10:	97ba                	add	a5,a5,a4
    80003b12:	fe043603          	ld	a2,-32(s0)
    80003b16:	4581                	li	a1,0
    80003b18:	853e                	mv	a0,a5
    80003b1a:	139000ef          	jal	ra,80004452 <memset>
    80003b1e:	0001                	nop
    80003b20:	60e2                	ld	ra,24(sp)
    80003b22:	6442                	ld	s0,16(sp)
    80003b24:	6105                	addi	sp,sp,32
    80003b26:	8082                	ret

0000000080003b28 <_init>:
    80003b28:	7171                	addi	sp,sp,-176
    80003b2a:	f506                	sd	ra,168(sp)
    80003b2c:	f122                	sd	s0,160(sp)
    80003b2e:	ed26                	sd	s1,152(sp)
    80003b30:	1900                	addi	s0,sp,176
    80003b32:	87aa                	mv	a5,a0
    80003b34:	872e                	mv	a4,a1
    80003b36:	f4f42e23          	sw	a5,-164(s0)
    80003b3a:	87ba                	mv	a5,a4
    80003b3c:	f4f42c23          	sw	a5,-168(s0)
    80003b40:	fe040793          	addi	a5,s0,-32
    80003b44:	f4f43823          	sd	a5,-176(s0)
    80003b48:	f5043783          	ld	a5,-176(s0)
    80003b4c:	f8078793          	addi	a5,a5,-128
    80003b50:	03f78793          	addi	a5,a5,63
    80003b54:	8399                	srli	a5,a5,0x6
    80003b56:	00679493          	slli	s1,a5,0x6
    80003b5a:	f69ff0ef          	jal	ra,80003ac2 <init_tls>
    80003b5e:	f5842703          	lw	a4,-168(s0)
    80003b62:	f5c42783          	lw	a5,-164(s0)
    80003b66:	85ba                	mv	a1,a4
    80003b68:	853e                	mv	a0,a5
    80003b6a:	f07ff0ef          	jal	ra,80003a70 <thread_entry>
    80003b6e:	4581                	li	a1,0
    80003b70:	4501                	li	a0,0
    80003b72:	93dff0ef          	jal	ra,800034ae <main>
    80003b76:	87aa                	mv	a5,a0
    80003b78:	fcf42823          	sw	a5,-48(s0)
    80003b7c:	fc943c23          	sd	s1,-40(s0)
    80003b80:	fc042a23          	sw	zero,-44(s0)
    80003b84:	a095                	j	80003be8 <_init+0xc0>
    80003b86:	00001717          	auipc	a4,0x1
    80003b8a:	dea70713          	addi	a4,a4,-534 # 80004970 <counters>
    80003b8e:	fd442783          	lw	a5,-44(s0)
    80003b92:	078e                	slli	a5,a5,0x3
    80003b94:	97ba                	add	a5,a5,a4
    80003b96:	639c                	ld	a5,0(a5)
    80003b98:	c3b9                	beqz	a5,80003bde <_init+0xb6>
    80003b9a:	00001717          	auipc	a4,0x1
    80003b9e:	de670713          	addi	a4,a4,-538 # 80004980 <counter_names>
    80003ba2:	fd442783          	lw	a5,-44(s0)
    80003ba6:	078e                	slli	a5,a5,0x3
    80003ba8:	97ba                	add	a5,a5,a4
    80003baa:	6390                	ld	a2,0(a5)
    80003bac:	00001717          	auipc	a4,0x1
    80003bb0:	dc470713          	addi	a4,a4,-572 # 80004970 <counters>
    80003bb4:	fd442783          	lw	a5,-44(s0)
    80003bb8:	078e                	slli	a5,a5,0x3
    80003bba:	97ba                	add	a5,a5,a4
    80003bbc:	639c                	ld	a5,0(a5)
    80003bbe:	86be                	mv	a3,a5
    80003bc0:	00001597          	auipc	a1,0x1
    80003bc4:	c3058593          	addi	a1,a1,-976 # 800047f0 <atol+0x18a>
    80003bc8:	fd843503          	ld	a0,-40(s0)
    80003bcc:	756000ef          	jal	ra,80004322 <sprintf>
    80003bd0:	87aa                	mv	a5,a0
    80003bd2:	873e                	mv	a4,a5
    80003bd4:	fd843783          	ld	a5,-40(s0)
    80003bd8:	97ba                	add	a5,a5,a4
    80003bda:	fcf43c23          	sd	a5,-40(s0)
    80003bde:	fd442783          	lw	a5,-44(s0)
    80003be2:	2785                	addiw	a5,a5,1
    80003be4:	fcf42a23          	sw	a5,-44(s0)
    80003be8:	fd442783          	lw	a5,-44(s0)
    80003bec:	0007871b          	sext.w	a4,a5
    80003bf0:	4785                	li	a5,1
    80003bf2:	f8e7dae3          	ble	a4,a5,80003b86 <_init+0x5e>
    80003bf6:	fd843783          	ld	a5,-40(s0)
    80003bfa:	00f48563          	beq	s1,a5,80003c04 <_init+0xdc>
    80003bfe:	8526                	mv	a0,s1
    80003c00:	e3bff0ef          	jal	ra,80003a3a <printstr>
    80003c04:	fd042783          	lw	a5,-48(s0)
    80003c08:	853e                	mv	a0,a5
    80003c0a:	e09ff0ef          	jal	ra,80003a12 <exit>

0000000080003c0e <puts>:
    80003c0e:	7179                	addi	sp,sp,-48
    80003c10:	f406                	sd	ra,40(sp)
    80003c12:	f022                	sd	s0,32(sp)
    80003c14:	1800                	addi	s0,sp,48
    80003c16:	fca43c23          	sd	a0,-40(s0)
    80003c1a:	fd843783          	ld	a5,-40(s0)
    80003c1e:	fef43423          	sd	a5,-24(s0)
    80003c22:	a829                	j	80003c3c <puts+0x2e>
    80003c24:	fe843783          	ld	a5,-24(s0)
    80003c28:	00178713          	addi	a4,a5,1
    80003c2c:	fee43423          	sd	a4,-24(s0)
    80003c30:	0007c783          	lbu	a5,0(a5)
    80003c34:	2781                	sext.w	a5,a5
    80003c36:	853e                	mv	a0,a5
    80003c38:	020000ef          	jal	ra,80003c58 <putchar>
    80003c3c:	fe843783          	ld	a5,-24(s0)
    80003c40:	0007c783          	lbu	a5,0(a5)
    80003c44:	f3e5                	bnez	a5,80003c24 <puts+0x16>
    80003c46:	4529                	li	a0,10
    80003c48:	010000ef          	jal	ra,80003c58 <putchar>
    80003c4c:	4781                	li	a5,0
    80003c4e:	853e                	mv	a0,a5
    80003c50:	70a2                	ld	ra,40(sp)
    80003c52:	7402                	ld	s0,32(sp)
    80003c54:	6145                	addi	sp,sp,48
    80003c56:	8082                	ret

0000000080003c58 <putchar>:
    80003c58:	1101                	addi	sp,sp,-32
    80003c5a:	ec06                	sd	ra,24(sp)
    80003c5c:	e822                	sd	s0,16(sp)
    80003c5e:	1000                	addi	s0,sp,32
    80003c60:	87aa                	mv	a5,a0
    80003c62:	fef42623          	sw	a5,-20(s0)
    80003c66:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003c6a:	0017871b          	addiw	a4,a5,1
    80003c6e:	0007069b          	sext.w	a3,a4
    80003c72:	08d22023          	sw	a3,128(tp) # 80 <buflen.2>
    80003c76:	fec42703          	lw	a4,-20(s0)
    80003c7a:	0ff77713          	andi	a4,a4,255
    80003c7e:	04020693          	addi	a3,tp,64 # 40 <buf.3>
    80003c82:	97b6                	add	a5,a5,a3
    80003c84:	00e78023          	sb	a4,0(a5)
    80003c88:	fec42783          	lw	a5,-20(s0)
    80003c8c:	0007871b          	sext.w	a4,a5
    80003c90:	47a9                	li	a5,10
    80003c92:	00f70963          	beq	a4,a5,80003ca4 <putchar+0x4c>
    80003c96:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003c9a:	873e                	mv	a4,a5
    80003c9c:	04000793          	li	a5,64
    80003ca0:	00f71f63          	bne	a4,a5,80003cbe <putchar+0x66>
    80003ca4:	04020713          	addi	a4,tp,64 # 40 <buf.3>
    80003ca8:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003cac:	86be                	mv	a3,a5
    80003cae:	863a                	mv	a2,a4
    80003cb0:	4585                	li	a1,1
    80003cb2:	04000513          	li	a0,64
    80003cb6:	b63ff0ef          	jal	ra,80003818 <syscall>
    80003cba:	08022023          	sw	zero,128(tp) # 80 <buflen.2>
    80003cbe:	4781                	li	a5,0
    80003cc0:	853e                	mv	a0,a5
    80003cc2:	60e2                	ld	ra,24(sp)
    80003cc4:	6442                	ld	s0,16(sp)
    80003cc6:	6105                	addi	sp,sp,32
    80003cc8:	8082                	ret

0000000080003cca <printhex>:
    80003cca:	7139                	addi	sp,sp,-64
    80003ccc:	fc06                	sd	ra,56(sp)
    80003cce:	f822                	sd	s0,48(sp)
    80003cd0:	0080                	addi	s0,sp,64
    80003cd2:	fca43423          	sd	a0,-56(s0)
    80003cd6:	fe042623          	sw	zero,-20(s0)
    80003cda:	a899                	j	80003d30 <printhex+0x66>
    80003cdc:	fc843783          	ld	a5,-56(s0)
    80003ce0:	0ff7f793          	andi	a5,a5,255
    80003ce4:	8bbd                	andi	a5,a5,15
    80003ce6:	0ff7f713          	andi	a4,a5,255
    80003cea:	fc843783          	ld	a5,-56(s0)
    80003cee:	00f7f693          	andi	a3,a5,15
    80003cf2:	47a5                	li	a5,9
    80003cf4:	00d7e563          	bltu	a5,a3,80003cfe <printhex+0x34>
    80003cf8:	03000793          	li	a5,48
    80003cfc:	a019                	j	80003d02 <printhex+0x38>
    80003cfe:	05700793          	li	a5,87
    80003d02:	46bd                	li	a3,15
    80003d04:	fec42603          	lw	a2,-20(s0)
    80003d08:	9e91                	subw	a3,a3,a2
    80003d0a:	2681                	sext.w	a3,a3
    80003d0c:	9fb9                	addw	a5,a5,a4
    80003d0e:	0ff7f713          	andi	a4,a5,255
    80003d12:	ff068793          	addi	a5,a3,-16
    80003d16:	97a2                	add	a5,a5,s0
    80003d18:	fee78423          	sb	a4,-24(a5)
    80003d1c:	fc843783          	ld	a5,-56(s0)
    80003d20:	8391                	srli	a5,a5,0x4
    80003d22:	fcf43423          	sd	a5,-56(s0)
    80003d26:	fec42783          	lw	a5,-20(s0)
    80003d2a:	2785                	addiw	a5,a5,1
    80003d2c:	fef42623          	sw	a5,-20(s0)
    80003d30:	fec42783          	lw	a5,-20(s0)
    80003d34:	0007871b          	sext.w	a4,a5
    80003d38:	47bd                	li	a5,15
    80003d3a:	fae7d1e3          	ble	a4,a5,80003cdc <printhex+0x12>
    80003d3e:	fe040423          	sb	zero,-24(s0)
    80003d42:	fd840793          	addi	a5,s0,-40
    80003d46:	853e                	mv	a0,a5
    80003d48:	cf3ff0ef          	jal	ra,80003a3a <printstr>
    80003d4c:	0001                	nop
    80003d4e:	70e2                	ld	ra,56(sp)
    80003d50:	7442                	ld	s0,48(sp)
    80003d52:	6121                	addi	sp,sp,64
    80003d54:	8082                	ret

0000000080003d56 <printnum>:
    80003d56:	714d                	addi	sp,sp,-336
    80003d58:	e686                	sd	ra,328(sp)
    80003d5a:	e2a2                	sd	s0,320(sp)
    80003d5c:	0a80                	addi	s0,sp,336
    80003d5e:	eca43c23          	sd	a0,-296(s0)
    80003d62:	ecb43823          	sd	a1,-304(s0)
    80003d66:	ecc43423          	sd	a2,-312(s0)
    80003d6a:	8636                	mv	a2,a3
    80003d6c:	86ba                	mv	a3,a4
    80003d6e:	873e                	mv	a4,a5
    80003d70:	87b2                	mv	a5,a2
    80003d72:	ecf42223          	sw	a5,-316(s0)
    80003d76:	87b6                	mv	a5,a3
    80003d78:	ecf42023          	sw	a5,-320(s0)
    80003d7c:	87ba                	mv	a5,a4
    80003d7e:	eaf42e23          	sw	a5,-324(s0)
    80003d82:	fe042623          	sw	zero,-20(s0)
    80003d86:	ec446783          	lwu	a5,-316(s0)
    80003d8a:	ec843703          	ld	a4,-312(s0)
    80003d8e:	02f776b3          	remu	a3,a4,a5
    80003d92:	fec42783          	lw	a5,-20(s0)
    80003d96:	0017871b          	addiw	a4,a5,1
    80003d9a:	fee42623          	sw	a4,-20(s0)
    80003d9e:	0006871b          	sext.w	a4,a3
    80003da2:	078a                	slli	a5,a5,0x2
    80003da4:	17c1                	addi	a5,a5,-16
    80003da6:	97a2                	add	a5,a5,s0
    80003da8:	eee7ac23          	sw	a4,-264(a5)
    80003dac:	ec446783          	lwu	a5,-316(s0)
    80003db0:	ec843703          	ld	a4,-312(s0)
    80003db4:	00f76b63          	bltu	a4,a5,80003dca <printnum+0x74>
    80003db8:	ec446783          	lwu	a5,-316(s0)
    80003dbc:	ec843703          	ld	a4,-312(s0)
    80003dc0:	02f757b3          	divu	a5,a4,a5
    80003dc4:	ecf43423          	sd	a5,-312(s0)
    80003dc8:	bf7d                	j	80003d86 <printnum+0x30>
    80003dca:	0001                	nop
    80003dcc:	a809                	j	80003dde <printnum+0x88>
    80003dce:	ebc42703          	lw	a4,-324(s0)
    80003dd2:	ed843783          	ld	a5,-296(s0)
    80003dd6:	ed043583          	ld	a1,-304(s0)
    80003dda:	853a                	mv	a0,a4
    80003ddc:	9782                	jalr	a5
    80003dde:	ec042783          	lw	a5,-320(s0)
    80003de2:	fff7871b          	addiw	a4,a5,-1
    80003de6:	ece42023          	sw	a4,-320(s0)
    80003dea:	fec42703          	lw	a4,-20(s0)
    80003dee:	2701                	sext.w	a4,a4
    80003df0:	fcf74fe3          	blt	a4,a5,80003dce <printnum+0x78>
    80003df4:	a091                	j	80003e38 <printnum+0xe2>
    80003df6:	fec42783          	lw	a5,-20(s0)
    80003dfa:	078a                	slli	a5,a5,0x2
    80003dfc:	17c1                	addi	a5,a5,-16
    80003dfe:	97a2                	add	a5,a5,s0
    80003e00:	ef87a703          	lw	a4,-264(a5)
    80003e04:	fec42783          	lw	a5,-20(s0)
    80003e08:	078a                	slli	a5,a5,0x2
    80003e0a:	17c1                	addi	a5,a5,-16
    80003e0c:	97a2                	add	a5,a5,s0
    80003e0e:	ef87a783          	lw	a5,-264(a5)
    80003e12:	86be                	mv	a3,a5
    80003e14:	47a5                	li	a5,9
    80003e16:	00d7f563          	bleu	a3,a5,80003e20 <printnum+0xca>
    80003e1a:	05700793          	li	a5,87
    80003e1e:	a019                	j	80003e24 <printnum+0xce>
    80003e20:	03000793          	li	a5,48
    80003e24:	9fb9                	addw	a5,a5,a4
    80003e26:	2781                	sext.w	a5,a5
    80003e28:	0007871b          	sext.w	a4,a5
    80003e2c:	ed843783          	ld	a5,-296(s0)
    80003e30:	ed043583          	ld	a1,-304(s0)
    80003e34:	853a                	mv	a0,a4
    80003e36:	9782                	jalr	a5
    80003e38:	fec42783          	lw	a5,-20(s0)
    80003e3c:	fff7871b          	addiw	a4,a5,-1
    80003e40:	fee42623          	sw	a4,-20(s0)
    80003e44:	faf049e3          	bgtz	a5,80003df6 <printnum+0xa0>
    80003e48:	0001                	nop
    80003e4a:	0001                	nop
    80003e4c:	60b6                	ld	ra,328(sp)
    80003e4e:	6416                	ld	s0,320(sp)
    80003e50:	6171                	addi	sp,sp,336
    80003e52:	8082                	ret

0000000080003e54 <getuint>:
    80003e54:	1101                	addi	sp,sp,-32
    80003e56:	ec22                	sd	s0,24(sp)
    80003e58:	1000                	addi	s0,sp,32
    80003e5a:	fea43423          	sd	a0,-24(s0)
    80003e5e:	87ae                	mv	a5,a1
    80003e60:	fef42223          	sw	a5,-28(s0)
    80003e64:	fe442783          	lw	a5,-28(s0)
    80003e68:	0007871b          	sext.w	a4,a5
    80003e6c:	4785                	li	a5,1
    80003e6e:	00e7dc63          	ble	a4,a5,80003e86 <getuint+0x32>
    80003e72:	fe843783          	ld	a5,-24(s0)
    80003e76:	639c                	ld	a5,0(a5)
    80003e78:	00878693          	addi	a3,a5,8
    80003e7c:	fe843703          	ld	a4,-24(s0)
    80003e80:	e314                	sd	a3,0(a4)
    80003e82:	639c                	ld	a5,0(a5)
    80003e84:	a815                	j	80003eb8 <getuint+0x64>
    80003e86:	fe442783          	lw	a5,-28(s0)
    80003e8a:	2781                	sext.w	a5,a5
    80003e8c:	cb99                	beqz	a5,80003ea2 <getuint+0x4e>
    80003e8e:	fe843783          	ld	a5,-24(s0)
    80003e92:	639c                	ld	a5,0(a5)
    80003e94:	00878693          	addi	a3,a5,8
    80003e98:	fe843703          	ld	a4,-24(s0)
    80003e9c:	e314                	sd	a3,0(a4)
    80003e9e:	639c                	ld	a5,0(a5)
    80003ea0:	a821                	j	80003eb8 <getuint+0x64>
    80003ea2:	fe843783          	ld	a5,-24(s0)
    80003ea6:	639c                	ld	a5,0(a5)
    80003ea8:	00878693          	addi	a3,a5,8
    80003eac:	fe843703          	ld	a4,-24(s0)
    80003eb0:	e314                	sd	a3,0(a4)
    80003eb2:	439c                	lw	a5,0(a5)
    80003eb4:	1782                	slli	a5,a5,0x20
    80003eb6:	9381                	srli	a5,a5,0x20
    80003eb8:	853e                	mv	a0,a5
    80003eba:	6462                	ld	s0,24(sp)
    80003ebc:	6105                	addi	sp,sp,32
    80003ebe:	8082                	ret

0000000080003ec0 <getint>:
    80003ec0:	1101                	addi	sp,sp,-32
    80003ec2:	ec22                	sd	s0,24(sp)
    80003ec4:	1000                	addi	s0,sp,32
    80003ec6:	fea43423          	sd	a0,-24(s0)
    80003eca:	87ae                	mv	a5,a1
    80003ecc:	fef42223          	sw	a5,-28(s0)
    80003ed0:	fe442783          	lw	a5,-28(s0)
    80003ed4:	0007871b          	sext.w	a4,a5
    80003ed8:	4785                	li	a5,1
    80003eda:	00e7dc63          	ble	a4,a5,80003ef2 <getint+0x32>
    80003ede:	fe843783          	ld	a5,-24(s0)
    80003ee2:	639c                	ld	a5,0(a5)
    80003ee4:	00878693          	addi	a3,a5,8
    80003ee8:	fe843703          	ld	a4,-24(s0)
    80003eec:	e314                	sd	a3,0(a4)
    80003eee:	639c                	ld	a5,0(a5)
    80003ef0:	a805                	j	80003f20 <getint+0x60>
    80003ef2:	fe442783          	lw	a5,-28(s0)
    80003ef6:	2781                	sext.w	a5,a5
    80003ef8:	cb99                	beqz	a5,80003f0e <getint+0x4e>
    80003efa:	fe843783          	ld	a5,-24(s0)
    80003efe:	639c                	ld	a5,0(a5)
    80003f00:	00878693          	addi	a3,a5,8
    80003f04:	fe843703          	ld	a4,-24(s0)
    80003f08:	e314                	sd	a3,0(a4)
    80003f0a:	639c                	ld	a5,0(a5)
    80003f0c:	a811                	j	80003f20 <getint+0x60>
    80003f0e:	fe843783          	ld	a5,-24(s0)
    80003f12:	639c                	ld	a5,0(a5)
    80003f14:	00878693          	addi	a3,a5,8
    80003f18:	fe843703          	ld	a4,-24(s0)
    80003f1c:	e314                	sd	a3,0(a4)
    80003f1e:	439c                	lw	a5,0(a5)
    80003f20:	853e                	mv	a0,a5
    80003f22:	6462                	ld	s0,24(sp)
    80003f24:	6105                	addi	sp,sp,32
    80003f26:	8082                	ret

0000000080003f28 <vprintfmt>:
    80003f28:	7159                	addi	sp,sp,-112
    80003f2a:	f486                	sd	ra,104(sp)
    80003f2c:	f0a2                	sd	s0,96(sp)
    80003f2e:	eca6                	sd	s1,88(sp)
    80003f30:	e8ca                	sd	s2,80(sp)
    80003f32:	1880                	addi	s0,sp,112
    80003f34:	faa43423          	sd	a0,-88(s0)
    80003f38:	fab43023          	sd	a1,-96(s0)
    80003f3c:	f8c43c23          	sd	a2,-104(s0)
    80003f40:	f8d43823          	sd	a3,-112(s0)
    80003f44:	a831                	j	80003f60 <vprintfmt+0x38>
    80003f46:	32048b63          	beqz	s1,8000427c <vprintfmt+0x354>
    80003f4a:	f9843783          	ld	a5,-104(s0)
    80003f4e:	0785                	addi	a5,a5,1
    80003f50:	f8f43c23          	sd	a5,-104(s0)
    80003f54:	fa843783          	ld	a5,-88(s0)
    80003f58:	fa043583          	ld	a1,-96(s0)
    80003f5c:	8526                	mv	a0,s1
    80003f5e:	9782                	jalr	a5
    80003f60:	f9843783          	ld	a5,-104(s0)
    80003f64:	0007c783          	lbu	a5,0(a5)
    80003f68:	0007849b          	sext.w	s1,a5
    80003f6c:	8726                	mv	a4,s1
    80003f6e:	02500793          	li	a5,37
    80003f72:	fcf71ae3          	bne	a4,a5,80003f46 <vprintfmt+0x1e>
    80003f76:	f9843783          	ld	a5,-104(s0)
    80003f7a:	0785                	addi	a5,a5,1
    80003f7c:	f8f43c23          	sd	a5,-104(s0)
    80003f80:	f9843783          	ld	a5,-104(s0)
    80003f84:	faf43c23          	sd	a5,-72(s0)
    80003f88:	02000793          	li	a5,32
    80003f8c:	fcf403a3          	sb	a5,-57(s0)
    80003f90:	57fd                	li	a5,-1
    80003f92:	fcf42623          	sw	a5,-52(s0)
    80003f96:	57fd                	li	a5,-1
    80003f98:	fcf42423          	sw	a5,-56(s0)
    80003f9c:	fc042823          	sw	zero,-48(s0)
    80003fa0:	fa042a23          	sw	zero,-76(s0)
    80003fa4:	f9843783          	ld	a5,-104(s0)
    80003fa8:	00178713          	addi	a4,a5,1
    80003fac:	f8e43c23          	sd	a4,-104(s0)
    80003fb0:	0007c783          	lbu	a5,0(a5)
    80003fb4:	0007849b          	sext.w	s1,a5
    80003fb8:	fdd4869b          	addiw	a3,s1,-35
    80003fbc:	0006871b          	sext.w	a4,a3
    80003fc0:	05500793          	li	a5,85
    80003fc4:	28e7ef63          	bltu	a5,a4,80004262 <vprintfmt+0x33a>
    80003fc8:	02069793          	slli	a5,a3,0x20
    80003fcc:	9381                	srli	a5,a5,0x20
    80003fce:	00279713          	slli	a4,a5,0x2
    80003fd2:	00001797          	auipc	a5,0x1
    80003fd6:	83678793          	addi	a5,a5,-1994 # 80004808 <atol+0x1a2>
    80003fda:	97ba                	add	a5,a5,a4
    80003fdc:	439c                	lw	a5,0(a5)
    80003fde:	0007871b          	sext.w	a4,a5
    80003fe2:	00001797          	auipc	a5,0x1
    80003fe6:	82678793          	addi	a5,a5,-2010 # 80004808 <atol+0x1a2>
    80003fea:	97ba                	add	a5,a5,a4
    80003fec:	8782                	jr	a5
    80003fee:	02d00793          	li	a5,45
    80003ff2:	fcf403a3          	sb	a5,-57(s0)
    80003ff6:	b77d                	j	80003fa4 <vprintfmt+0x7c>
    80003ff8:	03000793          	li	a5,48
    80003ffc:	fcf403a3          	sb	a5,-57(s0)
    80004000:	b755                	j	80003fa4 <vprintfmt+0x7c>
    80004002:	fc042423          	sw	zero,-56(s0)
    80004006:	fc842783          	lw	a5,-56(s0)
    8000400a:	873e                	mv	a4,a5
    8000400c:	87ba                	mv	a5,a4
    8000400e:	0027979b          	slliw	a5,a5,0x2
    80004012:	9fb9                	addw	a5,a5,a4
    80004014:	0017979b          	slliw	a5,a5,0x1
    80004018:	2781                	sext.w	a5,a5
    8000401a:	9fa5                	addw	a5,a5,s1
    8000401c:	2781                	sext.w	a5,a5
    8000401e:	fd07879b          	addiw	a5,a5,-48
    80004022:	fcf42423          	sw	a5,-56(s0)
    80004026:	f9843783          	ld	a5,-104(s0)
    8000402a:	0007c783          	lbu	a5,0(a5)
    8000402e:	0007849b          	sext.w	s1,a5
    80004032:	8726                	mv	a4,s1
    80004034:	02f00793          	li	a5,47
    80004038:	04e7d363          	ble	a4,a5,8000407e <vprintfmt+0x156>
    8000403c:	8726                	mv	a4,s1
    8000403e:	03900793          	li	a5,57
    80004042:	02e7ce63          	blt	a5,a4,8000407e <vprintfmt+0x156>
    80004046:	f9843783          	ld	a5,-104(s0)
    8000404a:	0785                	addi	a5,a5,1
    8000404c:	f8f43c23          	sd	a5,-104(s0)
    80004050:	bf5d                	j	80004006 <vprintfmt+0xde>
    80004052:	f9043783          	ld	a5,-112(s0)
    80004056:	00878713          	addi	a4,a5,8
    8000405a:	f8e43823          	sd	a4,-112(s0)
    8000405e:	439c                	lw	a5,0(a5)
    80004060:	fcf42423          	sw	a5,-56(s0)
    80004064:	a831                	j	80004080 <vprintfmt+0x158>
    80004066:	fcc42783          	lw	a5,-52(s0)
    8000406a:	2781                	sext.w	a5,a5
    8000406c:	f207dce3          	bgez	a5,80003fa4 <vprintfmt+0x7c>
    80004070:	fc042623          	sw	zero,-52(s0)
    80004074:	bf05                	j	80003fa4 <vprintfmt+0x7c>
    80004076:	4785                	li	a5,1
    80004078:	faf42a23          	sw	a5,-76(s0)
    8000407c:	b725                	j	80003fa4 <vprintfmt+0x7c>
    8000407e:	0001                	nop
    80004080:	fcc42783          	lw	a5,-52(s0)
    80004084:	2781                	sext.w	a5,a5
    80004086:	f007dfe3          	bgez	a5,80003fa4 <vprintfmt+0x7c>
    8000408a:	fc842783          	lw	a5,-56(s0)
    8000408e:	fcf42623          	sw	a5,-52(s0)
    80004092:	57fd                	li	a5,-1
    80004094:	fcf42423          	sw	a5,-56(s0)
    80004098:	b731                	j	80003fa4 <vprintfmt+0x7c>
    8000409a:	fd042783          	lw	a5,-48(s0)
    8000409e:	2785                	addiw	a5,a5,1
    800040a0:	fcf42823          	sw	a5,-48(s0)
    800040a4:	b701                	j	80003fa4 <vprintfmt+0x7c>
    800040a6:	f9043783          	ld	a5,-112(s0)
    800040aa:	00878713          	addi	a4,a5,8
    800040ae:	f8e43823          	sd	a4,-112(s0)
    800040b2:	4398                	lw	a4,0(a5)
    800040b4:	fa843783          	ld	a5,-88(s0)
    800040b8:	fa043583          	ld	a1,-96(s0)
    800040bc:	853a                	mv	a0,a4
    800040be:	9782                	jalr	a5
    800040c0:	aa6d                	j	8000427a <vprintfmt+0x352>
    800040c2:	f9043783          	ld	a5,-112(s0)
    800040c6:	00878713          	addi	a4,a5,8
    800040ca:	f8e43823          	sd	a4,-112(s0)
    800040ce:	0007b903          	ld	s2,0(a5)
    800040d2:	00091663          	bnez	s2,800040de <vprintfmt+0x1b6>
    800040d6:	00000917          	auipc	s2,0x0
    800040da:	72a90913          	addi	s2,s2,1834 # 80004800 <atol+0x19a>
    800040de:	fcc42783          	lw	a5,-52(s0)
    800040e2:	2781                	sext.w	a5,a5
    800040e4:	06f05b63          	blez	a5,8000415a <vprintfmt+0x232>
    800040e8:	fc744783          	lbu	a5,-57(s0)
    800040ec:	0ff7f713          	andi	a4,a5,255
    800040f0:	02d00793          	li	a5,45
    800040f4:	06f70363          	beq	a4,a5,8000415a <vprintfmt+0x232>
    800040f8:	fcc42483          	lw	s1,-52(s0)
    800040fc:	fc842783          	lw	a5,-56(s0)
    80004100:	85be                	mv	a1,a5
    80004102:	854a                	mv	a0,s2
    80004104:	458000ef          	jal	ra,8000455c <strnlen>
    80004108:	87aa                	mv	a5,a0
    8000410a:	2781                	sext.w	a5,a5
    8000410c:	40f487bb          	subw	a5,s1,a5
    80004110:	2781                	sext.w	a5,a5
    80004112:	fcf42623          	sw	a5,-52(s0)
    80004116:	a005                	j	80004136 <vprintfmt+0x20e>
    80004118:	fc744783          	lbu	a5,-57(s0)
    8000411c:	0007871b          	sext.w	a4,a5
    80004120:	fa843783          	ld	a5,-88(s0)
    80004124:	fa043583          	ld	a1,-96(s0)
    80004128:	853a                	mv	a0,a4
    8000412a:	9782                	jalr	a5
    8000412c:	fcc42783          	lw	a5,-52(s0)
    80004130:	37fd                	addiw	a5,a5,-1
    80004132:	fcf42623          	sw	a5,-52(s0)
    80004136:	fcc42783          	lw	a5,-52(s0)
    8000413a:	2781                	sext.w	a5,a5
    8000413c:	fcf04ee3          	bgtz	a5,80004118 <vprintfmt+0x1f0>
    80004140:	a829                	j	8000415a <vprintfmt+0x232>
    80004142:	fa843783          	ld	a5,-88(s0)
    80004146:	fa043583          	ld	a1,-96(s0)
    8000414a:	8526                	mv	a0,s1
    8000414c:	9782                	jalr	a5
    8000414e:	0905                	addi	s2,s2,1
    80004150:	fcc42783          	lw	a5,-52(s0)
    80004154:	37fd                	addiw	a5,a5,-1
    80004156:	fcf42623          	sw	a5,-52(s0)
    8000415a:	00094783          	lbu	a5,0(s2)
    8000415e:	0007849b          	sext.w	s1,a5
    80004162:	cc8d                	beqz	s1,8000419c <vprintfmt+0x274>
    80004164:	fc842783          	lw	a5,-56(s0)
    80004168:	2781                	sext.w	a5,a5
    8000416a:	fc07cce3          	bltz	a5,80004142 <vprintfmt+0x21a>
    8000416e:	fc842783          	lw	a5,-56(s0)
    80004172:	37fd                	addiw	a5,a5,-1
    80004174:	fcf42423          	sw	a5,-56(s0)
    80004178:	fc842783          	lw	a5,-56(s0)
    8000417c:	2781                	sext.w	a5,a5
    8000417e:	fc07d2e3          	bgez	a5,80004142 <vprintfmt+0x21a>
    80004182:	a829                	j	8000419c <vprintfmt+0x274>
    80004184:	fa843783          	ld	a5,-88(s0)
    80004188:	fa043583          	ld	a1,-96(s0)
    8000418c:	02000513          	li	a0,32
    80004190:	9782                	jalr	a5
    80004192:	fcc42783          	lw	a5,-52(s0)
    80004196:	37fd                	addiw	a5,a5,-1
    80004198:	fcf42623          	sw	a5,-52(s0)
    8000419c:	fcc42783          	lw	a5,-52(s0)
    800041a0:	2781                	sext.w	a5,a5
    800041a2:	fef041e3          	bgtz	a5,80004184 <vprintfmt+0x25c>
    800041a6:	a8d1                	j	8000427a <vprintfmt+0x352>
    800041a8:	fd042703          	lw	a4,-48(s0)
    800041ac:	f9040793          	addi	a5,s0,-112
    800041b0:	85ba                	mv	a1,a4
    800041b2:	853e                	mv	a0,a5
    800041b4:	d0dff0ef          	jal	ra,80003ec0 <getint>
    800041b8:	87aa                	mv	a5,a0
    800041ba:	fcf43c23          	sd	a5,-40(s0)
    800041be:	fd843783          	ld	a5,-40(s0)
    800041c2:	0007df63          	bgez	a5,800041e0 <vprintfmt+0x2b8>
    800041c6:	fa843783          	ld	a5,-88(s0)
    800041ca:	fa043583          	ld	a1,-96(s0)
    800041ce:	02d00513          	li	a0,45
    800041d2:	9782                	jalr	a5
    800041d4:	fd843783          	ld	a5,-40(s0)
    800041d8:	40f007b3          	neg	a5,a5
    800041dc:	fcf43c23          	sd	a5,-40(s0)
    800041e0:	47a9                	li	a5,10
    800041e2:	fcf42a23          	sw	a5,-44(s0)
    800041e6:	a0b9                	j	80004234 <vprintfmt+0x30c>
    800041e8:	47a9                	li	a5,10
    800041ea:	fcf42a23          	sw	a5,-44(s0)
    800041ee:	a80d                	j	80004220 <vprintfmt+0x2f8>
    800041f0:	47a1                	li	a5,8
    800041f2:	fcf42a23          	sw	a5,-44(s0)
    800041f6:	a02d                	j	80004220 <vprintfmt+0x2f8>
    800041f8:	4785                	li	a5,1
    800041fa:	fcf42823          	sw	a5,-48(s0)
    800041fe:	fa843783          	ld	a5,-88(s0)
    80004202:	fa043583          	ld	a1,-96(s0)
    80004206:	03000513          	li	a0,48
    8000420a:	9782                	jalr	a5
    8000420c:	fa843783          	ld	a5,-88(s0)
    80004210:	fa043583          	ld	a1,-96(s0)
    80004214:	07800513          	li	a0,120
    80004218:	9782                	jalr	a5
    8000421a:	47c1                	li	a5,16
    8000421c:	fcf42a23          	sw	a5,-44(s0)
    80004220:	fd042703          	lw	a4,-48(s0)
    80004224:	f9040793          	addi	a5,s0,-112
    80004228:	85ba                	mv	a1,a4
    8000422a:	853e                	mv	a0,a5
    8000422c:	c29ff0ef          	jal	ra,80003e54 <getuint>
    80004230:	fca43c23          	sd	a0,-40(s0)
    80004234:	fd442683          	lw	a3,-44(s0)
    80004238:	fc744783          	lbu	a5,-57(s0)
    8000423c:	2781                	sext.w	a5,a5
    8000423e:	fcc42703          	lw	a4,-52(s0)
    80004242:	fd843603          	ld	a2,-40(s0)
    80004246:	fa043583          	ld	a1,-96(s0)
    8000424a:	fa843503          	ld	a0,-88(s0)
    8000424e:	b09ff0ef          	jal	ra,80003d56 <printnum>
    80004252:	a025                	j	8000427a <vprintfmt+0x352>
    80004254:	fa843783          	ld	a5,-88(s0)
    80004258:	fa043583          	ld	a1,-96(s0)
    8000425c:	8526                	mv	a0,s1
    8000425e:	9782                	jalr	a5
    80004260:	a829                	j	8000427a <vprintfmt+0x352>
    80004262:	fa843783          	ld	a5,-88(s0)
    80004266:	fa043583          	ld	a1,-96(s0)
    8000426a:	02500513          	li	a0,37
    8000426e:	9782                	jalr	a5
    80004270:	fb843783          	ld	a5,-72(s0)
    80004274:	f8f43c23          	sd	a5,-104(s0)
    80004278:	0001                	nop
    8000427a:	b1dd                	j	80003f60 <vprintfmt+0x38>
    8000427c:	0001                	nop
    8000427e:	70a6                	ld	ra,104(sp)
    80004280:	7406                	ld	s0,96(sp)
    80004282:	64e6                	ld	s1,88(sp)
    80004284:	6946                	ld	s2,80(sp)
    80004286:	6165                	addi	sp,sp,112
    80004288:	8082                	ret

000000008000428a <printf>:
    8000428a:	7159                	addi	sp,sp,-112
    8000428c:	f406                	sd	ra,40(sp)
    8000428e:	f022                	sd	s0,32(sp)
    80004290:	1800                	addi	s0,sp,48
    80004292:	fca43c23          	sd	a0,-40(s0)
    80004296:	e40c                	sd	a1,8(s0)
    80004298:	e810                	sd	a2,16(s0)
    8000429a:	ec14                	sd	a3,24(s0)
    8000429c:	f018                	sd	a4,32(s0)
    8000429e:	f41c                	sd	a5,40(s0)
    800042a0:	03043823          	sd	a6,48(s0)
    800042a4:	03143c23          	sd	a7,56(s0)
    800042a8:	04040793          	addi	a5,s0,64
    800042ac:	fcf43823          	sd	a5,-48(s0)
    800042b0:	fd043783          	ld	a5,-48(s0)
    800042b4:	fc878793          	addi	a5,a5,-56
    800042b8:	fef43423          	sd	a5,-24(s0)
    800042bc:	fe843783          	ld	a5,-24(s0)
    800042c0:	86be                	mv	a3,a5
    800042c2:	fd843603          	ld	a2,-40(s0)
    800042c6:	4581                	li	a1,0
    800042c8:	00000517          	auipc	a0,0x0
    800042cc:	99050513          	addi	a0,a0,-1648 # 80003c58 <putchar>
    800042d0:	c59ff0ef          	jal	ra,80003f28 <vprintfmt>
    800042d4:	4781                	li	a5,0
    800042d6:	853e                	mv	a0,a5
    800042d8:	70a2                	ld	ra,40(sp)
    800042da:	7402                	ld	s0,32(sp)
    800042dc:	6165                	addi	sp,sp,112
    800042de:	8082                	ret

00000000800042e0 <sprintf_putch>:
    800042e0:	7179                	addi	sp,sp,-48
    800042e2:	f422                	sd	s0,40(sp)
    800042e4:	1800                	addi	s0,sp,48
    800042e6:	87aa                	mv	a5,a0
    800042e8:	fcb43823          	sd	a1,-48(s0)
    800042ec:	fcf42e23          	sw	a5,-36(s0)
    800042f0:	fd043783          	ld	a5,-48(s0)
    800042f4:	fef43423          	sd	a5,-24(s0)
    800042f8:	fe843783          	ld	a5,-24(s0)
    800042fc:	639c                	ld	a5,0(a5)
    800042fe:	fdc42703          	lw	a4,-36(s0)
    80004302:	0ff77713          	andi	a4,a4,255
    80004306:	00e78023          	sb	a4,0(a5)
    8000430a:	fe843783          	ld	a5,-24(s0)
    8000430e:	639c                	ld	a5,0(a5)
    80004310:	00178713          	addi	a4,a5,1
    80004314:	fe843783          	ld	a5,-24(s0)
    80004318:	e398                	sd	a4,0(a5)
    8000431a:	0001                	nop
    8000431c:	7422                	ld	s0,40(sp)
    8000431e:	6145                	addi	sp,sp,48
    80004320:	8082                	ret

0000000080004322 <sprintf>:
    80004322:	7159                	addi	sp,sp,-112
    80004324:	fc06                	sd	ra,56(sp)
    80004326:	f822                	sd	s0,48(sp)
    80004328:	0080                	addi	s0,sp,64
    8000432a:	fca43c23          	sd	a0,-40(s0)
    8000432e:	fcb43823          	sd	a1,-48(s0)
    80004332:	e010                	sd	a2,0(s0)
    80004334:	e414                	sd	a3,8(s0)
    80004336:	e818                	sd	a4,16(s0)
    80004338:	ec1c                	sd	a5,24(s0)
    8000433a:	03043023          	sd	a6,32(s0)
    8000433e:	03143423          	sd	a7,40(s0)
    80004342:	fd843783          	ld	a5,-40(s0)
    80004346:	fef43423          	sd	a5,-24(s0)
    8000434a:	03040793          	addi	a5,s0,48
    8000434e:	fcf43423          	sd	a5,-56(s0)
    80004352:	fc843783          	ld	a5,-56(s0)
    80004356:	fd078793          	addi	a5,a5,-48
    8000435a:	fef43023          	sd	a5,-32(s0)
    8000435e:	fe043703          	ld	a4,-32(s0)
    80004362:	fd840793          	addi	a5,s0,-40
    80004366:	86ba                	mv	a3,a4
    80004368:	fd043603          	ld	a2,-48(s0)
    8000436c:	85be                	mv	a1,a5
    8000436e:	00000517          	auipc	a0,0x0
    80004372:	f7250513          	addi	a0,a0,-142 # 800042e0 <sprintf_putch>
    80004376:	bb3ff0ef          	jal	ra,80003f28 <vprintfmt>
    8000437a:	fd843783          	ld	a5,-40(s0)
    8000437e:	00078023          	sb	zero,0(a5)
    80004382:	fd843703          	ld	a4,-40(s0)
    80004386:	fe843783          	ld	a5,-24(s0)
    8000438a:	40f707b3          	sub	a5,a4,a5
    8000438e:	2781                	sext.w	a5,a5
    80004390:	853e                	mv	a0,a5
    80004392:	70e2                	ld	ra,56(sp)
    80004394:	7442                	ld	s0,48(sp)
    80004396:	6165                	addi	sp,sp,112
    80004398:	8082                	ret

000000008000439a <memcpy>:
    8000439a:	715d                	addi	sp,sp,-80
    8000439c:	e4a2                	sd	s0,72(sp)
    8000439e:	0880                	addi	s0,sp,80
    800043a0:	fca43423          	sd	a0,-56(s0)
    800043a4:	fcb43023          	sd	a1,-64(s0)
    800043a8:	fac43c23          	sd	a2,-72(s0)
    800043ac:	fc843703          	ld	a4,-56(s0)
    800043b0:	fc043783          	ld	a5,-64(s0)
    800043b4:	8f5d                	or	a4,a4,a5
    800043b6:	fb843783          	ld	a5,-72(s0)
    800043ba:	8fd9                	or	a5,a5,a4
    800043bc:	8b9d                	andi	a5,a5,7
    800043be:	e3b1                	bnez	a5,80004402 <memcpy+0x68>
    800043c0:	fc043783          	ld	a5,-64(s0)
    800043c4:	fef43423          	sd	a5,-24(s0)
    800043c8:	fc843783          	ld	a5,-56(s0)
    800043cc:	fef43023          	sd	a5,-32(s0)
    800043d0:	a839                	j	800043ee <memcpy+0x54>
    800043d2:	fe843703          	ld	a4,-24(s0)
    800043d6:	00870793          	addi	a5,a4,8
    800043da:	fef43423          	sd	a5,-24(s0)
    800043de:	fe043783          	ld	a5,-32(s0)
    800043e2:	00878693          	addi	a3,a5,8
    800043e6:	fed43023          	sd	a3,-32(s0)
    800043ea:	6318                	ld	a4,0(a4)
    800043ec:	e398                	sd	a4,0(a5)
    800043ee:	fc843703          	ld	a4,-56(s0)
    800043f2:	fb843783          	ld	a5,-72(s0)
    800043f6:	97ba                	add	a5,a5,a4
    800043f8:	fe043703          	ld	a4,-32(s0)
    800043fc:	fcf76be3          	bltu	a4,a5,800043d2 <memcpy+0x38>
    80004400:	a099                	j	80004446 <memcpy+0xac>
    80004402:	fc043783          	ld	a5,-64(s0)
    80004406:	fcf43c23          	sd	a5,-40(s0)
    8000440a:	fc843783          	ld	a5,-56(s0)
    8000440e:	fcf43823          	sd	a5,-48(s0)
    80004412:	a00d                	j	80004434 <memcpy+0x9a>
    80004414:	fd843703          	ld	a4,-40(s0)
    80004418:	00170793          	addi	a5,a4,1
    8000441c:	fcf43c23          	sd	a5,-40(s0)
    80004420:	fd043783          	ld	a5,-48(s0)
    80004424:	00178693          	addi	a3,a5,1
    80004428:	fcd43823          	sd	a3,-48(s0)
    8000442c:	00074703          	lbu	a4,0(a4)
    80004430:	00e78023          	sb	a4,0(a5)
    80004434:	fc843703          	ld	a4,-56(s0)
    80004438:	fb843783          	ld	a5,-72(s0)
    8000443c:	97ba                	add	a5,a5,a4
    8000443e:	fd043703          	ld	a4,-48(s0)
    80004442:	fcf769e3          	bltu	a4,a5,80004414 <memcpy+0x7a>
    80004446:	fc843783          	ld	a5,-56(s0)
    8000444a:	853e                	mv	a0,a5
    8000444c:	6426                	ld	s0,72(sp)
    8000444e:	6161                	addi	sp,sp,80
    80004450:	8082                	ret

0000000080004452 <memset>:
    80004452:	715d                	addi	sp,sp,-80
    80004454:	e4a2                	sd	s0,72(sp)
    80004456:	0880                	addi	s0,sp,80
    80004458:	fca43423          	sd	a0,-56(s0)
    8000445c:	87ae                	mv	a5,a1
    8000445e:	fac43c23          	sd	a2,-72(s0)
    80004462:	fcf42223          	sw	a5,-60(s0)
    80004466:	fc843703          	ld	a4,-56(s0)
    8000446a:	fb843783          	ld	a5,-72(s0)
    8000446e:	8fd9                	or	a5,a5,a4
    80004470:	8b9d                	andi	a5,a5,7
    80004472:	e7bd                	bnez	a5,800044e0 <memset+0x8e>
    80004474:	fc442783          	lw	a5,-60(s0)
    80004478:	0ff7f793          	andi	a5,a5,255
    8000447c:	fcf43c23          	sd	a5,-40(s0)
    80004480:	fd843783          	ld	a5,-40(s0)
    80004484:	07a2                	slli	a5,a5,0x8
    80004486:	fd843703          	ld	a4,-40(s0)
    8000448a:	8fd9                	or	a5,a5,a4
    8000448c:	fcf43c23          	sd	a5,-40(s0)
    80004490:	fd843783          	ld	a5,-40(s0)
    80004494:	07c2                	slli	a5,a5,0x10
    80004496:	fd843703          	ld	a4,-40(s0)
    8000449a:	8fd9                	or	a5,a5,a4
    8000449c:	fcf43c23          	sd	a5,-40(s0)
    800044a0:	fd843783          	ld	a5,-40(s0)
    800044a4:	1782                	slli	a5,a5,0x20
    800044a6:	fd843703          	ld	a4,-40(s0)
    800044aa:	8fd9                	or	a5,a5,a4
    800044ac:	fcf43c23          	sd	a5,-40(s0)
    800044b0:	fc843783          	ld	a5,-56(s0)
    800044b4:	fef43423          	sd	a5,-24(s0)
    800044b8:	a811                	j	800044cc <memset+0x7a>
    800044ba:	fe843783          	ld	a5,-24(s0)
    800044be:	00878713          	addi	a4,a5,8
    800044c2:	fee43423          	sd	a4,-24(s0)
    800044c6:	fd843703          	ld	a4,-40(s0)
    800044ca:	e398                	sd	a4,0(a5)
    800044cc:	fc843703          	ld	a4,-56(s0)
    800044d0:	fb843783          	ld	a5,-72(s0)
    800044d4:	97ba                	add	a5,a5,a4
    800044d6:	fe843703          	ld	a4,-24(s0)
    800044da:	fef760e3          	bltu	a4,a5,800044ba <memset+0x68>
    800044de:	a81d                	j	80004514 <memset+0xc2>
    800044e0:	fc843783          	ld	a5,-56(s0)
    800044e4:	fef43023          	sd	a5,-32(s0)
    800044e8:	a829                	j	80004502 <memset+0xb0>
    800044ea:	fe043783          	ld	a5,-32(s0)
    800044ee:	00178713          	addi	a4,a5,1
    800044f2:	fee43023          	sd	a4,-32(s0)
    800044f6:	fc442703          	lw	a4,-60(s0)
    800044fa:	0ff77713          	andi	a4,a4,255
    800044fe:	00e78023          	sb	a4,0(a5)
    80004502:	fc843703          	ld	a4,-56(s0)
    80004506:	fb843783          	ld	a5,-72(s0)
    8000450a:	97ba                	add	a5,a5,a4
    8000450c:	fe043703          	ld	a4,-32(s0)
    80004510:	fcf76de3          	bltu	a4,a5,800044ea <memset+0x98>
    80004514:	fc843783          	ld	a5,-56(s0)
    80004518:	853e                	mv	a0,a5
    8000451a:	6426                	ld	s0,72(sp)
    8000451c:	6161                	addi	sp,sp,80
    8000451e:	8082                	ret

0000000080004520 <strlen>:
    80004520:	7179                	addi	sp,sp,-48
    80004522:	f422                	sd	s0,40(sp)
    80004524:	1800                	addi	s0,sp,48
    80004526:	fca43c23          	sd	a0,-40(s0)
    8000452a:	fd843783          	ld	a5,-40(s0)
    8000452e:	fef43423          	sd	a5,-24(s0)
    80004532:	a031                	j	8000453e <strlen+0x1e>
    80004534:	fe843783          	ld	a5,-24(s0)
    80004538:	0785                	addi	a5,a5,1
    8000453a:	fef43423          	sd	a5,-24(s0)
    8000453e:	fe843783          	ld	a5,-24(s0)
    80004542:	0007c783          	lbu	a5,0(a5)
    80004546:	f7fd                	bnez	a5,80004534 <strlen+0x14>
    80004548:	fe843703          	ld	a4,-24(s0)
    8000454c:	fd843783          	ld	a5,-40(s0)
    80004550:	40f707b3          	sub	a5,a4,a5
    80004554:	853e                	mv	a0,a5
    80004556:	7422                	ld	s0,40(sp)
    80004558:	6145                	addi	sp,sp,48
    8000455a:	8082                	ret

000000008000455c <strnlen>:
    8000455c:	7179                	addi	sp,sp,-48
    8000455e:	f422                	sd	s0,40(sp)
    80004560:	1800                	addi	s0,sp,48
    80004562:	fca43c23          	sd	a0,-40(s0)
    80004566:	fcb43823          	sd	a1,-48(s0)
    8000456a:	fd843783          	ld	a5,-40(s0)
    8000456e:	fef43423          	sd	a5,-24(s0)
    80004572:	a031                	j	8000457e <strnlen+0x22>
    80004574:	fe843783          	ld	a5,-24(s0)
    80004578:	0785                	addi	a5,a5,1
    8000457a:	fef43423          	sd	a5,-24(s0)
    8000457e:	fd043783          	ld	a5,-48(s0)
    80004582:	fff78713          	addi	a4,a5,-1
    80004586:	fce43823          	sd	a4,-48(s0)
    8000458a:	c791                	beqz	a5,80004596 <strnlen+0x3a>
    8000458c:	fe843783          	ld	a5,-24(s0)
    80004590:	0007c783          	lbu	a5,0(a5)
    80004594:	f3e5                	bnez	a5,80004574 <strnlen+0x18>
    80004596:	fe843703          	ld	a4,-24(s0)
    8000459a:	fd843783          	ld	a5,-40(s0)
    8000459e:	40f707b3          	sub	a5,a4,a5
    800045a2:	853e                	mv	a0,a5
    800045a4:	7422                	ld	s0,40(sp)
    800045a6:	6145                	addi	sp,sp,48
    800045a8:	8082                	ret

00000000800045aa <strcmp>:
    800045aa:	7179                	addi	sp,sp,-48
    800045ac:	f422                	sd	s0,40(sp)
    800045ae:	1800                	addi	s0,sp,48
    800045b0:	fca43c23          	sd	a0,-40(s0)
    800045b4:	fcb43823          	sd	a1,-48(s0)
    800045b8:	fd843783          	ld	a5,-40(s0)
    800045bc:	00178713          	addi	a4,a5,1
    800045c0:	fce43c23          	sd	a4,-40(s0)
    800045c4:	0007c783          	lbu	a5,0(a5)
    800045c8:	fef407a3          	sb	a5,-17(s0)
    800045cc:	fd043783          	ld	a5,-48(s0)
    800045d0:	00178713          	addi	a4,a5,1
    800045d4:	fce43823          	sd	a4,-48(s0)
    800045d8:	0007c783          	lbu	a5,0(a5)
    800045dc:	fef40723          	sb	a5,-18(s0)
    800045e0:	fef44783          	lbu	a5,-17(s0)
    800045e4:	0ff7f793          	andi	a5,a5,255
    800045e8:	cf81                	beqz	a5,80004600 <strcmp+0x56>
    800045ea:	fef44783          	lbu	a5,-17(s0)
    800045ee:	873e                	mv	a4,a5
    800045f0:	fee44783          	lbu	a5,-18(s0)
    800045f4:	0ff77713          	andi	a4,a4,255
    800045f8:	0ff7f793          	andi	a5,a5,255
    800045fc:	faf70ee3          	beq	a4,a5,800045b8 <strcmp+0xe>
    80004600:	fef44783          	lbu	a5,-17(s0)
    80004604:	0007871b          	sext.w	a4,a5
    80004608:	fee44783          	lbu	a5,-18(s0)
    8000460c:	2781                	sext.w	a5,a5
    8000460e:	40f707bb          	subw	a5,a4,a5
    80004612:	2781                	sext.w	a5,a5
    80004614:	853e                	mv	a0,a5
    80004616:	7422                	ld	s0,40(sp)
    80004618:	6145                	addi	sp,sp,48
    8000461a:	8082                	ret

000000008000461c <strcpy>:
    8000461c:	7179                	addi	sp,sp,-48
    8000461e:	f422                	sd	s0,40(sp)
    80004620:	1800                	addi	s0,sp,48
    80004622:	fca43c23          	sd	a0,-40(s0)
    80004626:	fcb43823          	sd	a1,-48(s0)
    8000462a:	fd843783          	ld	a5,-40(s0)
    8000462e:	fef43423          	sd	a5,-24(s0)
    80004632:	0001                	nop
    80004634:	fd043703          	ld	a4,-48(s0)
    80004638:	00170793          	addi	a5,a4,1
    8000463c:	fcf43823          	sd	a5,-48(s0)
    80004640:	fe843783          	ld	a5,-24(s0)
    80004644:	00178693          	addi	a3,a5,1
    80004648:	fed43423          	sd	a3,-24(s0)
    8000464c:	00074703          	lbu	a4,0(a4)
    80004650:	00e78023          	sb	a4,0(a5)
    80004654:	0007c783          	lbu	a5,0(a5)
    80004658:	fff1                	bnez	a5,80004634 <strcpy+0x18>
    8000465a:	fd843783          	ld	a5,-40(s0)
    8000465e:	853e                	mv	a0,a5
    80004660:	7422                	ld	s0,40(sp)
    80004662:	6145                	addi	sp,sp,48
    80004664:	8082                	ret

0000000080004666 <atol>:
    80004666:	7179                	addi	sp,sp,-48
    80004668:	f422                	sd	s0,40(sp)
    8000466a:	1800                	addi	s0,sp,48
    8000466c:	fca43c23          	sd	a0,-40(s0)
    80004670:	fe043423          	sd	zero,-24(s0)
    80004674:	fe042223          	sw	zero,-28(s0)
    80004678:	a031                	j	80004684 <atol+0x1e>
    8000467a:	fd843783          	ld	a5,-40(s0)
    8000467e:	0785                	addi	a5,a5,1
    80004680:	fcf43c23          	sd	a5,-40(s0)
    80004684:	fd843783          	ld	a5,-40(s0)
    80004688:	0007c783          	lbu	a5,0(a5)
    8000468c:	873e                	mv	a4,a5
    8000468e:	02000793          	li	a5,32
    80004692:	fef704e3          	beq	a4,a5,8000467a <atol+0x14>
    80004696:	fd843783          	ld	a5,-40(s0)
    8000469a:	0007c783          	lbu	a5,0(a5)
    8000469e:	873e                	mv	a4,a5
    800046a0:	02d00793          	li	a5,45
    800046a4:	00f70b63          	beq	a4,a5,800046ba <atol+0x54>
    800046a8:	fd843783          	ld	a5,-40(s0)
    800046ac:	0007c783          	lbu	a5,0(a5)
    800046b0:	873e                	mv	a4,a5
    800046b2:	02b00793          	li	a5,43
    800046b6:	06f71263          	bne	a4,a5,8000471a <atol+0xb4>
    800046ba:	fd843783          	ld	a5,-40(s0)
    800046be:	0007c783          	lbu	a5,0(a5)
    800046c2:	0007871b          	sext.w	a4,a5
    800046c6:	02d00793          	li	a5,45
    800046ca:	40f707b3          	sub	a5,a4,a5
    800046ce:	0017b793          	seqz	a5,a5
    800046d2:	0ff7f793          	andi	a5,a5,255
    800046d6:	fef42223          	sw	a5,-28(s0)
    800046da:	fd843783          	ld	a5,-40(s0)
    800046de:	0785                	addi	a5,a5,1
    800046e0:	fcf43c23          	sd	a5,-40(s0)
    800046e4:	a81d                	j	8000471a <atol+0xb4>
    800046e6:	fe843703          	ld	a4,-24(s0)
    800046ea:	87ba                	mv	a5,a4
    800046ec:	078a                	slli	a5,a5,0x2
    800046ee:	97ba                	add	a5,a5,a4
    800046f0:	0786                	slli	a5,a5,0x1
    800046f2:	fef43423          	sd	a5,-24(s0)
    800046f6:	fd843783          	ld	a5,-40(s0)
    800046fa:	00178713          	addi	a4,a5,1
    800046fe:	fce43c23          	sd	a4,-40(s0)
    80004702:	0007c783          	lbu	a5,0(a5)
    80004706:	2781                	sext.w	a5,a5
    80004708:	fd07879b          	addiw	a5,a5,-48
    8000470c:	2781                	sext.w	a5,a5
    8000470e:	873e                	mv	a4,a5
    80004710:	fe843783          	ld	a5,-24(s0)
    80004714:	97ba                	add	a5,a5,a4
    80004716:	fef43423          	sd	a5,-24(s0)
    8000471a:	fd843783          	ld	a5,-40(s0)
    8000471e:	0007c783          	lbu	a5,0(a5)
    80004722:	f3f1                	bnez	a5,800046e6 <atol+0x80>
    80004724:	fe442783          	lw	a5,-28(s0)
    80004728:	2781                	sext.w	a5,a5
    8000472a:	c791                	beqz	a5,80004736 <atol+0xd0>
    8000472c:	fe843783          	ld	a5,-24(s0)
    80004730:	40f007b3          	neg	a5,a5
    80004734:	a019                	j	8000473a <atol+0xd4>
    80004736:	fe843783          	ld	a5,-24(s0)
    8000473a:	853e                	mv	a0,a5
    8000473c:	7422                	ld	s0,40(sp)
    8000473e:	6145                	addi	sp,sp,48
    80004740:	8082                	ret
