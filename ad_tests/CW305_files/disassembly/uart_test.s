
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
    800000f8:	0d418193          	addi	gp,gp,212 # 800051c8 <__global_pointer$>
    800000fc:	87718213          	addi	tp,gp,-1929 # 80004a3f <_end+0x3f>
    80000100:	fc027213          	andi	tp,tp,-64
    80000104:	f1402573          	csrr	a0,mhartid
    80000108:	4585                	li	a1,1
    8000010a:	00b57063          	bleu	a1,a0,8000010a <_start+0x10a>
    8000010e:	00150113          	addi	sp,a0,1
    80000112:	0146                	slli	sp,sp,0x11
    80000114:	9112                	add	sp,sp,tp
    80000116:	01151613          	slli	a2,a0,0x11
    8000011a:	9232                	add	tp,tp,a2
    8000011c:	23d0306f          	j	80003b58 <_init>

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
    8000016a:	0bd030ef          	jal	ra,80003a26 <handle_trap>
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
    80003224:	79868693          	addi	a3,a3,1944 # 800049b8 <bin_to_hex_table>
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
    80003248:	77470713          	addi	a4,a4,1908 # 800049b8 <bin_to_hex_table>
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
    80003394:	3e850513          	addi	a0,a0,1000 # 80004778 <atol+0xe2>
    80003398:	e23ff0ef          	jal	ra,800031ba <print_uart>
    8000339c:	fd043783          	ld	a5,-48(s0)
    800033a0:	2781                	sext.w	a5,a5
    800033a2:	853e                	mv	a0,a5
    800033a4:	ebfff0ef          	jal	ra,80003262 <print_uart_int>
    800033a8:	00001517          	auipc	a0,0x1
    800033ac:	3f050513          	addi	a0,a0,1008 # 80004798 <atol+0x102>
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
    800033e0:	3dc50513          	addi	a0,a0,988 # 800047b8 <atol+0x122>
    800033e4:	dd7ff0ef          	jal	ra,800031ba <print_uart>
    800033e8:	fe744783          	lbu	a5,-25(s0)
    800033ec:	853e                	mv	a0,a5
    800033ee:	f57ff0ef          	jal	ra,80003344 <print_uart_byte>
    800033f2:	00001517          	auipc	a0,0x1
    800033f6:	3d650513          	addi	a0,a0,982 # 800047c8 <atol+0x132>
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
    8000346a:	36a50513          	addi	a0,a0,874 # 800047d0 <atol+0x13a>
    8000346e:	d4dff0ef          	jal	ra,800031ba <print_uart>
    80003472:	fe744783          	lbu	a5,-25(s0)
    80003476:	853e                	mv	a0,a5
    80003478:	ecdff0ef          	jal	ra,80003344 <print_uart_byte>
    8000347c:	00001517          	auipc	a0,0x1
    80003480:	34c50513          	addi	a0,a0,844 # 800047c8 <atol+0x132>
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
    800034dc:	00001517          	auipc	a0,0x1
    800034e0:	31450513          	addi	a0,a0,788 # 800047f0 <atol+0x15a>
    800034e4:	cd7ff0ef          	jal	ra,800031ba <print_uart>
    800034e8:	fe744783          	lbu	a5,-25(s0)
    800034ec:	4585                	li	a1,1
    800034ee:	853e                	mv	a0,a5
    800034f0:	e91ff0ef          	jal	ra,80003380 <read_seed_input_from_uart>
    800034f4:	00001517          	auipc	a0,0x1
    800034f8:	2d450513          	addi	a0,a0,724 # 800047c8 <atol+0x132>
    800034fc:	cbfff0ef          	jal	ra,800031ba <print_uart>
    80003500:	00001517          	auipc	a0,0x1
    80003504:	30050513          	addi	a0,a0,768 # 80004800 <atol+0x16a>
    80003508:	cb3ff0ef          	jal	ra,800031ba <print_uart>
    8000350c:	fe744783          	lbu	a5,-25(s0)
    80003510:	853e                	mv	a0,a5
    80003512:	e33ff0ef          	jal	ra,80003344 <print_uart_byte>
    80003516:	00001517          	auipc	a0,0x1
    8000351a:	2b250513          	addi	a0,a0,690 # 800047c8 <atol+0x132>
    8000351e:	c9dff0ef          	jal	ra,800031ba <print_uart>
    80003522:	4781                	li	a5,0
    80003524:	853e                	mv	a0,a5
    80003526:	60e2                	ld	ra,24(sp)
    80003528:	6442                	ld	s0,16(sp)
    8000352a:	6105                	addi	sp,sp,32
    8000352c:	8082                	ret

000000008000352e <verify>:
    8000352e:	715d                	addi	sp,sp,-80
    80003530:	e4a2                	sd	s0,72(sp)
    80003532:	0880                	addi	s0,sp,80
    80003534:	87aa                	mv	a5,a0
    80003536:	fcb43023          	sd	a1,-64(s0)
    8000353a:	fac43c23          	sd	a2,-72(s0)
    8000353e:	fcf42623          	sw	a5,-52(s0)
    80003542:	fe042623          	sw	zero,-20(s0)
    80003546:	a841                	j	800035d6 <verify+0xa8>
    80003548:	fec42783          	lw	a5,-20(s0)
    8000354c:	078a                	slli	a5,a5,0x2
    8000354e:	fc043703          	ld	a4,-64(s0)
    80003552:	97ba                	add	a5,a5,a4
    80003554:	439c                	lw	a5,0(a5)
    80003556:	fef42423          	sw	a5,-24(s0)
    8000355a:	fec42783          	lw	a5,-20(s0)
    8000355e:	0785                	addi	a5,a5,1
    80003560:	078a                	slli	a5,a5,0x2
    80003562:	fc043703          	ld	a4,-64(s0)
    80003566:	97ba                	add	a5,a5,a4
    80003568:	439c                	lw	a5,0(a5)
    8000356a:	fef42223          	sw	a5,-28(s0)
    8000356e:	fec42783          	lw	a5,-20(s0)
    80003572:	078a                	slli	a5,a5,0x2
    80003574:	fb843703          	ld	a4,-72(s0)
    80003578:	97ba                	add	a5,a5,a4
    8000357a:	439c                	lw	a5,0(a5)
    8000357c:	fef42023          	sw	a5,-32(s0)
    80003580:	fec42783          	lw	a5,-20(s0)
    80003584:	0785                	addi	a5,a5,1
    80003586:	078a                	slli	a5,a5,0x2
    80003588:	fb843703          	ld	a4,-72(s0)
    8000358c:	97ba                	add	a5,a5,a4
    8000358e:	439c                	lw	a5,0(a5)
    80003590:	fcf42e23          	sw	a5,-36(s0)
    80003594:	fe842783          	lw	a5,-24(s0)
    80003598:	873e                	mv	a4,a5
    8000359a:	fe042783          	lw	a5,-32(s0)
    8000359e:	2701                	sext.w	a4,a4
    800035a0:	2781                	sext.w	a5,a5
    800035a2:	00f70763          	beq	a4,a5,800035b0 <verify+0x82>
    800035a6:	fec42783          	lw	a5,-20(s0)
    800035aa:	2785                	addiw	a5,a5,1
    800035ac:	2781                	sext.w	a5,a5
    800035ae:	a059                	j	80003634 <verify+0x106>
    800035b0:	fe442783          	lw	a5,-28(s0)
    800035b4:	873e                	mv	a4,a5
    800035b6:	fdc42783          	lw	a5,-36(s0)
    800035ba:	2701                	sext.w	a4,a4
    800035bc:	2781                	sext.w	a5,a5
    800035be:	00f70763          	beq	a4,a5,800035cc <verify+0x9e>
    800035c2:	fec42783          	lw	a5,-20(s0)
    800035c6:	2789                	addiw	a5,a5,2
    800035c8:	2781                	sext.w	a5,a5
    800035ca:	a0ad                	j	80003634 <verify+0x106>
    800035cc:	fec42783          	lw	a5,-20(s0)
    800035d0:	2789                	addiw	a5,a5,2
    800035d2:	fef42623          	sw	a5,-20(s0)
    800035d6:	fcc42783          	lw	a5,-52(s0)
    800035da:	01f7d71b          	srliw	a4,a5,0x1f
    800035de:	9fb9                	addw	a5,a5,a4
    800035e0:	4017d79b          	sraiw	a5,a5,0x1
    800035e4:	2781                	sext.w	a5,a5
    800035e6:	0017979b          	slliw	a5,a5,0x1
    800035ea:	0007871b          	sext.w	a4,a5
    800035ee:	fec42783          	lw	a5,-20(s0)
    800035f2:	2781                	sext.w	a5,a5
    800035f4:	f4e7cae3          	blt	a5,a4,80003548 <verify+0x1a>
    800035f8:	fcc42783          	lw	a5,-52(s0)
    800035fc:	8b85                	andi	a5,a5,1
    800035fe:	2781                	sext.w	a5,a5
    80003600:	cb8d                	beqz	a5,80003632 <verify+0x104>
    80003602:	fcc42783          	lw	a5,-52(s0)
    80003606:	078a                	slli	a5,a5,0x2
    80003608:	17f1                	addi	a5,a5,-4
    8000360a:	fc043703          	ld	a4,-64(s0)
    8000360e:	97ba                	add	a5,a5,a4
    80003610:	439c                	lw	a5,0(a5)
    80003612:	0007869b          	sext.w	a3,a5
    80003616:	fcc42783          	lw	a5,-52(s0)
    8000361a:	078a                	slli	a5,a5,0x2
    8000361c:	17f1                	addi	a5,a5,-4
    8000361e:	fb843703          	ld	a4,-72(s0)
    80003622:	97ba                	add	a5,a5,a4
    80003624:	439c                	lw	a5,0(a5)
    80003626:	8736                	mv	a4,a3
    80003628:	00f70563          	beq	a4,a5,80003632 <verify+0x104>
    8000362c:	fcc42783          	lw	a5,-52(s0)
    80003630:	a011                	j	80003634 <verify+0x106>
    80003632:	4781                	li	a5,0
    80003634:	853e                	mv	a0,a5
    80003636:	6426                	ld	s0,72(sp)
    80003638:	6161                	addi	sp,sp,80
    8000363a:	8082                	ret

000000008000363c <verifyDouble>:
    8000363c:	711d                	addi	sp,sp,-96
    8000363e:	eca2                	sd	s0,88(sp)
    80003640:	1080                	addi	s0,sp,96
    80003642:	87aa                	mv	a5,a0
    80003644:	fab43823          	sd	a1,-80(s0)
    80003648:	fac43423          	sd	a2,-88(s0)
    8000364c:	faf42e23          	sw	a5,-68(s0)
    80003650:	fe042623          	sw	zero,-20(s0)
    80003654:	a06d                	j	800036fe <verifyDouble+0xc2>
    80003656:	fec42783          	lw	a5,-20(s0)
    8000365a:	078e                	slli	a5,a5,0x3
    8000365c:	fb043703          	ld	a4,-80(s0)
    80003660:	97ba                	add	a5,a5,a4
    80003662:	239c                	fld	fa5,0(a5)
    80003664:	fef43027          	fsd	fa5,-32(s0)
    80003668:	fec42783          	lw	a5,-20(s0)
    8000366c:	0785                	addi	a5,a5,1
    8000366e:	078e                	slli	a5,a5,0x3
    80003670:	fb043703          	ld	a4,-80(s0)
    80003674:	97ba                	add	a5,a5,a4
    80003676:	239c                	fld	fa5,0(a5)
    80003678:	fcf43c27          	fsd	fa5,-40(s0)
    8000367c:	fec42783          	lw	a5,-20(s0)
    80003680:	078e                	slli	a5,a5,0x3
    80003682:	fa843703          	ld	a4,-88(s0)
    80003686:	97ba                	add	a5,a5,a4
    80003688:	239c                	fld	fa5,0(a5)
    8000368a:	fcf43827          	fsd	fa5,-48(s0)
    8000368e:	fec42783          	lw	a5,-20(s0)
    80003692:	0785                	addi	a5,a5,1
    80003694:	078e                	slli	a5,a5,0x3
    80003696:	fa843703          	ld	a4,-88(s0)
    8000369a:	97ba                	add	a5,a5,a4
    8000369c:	239c                	fld	fa5,0(a5)
    8000369e:	fcf43427          	fsd	fa5,-56(s0)
    800036a2:	fe043707          	fld	fa4,-32(s0)
    800036a6:	fd043787          	fld	fa5,-48(s0)
    800036aa:	a2f727d3          	feq.d	a5,fa4,fa5
    800036ae:	00f037b3          	snez	a5,a5
    800036b2:	0ff7f793          	andi	a5,a5,255
    800036b6:	fcf42223          	sw	a5,-60(s0)
    800036ba:	fd843707          	fld	fa4,-40(s0)
    800036be:	fc843787          	fld	fa5,-56(s0)
    800036c2:	a2f727d3          	feq.d	a5,fa4,fa5
    800036c6:	00f037b3          	snez	a5,a5
    800036ca:	0ff7f793          	andi	a5,a5,255
    800036ce:	fcf42023          	sw	a5,-64(s0)
    800036d2:	fc442783          	lw	a5,-60(s0)
    800036d6:	873e                	mv	a4,a5
    800036d8:	fc042783          	lw	a5,-64(s0)
    800036dc:	8ff9                	and	a5,a5,a4
    800036de:	2781                	sext.w	a5,a5
    800036e0:	eb91                	bnez	a5,800036f4 <verifyDouble+0xb8>
    800036e2:	fec42783          	lw	a5,-20(s0)
    800036e6:	2785                	addiw	a5,a5,1
    800036e8:	2781                	sext.w	a5,a5
    800036ea:	fc442703          	lw	a4,-60(s0)
    800036ee:	9fb9                	addw	a5,a5,a4
    800036f0:	2781                	sext.w	a5,a5
    800036f2:	a09d                	j	80003758 <verifyDouble+0x11c>
    800036f4:	fec42783          	lw	a5,-20(s0)
    800036f8:	2789                	addiw	a5,a5,2
    800036fa:	fef42623          	sw	a5,-20(s0)
    800036fe:	fbc42783          	lw	a5,-68(s0)
    80003702:	01f7d71b          	srliw	a4,a5,0x1f
    80003706:	9fb9                	addw	a5,a5,a4
    80003708:	4017d79b          	sraiw	a5,a5,0x1
    8000370c:	2781                	sext.w	a5,a5
    8000370e:	0017979b          	slliw	a5,a5,0x1
    80003712:	0007871b          	sext.w	a4,a5
    80003716:	fec42783          	lw	a5,-20(s0)
    8000371a:	2781                	sext.w	a5,a5
    8000371c:	f2e7cde3          	blt	a5,a4,80003656 <verifyDouble+0x1a>
    80003720:	fbc42783          	lw	a5,-68(s0)
    80003724:	8b85                	andi	a5,a5,1
    80003726:	2781                	sext.w	a5,a5
    80003728:	c79d                	beqz	a5,80003756 <verifyDouble+0x11a>
    8000372a:	fbc42783          	lw	a5,-68(s0)
    8000372e:	078e                	slli	a5,a5,0x3
    80003730:	17e1                	addi	a5,a5,-8
    80003732:	fb043703          	ld	a4,-80(s0)
    80003736:	97ba                	add	a5,a5,a4
    80003738:	2398                	fld	fa4,0(a5)
    8000373a:	fbc42783          	lw	a5,-68(s0)
    8000373e:	078e                	slli	a5,a5,0x3
    80003740:	17e1                	addi	a5,a5,-8
    80003742:	fa843703          	ld	a4,-88(s0)
    80003746:	97ba                	add	a5,a5,a4
    80003748:	239c                	fld	fa5,0(a5)
    8000374a:	a2f727d3          	feq.d	a5,fa4,fa5
    8000374e:	e781                	bnez	a5,80003756 <verifyDouble+0x11a>
    80003750:	fbc42783          	lw	a5,-68(s0)
    80003754:	a011                	j	80003758 <verifyDouble+0x11c>
    80003756:	4781                	li	a5,0
    80003758:	853e                	mv	a0,a5
    8000375a:	6466                	ld	s0,88(sp)
    8000375c:	6125                	addi	sp,sp,96
    8000375e:	8082                	ret

0000000080003760 <barrier>:
    80003760:	1101                	addi	sp,sp,-32
    80003762:	ec22                	sd	s0,24(sp)
    80003764:	1000                	addi	s0,sp,32
    80003766:	87aa                	mv	a5,a0
    80003768:	fef42623          	sw	a5,-20(s0)
    8000376c:	0ff0000f          	fence
    80003770:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    80003774:	0017b793          	seqz	a5,a5
    80003778:	0ff7f793          	andi	a5,a5,255
    8000377c:	0007871b          	sext.w	a4,a5
    80003780:	00e22023          	sw	a4,0(tp) # 0 <threadsense.4>
    80003784:	00001797          	auipc	a5,0x1
    80003788:	26478793          	addi	a5,a5,612 # 800049e8 <count.1>
    8000378c:	4705                	li	a4,1
    8000378e:	0f50000f          	fence	iorw,ow
    80003792:	04e7a6af          	amoadd.w.aq	a3,a4,(a5)
    80003796:	0006879b          	sext.w	a5,a3
    8000379a:	0007871b          	sext.w	a4,a5
    8000379e:	fec42783          	lw	a5,-20(s0)
    800037a2:	37fd                	addiw	a5,a5,-1
    800037a4:	2781                	sext.w	a5,a5
    800037a6:	02f71063          	bne	a4,a5,800037c6 <barrier+0x66>
    800037aa:	00001797          	auipc	a5,0x1
    800037ae:	23e78793          	addi	a5,a5,574 # 800049e8 <count.1>
    800037b2:	0007a023          	sw	zero,0(a5)
    800037b6:	00022703          	lw	a4,0(tp) # 0 <threadsense.4>
    800037ba:	00001797          	auipc	a5,0x1
    800037be:	23278793          	addi	a5,a5,562 # 800049ec <sense.0>
    800037c2:	c398                	sw	a4,0(a5)
    800037c4:	a829                	j	800037de <barrier+0x7e>
    800037c6:	0001                	nop
    800037c8:	00001797          	auipc	a5,0x1
    800037cc:	22478793          	addi	a5,a5,548 # 800049ec <sense.0>
    800037d0:	439c                	lw	a5,0(a5)
    800037d2:	0007871b          	sext.w	a4,a5
    800037d6:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    800037da:	fef717e3          	bne	a4,a5,800037c8 <barrier+0x68>
    800037de:	0ff0000f          	fence
    800037e2:	0001                	nop
    800037e4:	6462                	ld	s0,24(sp)
    800037e6:	6105                	addi	sp,sp,32
    800037e8:	8082                	ret

00000000800037ea <lfsr>:
    800037ea:	7179                	addi	sp,sp,-48
    800037ec:	f422                	sd	s0,40(sp)
    800037ee:	1800                	addi	s0,sp,48
    800037f0:	fca43c23          	sd	a0,-40(s0)
    800037f4:	fd843783          	ld	a5,-40(s0)
    800037f8:	0017d713          	srli	a4,a5,0x1
    800037fc:	fd843783          	ld	a5,-40(s0)
    80003800:	8fb9                	xor	a5,a5,a4
    80003802:	8b85                	andi	a5,a5,1
    80003804:	fef43423          	sd	a5,-24(s0)
    80003808:	fd843783          	ld	a5,-40(s0)
    8000380c:	0017d713          	srli	a4,a5,0x1
    80003810:	fe843783          	ld	a5,-24(s0)
    80003814:	17fa                	slli	a5,a5,0x3e
    80003816:	8fd9                	or	a5,a5,a4
    80003818:	853e                	mv	a0,a5
    8000381a:	7422                	ld	s0,40(sp)
    8000381c:	6145                	addi	sp,sp,48
    8000381e:	8082                	ret

0000000080003820 <insn_len>:
    80003820:	1101                	addi	sp,sp,-32
    80003822:	ec22                	sd	s0,24(sp)
    80003824:	1000                	addi	s0,sp,32
    80003826:	fea43423          	sd	a0,-24(s0)
    8000382a:	fe843783          	ld	a5,-24(s0)
    8000382e:	0007d783          	lhu	a5,0(a5)
    80003832:	2781                	sext.w	a5,a5
    80003834:	8b8d                	andi	a5,a5,3
    80003836:	2781                	sext.w	a5,a5
    80003838:	c399                	beqz	a5,8000383e <insn_len+0x1e>
    8000383a:	4791                	li	a5,4
    8000383c:	a011                	j	80003840 <insn_len+0x20>
    8000383e:	4789                	li	a5,2
    80003840:	853e                	mv	a0,a5
    80003842:	6462                	ld	s0,24(sp)
    80003844:	6105                	addi	sp,sp,32
    80003846:	8082                	ret

0000000080003848 <syscall>:
    80003848:	7171                	addi	sp,sp,-176
    8000384a:	f522                	sd	s0,168(sp)
    8000384c:	1900                	addi	s0,sp,176
    8000384e:	f6a43c23          	sd	a0,-136(s0)
    80003852:	f6b43823          	sd	a1,-144(s0)
    80003856:	f6c43423          	sd	a2,-152(s0)
    8000385a:	f6d43023          	sd	a3,-160(s0)
    8000385e:	ff040793          	addi	a5,s0,-16
    80003862:	f4f43c23          	sd	a5,-168(s0)
    80003866:	f5843783          	ld	a5,-168(s0)
    8000386a:	f9078793          	addi	a5,a5,-112
    8000386e:	03f78793          	addi	a5,a5,63
    80003872:	8399                	srli	a5,a5,0x6
    80003874:	079a                	slli	a5,a5,0x6
    80003876:	f7843703          	ld	a4,-136(s0)
    8000387a:	e398                	sd	a4,0(a5)
    8000387c:	f7043703          	ld	a4,-144(s0)
    80003880:	e798                	sd	a4,8(a5)
    80003882:	f6843703          	ld	a4,-152(s0)
    80003886:	eb98                	sd	a4,16(a5)
    80003888:	f6043703          	ld	a4,-160(s0)
    8000388c:	ef98                	sd	a4,24(a5)
    8000388e:	0ff0000f          	fence
    80003892:	86be                	mv	a3,a5
    80003894:	577d                	li	a4,-1
    80003896:	8341                	srli	a4,a4,0x10
    80003898:	8ef9                	and	a3,a3,a4
    8000389a:	ffffd717          	auipc	a4,0xffffd
    8000389e:	76670713          	addi	a4,a4,1894 # 80001000 <tohost>
    800038a2:	e314                	sd	a3,0(a4)
    800038a4:	0001                	nop
    800038a6:	ffffd717          	auipc	a4,0xffffd
    800038aa:	79a70713          	addi	a4,a4,1946 # 80001040 <fromhost>
    800038ae:	6318                	ld	a4,0(a4)
    800038b0:	db7d                	beqz	a4,800038a6 <syscall+0x5e>
    800038b2:	ffffd717          	auipc	a4,0xffffd
    800038b6:	78e70713          	addi	a4,a4,1934 # 80001040 <fromhost>
    800038ba:	00073023          	sd	zero,0(a4)
    800038be:	0ff0000f          	fence
    800038c2:	639c                	ld	a5,0(a5)
    800038c4:	853e                	mv	a0,a5
    800038c6:	742a                	ld	s0,168(sp)
    800038c8:	614d                	addi	sp,sp,176
    800038ca:	8082                	ret

00000000800038cc <setStats>:
    800038cc:	715d                	addi	sp,sp,-80
    800038ce:	e4a2                	sd	s0,72(sp)
    800038d0:	0880                	addi	s0,sp,80
    800038d2:	87aa                	mv	a5,a0
    800038d4:	faf42e23          	sw	a5,-68(s0)
    800038d8:	fc042e23          	sw	zero,-36(s0)
    800038dc:	fdc42783          	lw	a5,-36(s0)
    800038e0:	0007871b          	sext.w	a4,a5
    800038e4:	4785                	li	a5,1
    800038e6:	fee7cbe3          	blt	a5,a4,800038dc <setStats+0x10>
    800038ea:	b00027f3          	csrr	a5,mcycle
    800038ee:	fcf43823          	sd	a5,-48(s0)
    800038f2:	fd043783          	ld	a5,-48(s0)
    800038f6:	fef43423          	sd	a5,-24(s0)
    800038fa:	fbc42783          	lw	a5,-68(s0)
    800038fe:	2781                	sext.w	a5,a5
    80003900:	ef8d                	bnez	a5,8000393a <setStats+0x6e>
    80003902:	00001717          	auipc	a4,0x1
    80003906:	0c670713          	addi	a4,a4,198 # 800049c8 <counters>
    8000390a:	fdc42783          	lw	a5,-36(s0)
    8000390e:	078e                	slli	a5,a5,0x3
    80003910:	97ba                	add	a5,a5,a4
    80003912:	639c                	ld	a5,0(a5)
    80003914:	fe843703          	ld	a4,-24(s0)
    80003918:	40f707b3          	sub	a5,a4,a5
    8000391c:	fef43423          	sd	a5,-24(s0)
    80003920:	00001717          	auipc	a4,0x1
    80003924:	0b870713          	addi	a4,a4,184 # 800049d8 <counter_names>
    80003928:	fdc42783          	lw	a5,-36(s0)
    8000392c:	078e                	slli	a5,a5,0x3
    8000392e:	97ba                	add	a5,a5,a4
    80003930:	00001717          	auipc	a4,0x1
    80003934:	ee870713          	addi	a4,a4,-280 # 80004818 <atol+0x182>
    80003938:	e398                	sd	a4,0(a5)
    8000393a:	fdc42783          	lw	a5,-36(s0)
    8000393e:	0017871b          	addiw	a4,a5,1
    80003942:	fce42e23          	sw	a4,-36(s0)
    80003946:	00001717          	auipc	a4,0x1
    8000394a:	08270713          	addi	a4,a4,130 # 800049c8 <counters>
    8000394e:	078e                	slli	a5,a5,0x3
    80003950:	97ba                	add	a5,a5,a4
    80003952:	fe843703          	ld	a4,-24(s0)
    80003956:	e398                	sd	a4,0(a5)
    80003958:	fdc42783          	lw	a5,-36(s0)
    8000395c:	0007871b          	sext.w	a4,a5
    80003960:	4785                	li	a5,1
    80003962:	fee7cbe3          	blt	a5,a4,80003958 <setStats+0x8c>
    80003966:	b02027f3          	csrr	a5,minstret
    8000396a:	fcf43423          	sd	a5,-56(s0)
    8000396e:	fc843783          	ld	a5,-56(s0)
    80003972:	fef43023          	sd	a5,-32(s0)
    80003976:	fbc42783          	lw	a5,-68(s0)
    8000397a:	2781                	sext.w	a5,a5
    8000397c:	ef8d                	bnez	a5,800039b6 <setStats+0xea>
    8000397e:	00001717          	auipc	a4,0x1
    80003982:	04a70713          	addi	a4,a4,74 # 800049c8 <counters>
    80003986:	fdc42783          	lw	a5,-36(s0)
    8000398a:	078e                	slli	a5,a5,0x3
    8000398c:	97ba                	add	a5,a5,a4
    8000398e:	639c                	ld	a5,0(a5)
    80003990:	fe043703          	ld	a4,-32(s0)
    80003994:	40f707b3          	sub	a5,a4,a5
    80003998:	fef43023          	sd	a5,-32(s0)
    8000399c:	00001717          	auipc	a4,0x1
    800039a0:	03c70713          	addi	a4,a4,60 # 800049d8 <counter_names>
    800039a4:	fdc42783          	lw	a5,-36(s0)
    800039a8:	078e                	slli	a5,a5,0x3
    800039aa:	97ba                	add	a5,a5,a4
    800039ac:	00001717          	auipc	a4,0x1
    800039b0:	e7470713          	addi	a4,a4,-396 # 80004820 <atol+0x18a>
    800039b4:	e398                	sd	a4,0(a5)
    800039b6:	fdc42783          	lw	a5,-36(s0)
    800039ba:	0017871b          	addiw	a4,a5,1
    800039be:	fce42e23          	sw	a4,-36(s0)
    800039c2:	00001717          	auipc	a4,0x1
    800039c6:	00670713          	addi	a4,a4,6 # 800049c8 <counters>
    800039ca:	078e                	slli	a5,a5,0x3
    800039cc:	97ba                	add	a5,a5,a4
    800039ce:	fe043703          	ld	a4,-32(s0)
    800039d2:	e398                	sd	a4,0(a5)
    800039d4:	0001                	nop
    800039d6:	6426                	ld	s0,72(sp)
    800039d8:	6161                	addi	sp,sp,80
    800039da:	8082                	ret

00000000800039dc <getStats>:
    800039dc:	1101                	addi	sp,sp,-32
    800039de:	ec22                	sd	s0,24(sp)
    800039e0:	1000                	addi	s0,sp,32
    800039e2:	87aa                	mv	a5,a0
    800039e4:	fef42623          	sw	a5,-20(s0)
    800039e8:	00001717          	auipc	a4,0x1
    800039ec:	fe070713          	addi	a4,a4,-32 # 800049c8 <counters>
    800039f0:	fec42783          	lw	a5,-20(s0)
    800039f4:	078e                	slli	a5,a5,0x3
    800039f6:	97ba                	add	a5,a5,a4
    800039f8:	639c                	ld	a5,0(a5)
    800039fa:	853e                	mv	a0,a5
    800039fc:	6462                	ld	s0,24(sp)
    800039fe:	6105                	addi	sp,sp,32
    80003a00:	8082                	ret

0000000080003a02 <tohost_exit>:
    80003a02:	1101                	addi	sp,sp,-32
    80003a04:	ec22                	sd	s0,24(sp)
    80003a06:	1000                	addi	s0,sp,32
    80003a08:	fea43423          	sd	a0,-24(s0)
    80003a0c:	fe843783          	ld	a5,-24(s0)
    80003a10:	07c6                	slli	a5,a5,0x11
    80003a12:	83c1                	srli	a5,a5,0x10
    80003a14:	0017e713          	ori	a4,a5,1
    80003a18:	ffffd797          	auipc	a5,0xffffd
    80003a1c:	5e878793          	addi	a5,a5,1512 # 80001000 <tohost>
    80003a20:	e398                	sd	a4,0(a5)
    80003a22:	0001                	nop
    80003a24:	a001                	j	80003a24 <tohost_exit+0x22>

0000000080003a26 <handle_trap>:
    80003a26:	7179                	addi	sp,sp,-48
    80003a28:	f406                	sd	ra,40(sp)
    80003a2a:	f022                	sd	s0,32(sp)
    80003a2c:	1800                	addi	s0,sp,48
    80003a2e:	fea43423          	sd	a0,-24(s0)
    80003a32:	feb43023          	sd	a1,-32(s0)
    80003a36:	fcc43c23          	sd	a2,-40(s0)
    80003a3a:	53900513          	li	a0,1337
    80003a3e:	fc5ff0ef          	jal	ra,80003a02 <tohost_exit>

0000000080003a42 <exit>:
    80003a42:	1101                	addi	sp,sp,-32
    80003a44:	ec06                	sd	ra,24(sp)
    80003a46:	e822                	sd	s0,16(sp)
    80003a48:	1000                	addi	s0,sp,32
    80003a4a:	87aa                	mv	a5,a0
    80003a4c:	fef42623          	sw	a5,-20(s0)
    80003a50:	fec42783          	lw	a5,-20(s0)
    80003a54:	853e                	mv	a0,a5
    80003a56:	fadff0ef          	jal	ra,80003a02 <tohost_exit>

0000000080003a5a <abort>:
    80003a5a:	1141                	addi	sp,sp,-16
    80003a5c:	e406                	sd	ra,8(sp)
    80003a5e:	e022                	sd	s0,0(sp)
    80003a60:	0800                	addi	s0,sp,16
    80003a62:	08600513          	li	a0,134
    80003a66:	fddff0ef          	jal	ra,80003a42 <exit>

0000000080003a6a <printstr>:
    80003a6a:	7179                	addi	sp,sp,-48
    80003a6c:	f406                	sd	ra,40(sp)
    80003a6e:	f022                	sd	s0,32(sp)
    80003a70:	ec26                	sd	s1,24(sp)
    80003a72:	1800                	addi	s0,sp,48
    80003a74:	fca43c23          	sd	a0,-40(s0)
    80003a78:	fd843483          	ld	s1,-40(s0)
    80003a7c:	fd843503          	ld	a0,-40(s0)
    80003a80:	2d1000ef          	jal	ra,80004550 <strlen>
    80003a84:	87aa                	mv	a5,a0
    80003a86:	86be                	mv	a3,a5
    80003a88:	8626                	mv	a2,s1
    80003a8a:	4585                	li	a1,1
    80003a8c:	04000513          	li	a0,64
    80003a90:	db9ff0ef          	jal	ra,80003848 <syscall>
    80003a94:	0001                	nop
    80003a96:	70a2                	ld	ra,40(sp)
    80003a98:	7402                	ld	s0,32(sp)
    80003a9a:	64e2                	ld	s1,24(sp)
    80003a9c:	6145                	addi	sp,sp,48
    80003a9e:	8082                	ret

0000000080003aa0 <thread_entry>:
    80003aa0:	1101                	addi	sp,sp,-32
    80003aa2:	ec22                	sd	s0,24(sp)
    80003aa4:	1000                	addi	s0,sp,32
    80003aa6:	87aa                	mv	a5,a0
    80003aa8:	872e                	mv	a4,a1
    80003aaa:	fef42623          	sw	a5,-20(s0)
    80003aae:	87ba                	mv	a5,a4
    80003ab0:	fef42423          	sw	a5,-24(s0)
    80003ab4:	0001                	nop
    80003ab6:	fec42783          	lw	a5,-20(s0)
    80003aba:	2781                	sext.w	a5,a5
    80003abc:	ffed                	bnez	a5,80003ab6 <thread_entry+0x16>
    80003abe:	0001                	nop
    80003ac0:	0001                	nop
    80003ac2:	6462                	ld	s0,24(sp)
    80003ac4:	6105                	addi	sp,sp,32
    80003ac6:	8082                	ret
    80003ac8:	1101                	addi	sp,sp,-32
    80003aca:	ec06                	sd	ra,24(sp)
    80003acc:	e822                	sd	s0,16(sp)
    80003ace:	1000                	addi	s0,sp,32
    80003ad0:	87aa                	mv	a5,a0
    80003ad2:	feb43023          	sd	a1,-32(s0)
    80003ad6:	fef42623          	sw	a5,-20(s0)
    80003ada:	00001517          	auipc	a0,0x1
    80003ade:	d5650513          	addi	a0,a0,-682 # 80004830 <atol+0x19a>
    80003ae2:	f89ff0ef          	jal	ra,80003a6a <printstr>
    80003ae6:	57fd                	li	a5,-1
    80003ae8:	853e                	mv	a0,a5
    80003aea:	60e2                	ld	ra,24(sp)
    80003aec:	6442                	ld	s0,16(sp)
    80003aee:	6105                	addi	sp,sp,32
    80003af0:	8082                	ret

0000000080003af2 <init_tls>:
    80003af2:	1101                	addi	sp,sp,-32
    80003af4:	ec06                	sd	ra,24(sp)
    80003af6:	e822                	sd	s0,16(sp)
    80003af8:	1000                	addi	s0,sp,32
    80003afa:	00001717          	auipc	a4,0x1
    80003afe:	ef670713          	addi	a4,a4,-266 # 800049f0 <_tdata_begin>
    80003b02:	00001797          	auipc	a5,0x1
    80003b06:	eee78793          	addi	a5,a5,-274 # 800049f0 <_tdata_begin>
    80003b0a:	40f707b3          	sub	a5,a4,a5
    80003b0e:	fef43423          	sd	a5,-24(s0)
    80003b12:	8792                	mv	a5,tp
    80003b14:	fe843603          	ld	a2,-24(s0)
    80003b18:	00001597          	auipc	a1,0x1
    80003b1c:	ed858593          	addi	a1,a1,-296 # 800049f0 <_tdata_begin>
    80003b20:	853e                	mv	a0,a5
    80003b22:	0a9000ef          	jal	ra,800043ca <memcpy>
    80003b26:	8bc18713          	addi	a4,gp,-1860 # 80004a84 <_tbss_end>
    80003b2a:	00001797          	auipc	a5,0x1
    80003b2e:	ec678793          	addi	a5,a5,-314 # 800049f0 <_tdata_begin>
    80003b32:	40f707b3          	sub	a5,a4,a5
    80003b36:	fef43023          	sd	a5,-32(s0)
    80003b3a:	8712                	mv	a4,tp
    80003b3c:	fe843783          	ld	a5,-24(s0)
    80003b40:	97ba                	add	a5,a5,a4
    80003b42:	fe043603          	ld	a2,-32(s0)
    80003b46:	4581                	li	a1,0
    80003b48:	853e                	mv	a0,a5
    80003b4a:	139000ef          	jal	ra,80004482 <memset>
    80003b4e:	0001                	nop
    80003b50:	60e2                	ld	ra,24(sp)
    80003b52:	6442                	ld	s0,16(sp)
    80003b54:	6105                	addi	sp,sp,32
    80003b56:	8082                	ret

0000000080003b58 <_init>:
    80003b58:	7171                	addi	sp,sp,-176
    80003b5a:	f506                	sd	ra,168(sp)
    80003b5c:	f122                	sd	s0,160(sp)
    80003b5e:	ed26                	sd	s1,152(sp)
    80003b60:	1900                	addi	s0,sp,176
    80003b62:	87aa                	mv	a5,a0
    80003b64:	872e                	mv	a4,a1
    80003b66:	f4f42e23          	sw	a5,-164(s0)
    80003b6a:	87ba                	mv	a5,a4
    80003b6c:	f4f42c23          	sw	a5,-168(s0)
    80003b70:	fe040793          	addi	a5,s0,-32
    80003b74:	f4f43823          	sd	a5,-176(s0)
    80003b78:	f5043783          	ld	a5,-176(s0)
    80003b7c:	f8078793          	addi	a5,a5,-128
    80003b80:	03f78793          	addi	a5,a5,63
    80003b84:	8399                	srli	a5,a5,0x6
    80003b86:	00679493          	slli	s1,a5,0x6
    80003b8a:	f69ff0ef          	jal	ra,80003af2 <init_tls>
    80003b8e:	f5842703          	lw	a4,-168(s0)
    80003b92:	f5c42783          	lw	a5,-164(s0)
    80003b96:	85ba                	mv	a1,a4
    80003b98:	853e                	mv	a0,a5
    80003b9a:	f07ff0ef          	jal	ra,80003aa0 <thread_entry>
    80003b9e:	4581                	li	a1,0
    80003ba0:	4501                	li	a0,0
    80003ba2:	90dff0ef          	jal	ra,800034ae <main>
    80003ba6:	87aa                	mv	a5,a0
    80003ba8:	fcf42823          	sw	a5,-48(s0)
    80003bac:	fc943c23          	sd	s1,-40(s0)
    80003bb0:	fc042a23          	sw	zero,-44(s0)
    80003bb4:	a095                	j	80003c18 <_init+0xc0>
    80003bb6:	00001717          	auipc	a4,0x1
    80003bba:	e1270713          	addi	a4,a4,-494 # 800049c8 <counters>
    80003bbe:	fd442783          	lw	a5,-44(s0)
    80003bc2:	078e                	slli	a5,a5,0x3
    80003bc4:	97ba                	add	a5,a5,a4
    80003bc6:	639c                	ld	a5,0(a5)
    80003bc8:	c3b9                	beqz	a5,80003c0e <_init+0xb6>
    80003bca:	00001717          	auipc	a4,0x1
    80003bce:	e0e70713          	addi	a4,a4,-498 # 800049d8 <counter_names>
    80003bd2:	fd442783          	lw	a5,-44(s0)
    80003bd6:	078e                	slli	a5,a5,0x3
    80003bd8:	97ba                	add	a5,a5,a4
    80003bda:	6390                	ld	a2,0(a5)
    80003bdc:	00001717          	auipc	a4,0x1
    80003be0:	dec70713          	addi	a4,a4,-532 # 800049c8 <counters>
    80003be4:	fd442783          	lw	a5,-44(s0)
    80003be8:	078e                	slli	a5,a5,0x3
    80003bea:	97ba                	add	a5,a5,a4
    80003bec:	639c                	ld	a5,0(a5)
    80003bee:	86be                	mv	a3,a5
    80003bf0:	00001597          	auipc	a1,0x1
    80003bf4:	c5858593          	addi	a1,a1,-936 # 80004848 <atol+0x1b2>
    80003bf8:	fd843503          	ld	a0,-40(s0)
    80003bfc:	756000ef          	jal	ra,80004352 <sprintf>
    80003c00:	87aa                	mv	a5,a0
    80003c02:	873e                	mv	a4,a5
    80003c04:	fd843783          	ld	a5,-40(s0)
    80003c08:	97ba                	add	a5,a5,a4
    80003c0a:	fcf43c23          	sd	a5,-40(s0)
    80003c0e:	fd442783          	lw	a5,-44(s0)
    80003c12:	2785                	addiw	a5,a5,1
    80003c14:	fcf42a23          	sw	a5,-44(s0)
    80003c18:	fd442783          	lw	a5,-44(s0)
    80003c1c:	0007871b          	sext.w	a4,a5
    80003c20:	4785                	li	a5,1
    80003c22:	f8e7dae3          	ble	a4,a5,80003bb6 <_init+0x5e>
    80003c26:	fd843783          	ld	a5,-40(s0)
    80003c2a:	00f48563          	beq	s1,a5,80003c34 <_init+0xdc>
    80003c2e:	8526                	mv	a0,s1
    80003c30:	e3bff0ef          	jal	ra,80003a6a <printstr>
    80003c34:	fd042783          	lw	a5,-48(s0)
    80003c38:	853e                	mv	a0,a5
    80003c3a:	e09ff0ef          	jal	ra,80003a42 <exit>

0000000080003c3e <puts>:
    80003c3e:	7179                	addi	sp,sp,-48
    80003c40:	f406                	sd	ra,40(sp)
    80003c42:	f022                	sd	s0,32(sp)
    80003c44:	1800                	addi	s0,sp,48
    80003c46:	fca43c23          	sd	a0,-40(s0)
    80003c4a:	fd843783          	ld	a5,-40(s0)
    80003c4e:	fef43423          	sd	a5,-24(s0)
    80003c52:	a829                	j	80003c6c <puts+0x2e>
    80003c54:	fe843783          	ld	a5,-24(s0)
    80003c58:	00178713          	addi	a4,a5,1
    80003c5c:	fee43423          	sd	a4,-24(s0)
    80003c60:	0007c783          	lbu	a5,0(a5)
    80003c64:	2781                	sext.w	a5,a5
    80003c66:	853e                	mv	a0,a5
    80003c68:	020000ef          	jal	ra,80003c88 <putchar>
    80003c6c:	fe843783          	ld	a5,-24(s0)
    80003c70:	0007c783          	lbu	a5,0(a5)
    80003c74:	f3e5                	bnez	a5,80003c54 <puts+0x16>
    80003c76:	4529                	li	a0,10
    80003c78:	010000ef          	jal	ra,80003c88 <putchar>
    80003c7c:	4781                	li	a5,0
    80003c7e:	853e                	mv	a0,a5
    80003c80:	70a2                	ld	ra,40(sp)
    80003c82:	7402                	ld	s0,32(sp)
    80003c84:	6145                	addi	sp,sp,48
    80003c86:	8082                	ret

0000000080003c88 <putchar>:
    80003c88:	1101                	addi	sp,sp,-32
    80003c8a:	ec06                	sd	ra,24(sp)
    80003c8c:	e822                	sd	s0,16(sp)
    80003c8e:	1000                	addi	s0,sp,32
    80003c90:	87aa                	mv	a5,a0
    80003c92:	fef42623          	sw	a5,-20(s0)
    80003c96:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003c9a:	0017871b          	addiw	a4,a5,1
    80003c9e:	0007069b          	sext.w	a3,a4
    80003ca2:	08d22023          	sw	a3,128(tp) # 80 <buflen.2>
    80003ca6:	fec42703          	lw	a4,-20(s0)
    80003caa:	0ff77713          	andi	a4,a4,255
    80003cae:	04020693          	addi	a3,tp,64 # 40 <buf.3>
    80003cb2:	97b6                	add	a5,a5,a3
    80003cb4:	00e78023          	sb	a4,0(a5)
    80003cb8:	fec42783          	lw	a5,-20(s0)
    80003cbc:	0007871b          	sext.w	a4,a5
    80003cc0:	47a9                	li	a5,10
    80003cc2:	00f70963          	beq	a4,a5,80003cd4 <putchar+0x4c>
    80003cc6:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003cca:	873e                	mv	a4,a5
    80003ccc:	04000793          	li	a5,64
    80003cd0:	00f71f63          	bne	a4,a5,80003cee <putchar+0x66>
    80003cd4:	04020713          	addi	a4,tp,64 # 40 <buf.3>
    80003cd8:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003cdc:	86be                	mv	a3,a5
    80003cde:	863a                	mv	a2,a4
    80003ce0:	4585                	li	a1,1
    80003ce2:	04000513          	li	a0,64
    80003ce6:	b63ff0ef          	jal	ra,80003848 <syscall>
    80003cea:	08022023          	sw	zero,128(tp) # 80 <buflen.2>
    80003cee:	4781                	li	a5,0
    80003cf0:	853e                	mv	a0,a5
    80003cf2:	60e2                	ld	ra,24(sp)
    80003cf4:	6442                	ld	s0,16(sp)
    80003cf6:	6105                	addi	sp,sp,32
    80003cf8:	8082                	ret

0000000080003cfa <printhex>:
    80003cfa:	7139                	addi	sp,sp,-64
    80003cfc:	fc06                	sd	ra,56(sp)
    80003cfe:	f822                	sd	s0,48(sp)
    80003d00:	0080                	addi	s0,sp,64
    80003d02:	fca43423          	sd	a0,-56(s0)
    80003d06:	fe042623          	sw	zero,-20(s0)
    80003d0a:	a899                	j	80003d60 <printhex+0x66>
    80003d0c:	fc843783          	ld	a5,-56(s0)
    80003d10:	0ff7f793          	andi	a5,a5,255
    80003d14:	8bbd                	andi	a5,a5,15
    80003d16:	0ff7f713          	andi	a4,a5,255
    80003d1a:	fc843783          	ld	a5,-56(s0)
    80003d1e:	00f7f693          	andi	a3,a5,15
    80003d22:	47a5                	li	a5,9
    80003d24:	00d7e563          	bltu	a5,a3,80003d2e <printhex+0x34>
    80003d28:	03000793          	li	a5,48
    80003d2c:	a019                	j	80003d32 <printhex+0x38>
    80003d2e:	05700793          	li	a5,87
    80003d32:	46bd                	li	a3,15
    80003d34:	fec42603          	lw	a2,-20(s0)
    80003d38:	9e91                	subw	a3,a3,a2
    80003d3a:	2681                	sext.w	a3,a3
    80003d3c:	9fb9                	addw	a5,a5,a4
    80003d3e:	0ff7f713          	andi	a4,a5,255
    80003d42:	ff068793          	addi	a5,a3,-16
    80003d46:	97a2                	add	a5,a5,s0
    80003d48:	fee78423          	sb	a4,-24(a5)
    80003d4c:	fc843783          	ld	a5,-56(s0)
    80003d50:	8391                	srli	a5,a5,0x4
    80003d52:	fcf43423          	sd	a5,-56(s0)
    80003d56:	fec42783          	lw	a5,-20(s0)
    80003d5a:	2785                	addiw	a5,a5,1
    80003d5c:	fef42623          	sw	a5,-20(s0)
    80003d60:	fec42783          	lw	a5,-20(s0)
    80003d64:	0007871b          	sext.w	a4,a5
    80003d68:	47bd                	li	a5,15
    80003d6a:	fae7d1e3          	ble	a4,a5,80003d0c <printhex+0x12>
    80003d6e:	fe040423          	sb	zero,-24(s0)
    80003d72:	fd840793          	addi	a5,s0,-40
    80003d76:	853e                	mv	a0,a5
    80003d78:	cf3ff0ef          	jal	ra,80003a6a <printstr>
    80003d7c:	0001                	nop
    80003d7e:	70e2                	ld	ra,56(sp)
    80003d80:	7442                	ld	s0,48(sp)
    80003d82:	6121                	addi	sp,sp,64
    80003d84:	8082                	ret

0000000080003d86 <printnum>:
    80003d86:	714d                	addi	sp,sp,-336
    80003d88:	e686                	sd	ra,328(sp)
    80003d8a:	e2a2                	sd	s0,320(sp)
    80003d8c:	0a80                	addi	s0,sp,336
    80003d8e:	eca43c23          	sd	a0,-296(s0)
    80003d92:	ecb43823          	sd	a1,-304(s0)
    80003d96:	ecc43423          	sd	a2,-312(s0)
    80003d9a:	8636                	mv	a2,a3
    80003d9c:	86ba                	mv	a3,a4
    80003d9e:	873e                	mv	a4,a5
    80003da0:	87b2                	mv	a5,a2
    80003da2:	ecf42223          	sw	a5,-316(s0)
    80003da6:	87b6                	mv	a5,a3
    80003da8:	ecf42023          	sw	a5,-320(s0)
    80003dac:	87ba                	mv	a5,a4
    80003dae:	eaf42e23          	sw	a5,-324(s0)
    80003db2:	fe042623          	sw	zero,-20(s0)
    80003db6:	ec446783          	lwu	a5,-316(s0)
    80003dba:	ec843703          	ld	a4,-312(s0)
    80003dbe:	02f776b3          	remu	a3,a4,a5
    80003dc2:	fec42783          	lw	a5,-20(s0)
    80003dc6:	0017871b          	addiw	a4,a5,1
    80003dca:	fee42623          	sw	a4,-20(s0)
    80003dce:	0006871b          	sext.w	a4,a3
    80003dd2:	078a                	slli	a5,a5,0x2
    80003dd4:	17c1                	addi	a5,a5,-16
    80003dd6:	97a2                	add	a5,a5,s0
    80003dd8:	eee7ac23          	sw	a4,-264(a5)
    80003ddc:	ec446783          	lwu	a5,-316(s0)
    80003de0:	ec843703          	ld	a4,-312(s0)
    80003de4:	00f76b63          	bltu	a4,a5,80003dfa <printnum+0x74>
    80003de8:	ec446783          	lwu	a5,-316(s0)
    80003dec:	ec843703          	ld	a4,-312(s0)
    80003df0:	02f757b3          	divu	a5,a4,a5
    80003df4:	ecf43423          	sd	a5,-312(s0)
    80003df8:	bf7d                	j	80003db6 <printnum+0x30>
    80003dfa:	0001                	nop
    80003dfc:	a809                	j	80003e0e <printnum+0x88>
    80003dfe:	ebc42703          	lw	a4,-324(s0)
    80003e02:	ed843783          	ld	a5,-296(s0)
    80003e06:	ed043583          	ld	a1,-304(s0)
    80003e0a:	853a                	mv	a0,a4
    80003e0c:	9782                	jalr	a5
    80003e0e:	ec042783          	lw	a5,-320(s0)
    80003e12:	fff7871b          	addiw	a4,a5,-1
    80003e16:	ece42023          	sw	a4,-320(s0)
    80003e1a:	fec42703          	lw	a4,-20(s0)
    80003e1e:	2701                	sext.w	a4,a4
    80003e20:	fcf74fe3          	blt	a4,a5,80003dfe <printnum+0x78>
    80003e24:	a091                	j	80003e68 <printnum+0xe2>
    80003e26:	fec42783          	lw	a5,-20(s0)
    80003e2a:	078a                	slli	a5,a5,0x2
    80003e2c:	17c1                	addi	a5,a5,-16
    80003e2e:	97a2                	add	a5,a5,s0
    80003e30:	ef87a703          	lw	a4,-264(a5)
    80003e34:	fec42783          	lw	a5,-20(s0)
    80003e38:	078a                	slli	a5,a5,0x2
    80003e3a:	17c1                	addi	a5,a5,-16
    80003e3c:	97a2                	add	a5,a5,s0
    80003e3e:	ef87a783          	lw	a5,-264(a5)
    80003e42:	86be                	mv	a3,a5
    80003e44:	47a5                	li	a5,9
    80003e46:	00d7f563          	bleu	a3,a5,80003e50 <printnum+0xca>
    80003e4a:	05700793          	li	a5,87
    80003e4e:	a019                	j	80003e54 <printnum+0xce>
    80003e50:	03000793          	li	a5,48
    80003e54:	9fb9                	addw	a5,a5,a4
    80003e56:	2781                	sext.w	a5,a5
    80003e58:	0007871b          	sext.w	a4,a5
    80003e5c:	ed843783          	ld	a5,-296(s0)
    80003e60:	ed043583          	ld	a1,-304(s0)
    80003e64:	853a                	mv	a0,a4
    80003e66:	9782                	jalr	a5
    80003e68:	fec42783          	lw	a5,-20(s0)
    80003e6c:	fff7871b          	addiw	a4,a5,-1
    80003e70:	fee42623          	sw	a4,-20(s0)
    80003e74:	faf049e3          	bgtz	a5,80003e26 <printnum+0xa0>
    80003e78:	0001                	nop
    80003e7a:	0001                	nop
    80003e7c:	60b6                	ld	ra,328(sp)
    80003e7e:	6416                	ld	s0,320(sp)
    80003e80:	6171                	addi	sp,sp,336
    80003e82:	8082                	ret

0000000080003e84 <getuint>:
    80003e84:	1101                	addi	sp,sp,-32
    80003e86:	ec22                	sd	s0,24(sp)
    80003e88:	1000                	addi	s0,sp,32
    80003e8a:	fea43423          	sd	a0,-24(s0)
    80003e8e:	87ae                	mv	a5,a1
    80003e90:	fef42223          	sw	a5,-28(s0)
    80003e94:	fe442783          	lw	a5,-28(s0)
    80003e98:	0007871b          	sext.w	a4,a5
    80003e9c:	4785                	li	a5,1
    80003e9e:	00e7dc63          	ble	a4,a5,80003eb6 <getuint+0x32>
    80003ea2:	fe843783          	ld	a5,-24(s0)
    80003ea6:	639c                	ld	a5,0(a5)
    80003ea8:	00878693          	addi	a3,a5,8
    80003eac:	fe843703          	ld	a4,-24(s0)
    80003eb0:	e314                	sd	a3,0(a4)
    80003eb2:	639c                	ld	a5,0(a5)
    80003eb4:	a815                	j	80003ee8 <getuint+0x64>
    80003eb6:	fe442783          	lw	a5,-28(s0)
    80003eba:	2781                	sext.w	a5,a5
    80003ebc:	cb99                	beqz	a5,80003ed2 <getuint+0x4e>
    80003ebe:	fe843783          	ld	a5,-24(s0)
    80003ec2:	639c                	ld	a5,0(a5)
    80003ec4:	00878693          	addi	a3,a5,8
    80003ec8:	fe843703          	ld	a4,-24(s0)
    80003ecc:	e314                	sd	a3,0(a4)
    80003ece:	639c                	ld	a5,0(a5)
    80003ed0:	a821                	j	80003ee8 <getuint+0x64>
    80003ed2:	fe843783          	ld	a5,-24(s0)
    80003ed6:	639c                	ld	a5,0(a5)
    80003ed8:	00878693          	addi	a3,a5,8
    80003edc:	fe843703          	ld	a4,-24(s0)
    80003ee0:	e314                	sd	a3,0(a4)
    80003ee2:	439c                	lw	a5,0(a5)
    80003ee4:	1782                	slli	a5,a5,0x20
    80003ee6:	9381                	srli	a5,a5,0x20
    80003ee8:	853e                	mv	a0,a5
    80003eea:	6462                	ld	s0,24(sp)
    80003eec:	6105                	addi	sp,sp,32
    80003eee:	8082                	ret

0000000080003ef0 <getint>:
    80003ef0:	1101                	addi	sp,sp,-32
    80003ef2:	ec22                	sd	s0,24(sp)
    80003ef4:	1000                	addi	s0,sp,32
    80003ef6:	fea43423          	sd	a0,-24(s0)
    80003efa:	87ae                	mv	a5,a1
    80003efc:	fef42223          	sw	a5,-28(s0)
    80003f00:	fe442783          	lw	a5,-28(s0)
    80003f04:	0007871b          	sext.w	a4,a5
    80003f08:	4785                	li	a5,1
    80003f0a:	00e7dc63          	ble	a4,a5,80003f22 <getint+0x32>
    80003f0e:	fe843783          	ld	a5,-24(s0)
    80003f12:	639c                	ld	a5,0(a5)
    80003f14:	00878693          	addi	a3,a5,8
    80003f18:	fe843703          	ld	a4,-24(s0)
    80003f1c:	e314                	sd	a3,0(a4)
    80003f1e:	639c                	ld	a5,0(a5)
    80003f20:	a805                	j	80003f50 <getint+0x60>
    80003f22:	fe442783          	lw	a5,-28(s0)
    80003f26:	2781                	sext.w	a5,a5
    80003f28:	cb99                	beqz	a5,80003f3e <getint+0x4e>
    80003f2a:	fe843783          	ld	a5,-24(s0)
    80003f2e:	639c                	ld	a5,0(a5)
    80003f30:	00878693          	addi	a3,a5,8
    80003f34:	fe843703          	ld	a4,-24(s0)
    80003f38:	e314                	sd	a3,0(a4)
    80003f3a:	639c                	ld	a5,0(a5)
    80003f3c:	a811                	j	80003f50 <getint+0x60>
    80003f3e:	fe843783          	ld	a5,-24(s0)
    80003f42:	639c                	ld	a5,0(a5)
    80003f44:	00878693          	addi	a3,a5,8
    80003f48:	fe843703          	ld	a4,-24(s0)
    80003f4c:	e314                	sd	a3,0(a4)
    80003f4e:	439c                	lw	a5,0(a5)
    80003f50:	853e                	mv	a0,a5
    80003f52:	6462                	ld	s0,24(sp)
    80003f54:	6105                	addi	sp,sp,32
    80003f56:	8082                	ret

0000000080003f58 <vprintfmt>:
    80003f58:	7159                	addi	sp,sp,-112
    80003f5a:	f486                	sd	ra,104(sp)
    80003f5c:	f0a2                	sd	s0,96(sp)
    80003f5e:	eca6                	sd	s1,88(sp)
    80003f60:	e8ca                	sd	s2,80(sp)
    80003f62:	1880                	addi	s0,sp,112
    80003f64:	faa43423          	sd	a0,-88(s0)
    80003f68:	fab43023          	sd	a1,-96(s0)
    80003f6c:	f8c43c23          	sd	a2,-104(s0)
    80003f70:	f8d43823          	sd	a3,-112(s0)
    80003f74:	a831                	j	80003f90 <vprintfmt+0x38>
    80003f76:	32048b63          	beqz	s1,800042ac <vprintfmt+0x354>
    80003f7a:	f9843783          	ld	a5,-104(s0)
    80003f7e:	0785                	addi	a5,a5,1
    80003f80:	f8f43c23          	sd	a5,-104(s0)
    80003f84:	fa843783          	ld	a5,-88(s0)
    80003f88:	fa043583          	ld	a1,-96(s0)
    80003f8c:	8526                	mv	a0,s1
    80003f8e:	9782                	jalr	a5
    80003f90:	f9843783          	ld	a5,-104(s0)
    80003f94:	0007c783          	lbu	a5,0(a5)
    80003f98:	0007849b          	sext.w	s1,a5
    80003f9c:	8726                	mv	a4,s1
    80003f9e:	02500793          	li	a5,37
    80003fa2:	fcf71ae3          	bne	a4,a5,80003f76 <vprintfmt+0x1e>
    80003fa6:	f9843783          	ld	a5,-104(s0)
    80003faa:	0785                	addi	a5,a5,1
    80003fac:	f8f43c23          	sd	a5,-104(s0)
    80003fb0:	f9843783          	ld	a5,-104(s0)
    80003fb4:	faf43c23          	sd	a5,-72(s0)
    80003fb8:	02000793          	li	a5,32
    80003fbc:	fcf403a3          	sb	a5,-57(s0)
    80003fc0:	57fd                	li	a5,-1
    80003fc2:	fcf42623          	sw	a5,-52(s0)
    80003fc6:	57fd                	li	a5,-1
    80003fc8:	fcf42423          	sw	a5,-56(s0)
    80003fcc:	fc042823          	sw	zero,-48(s0)
    80003fd0:	fa042a23          	sw	zero,-76(s0)
    80003fd4:	f9843783          	ld	a5,-104(s0)
    80003fd8:	00178713          	addi	a4,a5,1
    80003fdc:	f8e43c23          	sd	a4,-104(s0)
    80003fe0:	0007c783          	lbu	a5,0(a5)
    80003fe4:	0007849b          	sext.w	s1,a5
    80003fe8:	fdd4869b          	addiw	a3,s1,-35
    80003fec:	0006871b          	sext.w	a4,a3
    80003ff0:	05500793          	li	a5,85
    80003ff4:	28e7ef63          	bltu	a5,a4,80004292 <vprintfmt+0x33a>
    80003ff8:	02069793          	slli	a5,a3,0x20
    80003ffc:	9381                	srli	a5,a5,0x20
    80003ffe:	00279713          	slli	a4,a5,0x2
    80004002:	00001797          	auipc	a5,0x1
    80004006:	85e78793          	addi	a5,a5,-1954 # 80004860 <atol+0x1ca>
    8000400a:	97ba                	add	a5,a5,a4
    8000400c:	439c                	lw	a5,0(a5)
    8000400e:	0007871b          	sext.w	a4,a5
    80004012:	00001797          	auipc	a5,0x1
    80004016:	84e78793          	addi	a5,a5,-1970 # 80004860 <atol+0x1ca>
    8000401a:	97ba                	add	a5,a5,a4
    8000401c:	8782                	jr	a5
    8000401e:	02d00793          	li	a5,45
    80004022:	fcf403a3          	sb	a5,-57(s0)
    80004026:	b77d                	j	80003fd4 <vprintfmt+0x7c>
    80004028:	03000793          	li	a5,48
    8000402c:	fcf403a3          	sb	a5,-57(s0)
    80004030:	b755                	j	80003fd4 <vprintfmt+0x7c>
    80004032:	fc042423          	sw	zero,-56(s0)
    80004036:	fc842783          	lw	a5,-56(s0)
    8000403a:	873e                	mv	a4,a5
    8000403c:	87ba                	mv	a5,a4
    8000403e:	0027979b          	slliw	a5,a5,0x2
    80004042:	9fb9                	addw	a5,a5,a4
    80004044:	0017979b          	slliw	a5,a5,0x1
    80004048:	2781                	sext.w	a5,a5
    8000404a:	9fa5                	addw	a5,a5,s1
    8000404c:	2781                	sext.w	a5,a5
    8000404e:	fd07879b          	addiw	a5,a5,-48
    80004052:	fcf42423          	sw	a5,-56(s0)
    80004056:	f9843783          	ld	a5,-104(s0)
    8000405a:	0007c783          	lbu	a5,0(a5)
    8000405e:	0007849b          	sext.w	s1,a5
    80004062:	8726                	mv	a4,s1
    80004064:	02f00793          	li	a5,47
    80004068:	04e7d363          	ble	a4,a5,800040ae <vprintfmt+0x156>
    8000406c:	8726                	mv	a4,s1
    8000406e:	03900793          	li	a5,57
    80004072:	02e7ce63          	blt	a5,a4,800040ae <vprintfmt+0x156>
    80004076:	f9843783          	ld	a5,-104(s0)
    8000407a:	0785                	addi	a5,a5,1
    8000407c:	f8f43c23          	sd	a5,-104(s0)
    80004080:	bf5d                	j	80004036 <vprintfmt+0xde>
    80004082:	f9043783          	ld	a5,-112(s0)
    80004086:	00878713          	addi	a4,a5,8
    8000408a:	f8e43823          	sd	a4,-112(s0)
    8000408e:	439c                	lw	a5,0(a5)
    80004090:	fcf42423          	sw	a5,-56(s0)
    80004094:	a831                	j	800040b0 <vprintfmt+0x158>
    80004096:	fcc42783          	lw	a5,-52(s0)
    8000409a:	2781                	sext.w	a5,a5
    8000409c:	f207dce3          	bgez	a5,80003fd4 <vprintfmt+0x7c>
    800040a0:	fc042623          	sw	zero,-52(s0)
    800040a4:	bf05                	j	80003fd4 <vprintfmt+0x7c>
    800040a6:	4785                	li	a5,1
    800040a8:	faf42a23          	sw	a5,-76(s0)
    800040ac:	b725                	j	80003fd4 <vprintfmt+0x7c>
    800040ae:	0001                	nop
    800040b0:	fcc42783          	lw	a5,-52(s0)
    800040b4:	2781                	sext.w	a5,a5
    800040b6:	f007dfe3          	bgez	a5,80003fd4 <vprintfmt+0x7c>
    800040ba:	fc842783          	lw	a5,-56(s0)
    800040be:	fcf42623          	sw	a5,-52(s0)
    800040c2:	57fd                	li	a5,-1
    800040c4:	fcf42423          	sw	a5,-56(s0)
    800040c8:	b731                	j	80003fd4 <vprintfmt+0x7c>
    800040ca:	fd042783          	lw	a5,-48(s0)
    800040ce:	2785                	addiw	a5,a5,1
    800040d0:	fcf42823          	sw	a5,-48(s0)
    800040d4:	b701                	j	80003fd4 <vprintfmt+0x7c>
    800040d6:	f9043783          	ld	a5,-112(s0)
    800040da:	00878713          	addi	a4,a5,8
    800040de:	f8e43823          	sd	a4,-112(s0)
    800040e2:	4398                	lw	a4,0(a5)
    800040e4:	fa843783          	ld	a5,-88(s0)
    800040e8:	fa043583          	ld	a1,-96(s0)
    800040ec:	853a                	mv	a0,a4
    800040ee:	9782                	jalr	a5
    800040f0:	aa6d                	j	800042aa <vprintfmt+0x352>
    800040f2:	f9043783          	ld	a5,-112(s0)
    800040f6:	00878713          	addi	a4,a5,8
    800040fa:	f8e43823          	sd	a4,-112(s0)
    800040fe:	0007b903          	ld	s2,0(a5)
    80004102:	00091663          	bnez	s2,8000410e <vprintfmt+0x1b6>
    80004106:	00000917          	auipc	s2,0x0
    8000410a:	75290913          	addi	s2,s2,1874 # 80004858 <atol+0x1c2>
    8000410e:	fcc42783          	lw	a5,-52(s0)
    80004112:	2781                	sext.w	a5,a5
    80004114:	06f05b63          	blez	a5,8000418a <vprintfmt+0x232>
    80004118:	fc744783          	lbu	a5,-57(s0)
    8000411c:	0ff7f713          	andi	a4,a5,255
    80004120:	02d00793          	li	a5,45
    80004124:	06f70363          	beq	a4,a5,8000418a <vprintfmt+0x232>
    80004128:	fcc42483          	lw	s1,-52(s0)
    8000412c:	fc842783          	lw	a5,-56(s0)
    80004130:	85be                	mv	a1,a5
    80004132:	854a                	mv	a0,s2
    80004134:	458000ef          	jal	ra,8000458c <strnlen>
    80004138:	87aa                	mv	a5,a0
    8000413a:	2781                	sext.w	a5,a5
    8000413c:	40f487bb          	subw	a5,s1,a5
    80004140:	2781                	sext.w	a5,a5
    80004142:	fcf42623          	sw	a5,-52(s0)
    80004146:	a005                	j	80004166 <vprintfmt+0x20e>
    80004148:	fc744783          	lbu	a5,-57(s0)
    8000414c:	0007871b          	sext.w	a4,a5
    80004150:	fa843783          	ld	a5,-88(s0)
    80004154:	fa043583          	ld	a1,-96(s0)
    80004158:	853a                	mv	a0,a4
    8000415a:	9782                	jalr	a5
    8000415c:	fcc42783          	lw	a5,-52(s0)
    80004160:	37fd                	addiw	a5,a5,-1
    80004162:	fcf42623          	sw	a5,-52(s0)
    80004166:	fcc42783          	lw	a5,-52(s0)
    8000416a:	2781                	sext.w	a5,a5
    8000416c:	fcf04ee3          	bgtz	a5,80004148 <vprintfmt+0x1f0>
    80004170:	a829                	j	8000418a <vprintfmt+0x232>
    80004172:	fa843783          	ld	a5,-88(s0)
    80004176:	fa043583          	ld	a1,-96(s0)
    8000417a:	8526                	mv	a0,s1
    8000417c:	9782                	jalr	a5
    8000417e:	0905                	addi	s2,s2,1
    80004180:	fcc42783          	lw	a5,-52(s0)
    80004184:	37fd                	addiw	a5,a5,-1
    80004186:	fcf42623          	sw	a5,-52(s0)
    8000418a:	00094783          	lbu	a5,0(s2)
    8000418e:	0007849b          	sext.w	s1,a5
    80004192:	cc8d                	beqz	s1,800041cc <vprintfmt+0x274>
    80004194:	fc842783          	lw	a5,-56(s0)
    80004198:	2781                	sext.w	a5,a5
    8000419a:	fc07cce3          	bltz	a5,80004172 <vprintfmt+0x21a>
    8000419e:	fc842783          	lw	a5,-56(s0)
    800041a2:	37fd                	addiw	a5,a5,-1
    800041a4:	fcf42423          	sw	a5,-56(s0)
    800041a8:	fc842783          	lw	a5,-56(s0)
    800041ac:	2781                	sext.w	a5,a5
    800041ae:	fc07d2e3          	bgez	a5,80004172 <vprintfmt+0x21a>
    800041b2:	a829                	j	800041cc <vprintfmt+0x274>
    800041b4:	fa843783          	ld	a5,-88(s0)
    800041b8:	fa043583          	ld	a1,-96(s0)
    800041bc:	02000513          	li	a0,32
    800041c0:	9782                	jalr	a5
    800041c2:	fcc42783          	lw	a5,-52(s0)
    800041c6:	37fd                	addiw	a5,a5,-1
    800041c8:	fcf42623          	sw	a5,-52(s0)
    800041cc:	fcc42783          	lw	a5,-52(s0)
    800041d0:	2781                	sext.w	a5,a5
    800041d2:	fef041e3          	bgtz	a5,800041b4 <vprintfmt+0x25c>
    800041d6:	a8d1                	j	800042aa <vprintfmt+0x352>
    800041d8:	fd042703          	lw	a4,-48(s0)
    800041dc:	f9040793          	addi	a5,s0,-112
    800041e0:	85ba                	mv	a1,a4
    800041e2:	853e                	mv	a0,a5
    800041e4:	d0dff0ef          	jal	ra,80003ef0 <getint>
    800041e8:	87aa                	mv	a5,a0
    800041ea:	fcf43c23          	sd	a5,-40(s0)
    800041ee:	fd843783          	ld	a5,-40(s0)
    800041f2:	0007df63          	bgez	a5,80004210 <vprintfmt+0x2b8>
    800041f6:	fa843783          	ld	a5,-88(s0)
    800041fa:	fa043583          	ld	a1,-96(s0)
    800041fe:	02d00513          	li	a0,45
    80004202:	9782                	jalr	a5
    80004204:	fd843783          	ld	a5,-40(s0)
    80004208:	40f007b3          	neg	a5,a5
    8000420c:	fcf43c23          	sd	a5,-40(s0)
    80004210:	47a9                	li	a5,10
    80004212:	fcf42a23          	sw	a5,-44(s0)
    80004216:	a0b9                	j	80004264 <vprintfmt+0x30c>
    80004218:	47a9                	li	a5,10
    8000421a:	fcf42a23          	sw	a5,-44(s0)
    8000421e:	a80d                	j	80004250 <vprintfmt+0x2f8>
    80004220:	47a1                	li	a5,8
    80004222:	fcf42a23          	sw	a5,-44(s0)
    80004226:	a02d                	j	80004250 <vprintfmt+0x2f8>
    80004228:	4785                	li	a5,1
    8000422a:	fcf42823          	sw	a5,-48(s0)
    8000422e:	fa843783          	ld	a5,-88(s0)
    80004232:	fa043583          	ld	a1,-96(s0)
    80004236:	03000513          	li	a0,48
    8000423a:	9782                	jalr	a5
    8000423c:	fa843783          	ld	a5,-88(s0)
    80004240:	fa043583          	ld	a1,-96(s0)
    80004244:	07800513          	li	a0,120
    80004248:	9782                	jalr	a5
    8000424a:	47c1                	li	a5,16
    8000424c:	fcf42a23          	sw	a5,-44(s0)
    80004250:	fd042703          	lw	a4,-48(s0)
    80004254:	f9040793          	addi	a5,s0,-112
    80004258:	85ba                	mv	a1,a4
    8000425a:	853e                	mv	a0,a5
    8000425c:	c29ff0ef          	jal	ra,80003e84 <getuint>
    80004260:	fca43c23          	sd	a0,-40(s0)
    80004264:	fd442683          	lw	a3,-44(s0)
    80004268:	fc744783          	lbu	a5,-57(s0)
    8000426c:	2781                	sext.w	a5,a5
    8000426e:	fcc42703          	lw	a4,-52(s0)
    80004272:	fd843603          	ld	a2,-40(s0)
    80004276:	fa043583          	ld	a1,-96(s0)
    8000427a:	fa843503          	ld	a0,-88(s0)
    8000427e:	b09ff0ef          	jal	ra,80003d86 <printnum>
    80004282:	a025                	j	800042aa <vprintfmt+0x352>
    80004284:	fa843783          	ld	a5,-88(s0)
    80004288:	fa043583          	ld	a1,-96(s0)
    8000428c:	8526                	mv	a0,s1
    8000428e:	9782                	jalr	a5
    80004290:	a829                	j	800042aa <vprintfmt+0x352>
    80004292:	fa843783          	ld	a5,-88(s0)
    80004296:	fa043583          	ld	a1,-96(s0)
    8000429a:	02500513          	li	a0,37
    8000429e:	9782                	jalr	a5
    800042a0:	fb843783          	ld	a5,-72(s0)
    800042a4:	f8f43c23          	sd	a5,-104(s0)
    800042a8:	0001                	nop
    800042aa:	b1dd                	j	80003f90 <vprintfmt+0x38>
    800042ac:	0001                	nop
    800042ae:	70a6                	ld	ra,104(sp)
    800042b0:	7406                	ld	s0,96(sp)
    800042b2:	64e6                	ld	s1,88(sp)
    800042b4:	6946                	ld	s2,80(sp)
    800042b6:	6165                	addi	sp,sp,112
    800042b8:	8082                	ret

00000000800042ba <printf>:
    800042ba:	7159                	addi	sp,sp,-112
    800042bc:	f406                	sd	ra,40(sp)
    800042be:	f022                	sd	s0,32(sp)
    800042c0:	1800                	addi	s0,sp,48
    800042c2:	fca43c23          	sd	a0,-40(s0)
    800042c6:	e40c                	sd	a1,8(s0)
    800042c8:	e810                	sd	a2,16(s0)
    800042ca:	ec14                	sd	a3,24(s0)
    800042cc:	f018                	sd	a4,32(s0)
    800042ce:	f41c                	sd	a5,40(s0)
    800042d0:	03043823          	sd	a6,48(s0)
    800042d4:	03143c23          	sd	a7,56(s0)
    800042d8:	04040793          	addi	a5,s0,64
    800042dc:	fcf43823          	sd	a5,-48(s0)
    800042e0:	fd043783          	ld	a5,-48(s0)
    800042e4:	fc878793          	addi	a5,a5,-56
    800042e8:	fef43423          	sd	a5,-24(s0)
    800042ec:	fe843783          	ld	a5,-24(s0)
    800042f0:	86be                	mv	a3,a5
    800042f2:	fd843603          	ld	a2,-40(s0)
    800042f6:	4581                	li	a1,0
    800042f8:	00000517          	auipc	a0,0x0
    800042fc:	99050513          	addi	a0,a0,-1648 # 80003c88 <putchar>
    80004300:	c59ff0ef          	jal	ra,80003f58 <vprintfmt>
    80004304:	4781                	li	a5,0
    80004306:	853e                	mv	a0,a5
    80004308:	70a2                	ld	ra,40(sp)
    8000430a:	7402                	ld	s0,32(sp)
    8000430c:	6165                	addi	sp,sp,112
    8000430e:	8082                	ret

0000000080004310 <sprintf_putch>:
    80004310:	7179                	addi	sp,sp,-48
    80004312:	f422                	sd	s0,40(sp)
    80004314:	1800                	addi	s0,sp,48
    80004316:	87aa                	mv	a5,a0
    80004318:	fcb43823          	sd	a1,-48(s0)
    8000431c:	fcf42e23          	sw	a5,-36(s0)
    80004320:	fd043783          	ld	a5,-48(s0)
    80004324:	fef43423          	sd	a5,-24(s0)
    80004328:	fe843783          	ld	a5,-24(s0)
    8000432c:	639c                	ld	a5,0(a5)
    8000432e:	fdc42703          	lw	a4,-36(s0)
    80004332:	0ff77713          	andi	a4,a4,255
    80004336:	00e78023          	sb	a4,0(a5)
    8000433a:	fe843783          	ld	a5,-24(s0)
    8000433e:	639c                	ld	a5,0(a5)
    80004340:	00178713          	addi	a4,a5,1
    80004344:	fe843783          	ld	a5,-24(s0)
    80004348:	e398                	sd	a4,0(a5)
    8000434a:	0001                	nop
    8000434c:	7422                	ld	s0,40(sp)
    8000434e:	6145                	addi	sp,sp,48
    80004350:	8082                	ret

0000000080004352 <sprintf>:
    80004352:	7159                	addi	sp,sp,-112
    80004354:	fc06                	sd	ra,56(sp)
    80004356:	f822                	sd	s0,48(sp)
    80004358:	0080                	addi	s0,sp,64
    8000435a:	fca43c23          	sd	a0,-40(s0)
    8000435e:	fcb43823          	sd	a1,-48(s0)
    80004362:	e010                	sd	a2,0(s0)
    80004364:	e414                	sd	a3,8(s0)
    80004366:	e818                	sd	a4,16(s0)
    80004368:	ec1c                	sd	a5,24(s0)
    8000436a:	03043023          	sd	a6,32(s0)
    8000436e:	03143423          	sd	a7,40(s0)
    80004372:	fd843783          	ld	a5,-40(s0)
    80004376:	fef43423          	sd	a5,-24(s0)
    8000437a:	03040793          	addi	a5,s0,48
    8000437e:	fcf43423          	sd	a5,-56(s0)
    80004382:	fc843783          	ld	a5,-56(s0)
    80004386:	fd078793          	addi	a5,a5,-48
    8000438a:	fef43023          	sd	a5,-32(s0)
    8000438e:	fe043703          	ld	a4,-32(s0)
    80004392:	fd840793          	addi	a5,s0,-40
    80004396:	86ba                	mv	a3,a4
    80004398:	fd043603          	ld	a2,-48(s0)
    8000439c:	85be                	mv	a1,a5
    8000439e:	00000517          	auipc	a0,0x0
    800043a2:	f7250513          	addi	a0,a0,-142 # 80004310 <sprintf_putch>
    800043a6:	bb3ff0ef          	jal	ra,80003f58 <vprintfmt>
    800043aa:	fd843783          	ld	a5,-40(s0)
    800043ae:	00078023          	sb	zero,0(a5)
    800043b2:	fd843703          	ld	a4,-40(s0)
    800043b6:	fe843783          	ld	a5,-24(s0)
    800043ba:	40f707b3          	sub	a5,a4,a5
    800043be:	2781                	sext.w	a5,a5
    800043c0:	853e                	mv	a0,a5
    800043c2:	70e2                	ld	ra,56(sp)
    800043c4:	7442                	ld	s0,48(sp)
    800043c6:	6165                	addi	sp,sp,112
    800043c8:	8082                	ret

00000000800043ca <memcpy>:
    800043ca:	715d                	addi	sp,sp,-80
    800043cc:	e4a2                	sd	s0,72(sp)
    800043ce:	0880                	addi	s0,sp,80
    800043d0:	fca43423          	sd	a0,-56(s0)
    800043d4:	fcb43023          	sd	a1,-64(s0)
    800043d8:	fac43c23          	sd	a2,-72(s0)
    800043dc:	fc843703          	ld	a4,-56(s0)
    800043e0:	fc043783          	ld	a5,-64(s0)
    800043e4:	8f5d                	or	a4,a4,a5
    800043e6:	fb843783          	ld	a5,-72(s0)
    800043ea:	8fd9                	or	a5,a5,a4
    800043ec:	8b9d                	andi	a5,a5,7
    800043ee:	e3b1                	bnez	a5,80004432 <memcpy+0x68>
    800043f0:	fc043783          	ld	a5,-64(s0)
    800043f4:	fef43423          	sd	a5,-24(s0)
    800043f8:	fc843783          	ld	a5,-56(s0)
    800043fc:	fef43023          	sd	a5,-32(s0)
    80004400:	a839                	j	8000441e <memcpy+0x54>
    80004402:	fe843703          	ld	a4,-24(s0)
    80004406:	00870793          	addi	a5,a4,8
    8000440a:	fef43423          	sd	a5,-24(s0)
    8000440e:	fe043783          	ld	a5,-32(s0)
    80004412:	00878693          	addi	a3,a5,8
    80004416:	fed43023          	sd	a3,-32(s0)
    8000441a:	6318                	ld	a4,0(a4)
    8000441c:	e398                	sd	a4,0(a5)
    8000441e:	fc843703          	ld	a4,-56(s0)
    80004422:	fb843783          	ld	a5,-72(s0)
    80004426:	97ba                	add	a5,a5,a4
    80004428:	fe043703          	ld	a4,-32(s0)
    8000442c:	fcf76be3          	bltu	a4,a5,80004402 <memcpy+0x38>
    80004430:	a099                	j	80004476 <memcpy+0xac>
    80004432:	fc043783          	ld	a5,-64(s0)
    80004436:	fcf43c23          	sd	a5,-40(s0)
    8000443a:	fc843783          	ld	a5,-56(s0)
    8000443e:	fcf43823          	sd	a5,-48(s0)
    80004442:	a00d                	j	80004464 <memcpy+0x9a>
    80004444:	fd843703          	ld	a4,-40(s0)
    80004448:	00170793          	addi	a5,a4,1
    8000444c:	fcf43c23          	sd	a5,-40(s0)
    80004450:	fd043783          	ld	a5,-48(s0)
    80004454:	00178693          	addi	a3,a5,1
    80004458:	fcd43823          	sd	a3,-48(s0)
    8000445c:	00074703          	lbu	a4,0(a4)
    80004460:	00e78023          	sb	a4,0(a5)
    80004464:	fc843703          	ld	a4,-56(s0)
    80004468:	fb843783          	ld	a5,-72(s0)
    8000446c:	97ba                	add	a5,a5,a4
    8000446e:	fd043703          	ld	a4,-48(s0)
    80004472:	fcf769e3          	bltu	a4,a5,80004444 <memcpy+0x7a>
    80004476:	fc843783          	ld	a5,-56(s0)
    8000447a:	853e                	mv	a0,a5
    8000447c:	6426                	ld	s0,72(sp)
    8000447e:	6161                	addi	sp,sp,80
    80004480:	8082                	ret

0000000080004482 <memset>:
    80004482:	715d                	addi	sp,sp,-80
    80004484:	e4a2                	sd	s0,72(sp)
    80004486:	0880                	addi	s0,sp,80
    80004488:	fca43423          	sd	a0,-56(s0)
    8000448c:	87ae                	mv	a5,a1
    8000448e:	fac43c23          	sd	a2,-72(s0)
    80004492:	fcf42223          	sw	a5,-60(s0)
    80004496:	fc843703          	ld	a4,-56(s0)
    8000449a:	fb843783          	ld	a5,-72(s0)
    8000449e:	8fd9                	or	a5,a5,a4
    800044a0:	8b9d                	andi	a5,a5,7
    800044a2:	e7bd                	bnez	a5,80004510 <memset+0x8e>
    800044a4:	fc442783          	lw	a5,-60(s0)
    800044a8:	0ff7f793          	andi	a5,a5,255
    800044ac:	fcf43c23          	sd	a5,-40(s0)
    800044b0:	fd843783          	ld	a5,-40(s0)
    800044b4:	07a2                	slli	a5,a5,0x8
    800044b6:	fd843703          	ld	a4,-40(s0)
    800044ba:	8fd9                	or	a5,a5,a4
    800044bc:	fcf43c23          	sd	a5,-40(s0)
    800044c0:	fd843783          	ld	a5,-40(s0)
    800044c4:	07c2                	slli	a5,a5,0x10
    800044c6:	fd843703          	ld	a4,-40(s0)
    800044ca:	8fd9                	or	a5,a5,a4
    800044cc:	fcf43c23          	sd	a5,-40(s0)
    800044d0:	fd843783          	ld	a5,-40(s0)
    800044d4:	1782                	slli	a5,a5,0x20
    800044d6:	fd843703          	ld	a4,-40(s0)
    800044da:	8fd9                	or	a5,a5,a4
    800044dc:	fcf43c23          	sd	a5,-40(s0)
    800044e0:	fc843783          	ld	a5,-56(s0)
    800044e4:	fef43423          	sd	a5,-24(s0)
    800044e8:	a811                	j	800044fc <memset+0x7a>
    800044ea:	fe843783          	ld	a5,-24(s0)
    800044ee:	00878713          	addi	a4,a5,8
    800044f2:	fee43423          	sd	a4,-24(s0)
    800044f6:	fd843703          	ld	a4,-40(s0)
    800044fa:	e398                	sd	a4,0(a5)
    800044fc:	fc843703          	ld	a4,-56(s0)
    80004500:	fb843783          	ld	a5,-72(s0)
    80004504:	97ba                	add	a5,a5,a4
    80004506:	fe843703          	ld	a4,-24(s0)
    8000450a:	fef760e3          	bltu	a4,a5,800044ea <memset+0x68>
    8000450e:	a81d                	j	80004544 <memset+0xc2>
    80004510:	fc843783          	ld	a5,-56(s0)
    80004514:	fef43023          	sd	a5,-32(s0)
    80004518:	a829                	j	80004532 <memset+0xb0>
    8000451a:	fe043783          	ld	a5,-32(s0)
    8000451e:	00178713          	addi	a4,a5,1
    80004522:	fee43023          	sd	a4,-32(s0)
    80004526:	fc442703          	lw	a4,-60(s0)
    8000452a:	0ff77713          	andi	a4,a4,255
    8000452e:	00e78023          	sb	a4,0(a5)
    80004532:	fc843703          	ld	a4,-56(s0)
    80004536:	fb843783          	ld	a5,-72(s0)
    8000453a:	97ba                	add	a5,a5,a4
    8000453c:	fe043703          	ld	a4,-32(s0)
    80004540:	fcf76de3          	bltu	a4,a5,8000451a <memset+0x98>
    80004544:	fc843783          	ld	a5,-56(s0)
    80004548:	853e                	mv	a0,a5
    8000454a:	6426                	ld	s0,72(sp)
    8000454c:	6161                	addi	sp,sp,80
    8000454e:	8082                	ret

0000000080004550 <strlen>:
    80004550:	7179                	addi	sp,sp,-48
    80004552:	f422                	sd	s0,40(sp)
    80004554:	1800                	addi	s0,sp,48
    80004556:	fca43c23          	sd	a0,-40(s0)
    8000455a:	fd843783          	ld	a5,-40(s0)
    8000455e:	fef43423          	sd	a5,-24(s0)
    80004562:	a031                	j	8000456e <strlen+0x1e>
    80004564:	fe843783          	ld	a5,-24(s0)
    80004568:	0785                	addi	a5,a5,1
    8000456a:	fef43423          	sd	a5,-24(s0)
    8000456e:	fe843783          	ld	a5,-24(s0)
    80004572:	0007c783          	lbu	a5,0(a5)
    80004576:	f7fd                	bnez	a5,80004564 <strlen+0x14>
    80004578:	fe843703          	ld	a4,-24(s0)
    8000457c:	fd843783          	ld	a5,-40(s0)
    80004580:	40f707b3          	sub	a5,a4,a5
    80004584:	853e                	mv	a0,a5
    80004586:	7422                	ld	s0,40(sp)
    80004588:	6145                	addi	sp,sp,48
    8000458a:	8082                	ret

000000008000458c <strnlen>:
    8000458c:	7179                	addi	sp,sp,-48
    8000458e:	f422                	sd	s0,40(sp)
    80004590:	1800                	addi	s0,sp,48
    80004592:	fca43c23          	sd	a0,-40(s0)
    80004596:	fcb43823          	sd	a1,-48(s0)
    8000459a:	fd843783          	ld	a5,-40(s0)
    8000459e:	fef43423          	sd	a5,-24(s0)
    800045a2:	a031                	j	800045ae <strnlen+0x22>
    800045a4:	fe843783          	ld	a5,-24(s0)
    800045a8:	0785                	addi	a5,a5,1
    800045aa:	fef43423          	sd	a5,-24(s0)
    800045ae:	fd043783          	ld	a5,-48(s0)
    800045b2:	fff78713          	addi	a4,a5,-1
    800045b6:	fce43823          	sd	a4,-48(s0)
    800045ba:	c791                	beqz	a5,800045c6 <strnlen+0x3a>
    800045bc:	fe843783          	ld	a5,-24(s0)
    800045c0:	0007c783          	lbu	a5,0(a5)
    800045c4:	f3e5                	bnez	a5,800045a4 <strnlen+0x18>
    800045c6:	fe843703          	ld	a4,-24(s0)
    800045ca:	fd843783          	ld	a5,-40(s0)
    800045ce:	40f707b3          	sub	a5,a4,a5
    800045d2:	853e                	mv	a0,a5
    800045d4:	7422                	ld	s0,40(sp)
    800045d6:	6145                	addi	sp,sp,48
    800045d8:	8082                	ret

00000000800045da <strcmp>:
    800045da:	7179                	addi	sp,sp,-48
    800045dc:	f422                	sd	s0,40(sp)
    800045de:	1800                	addi	s0,sp,48
    800045e0:	fca43c23          	sd	a0,-40(s0)
    800045e4:	fcb43823          	sd	a1,-48(s0)
    800045e8:	fd843783          	ld	a5,-40(s0)
    800045ec:	00178713          	addi	a4,a5,1
    800045f0:	fce43c23          	sd	a4,-40(s0)
    800045f4:	0007c783          	lbu	a5,0(a5)
    800045f8:	fef407a3          	sb	a5,-17(s0)
    800045fc:	fd043783          	ld	a5,-48(s0)
    80004600:	00178713          	addi	a4,a5,1
    80004604:	fce43823          	sd	a4,-48(s0)
    80004608:	0007c783          	lbu	a5,0(a5)
    8000460c:	fef40723          	sb	a5,-18(s0)
    80004610:	fef44783          	lbu	a5,-17(s0)
    80004614:	0ff7f793          	andi	a5,a5,255
    80004618:	cf81                	beqz	a5,80004630 <strcmp+0x56>
    8000461a:	fef44783          	lbu	a5,-17(s0)
    8000461e:	873e                	mv	a4,a5
    80004620:	fee44783          	lbu	a5,-18(s0)
    80004624:	0ff77713          	andi	a4,a4,255
    80004628:	0ff7f793          	andi	a5,a5,255
    8000462c:	faf70ee3          	beq	a4,a5,800045e8 <strcmp+0xe>
    80004630:	fef44783          	lbu	a5,-17(s0)
    80004634:	0007871b          	sext.w	a4,a5
    80004638:	fee44783          	lbu	a5,-18(s0)
    8000463c:	2781                	sext.w	a5,a5
    8000463e:	40f707bb          	subw	a5,a4,a5
    80004642:	2781                	sext.w	a5,a5
    80004644:	853e                	mv	a0,a5
    80004646:	7422                	ld	s0,40(sp)
    80004648:	6145                	addi	sp,sp,48
    8000464a:	8082                	ret

000000008000464c <strcpy>:
    8000464c:	7179                	addi	sp,sp,-48
    8000464e:	f422                	sd	s0,40(sp)
    80004650:	1800                	addi	s0,sp,48
    80004652:	fca43c23          	sd	a0,-40(s0)
    80004656:	fcb43823          	sd	a1,-48(s0)
    8000465a:	fd843783          	ld	a5,-40(s0)
    8000465e:	fef43423          	sd	a5,-24(s0)
    80004662:	0001                	nop
    80004664:	fd043703          	ld	a4,-48(s0)
    80004668:	00170793          	addi	a5,a4,1
    8000466c:	fcf43823          	sd	a5,-48(s0)
    80004670:	fe843783          	ld	a5,-24(s0)
    80004674:	00178693          	addi	a3,a5,1
    80004678:	fed43423          	sd	a3,-24(s0)
    8000467c:	00074703          	lbu	a4,0(a4)
    80004680:	00e78023          	sb	a4,0(a5)
    80004684:	0007c783          	lbu	a5,0(a5)
    80004688:	fff1                	bnez	a5,80004664 <strcpy+0x18>
    8000468a:	fd843783          	ld	a5,-40(s0)
    8000468e:	853e                	mv	a0,a5
    80004690:	7422                	ld	s0,40(sp)
    80004692:	6145                	addi	sp,sp,48
    80004694:	8082                	ret

0000000080004696 <atol>:
    80004696:	7179                	addi	sp,sp,-48
    80004698:	f422                	sd	s0,40(sp)
    8000469a:	1800                	addi	s0,sp,48
    8000469c:	fca43c23          	sd	a0,-40(s0)
    800046a0:	fe043423          	sd	zero,-24(s0)
    800046a4:	fe042223          	sw	zero,-28(s0)
    800046a8:	a031                	j	800046b4 <atol+0x1e>
    800046aa:	fd843783          	ld	a5,-40(s0)
    800046ae:	0785                	addi	a5,a5,1
    800046b0:	fcf43c23          	sd	a5,-40(s0)
    800046b4:	fd843783          	ld	a5,-40(s0)
    800046b8:	0007c783          	lbu	a5,0(a5)
    800046bc:	873e                	mv	a4,a5
    800046be:	02000793          	li	a5,32
    800046c2:	fef704e3          	beq	a4,a5,800046aa <atol+0x14>
    800046c6:	fd843783          	ld	a5,-40(s0)
    800046ca:	0007c783          	lbu	a5,0(a5)
    800046ce:	873e                	mv	a4,a5
    800046d0:	02d00793          	li	a5,45
    800046d4:	00f70b63          	beq	a4,a5,800046ea <atol+0x54>
    800046d8:	fd843783          	ld	a5,-40(s0)
    800046dc:	0007c783          	lbu	a5,0(a5)
    800046e0:	873e                	mv	a4,a5
    800046e2:	02b00793          	li	a5,43
    800046e6:	06f71263          	bne	a4,a5,8000474a <atol+0xb4>
    800046ea:	fd843783          	ld	a5,-40(s0)
    800046ee:	0007c783          	lbu	a5,0(a5)
    800046f2:	0007871b          	sext.w	a4,a5
    800046f6:	02d00793          	li	a5,45
    800046fa:	40f707b3          	sub	a5,a4,a5
    800046fe:	0017b793          	seqz	a5,a5
    80004702:	0ff7f793          	andi	a5,a5,255
    80004706:	fef42223          	sw	a5,-28(s0)
    8000470a:	fd843783          	ld	a5,-40(s0)
    8000470e:	0785                	addi	a5,a5,1
    80004710:	fcf43c23          	sd	a5,-40(s0)
    80004714:	a81d                	j	8000474a <atol+0xb4>
    80004716:	fe843703          	ld	a4,-24(s0)
    8000471a:	87ba                	mv	a5,a4
    8000471c:	078a                	slli	a5,a5,0x2
    8000471e:	97ba                	add	a5,a5,a4
    80004720:	0786                	slli	a5,a5,0x1
    80004722:	fef43423          	sd	a5,-24(s0)
    80004726:	fd843783          	ld	a5,-40(s0)
    8000472a:	00178713          	addi	a4,a5,1
    8000472e:	fce43c23          	sd	a4,-40(s0)
    80004732:	0007c783          	lbu	a5,0(a5)
    80004736:	2781                	sext.w	a5,a5
    80004738:	fd07879b          	addiw	a5,a5,-48
    8000473c:	2781                	sext.w	a5,a5
    8000473e:	873e                	mv	a4,a5
    80004740:	fe843783          	ld	a5,-24(s0)
    80004744:	97ba                	add	a5,a5,a4
    80004746:	fef43423          	sd	a5,-24(s0)
    8000474a:	fd843783          	ld	a5,-40(s0)
    8000474e:	0007c783          	lbu	a5,0(a5)
    80004752:	f3f1                	bnez	a5,80004716 <atol+0x80>
    80004754:	fe442783          	lw	a5,-28(s0)
    80004758:	2781                	sext.w	a5,a5
    8000475a:	c791                	beqz	a5,80004766 <atol+0xd0>
    8000475c:	fe843783          	ld	a5,-24(s0)
    80004760:	40f007b3          	neg	a5,a5
    80004764:	a019                	j	8000476a <atol+0xd4>
    80004766:	fe843783          	ld	a5,-24(s0)
    8000476a:	853e                	mv	a0,a5
    8000476c:	7422                	ld	s0,40(sp)
    8000476e:	6145                	addi	sp,sp,48
    80004770:	8082                	ret
