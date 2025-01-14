
/home/a.dolmeta/cva6/verif/sim/../../ad_tests/CW305_files/elf/trigger.elf:     file format elf64-littleriscv


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
    800000f8:	05c18193          	addi	gp,gp,92 # 80005150 <__global_pointer$>
    800000fc:	86f18213          	addi	tp,gp,-1937 # 800049bf <_end+0x3f>
    80000100:	fc027213          	andi	tp,tp,-64
    80000104:	f1402573          	csrr	a0,mhartid
    80000108:	4585                	li	a1,1
    8000010a:	00b57063          	bleu	a1,a0,8000010a <_start+0x10a>
    8000010e:	00150113          	addi	sp,a0,1
    80000112:	0146                	slli	sp,sp,0x11
    80000114:	9112                	add	sp,sp,tp
    80000116:	01151613          	slli	a2,a0,0x11
    8000011a:	9232                	add	tp,tp,a2
    8000011c:	1dd0306f          	j	80003af8 <_init>

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
    8000016a:	05d030ef          	jal	ra,800039c6 <handle_trap>
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
    80003224:	72068693          	addi	a3,a3,1824 # 80004940 <bin_to_hex_table>
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
    80003248:	6fc70713          	addi	a4,a4,1788 # 80004940 <bin_to_hex_table>
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
    80003394:	38850513          	addi	a0,a0,904 # 80004718 <atol+0xe2>
    80003398:	e23ff0ef          	jal	ra,800031ba <print_uart>
    8000339c:	fd043783          	ld	a5,-48(s0)
    800033a0:	2781                	sext.w	a5,a5
    800033a2:	853e                	mv	a0,a5
    800033a4:	ebfff0ef          	jal	ra,80003262 <print_uart_int>
    800033a8:	00001517          	auipc	a0,0x1
    800033ac:	39050513          	addi	a0,a0,912 # 80004738 <atol+0x102>
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
    800033e0:	37c50513          	addi	a0,a0,892 # 80004758 <atol+0x122>
    800033e4:	dd7ff0ef          	jal	ra,800031ba <print_uart>
    800033e8:	fe744783          	lbu	a5,-25(s0)
    800033ec:	853e                	mv	a0,a5
    800033ee:	f57ff0ef          	jal	ra,80003344 <print_uart_byte>
    800033f2:	00001517          	auipc	a0,0x1
    800033f6:	37650513          	addi	a0,a0,886 # 80004768 <atol+0x132>
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
    8000346a:	30a50513          	addi	a0,a0,778 # 80004770 <atol+0x13a>
    8000346e:	d4dff0ef          	jal	ra,800031ba <print_uart>
    80003472:	fe744783          	lbu	a5,-25(s0)
    80003476:	853e                	mv	a0,a5
    80003478:	ecdff0ef          	jal	ra,80003344 <print_uart_byte>
    8000347c:	00001517          	auipc	a0,0x1
    80003480:	2ec50513          	addi	a0,a0,748 # 80004768 <atol+0x132>
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
    800034ae:	1141                	addi	sp,sp,-16
    800034b0:	e406                	sd	ra,8(sp)
    800034b2:	e022                	sd	s0,0(sp)
    800034b4:	0800                	addi	s0,sp,16
    800034b6:	00001517          	auipc	a0,0x1
    800034ba:	2da50513          	addi	a0,a0,730 # 80004790 <atol+0x15a>
    800034be:	cfdff0ef          	jal	ra,800031ba <print_uart>
    800034c2:	4781                	li	a5,0
    800034c4:	853e                	mv	a0,a5
    800034c6:	60a2                	ld	ra,8(sp)
    800034c8:	6402                	ld	s0,0(sp)
    800034ca:	0141                	addi	sp,sp,16
    800034cc:	8082                	ret

00000000800034ce <verify>:
    800034ce:	715d                	addi	sp,sp,-80
    800034d0:	e4a2                	sd	s0,72(sp)
    800034d2:	0880                	addi	s0,sp,80
    800034d4:	87aa                	mv	a5,a0
    800034d6:	fcb43023          	sd	a1,-64(s0)
    800034da:	fac43c23          	sd	a2,-72(s0)
    800034de:	fcf42623          	sw	a5,-52(s0)
    800034e2:	fe042623          	sw	zero,-20(s0)
    800034e6:	a841                	j	80003576 <verify+0xa8>
    800034e8:	fec42783          	lw	a5,-20(s0)
    800034ec:	078a                	slli	a5,a5,0x2
    800034ee:	fc043703          	ld	a4,-64(s0)
    800034f2:	97ba                	add	a5,a5,a4
    800034f4:	439c                	lw	a5,0(a5)
    800034f6:	fef42423          	sw	a5,-24(s0)
    800034fa:	fec42783          	lw	a5,-20(s0)
    800034fe:	0785                	addi	a5,a5,1
    80003500:	078a                	slli	a5,a5,0x2
    80003502:	fc043703          	ld	a4,-64(s0)
    80003506:	97ba                	add	a5,a5,a4
    80003508:	439c                	lw	a5,0(a5)
    8000350a:	fef42223          	sw	a5,-28(s0)
    8000350e:	fec42783          	lw	a5,-20(s0)
    80003512:	078a                	slli	a5,a5,0x2
    80003514:	fb843703          	ld	a4,-72(s0)
    80003518:	97ba                	add	a5,a5,a4
    8000351a:	439c                	lw	a5,0(a5)
    8000351c:	fef42023          	sw	a5,-32(s0)
    80003520:	fec42783          	lw	a5,-20(s0)
    80003524:	0785                	addi	a5,a5,1
    80003526:	078a                	slli	a5,a5,0x2
    80003528:	fb843703          	ld	a4,-72(s0)
    8000352c:	97ba                	add	a5,a5,a4
    8000352e:	439c                	lw	a5,0(a5)
    80003530:	fcf42e23          	sw	a5,-36(s0)
    80003534:	fe842783          	lw	a5,-24(s0)
    80003538:	873e                	mv	a4,a5
    8000353a:	fe042783          	lw	a5,-32(s0)
    8000353e:	2701                	sext.w	a4,a4
    80003540:	2781                	sext.w	a5,a5
    80003542:	00f70763          	beq	a4,a5,80003550 <verify+0x82>
    80003546:	fec42783          	lw	a5,-20(s0)
    8000354a:	2785                	addiw	a5,a5,1
    8000354c:	2781                	sext.w	a5,a5
    8000354e:	a059                	j	800035d4 <verify+0x106>
    80003550:	fe442783          	lw	a5,-28(s0)
    80003554:	873e                	mv	a4,a5
    80003556:	fdc42783          	lw	a5,-36(s0)
    8000355a:	2701                	sext.w	a4,a4
    8000355c:	2781                	sext.w	a5,a5
    8000355e:	00f70763          	beq	a4,a5,8000356c <verify+0x9e>
    80003562:	fec42783          	lw	a5,-20(s0)
    80003566:	2789                	addiw	a5,a5,2
    80003568:	2781                	sext.w	a5,a5
    8000356a:	a0ad                	j	800035d4 <verify+0x106>
    8000356c:	fec42783          	lw	a5,-20(s0)
    80003570:	2789                	addiw	a5,a5,2
    80003572:	fef42623          	sw	a5,-20(s0)
    80003576:	fcc42783          	lw	a5,-52(s0)
    8000357a:	01f7d71b          	srliw	a4,a5,0x1f
    8000357e:	9fb9                	addw	a5,a5,a4
    80003580:	4017d79b          	sraiw	a5,a5,0x1
    80003584:	2781                	sext.w	a5,a5
    80003586:	0017979b          	slliw	a5,a5,0x1
    8000358a:	0007871b          	sext.w	a4,a5
    8000358e:	fec42783          	lw	a5,-20(s0)
    80003592:	2781                	sext.w	a5,a5
    80003594:	f4e7cae3          	blt	a5,a4,800034e8 <verify+0x1a>
    80003598:	fcc42783          	lw	a5,-52(s0)
    8000359c:	8b85                	andi	a5,a5,1
    8000359e:	2781                	sext.w	a5,a5
    800035a0:	cb8d                	beqz	a5,800035d2 <verify+0x104>
    800035a2:	fcc42783          	lw	a5,-52(s0)
    800035a6:	078a                	slli	a5,a5,0x2
    800035a8:	17f1                	addi	a5,a5,-4
    800035aa:	fc043703          	ld	a4,-64(s0)
    800035ae:	97ba                	add	a5,a5,a4
    800035b0:	439c                	lw	a5,0(a5)
    800035b2:	0007869b          	sext.w	a3,a5
    800035b6:	fcc42783          	lw	a5,-52(s0)
    800035ba:	078a                	slli	a5,a5,0x2
    800035bc:	17f1                	addi	a5,a5,-4
    800035be:	fb843703          	ld	a4,-72(s0)
    800035c2:	97ba                	add	a5,a5,a4
    800035c4:	439c                	lw	a5,0(a5)
    800035c6:	8736                	mv	a4,a3
    800035c8:	00f70563          	beq	a4,a5,800035d2 <verify+0x104>
    800035cc:	fcc42783          	lw	a5,-52(s0)
    800035d0:	a011                	j	800035d4 <verify+0x106>
    800035d2:	4781                	li	a5,0
    800035d4:	853e                	mv	a0,a5
    800035d6:	6426                	ld	s0,72(sp)
    800035d8:	6161                	addi	sp,sp,80
    800035da:	8082                	ret

00000000800035dc <verifyDouble>:
    800035dc:	711d                	addi	sp,sp,-96
    800035de:	eca2                	sd	s0,88(sp)
    800035e0:	1080                	addi	s0,sp,96
    800035e2:	87aa                	mv	a5,a0
    800035e4:	fab43823          	sd	a1,-80(s0)
    800035e8:	fac43423          	sd	a2,-88(s0)
    800035ec:	faf42e23          	sw	a5,-68(s0)
    800035f0:	fe042623          	sw	zero,-20(s0)
    800035f4:	a06d                	j	8000369e <verifyDouble+0xc2>
    800035f6:	fec42783          	lw	a5,-20(s0)
    800035fa:	078e                	slli	a5,a5,0x3
    800035fc:	fb043703          	ld	a4,-80(s0)
    80003600:	97ba                	add	a5,a5,a4
    80003602:	239c                	fld	fa5,0(a5)
    80003604:	fef43027          	fsd	fa5,-32(s0)
    80003608:	fec42783          	lw	a5,-20(s0)
    8000360c:	0785                	addi	a5,a5,1
    8000360e:	078e                	slli	a5,a5,0x3
    80003610:	fb043703          	ld	a4,-80(s0)
    80003614:	97ba                	add	a5,a5,a4
    80003616:	239c                	fld	fa5,0(a5)
    80003618:	fcf43c27          	fsd	fa5,-40(s0)
    8000361c:	fec42783          	lw	a5,-20(s0)
    80003620:	078e                	slli	a5,a5,0x3
    80003622:	fa843703          	ld	a4,-88(s0)
    80003626:	97ba                	add	a5,a5,a4
    80003628:	239c                	fld	fa5,0(a5)
    8000362a:	fcf43827          	fsd	fa5,-48(s0)
    8000362e:	fec42783          	lw	a5,-20(s0)
    80003632:	0785                	addi	a5,a5,1
    80003634:	078e                	slli	a5,a5,0x3
    80003636:	fa843703          	ld	a4,-88(s0)
    8000363a:	97ba                	add	a5,a5,a4
    8000363c:	239c                	fld	fa5,0(a5)
    8000363e:	fcf43427          	fsd	fa5,-56(s0)
    80003642:	fe043707          	fld	fa4,-32(s0)
    80003646:	fd043787          	fld	fa5,-48(s0)
    8000364a:	a2f727d3          	feq.d	a5,fa4,fa5
    8000364e:	00f037b3          	snez	a5,a5
    80003652:	0ff7f793          	andi	a5,a5,255
    80003656:	fcf42223          	sw	a5,-60(s0)
    8000365a:	fd843707          	fld	fa4,-40(s0)
    8000365e:	fc843787          	fld	fa5,-56(s0)
    80003662:	a2f727d3          	feq.d	a5,fa4,fa5
    80003666:	00f037b3          	snez	a5,a5
    8000366a:	0ff7f793          	andi	a5,a5,255
    8000366e:	fcf42023          	sw	a5,-64(s0)
    80003672:	fc442783          	lw	a5,-60(s0)
    80003676:	873e                	mv	a4,a5
    80003678:	fc042783          	lw	a5,-64(s0)
    8000367c:	8ff9                	and	a5,a5,a4
    8000367e:	2781                	sext.w	a5,a5
    80003680:	eb91                	bnez	a5,80003694 <verifyDouble+0xb8>
    80003682:	fec42783          	lw	a5,-20(s0)
    80003686:	2785                	addiw	a5,a5,1
    80003688:	2781                	sext.w	a5,a5
    8000368a:	fc442703          	lw	a4,-60(s0)
    8000368e:	9fb9                	addw	a5,a5,a4
    80003690:	2781                	sext.w	a5,a5
    80003692:	a09d                	j	800036f8 <verifyDouble+0x11c>
    80003694:	fec42783          	lw	a5,-20(s0)
    80003698:	2789                	addiw	a5,a5,2
    8000369a:	fef42623          	sw	a5,-20(s0)
    8000369e:	fbc42783          	lw	a5,-68(s0)
    800036a2:	01f7d71b          	srliw	a4,a5,0x1f
    800036a6:	9fb9                	addw	a5,a5,a4
    800036a8:	4017d79b          	sraiw	a5,a5,0x1
    800036ac:	2781                	sext.w	a5,a5
    800036ae:	0017979b          	slliw	a5,a5,0x1
    800036b2:	0007871b          	sext.w	a4,a5
    800036b6:	fec42783          	lw	a5,-20(s0)
    800036ba:	2781                	sext.w	a5,a5
    800036bc:	f2e7cde3          	blt	a5,a4,800035f6 <verifyDouble+0x1a>
    800036c0:	fbc42783          	lw	a5,-68(s0)
    800036c4:	8b85                	andi	a5,a5,1
    800036c6:	2781                	sext.w	a5,a5
    800036c8:	c79d                	beqz	a5,800036f6 <verifyDouble+0x11a>
    800036ca:	fbc42783          	lw	a5,-68(s0)
    800036ce:	078e                	slli	a5,a5,0x3
    800036d0:	17e1                	addi	a5,a5,-8
    800036d2:	fb043703          	ld	a4,-80(s0)
    800036d6:	97ba                	add	a5,a5,a4
    800036d8:	2398                	fld	fa4,0(a5)
    800036da:	fbc42783          	lw	a5,-68(s0)
    800036de:	078e                	slli	a5,a5,0x3
    800036e0:	17e1                	addi	a5,a5,-8
    800036e2:	fa843703          	ld	a4,-88(s0)
    800036e6:	97ba                	add	a5,a5,a4
    800036e8:	239c                	fld	fa5,0(a5)
    800036ea:	a2f727d3          	feq.d	a5,fa4,fa5
    800036ee:	e781                	bnez	a5,800036f6 <verifyDouble+0x11a>
    800036f0:	fbc42783          	lw	a5,-68(s0)
    800036f4:	a011                	j	800036f8 <verifyDouble+0x11c>
    800036f6:	4781                	li	a5,0
    800036f8:	853e                	mv	a0,a5
    800036fa:	6466                	ld	s0,88(sp)
    800036fc:	6125                	addi	sp,sp,96
    800036fe:	8082                	ret

0000000080003700 <barrier>:
    80003700:	1101                	addi	sp,sp,-32
    80003702:	ec22                	sd	s0,24(sp)
    80003704:	1000                	addi	s0,sp,32
    80003706:	87aa                	mv	a5,a0
    80003708:	fef42623          	sw	a5,-20(s0)
    8000370c:	0ff0000f          	fence
    80003710:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    80003714:	0017b793          	seqz	a5,a5
    80003718:	0ff7f793          	andi	a5,a5,255
    8000371c:	0007871b          	sext.w	a4,a5
    80003720:	00e22023          	sw	a4,0(tp) # 0 <threadsense.4>
    80003724:	00001797          	auipc	a5,0x1
    80003728:	24c78793          	addi	a5,a5,588 # 80004970 <count.1>
    8000372c:	4705                	li	a4,1
    8000372e:	0f50000f          	fence	iorw,ow
    80003732:	04e7a6af          	amoadd.w.aq	a3,a4,(a5)
    80003736:	0006879b          	sext.w	a5,a3
    8000373a:	0007871b          	sext.w	a4,a5
    8000373e:	fec42783          	lw	a5,-20(s0)
    80003742:	37fd                	addiw	a5,a5,-1
    80003744:	2781                	sext.w	a5,a5
    80003746:	02f71063          	bne	a4,a5,80003766 <barrier+0x66>
    8000374a:	00001797          	auipc	a5,0x1
    8000374e:	22678793          	addi	a5,a5,550 # 80004970 <count.1>
    80003752:	0007a023          	sw	zero,0(a5)
    80003756:	00022703          	lw	a4,0(tp) # 0 <threadsense.4>
    8000375a:	00001797          	auipc	a5,0x1
    8000375e:	21a78793          	addi	a5,a5,538 # 80004974 <sense.0>
    80003762:	c398                	sw	a4,0(a5)
    80003764:	a829                	j	8000377e <barrier+0x7e>
    80003766:	0001                	nop
    80003768:	00001797          	auipc	a5,0x1
    8000376c:	20c78793          	addi	a5,a5,524 # 80004974 <sense.0>
    80003770:	439c                	lw	a5,0(a5)
    80003772:	0007871b          	sext.w	a4,a5
    80003776:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    8000377a:	fef717e3          	bne	a4,a5,80003768 <barrier+0x68>
    8000377e:	0ff0000f          	fence
    80003782:	0001                	nop
    80003784:	6462                	ld	s0,24(sp)
    80003786:	6105                	addi	sp,sp,32
    80003788:	8082                	ret

000000008000378a <lfsr>:
    8000378a:	7179                	addi	sp,sp,-48
    8000378c:	f422                	sd	s0,40(sp)
    8000378e:	1800                	addi	s0,sp,48
    80003790:	fca43c23          	sd	a0,-40(s0)
    80003794:	fd843783          	ld	a5,-40(s0)
    80003798:	0017d713          	srli	a4,a5,0x1
    8000379c:	fd843783          	ld	a5,-40(s0)
    800037a0:	8fb9                	xor	a5,a5,a4
    800037a2:	8b85                	andi	a5,a5,1
    800037a4:	fef43423          	sd	a5,-24(s0)
    800037a8:	fd843783          	ld	a5,-40(s0)
    800037ac:	0017d713          	srli	a4,a5,0x1
    800037b0:	fe843783          	ld	a5,-24(s0)
    800037b4:	17fa                	slli	a5,a5,0x3e
    800037b6:	8fd9                	or	a5,a5,a4
    800037b8:	853e                	mv	a0,a5
    800037ba:	7422                	ld	s0,40(sp)
    800037bc:	6145                	addi	sp,sp,48
    800037be:	8082                	ret

00000000800037c0 <insn_len>:
    800037c0:	1101                	addi	sp,sp,-32
    800037c2:	ec22                	sd	s0,24(sp)
    800037c4:	1000                	addi	s0,sp,32
    800037c6:	fea43423          	sd	a0,-24(s0)
    800037ca:	fe843783          	ld	a5,-24(s0)
    800037ce:	0007d783          	lhu	a5,0(a5)
    800037d2:	2781                	sext.w	a5,a5
    800037d4:	8b8d                	andi	a5,a5,3
    800037d6:	2781                	sext.w	a5,a5
    800037d8:	c399                	beqz	a5,800037de <insn_len+0x1e>
    800037da:	4791                	li	a5,4
    800037dc:	a011                	j	800037e0 <insn_len+0x20>
    800037de:	4789                	li	a5,2
    800037e0:	853e                	mv	a0,a5
    800037e2:	6462                	ld	s0,24(sp)
    800037e4:	6105                	addi	sp,sp,32
    800037e6:	8082                	ret

00000000800037e8 <syscall>:
    800037e8:	7171                	addi	sp,sp,-176
    800037ea:	f522                	sd	s0,168(sp)
    800037ec:	1900                	addi	s0,sp,176
    800037ee:	f6a43c23          	sd	a0,-136(s0)
    800037f2:	f6b43823          	sd	a1,-144(s0)
    800037f6:	f6c43423          	sd	a2,-152(s0)
    800037fa:	f6d43023          	sd	a3,-160(s0)
    800037fe:	ff040793          	addi	a5,s0,-16
    80003802:	f4f43c23          	sd	a5,-168(s0)
    80003806:	f5843783          	ld	a5,-168(s0)
    8000380a:	f9078793          	addi	a5,a5,-112
    8000380e:	03f78793          	addi	a5,a5,63
    80003812:	8399                	srli	a5,a5,0x6
    80003814:	079a                	slli	a5,a5,0x6
    80003816:	f7843703          	ld	a4,-136(s0)
    8000381a:	e398                	sd	a4,0(a5)
    8000381c:	f7043703          	ld	a4,-144(s0)
    80003820:	e798                	sd	a4,8(a5)
    80003822:	f6843703          	ld	a4,-152(s0)
    80003826:	eb98                	sd	a4,16(a5)
    80003828:	f6043703          	ld	a4,-160(s0)
    8000382c:	ef98                	sd	a4,24(a5)
    8000382e:	0ff0000f          	fence
    80003832:	86be                	mv	a3,a5
    80003834:	577d                	li	a4,-1
    80003836:	8341                	srli	a4,a4,0x10
    80003838:	8ef9                	and	a3,a3,a4
    8000383a:	ffffd717          	auipc	a4,0xffffd
    8000383e:	7c670713          	addi	a4,a4,1990 # 80001000 <tohost>
    80003842:	e314                	sd	a3,0(a4)
    80003844:	0001                	nop
    80003846:	ffffd717          	auipc	a4,0xffffd
    8000384a:	7fa70713          	addi	a4,a4,2042 # 80001040 <fromhost>
    8000384e:	6318                	ld	a4,0(a4)
    80003850:	db7d                	beqz	a4,80003846 <syscall+0x5e>
    80003852:	ffffd717          	auipc	a4,0xffffd
    80003856:	7ee70713          	addi	a4,a4,2030 # 80001040 <fromhost>
    8000385a:	00073023          	sd	zero,0(a4)
    8000385e:	0ff0000f          	fence
    80003862:	639c                	ld	a5,0(a5)
    80003864:	853e                	mv	a0,a5
    80003866:	742a                	ld	s0,168(sp)
    80003868:	614d                	addi	sp,sp,176
    8000386a:	8082                	ret

000000008000386c <setStats>:
    8000386c:	715d                	addi	sp,sp,-80
    8000386e:	e4a2                	sd	s0,72(sp)
    80003870:	0880                	addi	s0,sp,80
    80003872:	87aa                	mv	a5,a0
    80003874:	faf42e23          	sw	a5,-68(s0)
    80003878:	fc042e23          	sw	zero,-36(s0)
    8000387c:	fdc42783          	lw	a5,-36(s0)
    80003880:	0007871b          	sext.w	a4,a5
    80003884:	4785                	li	a5,1
    80003886:	fee7cbe3          	blt	a5,a4,8000387c <setStats+0x10>
    8000388a:	b00027f3          	csrr	a5,mcycle
    8000388e:	fcf43823          	sd	a5,-48(s0)
    80003892:	fd043783          	ld	a5,-48(s0)
    80003896:	fef43423          	sd	a5,-24(s0)
    8000389a:	fbc42783          	lw	a5,-68(s0)
    8000389e:	2781                	sext.w	a5,a5
    800038a0:	ef8d                	bnez	a5,800038da <setStats+0x6e>
    800038a2:	00001717          	auipc	a4,0x1
    800038a6:	0ae70713          	addi	a4,a4,174 # 80004950 <counters>
    800038aa:	fdc42783          	lw	a5,-36(s0)
    800038ae:	078e                	slli	a5,a5,0x3
    800038b0:	97ba                	add	a5,a5,a4
    800038b2:	639c                	ld	a5,0(a5)
    800038b4:	fe843703          	ld	a4,-24(s0)
    800038b8:	40f707b3          	sub	a5,a4,a5
    800038bc:	fef43423          	sd	a5,-24(s0)
    800038c0:	00001717          	auipc	a4,0x1
    800038c4:	0a070713          	addi	a4,a4,160 # 80004960 <counter_names>
    800038c8:	fdc42783          	lw	a5,-36(s0)
    800038cc:	078e                	slli	a5,a5,0x3
    800038ce:	97ba                	add	a5,a5,a4
    800038d0:	00001717          	auipc	a4,0x1
    800038d4:	ed070713          	addi	a4,a4,-304 # 800047a0 <atol+0x16a>
    800038d8:	e398                	sd	a4,0(a5)
    800038da:	fdc42783          	lw	a5,-36(s0)
    800038de:	0017871b          	addiw	a4,a5,1
    800038e2:	fce42e23          	sw	a4,-36(s0)
    800038e6:	00001717          	auipc	a4,0x1
    800038ea:	06a70713          	addi	a4,a4,106 # 80004950 <counters>
    800038ee:	078e                	slli	a5,a5,0x3
    800038f0:	97ba                	add	a5,a5,a4
    800038f2:	fe843703          	ld	a4,-24(s0)
    800038f6:	e398                	sd	a4,0(a5)
    800038f8:	fdc42783          	lw	a5,-36(s0)
    800038fc:	0007871b          	sext.w	a4,a5
    80003900:	4785                	li	a5,1
    80003902:	fee7cbe3          	blt	a5,a4,800038f8 <setStats+0x8c>
    80003906:	b02027f3          	csrr	a5,minstret
    8000390a:	fcf43423          	sd	a5,-56(s0)
    8000390e:	fc843783          	ld	a5,-56(s0)
    80003912:	fef43023          	sd	a5,-32(s0)
    80003916:	fbc42783          	lw	a5,-68(s0)
    8000391a:	2781                	sext.w	a5,a5
    8000391c:	ef8d                	bnez	a5,80003956 <setStats+0xea>
    8000391e:	00001717          	auipc	a4,0x1
    80003922:	03270713          	addi	a4,a4,50 # 80004950 <counters>
    80003926:	fdc42783          	lw	a5,-36(s0)
    8000392a:	078e                	slli	a5,a5,0x3
    8000392c:	97ba                	add	a5,a5,a4
    8000392e:	639c                	ld	a5,0(a5)
    80003930:	fe043703          	ld	a4,-32(s0)
    80003934:	40f707b3          	sub	a5,a4,a5
    80003938:	fef43023          	sd	a5,-32(s0)
    8000393c:	00001717          	auipc	a4,0x1
    80003940:	02470713          	addi	a4,a4,36 # 80004960 <counter_names>
    80003944:	fdc42783          	lw	a5,-36(s0)
    80003948:	078e                	slli	a5,a5,0x3
    8000394a:	97ba                	add	a5,a5,a4
    8000394c:	00001717          	auipc	a4,0x1
    80003950:	e5c70713          	addi	a4,a4,-420 # 800047a8 <atol+0x172>
    80003954:	e398                	sd	a4,0(a5)
    80003956:	fdc42783          	lw	a5,-36(s0)
    8000395a:	0017871b          	addiw	a4,a5,1
    8000395e:	fce42e23          	sw	a4,-36(s0)
    80003962:	00001717          	auipc	a4,0x1
    80003966:	fee70713          	addi	a4,a4,-18 # 80004950 <counters>
    8000396a:	078e                	slli	a5,a5,0x3
    8000396c:	97ba                	add	a5,a5,a4
    8000396e:	fe043703          	ld	a4,-32(s0)
    80003972:	e398                	sd	a4,0(a5)
    80003974:	0001                	nop
    80003976:	6426                	ld	s0,72(sp)
    80003978:	6161                	addi	sp,sp,80
    8000397a:	8082                	ret

000000008000397c <getStats>:
    8000397c:	1101                	addi	sp,sp,-32
    8000397e:	ec22                	sd	s0,24(sp)
    80003980:	1000                	addi	s0,sp,32
    80003982:	87aa                	mv	a5,a0
    80003984:	fef42623          	sw	a5,-20(s0)
    80003988:	00001717          	auipc	a4,0x1
    8000398c:	fc870713          	addi	a4,a4,-56 # 80004950 <counters>
    80003990:	fec42783          	lw	a5,-20(s0)
    80003994:	078e                	slli	a5,a5,0x3
    80003996:	97ba                	add	a5,a5,a4
    80003998:	639c                	ld	a5,0(a5)
    8000399a:	853e                	mv	a0,a5
    8000399c:	6462                	ld	s0,24(sp)
    8000399e:	6105                	addi	sp,sp,32
    800039a0:	8082                	ret

00000000800039a2 <tohost_exit>:
    800039a2:	1101                	addi	sp,sp,-32
    800039a4:	ec22                	sd	s0,24(sp)
    800039a6:	1000                	addi	s0,sp,32
    800039a8:	fea43423          	sd	a0,-24(s0)
    800039ac:	fe843783          	ld	a5,-24(s0)
    800039b0:	07c6                	slli	a5,a5,0x11
    800039b2:	83c1                	srli	a5,a5,0x10
    800039b4:	0017e713          	ori	a4,a5,1
    800039b8:	ffffd797          	auipc	a5,0xffffd
    800039bc:	64878793          	addi	a5,a5,1608 # 80001000 <tohost>
    800039c0:	e398                	sd	a4,0(a5)
    800039c2:	0001                	nop
    800039c4:	a001                	j	800039c4 <tohost_exit+0x22>

00000000800039c6 <handle_trap>:
    800039c6:	7179                	addi	sp,sp,-48
    800039c8:	f406                	sd	ra,40(sp)
    800039ca:	f022                	sd	s0,32(sp)
    800039cc:	1800                	addi	s0,sp,48
    800039ce:	fea43423          	sd	a0,-24(s0)
    800039d2:	feb43023          	sd	a1,-32(s0)
    800039d6:	fcc43c23          	sd	a2,-40(s0)
    800039da:	53900513          	li	a0,1337
    800039de:	fc5ff0ef          	jal	ra,800039a2 <tohost_exit>

00000000800039e2 <exit>:
    800039e2:	1101                	addi	sp,sp,-32
    800039e4:	ec06                	sd	ra,24(sp)
    800039e6:	e822                	sd	s0,16(sp)
    800039e8:	1000                	addi	s0,sp,32
    800039ea:	87aa                	mv	a5,a0
    800039ec:	fef42623          	sw	a5,-20(s0)
    800039f0:	fec42783          	lw	a5,-20(s0)
    800039f4:	853e                	mv	a0,a5
    800039f6:	fadff0ef          	jal	ra,800039a2 <tohost_exit>

00000000800039fa <abort>:
    800039fa:	1141                	addi	sp,sp,-16
    800039fc:	e406                	sd	ra,8(sp)
    800039fe:	e022                	sd	s0,0(sp)
    80003a00:	0800                	addi	s0,sp,16
    80003a02:	08600513          	li	a0,134
    80003a06:	fddff0ef          	jal	ra,800039e2 <exit>

0000000080003a0a <printstr>:
    80003a0a:	7179                	addi	sp,sp,-48
    80003a0c:	f406                	sd	ra,40(sp)
    80003a0e:	f022                	sd	s0,32(sp)
    80003a10:	ec26                	sd	s1,24(sp)
    80003a12:	1800                	addi	s0,sp,48
    80003a14:	fca43c23          	sd	a0,-40(s0)
    80003a18:	fd843483          	ld	s1,-40(s0)
    80003a1c:	fd843503          	ld	a0,-40(s0)
    80003a20:	2d1000ef          	jal	ra,800044f0 <strlen>
    80003a24:	87aa                	mv	a5,a0
    80003a26:	86be                	mv	a3,a5
    80003a28:	8626                	mv	a2,s1
    80003a2a:	4585                	li	a1,1
    80003a2c:	04000513          	li	a0,64
    80003a30:	db9ff0ef          	jal	ra,800037e8 <syscall>
    80003a34:	0001                	nop
    80003a36:	70a2                	ld	ra,40(sp)
    80003a38:	7402                	ld	s0,32(sp)
    80003a3a:	64e2                	ld	s1,24(sp)
    80003a3c:	6145                	addi	sp,sp,48
    80003a3e:	8082                	ret

0000000080003a40 <thread_entry>:
    80003a40:	1101                	addi	sp,sp,-32
    80003a42:	ec22                	sd	s0,24(sp)
    80003a44:	1000                	addi	s0,sp,32
    80003a46:	87aa                	mv	a5,a0
    80003a48:	872e                	mv	a4,a1
    80003a4a:	fef42623          	sw	a5,-20(s0)
    80003a4e:	87ba                	mv	a5,a4
    80003a50:	fef42423          	sw	a5,-24(s0)
    80003a54:	0001                	nop
    80003a56:	fec42783          	lw	a5,-20(s0)
    80003a5a:	2781                	sext.w	a5,a5
    80003a5c:	ffed                	bnez	a5,80003a56 <thread_entry+0x16>
    80003a5e:	0001                	nop
    80003a60:	0001                	nop
    80003a62:	6462                	ld	s0,24(sp)
    80003a64:	6105                	addi	sp,sp,32
    80003a66:	8082                	ret
    80003a68:	1101                	addi	sp,sp,-32
    80003a6a:	ec06                	sd	ra,24(sp)
    80003a6c:	e822                	sd	s0,16(sp)
    80003a6e:	1000                	addi	s0,sp,32
    80003a70:	87aa                	mv	a5,a0
    80003a72:	feb43023          	sd	a1,-32(s0)
    80003a76:	fef42623          	sw	a5,-20(s0)
    80003a7a:	00001517          	auipc	a0,0x1
    80003a7e:	d3e50513          	addi	a0,a0,-706 # 800047b8 <atol+0x182>
    80003a82:	f89ff0ef          	jal	ra,80003a0a <printstr>
    80003a86:	57fd                	li	a5,-1
    80003a88:	853e                	mv	a0,a5
    80003a8a:	60e2                	ld	ra,24(sp)
    80003a8c:	6442                	ld	s0,16(sp)
    80003a8e:	6105                	addi	sp,sp,32
    80003a90:	8082                	ret

0000000080003a92 <init_tls>:
    80003a92:	1101                	addi	sp,sp,-32
    80003a94:	ec06                	sd	ra,24(sp)
    80003a96:	e822                	sd	s0,16(sp)
    80003a98:	1000                	addi	s0,sp,32
    80003a9a:	00001717          	auipc	a4,0x1
    80003a9e:	ede70713          	addi	a4,a4,-290 # 80004978 <_tdata_begin>
    80003aa2:	00001797          	auipc	a5,0x1
    80003aa6:	ed678793          	addi	a5,a5,-298 # 80004978 <_tdata_begin>
    80003aaa:	40f707b3          	sub	a5,a4,a5
    80003aae:	fef43423          	sd	a5,-24(s0)
    80003ab2:	8792                	mv	a5,tp
    80003ab4:	fe843603          	ld	a2,-24(s0)
    80003ab8:	00001597          	auipc	a1,0x1
    80003abc:	ec058593          	addi	a1,a1,-320 # 80004978 <_tdata_begin>
    80003ac0:	853e                	mv	a0,a5
    80003ac2:	0a9000ef          	jal	ra,8000436a <memcpy>
    80003ac6:	8b418713          	addi	a4,gp,-1868 # 80004a04 <_tbss_end>
    80003aca:	00001797          	auipc	a5,0x1
    80003ace:	eae78793          	addi	a5,a5,-338 # 80004978 <_tdata_begin>
    80003ad2:	40f707b3          	sub	a5,a4,a5
    80003ad6:	fef43023          	sd	a5,-32(s0)
    80003ada:	8712                	mv	a4,tp
    80003adc:	fe843783          	ld	a5,-24(s0)
    80003ae0:	97ba                	add	a5,a5,a4
    80003ae2:	fe043603          	ld	a2,-32(s0)
    80003ae6:	4581                	li	a1,0
    80003ae8:	853e                	mv	a0,a5
    80003aea:	139000ef          	jal	ra,80004422 <memset>
    80003aee:	0001                	nop
    80003af0:	60e2                	ld	ra,24(sp)
    80003af2:	6442                	ld	s0,16(sp)
    80003af4:	6105                	addi	sp,sp,32
    80003af6:	8082                	ret

0000000080003af8 <_init>:
    80003af8:	7171                	addi	sp,sp,-176
    80003afa:	f506                	sd	ra,168(sp)
    80003afc:	f122                	sd	s0,160(sp)
    80003afe:	ed26                	sd	s1,152(sp)
    80003b00:	1900                	addi	s0,sp,176
    80003b02:	87aa                	mv	a5,a0
    80003b04:	872e                	mv	a4,a1
    80003b06:	f4f42e23          	sw	a5,-164(s0)
    80003b0a:	87ba                	mv	a5,a4
    80003b0c:	f4f42c23          	sw	a5,-168(s0)
    80003b10:	fe040793          	addi	a5,s0,-32
    80003b14:	f4f43823          	sd	a5,-176(s0)
    80003b18:	f5043783          	ld	a5,-176(s0)
    80003b1c:	f8078793          	addi	a5,a5,-128
    80003b20:	03f78793          	addi	a5,a5,63
    80003b24:	8399                	srli	a5,a5,0x6
    80003b26:	00679493          	slli	s1,a5,0x6
    80003b2a:	f69ff0ef          	jal	ra,80003a92 <init_tls>
    80003b2e:	f5842703          	lw	a4,-168(s0)
    80003b32:	f5c42783          	lw	a5,-164(s0)
    80003b36:	85ba                	mv	a1,a4
    80003b38:	853e                	mv	a0,a5
    80003b3a:	f07ff0ef          	jal	ra,80003a40 <thread_entry>
    80003b3e:	4581                	li	a1,0
    80003b40:	4501                	li	a0,0
    80003b42:	96dff0ef          	jal	ra,800034ae <main>
    80003b46:	87aa                	mv	a5,a0
    80003b48:	fcf42823          	sw	a5,-48(s0)
    80003b4c:	fc943c23          	sd	s1,-40(s0)
    80003b50:	fc042a23          	sw	zero,-44(s0)
    80003b54:	a095                	j	80003bb8 <_init+0xc0>
    80003b56:	00001717          	auipc	a4,0x1
    80003b5a:	dfa70713          	addi	a4,a4,-518 # 80004950 <counters>
    80003b5e:	fd442783          	lw	a5,-44(s0)
    80003b62:	078e                	slli	a5,a5,0x3
    80003b64:	97ba                	add	a5,a5,a4
    80003b66:	639c                	ld	a5,0(a5)
    80003b68:	c3b9                	beqz	a5,80003bae <_init+0xb6>
    80003b6a:	00001717          	auipc	a4,0x1
    80003b6e:	df670713          	addi	a4,a4,-522 # 80004960 <counter_names>
    80003b72:	fd442783          	lw	a5,-44(s0)
    80003b76:	078e                	slli	a5,a5,0x3
    80003b78:	97ba                	add	a5,a5,a4
    80003b7a:	6390                	ld	a2,0(a5)
    80003b7c:	00001717          	auipc	a4,0x1
    80003b80:	dd470713          	addi	a4,a4,-556 # 80004950 <counters>
    80003b84:	fd442783          	lw	a5,-44(s0)
    80003b88:	078e                	slli	a5,a5,0x3
    80003b8a:	97ba                	add	a5,a5,a4
    80003b8c:	639c                	ld	a5,0(a5)
    80003b8e:	86be                	mv	a3,a5
    80003b90:	00001597          	auipc	a1,0x1
    80003b94:	c4058593          	addi	a1,a1,-960 # 800047d0 <atol+0x19a>
    80003b98:	fd843503          	ld	a0,-40(s0)
    80003b9c:	756000ef          	jal	ra,800042f2 <sprintf>
    80003ba0:	87aa                	mv	a5,a0
    80003ba2:	873e                	mv	a4,a5
    80003ba4:	fd843783          	ld	a5,-40(s0)
    80003ba8:	97ba                	add	a5,a5,a4
    80003baa:	fcf43c23          	sd	a5,-40(s0)
    80003bae:	fd442783          	lw	a5,-44(s0)
    80003bb2:	2785                	addiw	a5,a5,1
    80003bb4:	fcf42a23          	sw	a5,-44(s0)
    80003bb8:	fd442783          	lw	a5,-44(s0)
    80003bbc:	0007871b          	sext.w	a4,a5
    80003bc0:	4785                	li	a5,1
    80003bc2:	f8e7dae3          	ble	a4,a5,80003b56 <_init+0x5e>
    80003bc6:	fd843783          	ld	a5,-40(s0)
    80003bca:	00f48563          	beq	s1,a5,80003bd4 <_init+0xdc>
    80003bce:	8526                	mv	a0,s1
    80003bd0:	e3bff0ef          	jal	ra,80003a0a <printstr>
    80003bd4:	fd042783          	lw	a5,-48(s0)
    80003bd8:	853e                	mv	a0,a5
    80003bda:	e09ff0ef          	jal	ra,800039e2 <exit>

0000000080003bde <puts>:
    80003bde:	7179                	addi	sp,sp,-48
    80003be0:	f406                	sd	ra,40(sp)
    80003be2:	f022                	sd	s0,32(sp)
    80003be4:	1800                	addi	s0,sp,48
    80003be6:	fca43c23          	sd	a0,-40(s0)
    80003bea:	fd843783          	ld	a5,-40(s0)
    80003bee:	fef43423          	sd	a5,-24(s0)
    80003bf2:	a829                	j	80003c0c <puts+0x2e>
    80003bf4:	fe843783          	ld	a5,-24(s0)
    80003bf8:	00178713          	addi	a4,a5,1
    80003bfc:	fee43423          	sd	a4,-24(s0)
    80003c00:	0007c783          	lbu	a5,0(a5)
    80003c04:	2781                	sext.w	a5,a5
    80003c06:	853e                	mv	a0,a5
    80003c08:	020000ef          	jal	ra,80003c28 <putchar>
    80003c0c:	fe843783          	ld	a5,-24(s0)
    80003c10:	0007c783          	lbu	a5,0(a5)
    80003c14:	f3e5                	bnez	a5,80003bf4 <puts+0x16>
    80003c16:	4529                	li	a0,10
    80003c18:	010000ef          	jal	ra,80003c28 <putchar>
    80003c1c:	4781                	li	a5,0
    80003c1e:	853e                	mv	a0,a5
    80003c20:	70a2                	ld	ra,40(sp)
    80003c22:	7402                	ld	s0,32(sp)
    80003c24:	6145                	addi	sp,sp,48
    80003c26:	8082                	ret

0000000080003c28 <putchar>:
    80003c28:	1101                	addi	sp,sp,-32
    80003c2a:	ec06                	sd	ra,24(sp)
    80003c2c:	e822                	sd	s0,16(sp)
    80003c2e:	1000                	addi	s0,sp,32
    80003c30:	87aa                	mv	a5,a0
    80003c32:	fef42623          	sw	a5,-20(s0)
    80003c36:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003c3a:	0017871b          	addiw	a4,a5,1
    80003c3e:	0007069b          	sext.w	a3,a4
    80003c42:	08d22023          	sw	a3,128(tp) # 80 <buflen.2>
    80003c46:	fec42703          	lw	a4,-20(s0)
    80003c4a:	0ff77713          	andi	a4,a4,255
    80003c4e:	04020693          	addi	a3,tp,64 # 40 <buf.3>
    80003c52:	97b6                	add	a5,a5,a3
    80003c54:	00e78023          	sb	a4,0(a5)
    80003c58:	fec42783          	lw	a5,-20(s0)
    80003c5c:	0007871b          	sext.w	a4,a5
    80003c60:	47a9                	li	a5,10
    80003c62:	00f70963          	beq	a4,a5,80003c74 <putchar+0x4c>
    80003c66:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003c6a:	873e                	mv	a4,a5
    80003c6c:	04000793          	li	a5,64
    80003c70:	00f71f63          	bne	a4,a5,80003c8e <putchar+0x66>
    80003c74:	04020713          	addi	a4,tp,64 # 40 <buf.3>
    80003c78:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003c7c:	86be                	mv	a3,a5
    80003c7e:	863a                	mv	a2,a4
    80003c80:	4585                	li	a1,1
    80003c82:	04000513          	li	a0,64
    80003c86:	b63ff0ef          	jal	ra,800037e8 <syscall>
    80003c8a:	08022023          	sw	zero,128(tp) # 80 <buflen.2>
    80003c8e:	4781                	li	a5,0
    80003c90:	853e                	mv	a0,a5
    80003c92:	60e2                	ld	ra,24(sp)
    80003c94:	6442                	ld	s0,16(sp)
    80003c96:	6105                	addi	sp,sp,32
    80003c98:	8082                	ret

0000000080003c9a <printhex>:
    80003c9a:	7139                	addi	sp,sp,-64
    80003c9c:	fc06                	sd	ra,56(sp)
    80003c9e:	f822                	sd	s0,48(sp)
    80003ca0:	0080                	addi	s0,sp,64
    80003ca2:	fca43423          	sd	a0,-56(s0)
    80003ca6:	fe042623          	sw	zero,-20(s0)
    80003caa:	a899                	j	80003d00 <printhex+0x66>
    80003cac:	fc843783          	ld	a5,-56(s0)
    80003cb0:	0ff7f793          	andi	a5,a5,255
    80003cb4:	8bbd                	andi	a5,a5,15
    80003cb6:	0ff7f713          	andi	a4,a5,255
    80003cba:	fc843783          	ld	a5,-56(s0)
    80003cbe:	00f7f693          	andi	a3,a5,15
    80003cc2:	47a5                	li	a5,9
    80003cc4:	00d7e563          	bltu	a5,a3,80003cce <printhex+0x34>
    80003cc8:	03000793          	li	a5,48
    80003ccc:	a019                	j	80003cd2 <printhex+0x38>
    80003cce:	05700793          	li	a5,87
    80003cd2:	46bd                	li	a3,15
    80003cd4:	fec42603          	lw	a2,-20(s0)
    80003cd8:	9e91                	subw	a3,a3,a2
    80003cda:	2681                	sext.w	a3,a3
    80003cdc:	9fb9                	addw	a5,a5,a4
    80003cde:	0ff7f713          	andi	a4,a5,255
    80003ce2:	ff068793          	addi	a5,a3,-16
    80003ce6:	97a2                	add	a5,a5,s0
    80003ce8:	fee78423          	sb	a4,-24(a5)
    80003cec:	fc843783          	ld	a5,-56(s0)
    80003cf0:	8391                	srli	a5,a5,0x4
    80003cf2:	fcf43423          	sd	a5,-56(s0)
    80003cf6:	fec42783          	lw	a5,-20(s0)
    80003cfa:	2785                	addiw	a5,a5,1
    80003cfc:	fef42623          	sw	a5,-20(s0)
    80003d00:	fec42783          	lw	a5,-20(s0)
    80003d04:	0007871b          	sext.w	a4,a5
    80003d08:	47bd                	li	a5,15
    80003d0a:	fae7d1e3          	ble	a4,a5,80003cac <printhex+0x12>
    80003d0e:	fe040423          	sb	zero,-24(s0)
    80003d12:	fd840793          	addi	a5,s0,-40
    80003d16:	853e                	mv	a0,a5
    80003d18:	cf3ff0ef          	jal	ra,80003a0a <printstr>
    80003d1c:	0001                	nop
    80003d1e:	70e2                	ld	ra,56(sp)
    80003d20:	7442                	ld	s0,48(sp)
    80003d22:	6121                	addi	sp,sp,64
    80003d24:	8082                	ret

0000000080003d26 <printnum>:
    80003d26:	714d                	addi	sp,sp,-336
    80003d28:	e686                	sd	ra,328(sp)
    80003d2a:	e2a2                	sd	s0,320(sp)
    80003d2c:	0a80                	addi	s0,sp,336
    80003d2e:	eca43c23          	sd	a0,-296(s0)
    80003d32:	ecb43823          	sd	a1,-304(s0)
    80003d36:	ecc43423          	sd	a2,-312(s0)
    80003d3a:	8636                	mv	a2,a3
    80003d3c:	86ba                	mv	a3,a4
    80003d3e:	873e                	mv	a4,a5
    80003d40:	87b2                	mv	a5,a2
    80003d42:	ecf42223          	sw	a5,-316(s0)
    80003d46:	87b6                	mv	a5,a3
    80003d48:	ecf42023          	sw	a5,-320(s0)
    80003d4c:	87ba                	mv	a5,a4
    80003d4e:	eaf42e23          	sw	a5,-324(s0)
    80003d52:	fe042623          	sw	zero,-20(s0)
    80003d56:	ec446783          	lwu	a5,-316(s0)
    80003d5a:	ec843703          	ld	a4,-312(s0)
    80003d5e:	02f776b3          	remu	a3,a4,a5
    80003d62:	fec42783          	lw	a5,-20(s0)
    80003d66:	0017871b          	addiw	a4,a5,1
    80003d6a:	fee42623          	sw	a4,-20(s0)
    80003d6e:	0006871b          	sext.w	a4,a3
    80003d72:	078a                	slli	a5,a5,0x2
    80003d74:	17c1                	addi	a5,a5,-16
    80003d76:	97a2                	add	a5,a5,s0
    80003d78:	eee7ac23          	sw	a4,-264(a5)
    80003d7c:	ec446783          	lwu	a5,-316(s0)
    80003d80:	ec843703          	ld	a4,-312(s0)
    80003d84:	00f76b63          	bltu	a4,a5,80003d9a <printnum+0x74>
    80003d88:	ec446783          	lwu	a5,-316(s0)
    80003d8c:	ec843703          	ld	a4,-312(s0)
    80003d90:	02f757b3          	divu	a5,a4,a5
    80003d94:	ecf43423          	sd	a5,-312(s0)
    80003d98:	bf7d                	j	80003d56 <printnum+0x30>
    80003d9a:	0001                	nop
    80003d9c:	a809                	j	80003dae <printnum+0x88>
    80003d9e:	ebc42703          	lw	a4,-324(s0)
    80003da2:	ed843783          	ld	a5,-296(s0)
    80003da6:	ed043583          	ld	a1,-304(s0)
    80003daa:	853a                	mv	a0,a4
    80003dac:	9782                	jalr	a5
    80003dae:	ec042783          	lw	a5,-320(s0)
    80003db2:	fff7871b          	addiw	a4,a5,-1
    80003db6:	ece42023          	sw	a4,-320(s0)
    80003dba:	fec42703          	lw	a4,-20(s0)
    80003dbe:	2701                	sext.w	a4,a4
    80003dc0:	fcf74fe3          	blt	a4,a5,80003d9e <printnum+0x78>
    80003dc4:	a091                	j	80003e08 <printnum+0xe2>
    80003dc6:	fec42783          	lw	a5,-20(s0)
    80003dca:	078a                	slli	a5,a5,0x2
    80003dcc:	17c1                	addi	a5,a5,-16
    80003dce:	97a2                	add	a5,a5,s0
    80003dd0:	ef87a703          	lw	a4,-264(a5)
    80003dd4:	fec42783          	lw	a5,-20(s0)
    80003dd8:	078a                	slli	a5,a5,0x2
    80003dda:	17c1                	addi	a5,a5,-16
    80003ddc:	97a2                	add	a5,a5,s0
    80003dde:	ef87a783          	lw	a5,-264(a5)
    80003de2:	86be                	mv	a3,a5
    80003de4:	47a5                	li	a5,9
    80003de6:	00d7f563          	bleu	a3,a5,80003df0 <printnum+0xca>
    80003dea:	05700793          	li	a5,87
    80003dee:	a019                	j	80003df4 <printnum+0xce>
    80003df0:	03000793          	li	a5,48
    80003df4:	9fb9                	addw	a5,a5,a4
    80003df6:	2781                	sext.w	a5,a5
    80003df8:	0007871b          	sext.w	a4,a5
    80003dfc:	ed843783          	ld	a5,-296(s0)
    80003e00:	ed043583          	ld	a1,-304(s0)
    80003e04:	853a                	mv	a0,a4
    80003e06:	9782                	jalr	a5
    80003e08:	fec42783          	lw	a5,-20(s0)
    80003e0c:	fff7871b          	addiw	a4,a5,-1
    80003e10:	fee42623          	sw	a4,-20(s0)
    80003e14:	faf049e3          	bgtz	a5,80003dc6 <printnum+0xa0>
    80003e18:	0001                	nop
    80003e1a:	0001                	nop
    80003e1c:	60b6                	ld	ra,328(sp)
    80003e1e:	6416                	ld	s0,320(sp)
    80003e20:	6171                	addi	sp,sp,336
    80003e22:	8082                	ret

0000000080003e24 <getuint>:
    80003e24:	1101                	addi	sp,sp,-32
    80003e26:	ec22                	sd	s0,24(sp)
    80003e28:	1000                	addi	s0,sp,32
    80003e2a:	fea43423          	sd	a0,-24(s0)
    80003e2e:	87ae                	mv	a5,a1
    80003e30:	fef42223          	sw	a5,-28(s0)
    80003e34:	fe442783          	lw	a5,-28(s0)
    80003e38:	0007871b          	sext.w	a4,a5
    80003e3c:	4785                	li	a5,1
    80003e3e:	00e7dc63          	ble	a4,a5,80003e56 <getuint+0x32>
    80003e42:	fe843783          	ld	a5,-24(s0)
    80003e46:	639c                	ld	a5,0(a5)
    80003e48:	00878693          	addi	a3,a5,8
    80003e4c:	fe843703          	ld	a4,-24(s0)
    80003e50:	e314                	sd	a3,0(a4)
    80003e52:	639c                	ld	a5,0(a5)
    80003e54:	a815                	j	80003e88 <getuint+0x64>
    80003e56:	fe442783          	lw	a5,-28(s0)
    80003e5a:	2781                	sext.w	a5,a5
    80003e5c:	cb99                	beqz	a5,80003e72 <getuint+0x4e>
    80003e5e:	fe843783          	ld	a5,-24(s0)
    80003e62:	639c                	ld	a5,0(a5)
    80003e64:	00878693          	addi	a3,a5,8
    80003e68:	fe843703          	ld	a4,-24(s0)
    80003e6c:	e314                	sd	a3,0(a4)
    80003e6e:	639c                	ld	a5,0(a5)
    80003e70:	a821                	j	80003e88 <getuint+0x64>
    80003e72:	fe843783          	ld	a5,-24(s0)
    80003e76:	639c                	ld	a5,0(a5)
    80003e78:	00878693          	addi	a3,a5,8
    80003e7c:	fe843703          	ld	a4,-24(s0)
    80003e80:	e314                	sd	a3,0(a4)
    80003e82:	439c                	lw	a5,0(a5)
    80003e84:	1782                	slli	a5,a5,0x20
    80003e86:	9381                	srli	a5,a5,0x20
    80003e88:	853e                	mv	a0,a5
    80003e8a:	6462                	ld	s0,24(sp)
    80003e8c:	6105                	addi	sp,sp,32
    80003e8e:	8082                	ret

0000000080003e90 <getint>:
    80003e90:	1101                	addi	sp,sp,-32
    80003e92:	ec22                	sd	s0,24(sp)
    80003e94:	1000                	addi	s0,sp,32
    80003e96:	fea43423          	sd	a0,-24(s0)
    80003e9a:	87ae                	mv	a5,a1
    80003e9c:	fef42223          	sw	a5,-28(s0)
    80003ea0:	fe442783          	lw	a5,-28(s0)
    80003ea4:	0007871b          	sext.w	a4,a5
    80003ea8:	4785                	li	a5,1
    80003eaa:	00e7dc63          	ble	a4,a5,80003ec2 <getint+0x32>
    80003eae:	fe843783          	ld	a5,-24(s0)
    80003eb2:	639c                	ld	a5,0(a5)
    80003eb4:	00878693          	addi	a3,a5,8
    80003eb8:	fe843703          	ld	a4,-24(s0)
    80003ebc:	e314                	sd	a3,0(a4)
    80003ebe:	639c                	ld	a5,0(a5)
    80003ec0:	a805                	j	80003ef0 <getint+0x60>
    80003ec2:	fe442783          	lw	a5,-28(s0)
    80003ec6:	2781                	sext.w	a5,a5
    80003ec8:	cb99                	beqz	a5,80003ede <getint+0x4e>
    80003eca:	fe843783          	ld	a5,-24(s0)
    80003ece:	639c                	ld	a5,0(a5)
    80003ed0:	00878693          	addi	a3,a5,8
    80003ed4:	fe843703          	ld	a4,-24(s0)
    80003ed8:	e314                	sd	a3,0(a4)
    80003eda:	639c                	ld	a5,0(a5)
    80003edc:	a811                	j	80003ef0 <getint+0x60>
    80003ede:	fe843783          	ld	a5,-24(s0)
    80003ee2:	639c                	ld	a5,0(a5)
    80003ee4:	00878693          	addi	a3,a5,8
    80003ee8:	fe843703          	ld	a4,-24(s0)
    80003eec:	e314                	sd	a3,0(a4)
    80003eee:	439c                	lw	a5,0(a5)
    80003ef0:	853e                	mv	a0,a5
    80003ef2:	6462                	ld	s0,24(sp)
    80003ef4:	6105                	addi	sp,sp,32
    80003ef6:	8082                	ret

0000000080003ef8 <vprintfmt>:
    80003ef8:	7159                	addi	sp,sp,-112
    80003efa:	f486                	sd	ra,104(sp)
    80003efc:	f0a2                	sd	s0,96(sp)
    80003efe:	eca6                	sd	s1,88(sp)
    80003f00:	e8ca                	sd	s2,80(sp)
    80003f02:	1880                	addi	s0,sp,112
    80003f04:	faa43423          	sd	a0,-88(s0)
    80003f08:	fab43023          	sd	a1,-96(s0)
    80003f0c:	f8c43c23          	sd	a2,-104(s0)
    80003f10:	f8d43823          	sd	a3,-112(s0)
    80003f14:	a831                	j	80003f30 <vprintfmt+0x38>
    80003f16:	32048b63          	beqz	s1,8000424c <vprintfmt+0x354>
    80003f1a:	f9843783          	ld	a5,-104(s0)
    80003f1e:	0785                	addi	a5,a5,1
    80003f20:	f8f43c23          	sd	a5,-104(s0)
    80003f24:	fa843783          	ld	a5,-88(s0)
    80003f28:	fa043583          	ld	a1,-96(s0)
    80003f2c:	8526                	mv	a0,s1
    80003f2e:	9782                	jalr	a5
    80003f30:	f9843783          	ld	a5,-104(s0)
    80003f34:	0007c783          	lbu	a5,0(a5)
    80003f38:	0007849b          	sext.w	s1,a5
    80003f3c:	8726                	mv	a4,s1
    80003f3e:	02500793          	li	a5,37
    80003f42:	fcf71ae3          	bne	a4,a5,80003f16 <vprintfmt+0x1e>
    80003f46:	f9843783          	ld	a5,-104(s0)
    80003f4a:	0785                	addi	a5,a5,1
    80003f4c:	f8f43c23          	sd	a5,-104(s0)
    80003f50:	f9843783          	ld	a5,-104(s0)
    80003f54:	faf43c23          	sd	a5,-72(s0)
    80003f58:	02000793          	li	a5,32
    80003f5c:	fcf403a3          	sb	a5,-57(s0)
    80003f60:	57fd                	li	a5,-1
    80003f62:	fcf42623          	sw	a5,-52(s0)
    80003f66:	57fd                	li	a5,-1
    80003f68:	fcf42423          	sw	a5,-56(s0)
    80003f6c:	fc042823          	sw	zero,-48(s0)
    80003f70:	fa042a23          	sw	zero,-76(s0)
    80003f74:	f9843783          	ld	a5,-104(s0)
    80003f78:	00178713          	addi	a4,a5,1
    80003f7c:	f8e43c23          	sd	a4,-104(s0)
    80003f80:	0007c783          	lbu	a5,0(a5)
    80003f84:	0007849b          	sext.w	s1,a5
    80003f88:	fdd4869b          	addiw	a3,s1,-35
    80003f8c:	0006871b          	sext.w	a4,a3
    80003f90:	05500793          	li	a5,85
    80003f94:	28e7ef63          	bltu	a5,a4,80004232 <vprintfmt+0x33a>
    80003f98:	02069793          	slli	a5,a3,0x20
    80003f9c:	9381                	srli	a5,a5,0x20
    80003f9e:	00279713          	slli	a4,a5,0x2
    80003fa2:	00001797          	auipc	a5,0x1
    80003fa6:	84678793          	addi	a5,a5,-1978 # 800047e8 <atol+0x1b2>
    80003faa:	97ba                	add	a5,a5,a4
    80003fac:	439c                	lw	a5,0(a5)
    80003fae:	0007871b          	sext.w	a4,a5
    80003fb2:	00001797          	auipc	a5,0x1
    80003fb6:	83678793          	addi	a5,a5,-1994 # 800047e8 <atol+0x1b2>
    80003fba:	97ba                	add	a5,a5,a4
    80003fbc:	8782                	jr	a5
    80003fbe:	02d00793          	li	a5,45
    80003fc2:	fcf403a3          	sb	a5,-57(s0)
    80003fc6:	b77d                	j	80003f74 <vprintfmt+0x7c>
    80003fc8:	03000793          	li	a5,48
    80003fcc:	fcf403a3          	sb	a5,-57(s0)
    80003fd0:	b755                	j	80003f74 <vprintfmt+0x7c>
    80003fd2:	fc042423          	sw	zero,-56(s0)
    80003fd6:	fc842783          	lw	a5,-56(s0)
    80003fda:	873e                	mv	a4,a5
    80003fdc:	87ba                	mv	a5,a4
    80003fde:	0027979b          	slliw	a5,a5,0x2
    80003fe2:	9fb9                	addw	a5,a5,a4
    80003fe4:	0017979b          	slliw	a5,a5,0x1
    80003fe8:	2781                	sext.w	a5,a5
    80003fea:	9fa5                	addw	a5,a5,s1
    80003fec:	2781                	sext.w	a5,a5
    80003fee:	fd07879b          	addiw	a5,a5,-48
    80003ff2:	fcf42423          	sw	a5,-56(s0)
    80003ff6:	f9843783          	ld	a5,-104(s0)
    80003ffa:	0007c783          	lbu	a5,0(a5)
    80003ffe:	0007849b          	sext.w	s1,a5
    80004002:	8726                	mv	a4,s1
    80004004:	02f00793          	li	a5,47
    80004008:	04e7d363          	ble	a4,a5,8000404e <vprintfmt+0x156>
    8000400c:	8726                	mv	a4,s1
    8000400e:	03900793          	li	a5,57
    80004012:	02e7ce63          	blt	a5,a4,8000404e <vprintfmt+0x156>
    80004016:	f9843783          	ld	a5,-104(s0)
    8000401a:	0785                	addi	a5,a5,1
    8000401c:	f8f43c23          	sd	a5,-104(s0)
    80004020:	bf5d                	j	80003fd6 <vprintfmt+0xde>
    80004022:	f9043783          	ld	a5,-112(s0)
    80004026:	00878713          	addi	a4,a5,8
    8000402a:	f8e43823          	sd	a4,-112(s0)
    8000402e:	439c                	lw	a5,0(a5)
    80004030:	fcf42423          	sw	a5,-56(s0)
    80004034:	a831                	j	80004050 <vprintfmt+0x158>
    80004036:	fcc42783          	lw	a5,-52(s0)
    8000403a:	2781                	sext.w	a5,a5
    8000403c:	f207dce3          	bgez	a5,80003f74 <vprintfmt+0x7c>
    80004040:	fc042623          	sw	zero,-52(s0)
    80004044:	bf05                	j	80003f74 <vprintfmt+0x7c>
    80004046:	4785                	li	a5,1
    80004048:	faf42a23          	sw	a5,-76(s0)
    8000404c:	b725                	j	80003f74 <vprintfmt+0x7c>
    8000404e:	0001                	nop
    80004050:	fcc42783          	lw	a5,-52(s0)
    80004054:	2781                	sext.w	a5,a5
    80004056:	f007dfe3          	bgez	a5,80003f74 <vprintfmt+0x7c>
    8000405a:	fc842783          	lw	a5,-56(s0)
    8000405e:	fcf42623          	sw	a5,-52(s0)
    80004062:	57fd                	li	a5,-1
    80004064:	fcf42423          	sw	a5,-56(s0)
    80004068:	b731                	j	80003f74 <vprintfmt+0x7c>
    8000406a:	fd042783          	lw	a5,-48(s0)
    8000406e:	2785                	addiw	a5,a5,1
    80004070:	fcf42823          	sw	a5,-48(s0)
    80004074:	b701                	j	80003f74 <vprintfmt+0x7c>
    80004076:	f9043783          	ld	a5,-112(s0)
    8000407a:	00878713          	addi	a4,a5,8
    8000407e:	f8e43823          	sd	a4,-112(s0)
    80004082:	4398                	lw	a4,0(a5)
    80004084:	fa843783          	ld	a5,-88(s0)
    80004088:	fa043583          	ld	a1,-96(s0)
    8000408c:	853a                	mv	a0,a4
    8000408e:	9782                	jalr	a5
    80004090:	aa6d                	j	8000424a <vprintfmt+0x352>
    80004092:	f9043783          	ld	a5,-112(s0)
    80004096:	00878713          	addi	a4,a5,8
    8000409a:	f8e43823          	sd	a4,-112(s0)
    8000409e:	0007b903          	ld	s2,0(a5)
    800040a2:	00091663          	bnez	s2,800040ae <vprintfmt+0x1b6>
    800040a6:	00000917          	auipc	s2,0x0
    800040aa:	73a90913          	addi	s2,s2,1850 # 800047e0 <atol+0x1aa>
    800040ae:	fcc42783          	lw	a5,-52(s0)
    800040b2:	2781                	sext.w	a5,a5
    800040b4:	06f05b63          	blez	a5,8000412a <vprintfmt+0x232>
    800040b8:	fc744783          	lbu	a5,-57(s0)
    800040bc:	0ff7f713          	andi	a4,a5,255
    800040c0:	02d00793          	li	a5,45
    800040c4:	06f70363          	beq	a4,a5,8000412a <vprintfmt+0x232>
    800040c8:	fcc42483          	lw	s1,-52(s0)
    800040cc:	fc842783          	lw	a5,-56(s0)
    800040d0:	85be                	mv	a1,a5
    800040d2:	854a                	mv	a0,s2
    800040d4:	458000ef          	jal	ra,8000452c <strnlen>
    800040d8:	87aa                	mv	a5,a0
    800040da:	2781                	sext.w	a5,a5
    800040dc:	40f487bb          	subw	a5,s1,a5
    800040e0:	2781                	sext.w	a5,a5
    800040e2:	fcf42623          	sw	a5,-52(s0)
    800040e6:	a005                	j	80004106 <vprintfmt+0x20e>
    800040e8:	fc744783          	lbu	a5,-57(s0)
    800040ec:	0007871b          	sext.w	a4,a5
    800040f0:	fa843783          	ld	a5,-88(s0)
    800040f4:	fa043583          	ld	a1,-96(s0)
    800040f8:	853a                	mv	a0,a4
    800040fa:	9782                	jalr	a5
    800040fc:	fcc42783          	lw	a5,-52(s0)
    80004100:	37fd                	addiw	a5,a5,-1
    80004102:	fcf42623          	sw	a5,-52(s0)
    80004106:	fcc42783          	lw	a5,-52(s0)
    8000410a:	2781                	sext.w	a5,a5
    8000410c:	fcf04ee3          	bgtz	a5,800040e8 <vprintfmt+0x1f0>
    80004110:	a829                	j	8000412a <vprintfmt+0x232>
    80004112:	fa843783          	ld	a5,-88(s0)
    80004116:	fa043583          	ld	a1,-96(s0)
    8000411a:	8526                	mv	a0,s1
    8000411c:	9782                	jalr	a5
    8000411e:	0905                	addi	s2,s2,1
    80004120:	fcc42783          	lw	a5,-52(s0)
    80004124:	37fd                	addiw	a5,a5,-1
    80004126:	fcf42623          	sw	a5,-52(s0)
    8000412a:	00094783          	lbu	a5,0(s2)
    8000412e:	0007849b          	sext.w	s1,a5
    80004132:	cc8d                	beqz	s1,8000416c <vprintfmt+0x274>
    80004134:	fc842783          	lw	a5,-56(s0)
    80004138:	2781                	sext.w	a5,a5
    8000413a:	fc07cce3          	bltz	a5,80004112 <vprintfmt+0x21a>
    8000413e:	fc842783          	lw	a5,-56(s0)
    80004142:	37fd                	addiw	a5,a5,-1
    80004144:	fcf42423          	sw	a5,-56(s0)
    80004148:	fc842783          	lw	a5,-56(s0)
    8000414c:	2781                	sext.w	a5,a5
    8000414e:	fc07d2e3          	bgez	a5,80004112 <vprintfmt+0x21a>
    80004152:	a829                	j	8000416c <vprintfmt+0x274>
    80004154:	fa843783          	ld	a5,-88(s0)
    80004158:	fa043583          	ld	a1,-96(s0)
    8000415c:	02000513          	li	a0,32
    80004160:	9782                	jalr	a5
    80004162:	fcc42783          	lw	a5,-52(s0)
    80004166:	37fd                	addiw	a5,a5,-1
    80004168:	fcf42623          	sw	a5,-52(s0)
    8000416c:	fcc42783          	lw	a5,-52(s0)
    80004170:	2781                	sext.w	a5,a5
    80004172:	fef041e3          	bgtz	a5,80004154 <vprintfmt+0x25c>
    80004176:	a8d1                	j	8000424a <vprintfmt+0x352>
    80004178:	fd042703          	lw	a4,-48(s0)
    8000417c:	f9040793          	addi	a5,s0,-112
    80004180:	85ba                	mv	a1,a4
    80004182:	853e                	mv	a0,a5
    80004184:	d0dff0ef          	jal	ra,80003e90 <getint>
    80004188:	87aa                	mv	a5,a0
    8000418a:	fcf43c23          	sd	a5,-40(s0)
    8000418e:	fd843783          	ld	a5,-40(s0)
    80004192:	0007df63          	bgez	a5,800041b0 <vprintfmt+0x2b8>
    80004196:	fa843783          	ld	a5,-88(s0)
    8000419a:	fa043583          	ld	a1,-96(s0)
    8000419e:	02d00513          	li	a0,45
    800041a2:	9782                	jalr	a5
    800041a4:	fd843783          	ld	a5,-40(s0)
    800041a8:	40f007b3          	neg	a5,a5
    800041ac:	fcf43c23          	sd	a5,-40(s0)
    800041b0:	47a9                	li	a5,10
    800041b2:	fcf42a23          	sw	a5,-44(s0)
    800041b6:	a0b9                	j	80004204 <vprintfmt+0x30c>
    800041b8:	47a9                	li	a5,10
    800041ba:	fcf42a23          	sw	a5,-44(s0)
    800041be:	a80d                	j	800041f0 <vprintfmt+0x2f8>
    800041c0:	47a1                	li	a5,8
    800041c2:	fcf42a23          	sw	a5,-44(s0)
    800041c6:	a02d                	j	800041f0 <vprintfmt+0x2f8>
    800041c8:	4785                	li	a5,1
    800041ca:	fcf42823          	sw	a5,-48(s0)
    800041ce:	fa843783          	ld	a5,-88(s0)
    800041d2:	fa043583          	ld	a1,-96(s0)
    800041d6:	03000513          	li	a0,48
    800041da:	9782                	jalr	a5
    800041dc:	fa843783          	ld	a5,-88(s0)
    800041e0:	fa043583          	ld	a1,-96(s0)
    800041e4:	07800513          	li	a0,120
    800041e8:	9782                	jalr	a5
    800041ea:	47c1                	li	a5,16
    800041ec:	fcf42a23          	sw	a5,-44(s0)
    800041f0:	fd042703          	lw	a4,-48(s0)
    800041f4:	f9040793          	addi	a5,s0,-112
    800041f8:	85ba                	mv	a1,a4
    800041fa:	853e                	mv	a0,a5
    800041fc:	c29ff0ef          	jal	ra,80003e24 <getuint>
    80004200:	fca43c23          	sd	a0,-40(s0)
    80004204:	fd442683          	lw	a3,-44(s0)
    80004208:	fc744783          	lbu	a5,-57(s0)
    8000420c:	2781                	sext.w	a5,a5
    8000420e:	fcc42703          	lw	a4,-52(s0)
    80004212:	fd843603          	ld	a2,-40(s0)
    80004216:	fa043583          	ld	a1,-96(s0)
    8000421a:	fa843503          	ld	a0,-88(s0)
    8000421e:	b09ff0ef          	jal	ra,80003d26 <printnum>
    80004222:	a025                	j	8000424a <vprintfmt+0x352>
    80004224:	fa843783          	ld	a5,-88(s0)
    80004228:	fa043583          	ld	a1,-96(s0)
    8000422c:	8526                	mv	a0,s1
    8000422e:	9782                	jalr	a5
    80004230:	a829                	j	8000424a <vprintfmt+0x352>
    80004232:	fa843783          	ld	a5,-88(s0)
    80004236:	fa043583          	ld	a1,-96(s0)
    8000423a:	02500513          	li	a0,37
    8000423e:	9782                	jalr	a5
    80004240:	fb843783          	ld	a5,-72(s0)
    80004244:	f8f43c23          	sd	a5,-104(s0)
    80004248:	0001                	nop
    8000424a:	b1dd                	j	80003f30 <vprintfmt+0x38>
    8000424c:	0001                	nop
    8000424e:	70a6                	ld	ra,104(sp)
    80004250:	7406                	ld	s0,96(sp)
    80004252:	64e6                	ld	s1,88(sp)
    80004254:	6946                	ld	s2,80(sp)
    80004256:	6165                	addi	sp,sp,112
    80004258:	8082                	ret

000000008000425a <printf>:
    8000425a:	7159                	addi	sp,sp,-112
    8000425c:	f406                	sd	ra,40(sp)
    8000425e:	f022                	sd	s0,32(sp)
    80004260:	1800                	addi	s0,sp,48
    80004262:	fca43c23          	sd	a0,-40(s0)
    80004266:	e40c                	sd	a1,8(s0)
    80004268:	e810                	sd	a2,16(s0)
    8000426a:	ec14                	sd	a3,24(s0)
    8000426c:	f018                	sd	a4,32(s0)
    8000426e:	f41c                	sd	a5,40(s0)
    80004270:	03043823          	sd	a6,48(s0)
    80004274:	03143c23          	sd	a7,56(s0)
    80004278:	04040793          	addi	a5,s0,64
    8000427c:	fcf43823          	sd	a5,-48(s0)
    80004280:	fd043783          	ld	a5,-48(s0)
    80004284:	fc878793          	addi	a5,a5,-56
    80004288:	fef43423          	sd	a5,-24(s0)
    8000428c:	fe843783          	ld	a5,-24(s0)
    80004290:	86be                	mv	a3,a5
    80004292:	fd843603          	ld	a2,-40(s0)
    80004296:	4581                	li	a1,0
    80004298:	00000517          	auipc	a0,0x0
    8000429c:	99050513          	addi	a0,a0,-1648 # 80003c28 <putchar>
    800042a0:	c59ff0ef          	jal	ra,80003ef8 <vprintfmt>
    800042a4:	4781                	li	a5,0
    800042a6:	853e                	mv	a0,a5
    800042a8:	70a2                	ld	ra,40(sp)
    800042aa:	7402                	ld	s0,32(sp)
    800042ac:	6165                	addi	sp,sp,112
    800042ae:	8082                	ret

00000000800042b0 <sprintf_putch>:
    800042b0:	7179                	addi	sp,sp,-48
    800042b2:	f422                	sd	s0,40(sp)
    800042b4:	1800                	addi	s0,sp,48
    800042b6:	87aa                	mv	a5,a0
    800042b8:	fcb43823          	sd	a1,-48(s0)
    800042bc:	fcf42e23          	sw	a5,-36(s0)
    800042c0:	fd043783          	ld	a5,-48(s0)
    800042c4:	fef43423          	sd	a5,-24(s0)
    800042c8:	fe843783          	ld	a5,-24(s0)
    800042cc:	639c                	ld	a5,0(a5)
    800042ce:	fdc42703          	lw	a4,-36(s0)
    800042d2:	0ff77713          	andi	a4,a4,255
    800042d6:	00e78023          	sb	a4,0(a5)
    800042da:	fe843783          	ld	a5,-24(s0)
    800042de:	639c                	ld	a5,0(a5)
    800042e0:	00178713          	addi	a4,a5,1
    800042e4:	fe843783          	ld	a5,-24(s0)
    800042e8:	e398                	sd	a4,0(a5)
    800042ea:	0001                	nop
    800042ec:	7422                	ld	s0,40(sp)
    800042ee:	6145                	addi	sp,sp,48
    800042f0:	8082                	ret

00000000800042f2 <sprintf>:
    800042f2:	7159                	addi	sp,sp,-112
    800042f4:	fc06                	sd	ra,56(sp)
    800042f6:	f822                	sd	s0,48(sp)
    800042f8:	0080                	addi	s0,sp,64
    800042fa:	fca43c23          	sd	a0,-40(s0)
    800042fe:	fcb43823          	sd	a1,-48(s0)
    80004302:	e010                	sd	a2,0(s0)
    80004304:	e414                	sd	a3,8(s0)
    80004306:	e818                	sd	a4,16(s0)
    80004308:	ec1c                	sd	a5,24(s0)
    8000430a:	03043023          	sd	a6,32(s0)
    8000430e:	03143423          	sd	a7,40(s0)
    80004312:	fd843783          	ld	a5,-40(s0)
    80004316:	fef43423          	sd	a5,-24(s0)
    8000431a:	03040793          	addi	a5,s0,48
    8000431e:	fcf43423          	sd	a5,-56(s0)
    80004322:	fc843783          	ld	a5,-56(s0)
    80004326:	fd078793          	addi	a5,a5,-48
    8000432a:	fef43023          	sd	a5,-32(s0)
    8000432e:	fe043703          	ld	a4,-32(s0)
    80004332:	fd840793          	addi	a5,s0,-40
    80004336:	86ba                	mv	a3,a4
    80004338:	fd043603          	ld	a2,-48(s0)
    8000433c:	85be                	mv	a1,a5
    8000433e:	00000517          	auipc	a0,0x0
    80004342:	f7250513          	addi	a0,a0,-142 # 800042b0 <sprintf_putch>
    80004346:	bb3ff0ef          	jal	ra,80003ef8 <vprintfmt>
    8000434a:	fd843783          	ld	a5,-40(s0)
    8000434e:	00078023          	sb	zero,0(a5)
    80004352:	fd843703          	ld	a4,-40(s0)
    80004356:	fe843783          	ld	a5,-24(s0)
    8000435a:	40f707b3          	sub	a5,a4,a5
    8000435e:	2781                	sext.w	a5,a5
    80004360:	853e                	mv	a0,a5
    80004362:	70e2                	ld	ra,56(sp)
    80004364:	7442                	ld	s0,48(sp)
    80004366:	6165                	addi	sp,sp,112
    80004368:	8082                	ret

000000008000436a <memcpy>:
    8000436a:	715d                	addi	sp,sp,-80
    8000436c:	e4a2                	sd	s0,72(sp)
    8000436e:	0880                	addi	s0,sp,80
    80004370:	fca43423          	sd	a0,-56(s0)
    80004374:	fcb43023          	sd	a1,-64(s0)
    80004378:	fac43c23          	sd	a2,-72(s0)
    8000437c:	fc843703          	ld	a4,-56(s0)
    80004380:	fc043783          	ld	a5,-64(s0)
    80004384:	8f5d                	or	a4,a4,a5
    80004386:	fb843783          	ld	a5,-72(s0)
    8000438a:	8fd9                	or	a5,a5,a4
    8000438c:	8b9d                	andi	a5,a5,7
    8000438e:	e3b1                	bnez	a5,800043d2 <memcpy+0x68>
    80004390:	fc043783          	ld	a5,-64(s0)
    80004394:	fef43423          	sd	a5,-24(s0)
    80004398:	fc843783          	ld	a5,-56(s0)
    8000439c:	fef43023          	sd	a5,-32(s0)
    800043a0:	a839                	j	800043be <memcpy+0x54>
    800043a2:	fe843703          	ld	a4,-24(s0)
    800043a6:	00870793          	addi	a5,a4,8
    800043aa:	fef43423          	sd	a5,-24(s0)
    800043ae:	fe043783          	ld	a5,-32(s0)
    800043b2:	00878693          	addi	a3,a5,8
    800043b6:	fed43023          	sd	a3,-32(s0)
    800043ba:	6318                	ld	a4,0(a4)
    800043bc:	e398                	sd	a4,0(a5)
    800043be:	fc843703          	ld	a4,-56(s0)
    800043c2:	fb843783          	ld	a5,-72(s0)
    800043c6:	97ba                	add	a5,a5,a4
    800043c8:	fe043703          	ld	a4,-32(s0)
    800043cc:	fcf76be3          	bltu	a4,a5,800043a2 <memcpy+0x38>
    800043d0:	a099                	j	80004416 <memcpy+0xac>
    800043d2:	fc043783          	ld	a5,-64(s0)
    800043d6:	fcf43c23          	sd	a5,-40(s0)
    800043da:	fc843783          	ld	a5,-56(s0)
    800043de:	fcf43823          	sd	a5,-48(s0)
    800043e2:	a00d                	j	80004404 <memcpy+0x9a>
    800043e4:	fd843703          	ld	a4,-40(s0)
    800043e8:	00170793          	addi	a5,a4,1
    800043ec:	fcf43c23          	sd	a5,-40(s0)
    800043f0:	fd043783          	ld	a5,-48(s0)
    800043f4:	00178693          	addi	a3,a5,1
    800043f8:	fcd43823          	sd	a3,-48(s0)
    800043fc:	00074703          	lbu	a4,0(a4)
    80004400:	00e78023          	sb	a4,0(a5)
    80004404:	fc843703          	ld	a4,-56(s0)
    80004408:	fb843783          	ld	a5,-72(s0)
    8000440c:	97ba                	add	a5,a5,a4
    8000440e:	fd043703          	ld	a4,-48(s0)
    80004412:	fcf769e3          	bltu	a4,a5,800043e4 <memcpy+0x7a>
    80004416:	fc843783          	ld	a5,-56(s0)
    8000441a:	853e                	mv	a0,a5
    8000441c:	6426                	ld	s0,72(sp)
    8000441e:	6161                	addi	sp,sp,80
    80004420:	8082                	ret

0000000080004422 <memset>:
    80004422:	715d                	addi	sp,sp,-80
    80004424:	e4a2                	sd	s0,72(sp)
    80004426:	0880                	addi	s0,sp,80
    80004428:	fca43423          	sd	a0,-56(s0)
    8000442c:	87ae                	mv	a5,a1
    8000442e:	fac43c23          	sd	a2,-72(s0)
    80004432:	fcf42223          	sw	a5,-60(s0)
    80004436:	fc843703          	ld	a4,-56(s0)
    8000443a:	fb843783          	ld	a5,-72(s0)
    8000443e:	8fd9                	or	a5,a5,a4
    80004440:	8b9d                	andi	a5,a5,7
    80004442:	e7bd                	bnez	a5,800044b0 <memset+0x8e>
    80004444:	fc442783          	lw	a5,-60(s0)
    80004448:	0ff7f793          	andi	a5,a5,255
    8000444c:	fcf43c23          	sd	a5,-40(s0)
    80004450:	fd843783          	ld	a5,-40(s0)
    80004454:	07a2                	slli	a5,a5,0x8
    80004456:	fd843703          	ld	a4,-40(s0)
    8000445a:	8fd9                	or	a5,a5,a4
    8000445c:	fcf43c23          	sd	a5,-40(s0)
    80004460:	fd843783          	ld	a5,-40(s0)
    80004464:	07c2                	slli	a5,a5,0x10
    80004466:	fd843703          	ld	a4,-40(s0)
    8000446a:	8fd9                	or	a5,a5,a4
    8000446c:	fcf43c23          	sd	a5,-40(s0)
    80004470:	fd843783          	ld	a5,-40(s0)
    80004474:	1782                	slli	a5,a5,0x20
    80004476:	fd843703          	ld	a4,-40(s0)
    8000447a:	8fd9                	or	a5,a5,a4
    8000447c:	fcf43c23          	sd	a5,-40(s0)
    80004480:	fc843783          	ld	a5,-56(s0)
    80004484:	fef43423          	sd	a5,-24(s0)
    80004488:	a811                	j	8000449c <memset+0x7a>
    8000448a:	fe843783          	ld	a5,-24(s0)
    8000448e:	00878713          	addi	a4,a5,8
    80004492:	fee43423          	sd	a4,-24(s0)
    80004496:	fd843703          	ld	a4,-40(s0)
    8000449a:	e398                	sd	a4,0(a5)
    8000449c:	fc843703          	ld	a4,-56(s0)
    800044a0:	fb843783          	ld	a5,-72(s0)
    800044a4:	97ba                	add	a5,a5,a4
    800044a6:	fe843703          	ld	a4,-24(s0)
    800044aa:	fef760e3          	bltu	a4,a5,8000448a <memset+0x68>
    800044ae:	a81d                	j	800044e4 <memset+0xc2>
    800044b0:	fc843783          	ld	a5,-56(s0)
    800044b4:	fef43023          	sd	a5,-32(s0)
    800044b8:	a829                	j	800044d2 <memset+0xb0>
    800044ba:	fe043783          	ld	a5,-32(s0)
    800044be:	00178713          	addi	a4,a5,1
    800044c2:	fee43023          	sd	a4,-32(s0)
    800044c6:	fc442703          	lw	a4,-60(s0)
    800044ca:	0ff77713          	andi	a4,a4,255
    800044ce:	00e78023          	sb	a4,0(a5)
    800044d2:	fc843703          	ld	a4,-56(s0)
    800044d6:	fb843783          	ld	a5,-72(s0)
    800044da:	97ba                	add	a5,a5,a4
    800044dc:	fe043703          	ld	a4,-32(s0)
    800044e0:	fcf76de3          	bltu	a4,a5,800044ba <memset+0x98>
    800044e4:	fc843783          	ld	a5,-56(s0)
    800044e8:	853e                	mv	a0,a5
    800044ea:	6426                	ld	s0,72(sp)
    800044ec:	6161                	addi	sp,sp,80
    800044ee:	8082                	ret

00000000800044f0 <strlen>:
    800044f0:	7179                	addi	sp,sp,-48
    800044f2:	f422                	sd	s0,40(sp)
    800044f4:	1800                	addi	s0,sp,48
    800044f6:	fca43c23          	sd	a0,-40(s0)
    800044fa:	fd843783          	ld	a5,-40(s0)
    800044fe:	fef43423          	sd	a5,-24(s0)
    80004502:	a031                	j	8000450e <strlen+0x1e>
    80004504:	fe843783          	ld	a5,-24(s0)
    80004508:	0785                	addi	a5,a5,1
    8000450a:	fef43423          	sd	a5,-24(s0)
    8000450e:	fe843783          	ld	a5,-24(s0)
    80004512:	0007c783          	lbu	a5,0(a5)
    80004516:	f7fd                	bnez	a5,80004504 <strlen+0x14>
    80004518:	fe843703          	ld	a4,-24(s0)
    8000451c:	fd843783          	ld	a5,-40(s0)
    80004520:	40f707b3          	sub	a5,a4,a5
    80004524:	853e                	mv	a0,a5
    80004526:	7422                	ld	s0,40(sp)
    80004528:	6145                	addi	sp,sp,48
    8000452a:	8082                	ret

000000008000452c <strnlen>:
    8000452c:	7179                	addi	sp,sp,-48
    8000452e:	f422                	sd	s0,40(sp)
    80004530:	1800                	addi	s0,sp,48
    80004532:	fca43c23          	sd	a0,-40(s0)
    80004536:	fcb43823          	sd	a1,-48(s0)
    8000453a:	fd843783          	ld	a5,-40(s0)
    8000453e:	fef43423          	sd	a5,-24(s0)
    80004542:	a031                	j	8000454e <strnlen+0x22>
    80004544:	fe843783          	ld	a5,-24(s0)
    80004548:	0785                	addi	a5,a5,1
    8000454a:	fef43423          	sd	a5,-24(s0)
    8000454e:	fd043783          	ld	a5,-48(s0)
    80004552:	fff78713          	addi	a4,a5,-1
    80004556:	fce43823          	sd	a4,-48(s0)
    8000455a:	c791                	beqz	a5,80004566 <strnlen+0x3a>
    8000455c:	fe843783          	ld	a5,-24(s0)
    80004560:	0007c783          	lbu	a5,0(a5)
    80004564:	f3e5                	bnez	a5,80004544 <strnlen+0x18>
    80004566:	fe843703          	ld	a4,-24(s0)
    8000456a:	fd843783          	ld	a5,-40(s0)
    8000456e:	40f707b3          	sub	a5,a4,a5
    80004572:	853e                	mv	a0,a5
    80004574:	7422                	ld	s0,40(sp)
    80004576:	6145                	addi	sp,sp,48
    80004578:	8082                	ret

000000008000457a <strcmp>:
    8000457a:	7179                	addi	sp,sp,-48
    8000457c:	f422                	sd	s0,40(sp)
    8000457e:	1800                	addi	s0,sp,48
    80004580:	fca43c23          	sd	a0,-40(s0)
    80004584:	fcb43823          	sd	a1,-48(s0)
    80004588:	fd843783          	ld	a5,-40(s0)
    8000458c:	00178713          	addi	a4,a5,1
    80004590:	fce43c23          	sd	a4,-40(s0)
    80004594:	0007c783          	lbu	a5,0(a5)
    80004598:	fef407a3          	sb	a5,-17(s0)
    8000459c:	fd043783          	ld	a5,-48(s0)
    800045a0:	00178713          	addi	a4,a5,1
    800045a4:	fce43823          	sd	a4,-48(s0)
    800045a8:	0007c783          	lbu	a5,0(a5)
    800045ac:	fef40723          	sb	a5,-18(s0)
    800045b0:	fef44783          	lbu	a5,-17(s0)
    800045b4:	0ff7f793          	andi	a5,a5,255
    800045b8:	cf81                	beqz	a5,800045d0 <strcmp+0x56>
    800045ba:	fef44783          	lbu	a5,-17(s0)
    800045be:	873e                	mv	a4,a5
    800045c0:	fee44783          	lbu	a5,-18(s0)
    800045c4:	0ff77713          	andi	a4,a4,255
    800045c8:	0ff7f793          	andi	a5,a5,255
    800045cc:	faf70ee3          	beq	a4,a5,80004588 <strcmp+0xe>
    800045d0:	fef44783          	lbu	a5,-17(s0)
    800045d4:	0007871b          	sext.w	a4,a5
    800045d8:	fee44783          	lbu	a5,-18(s0)
    800045dc:	2781                	sext.w	a5,a5
    800045de:	40f707bb          	subw	a5,a4,a5
    800045e2:	2781                	sext.w	a5,a5
    800045e4:	853e                	mv	a0,a5
    800045e6:	7422                	ld	s0,40(sp)
    800045e8:	6145                	addi	sp,sp,48
    800045ea:	8082                	ret

00000000800045ec <strcpy>:
    800045ec:	7179                	addi	sp,sp,-48
    800045ee:	f422                	sd	s0,40(sp)
    800045f0:	1800                	addi	s0,sp,48
    800045f2:	fca43c23          	sd	a0,-40(s0)
    800045f6:	fcb43823          	sd	a1,-48(s0)
    800045fa:	fd843783          	ld	a5,-40(s0)
    800045fe:	fef43423          	sd	a5,-24(s0)
    80004602:	0001                	nop
    80004604:	fd043703          	ld	a4,-48(s0)
    80004608:	00170793          	addi	a5,a4,1
    8000460c:	fcf43823          	sd	a5,-48(s0)
    80004610:	fe843783          	ld	a5,-24(s0)
    80004614:	00178693          	addi	a3,a5,1
    80004618:	fed43423          	sd	a3,-24(s0)
    8000461c:	00074703          	lbu	a4,0(a4)
    80004620:	00e78023          	sb	a4,0(a5)
    80004624:	0007c783          	lbu	a5,0(a5)
    80004628:	fff1                	bnez	a5,80004604 <strcpy+0x18>
    8000462a:	fd843783          	ld	a5,-40(s0)
    8000462e:	853e                	mv	a0,a5
    80004630:	7422                	ld	s0,40(sp)
    80004632:	6145                	addi	sp,sp,48
    80004634:	8082                	ret

0000000080004636 <atol>:
    80004636:	7179                	addi	sp,sp,-48
    80004638:	f422                	sd	s0,40(sp)
    8000463a:	1800                	addi	s0,sp,48
    8000463c:	fca43c23          	sd	a0,-40(s0)
    80004640:	fe043423          	sd	zero,-24(s0)
    80004644:	fe042223          	sw	zero,-28(s0)
    80004648:	a031                	j	80004654 <atol+0x1e>
    8000464a:	fd843783          	ld	a5,-40(s0)
    8000464e:	0785                	addi	a5,a5,1
    80004650:	fcf43c23          	sd	a5,-40(s0)
    80004654:	fd843783          	ld	a5,-40(s0)
    80004658:	0007c783          	lbu	a5,0(a5)
    8000465c:	873e                	mv	a4,a5
    8000465e:	02000793          	li	a5,32
    80004662:	fef704e3          	beq	a4,a5,8000464a <atol+0x14>
    80004666:	fd843783          	ld	a5,-40(s0)
    8000466a:	0007c783          	lbu	a5,0(a5)
    8000466e:	873e                	mv	a4,a5
    80004670:	02d00793          	li	a5,45
    80004674:	00f70b63          	beq	a4,a5,8000468a <atol+0x54>
    80004678:	fd843783          	ld	a5,-40(s0)
    8000467c:	0007c783          	lbu	a5,0(a5)
    80004680:	873e                	mv	a4,a5
    80004682:	02b00793          	li	a5,43
    80004686:	06f71263          	bne	a4,a5,800046ea <atol+0xb4>
    8000468a:	fd843783          	ld	a5,-40(s0)
    8000468e:	0007c783          	lbu	a5,0(a5)
    80004692:	0007871b          	sext.w	a4,a5
    80004696:	02d00793          	li	a5,45
    8000469a:	40f707b3          	sub	a5,a4,a5
    8000469e:	0017b793          	seqz	a5,a5
    800046a2:	0ff7f793          	andi	a5,a5,255
    800046a6:	fef42223          	sw	a5,-28(s0)
    800046aa:	fd843783          	ld	a5,-40(s0)
    800046ae:	0785                	addi	a5,a5,1
    800046b0:	fcf43c23          	sd	a5,-40(s0)
    800046b4:	a81d                	j	800046ea <atol+0xb4>
    800046b6:	fe843703          	ld	a4,-24(s0)
    800046ba:	87ba                	mv	a5,a4
    800046bc:	078a                	slli	a5,a5,0x2
    800046be:	97ba                	add	a5,a5,a4
    800046c0:	0786                	slli	a5,a5,0x1
    800046c2:	fef43423          	sd	a5,-24(s0)
    800046c6:	fd843783          	ld	a5,-40(s0)
    800046ca:	00178713          	addi	a4,a5,1
    800046ce:	fce43c23          	sd	a4,-40(s0)
    800046d2:	0007c783          	lbu	a5,0(a5)
    800046d6:	2781                	sext.w	a5,a5
    800046d8:	fd07879b          	addiw	a5,a5,-48
    800046dc:	2781                	sext.w	a5,a5
    800046de:	873e                	mv	a4,a5
    800046e0:	fe843783          	ld	a5,-24(s0)
    800046e4:	97ba                	add	a5,a5,a4
    800046e6:	fef43423          	sd	a5,-24(s0)
    800046ea:	fd843783          	ld	a5,-40(s0)
    800046ee:	0007c783          	lbu	a5,0(a5)
    800046f2:	f3f1                	bnez	a5,800046b6 <atol+0x80>
    800046f4:	fe442783          	lw	a5,-28(s0)
    800046f8:	2781                	sext.w	a5,a5
    800046fa:	c791                	beqz	a5,80004706 <atol+0xd0>
    800046fc:	fe843783          	ld	a5,-24(s0)
    80004700:	40f007b3          	neg	a5,a5
    80004704:	a019                	j	8000470a <atol+0xd4>
    80004706:	fe843783          	ld	a5,-24(s0)
    8000470a:	853e                	mv	a0,a5
    8000470c:	7422                	ld	s0,40(sp)
    8000470e:	6145                	addi	sp,sp,48
    80004710:	8082                	ret
