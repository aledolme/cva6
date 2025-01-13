
/home/a.dolmeta/cva6/verif/sim/out_2025-01-13/elf_files/trigger.elf:     file format elf64-littleriscv


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
    800000f8:	b6418193          	addi	gp,gp,-1180 # 80004c58 <__global_pointer$>
    800000fc:	86718213          	addi	tp,gp,-1945 # 800044bf <_end+0x3f>
    80000100:	fc027213          	andi	tp,tp,-64
    80000104:	f1402573          	csrr	a0,mhartid
    80000108:	4585                	li	a1,1
    8000010a:	00b57063          	bleu	a1,a0,8000010a <_start+0x10a>
    8000010e:	00150113          	addi	sp,a0,1
    80000112:	0146                	slli	sp,sp,0x11
    80000114:	9112                	add	sp,sp,tp
    80000116:	01151613          	slli	a2,a0,0x11
    8000011a:	9232                	add	tp,tp,a2
    8000011c:	5820306f          	j	8000369e <_init>

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
    8000016a:	402030ef          	jal	ra,8000356c <handle_trap>
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
    800001c4:	63d020ef          	jal	ra,80003000 <main>
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

0000000080003000 <main>:
    80003000:	1101                	addi	sp,sp,-32
    80003002:	ec22                	sd	s0,24(sp)
    80003004:	1000                	addi	s0,sp,32
    80003006:	410007b7          	lui	a5,0x41000
    8000300a:	0791                	addi	a5,a5,4
    8000300c:	fef43423          	sd	a5,-24(s0)
    80003010:	fe843783          	ld	a5,-24(s0)
    80003014:	4709                	li	a4,2
    80003016:	c398                	sw	a4,0(a5)
    80003018:	fe843783          	ld	a5,-24(s0)
    8000301c:	4705                	li	a4,1
    8000301e:	c398                	sw	a4,0(a5)
    80003020:	fe843783          	ld	a5,-24(s0)
    80003024:	4709                	li	a4,2
    80003026:	c398                	sw	a4,0(a5)
    80003028:	fe843783          	ld	a5,-24(s0)
    8000302c:	4705                	li	a4,1
    8000302e:	c398                	sw	a4,0(a5)
    80003030:	fe843783          	ld	a5,-24(s0)
    80003034:	4709                	li	a4,2
    80003036:	c398                	sw	a4,0(a5)
    80003038:	fe843783          	ld	a5,-24(s0)
    8000303c:	4705                	li	a4,1
    8000303e:	c398                	sw	a4,0(a5)
    80003040:	fe843783          	ld	a5,-24(s0)
    80003044:	4709                	li	a4,2
    80003046:	c398                	sw	a4,0(a5)
    80003048:	fe843783          	ld	a5,-24(s0)
    8000304c:	4705                	li	a4,1
    8000304e:	c398                	sw	a4,0(a5)
    80003050:	fe843783          	ld	a5,-24(s0)
    80003054:	4709                	li	a4,2
    80003056:	c398                	sw	a4,0(a5)
    80003058:	fe843783          	ld	a5,-24(s0)
    8000305c:	4705                	li	a4,1
    8000305e:	c398                	sw	a4,0(a5)
    80003060:	fe843783          	ld	a5,-24(s0)
    80003064:	4709                	li	a4,2
    80003066:	c398                	sw	a4,0(a5)
    80003068:	4781                	li	a5,0
    8000306a:	853e                	mv	a0,a5
    8000306c:	6462                	ld	s0,24(sp)
    8000306e:	6105                	addi	sp,sp,32
    80003070:	8082                	ret

0000000080003072 <verify>:
    80003072:	715d                	addi	sp,sp,-80
    80003074:	e4a2                	sd	s0,72(sp)
    80003076:	0880                	addi	s0,sp,80
    80003078:	87aa                	mv	a5,a0
    8000307a:	fcb43023          	sd	a1,-64(s0)
    8000307e:	fac43c23          	sd	a2,-72(s0)
    80003082:	fcf42623          	sw	a5,-52(s0)
    80003086:	fe042623          	sw	zero,-20(s0)
    8000308a:	a841                	j	8000311a <verify+0xa8>
    8000308c:	fec42783          	lw	a5,-20(s0)
    80003090:	078a                	slli	a5,a5,0x2
    80003092:	fc043703          	ld	a4,-64(s0)
    80003096:	97ba                	add	a5,a5,a4
    80003098:	439c                	lw	a5,0(a5)
    8000309a:	fef42423          	sw	a5,-24(s0)
    8000309e:	fec42783          	lw	a5,-20(s0)
    800030a2:	0785                	addi	a5,a5,1
    800030a4:	078a                	slli	a5,a5,0x2
    800030a6:	fc043703          	ld	a4,-64(s0)
    800030aa:	97ba                	add	a5,a5,a4
    800030ac:	439c                	lw	a5,0(a5)
    800030ae:	fef42223          	sw	a5,-28(s0)
    800030b2:	fec42783          	lw	a5,-20(s0)
    800030b6:	078a                	slli	a5,a5,0x2
    800030b8:	fb843703          	ld	a4,-72(s0)
    800030bc:	97ba                	add	a5,a5,a4
    800030be:	439c                	lw	a5,0(a5)
    800030c0:	fef42023          	sw	a5,-32(s0)
    800030c4:	fec42783          	lw	a5,-20(s0)
    800030c8:	0785                	addi	a5,a5,1
    800030ca:	078a                	slli	a5,a5,0x2
    800030cc:	fb843703          	ld	a4,-72(s0)
    800030d0:	97ba                	add	a5,a5,a4
    800030d2:	439c                	lw	a5,0(a5)
    800030d4:	fcf42e23          	sw	a5,-36(s0)
    800030d8:	fe842783          	lw	a5,-24(s0)
    800030dc:	873e                	mv	a4,a5
    800030de:	fe042783          	lw	a5,-32(s0)
    800030e2:	2701                	sext.w	a4,a4
    800030e4:	2781                	sext.w	a5,a5
    800030e6:	00f70763          	beq	a4,a5,800030f4 <verify+0x82>
    800030ea:	fec42783          	lw	a5,-20(s0)
    800030ee:	2785                	addiw	a5,a5,1
    800030f0:	2781                	sext.w	a5,a5
    800030f2:	a059                	j	80003178 <verify+0x106>
    800030f4:	fe442783          	lw	a5,-28(s0)
    800030f8:	873e                	mv	a4,a5
    800030fa:	fdc42783          	lw	a5,-36(s0)
    800030fe:	2701                	sext.w	a4,a4
    80003100:	2781                	sext.w	a5,a5
    80003102:	00f70763          	beq	a4,a5,80003110 <verify+0x9e>
    80003106:	fec42783          	lw	a5,-20(s0)
    8000310a:	2789                	addiw	a5,a5,2
    8000310c:	2781                	sext.w	a5,a5
    8000310e:	a0ad                	j	80003178 <verify+0x106>
    80003110:	fec42783          	lw	a5,-20(s0)
    80003114:	2789                	addiw	a5,a5,2
    80003116:	fef42623          	sw	a5,-20(s0)
    8000311a:	fcc42783          	lw	a5,-52(s0)
    8000311e:	01f7d71b          	srliw	a4,a5,0x1f
    80003122:	9fb9                	addw	a5,a5,a4
    80003124:	4017d79b          	sraiw	a5,a5,0x1
    80003128:	2781                	sext.w	a5,a5
    8000312a:	0017979b          	slliw	a5,a5,0x1
    8000312e:	0007871b          	sext.w	a4,a5
    80003132:	fec42783          	lw	a5,-20(s0)
    80003136:	2781                	sext.w	a5,a5
    80003138:	f4e7cae3          	blt	a5,a4,8000308c <verify+0x1a>
    8000313c:	fcc42783          	lw	a5,-52(s0)
    80003140:	8b85                	andi	a5,a5,1
    80003142:	2781                	sext.w	a5,a5
    80003144:	cb8d                	beqz	a5,80003176 <verify+0x104>
    80003146:	fcc42783          	lw	a5,-52(s0)
    8000314a:	078a                	slli	a5,a5,0x2
    8000314c:	17f1                	addi	a5,a5,-4
    8000314e:	fc043703          	ld	a4,-64(s0)
    80003152:	97ba                	add	a5,a5,a4
    80003154:	439c                	lw	a5,0(a5)
    80003156:	0007869b          	sext.w	a3,a5
    8000315a:	fcc42783          	lw	a5,-52(s0)
    8000315e:	078a                	slli	a5,a5,0x2
    80003160:	17f1                	addi	a5,a5,-4
    80003162:	fb843703          	ld	a4,-72(s0)
    80003166:	97ba                	add	a5,a5,a4
    80003168:	439c                	lw	a5,0(a5)
    8000316a:	8736                	mv	a4,a3
    8000316c:	00f70563          	beq	a4,a5,80003176 <verify+0x104>
    80003170:	fcc42783          	lw	a5,-52(s0)
    80003174:	a011                	j	80003178 <verify+0x106>
    80003176:	4781                	li	a5,0
    80003178:	853e                	mv	a0,a5
    8000317a:	6426                	ld	s0,72(sp)
    8000317c:	6161                	addi	sp,sp,80
    8000317e:	8082                	ret

0000000080003180 <verifyDouble>:
    80003180:	711d                	addi	sp,sp,-96
    80003182:	eca2                	sd	s0,88(sp)
    80003184:	1080                	addi	s0,sp,96
    80003186:	87aa                	mv	a5,a0
    80003188:	fab43823          	sd	a1,-80(s0)
    8000318c:	fac43423          	sd	a2,-88(s0)
    80003190:	faf42e23          	sw	a5,-68(s0)
    80003194:	fe042623          	sw	zero,-20(s0)
    80003198:	a06d                	j	80003242 <verifyDouble+0xc2>
    8000319a:	fec42783          	lw	a5,-20(s0)
    8000319e:	078e                	slli	a5,a5,0x3
    800031a0:	fb043703          	ld	a4,-80(s0)
    800031a4:	97ba                	add	a5,a5,a4
    800031a6:	239c                	fld	fa5,0(a5)
    800031a8:	fef43027          	fsd	fa5,-32(s0)
    800031ac:	fec42783          	lw	a5,-20(s0)
    800031b0:	0785                	addi	a5,a5,1
    800031b2:	078e                	slli	a5,a5,0x3
    800031b4:	fb043703          	ld	a4,-80(s0)
    800031b8:	97ba                	add	a5,a5,a4
    800031ba:	239c                	fld	fa5,0(a5)
    800031bc:	fcf43c27          	fsd	fa5,-40(s0)
    800031c0:	fec42783          	lw	a5,-20(s0)
    800031c4:	078e                	slli	a5,a5,0x3
    800031c6:	fa843703          	ld	a4,-88(s0)
    800031ca:	97ba                	add	a5,a5,a4
    800031cc:	239c                	fld	fa5,0(a5)
    800031ce:	fcf43827          	fsd	fa5,-48(s0)
    800031d2:	fec42783          	lw	a5,-20(s0)
    800031d6:	0785                	addi	a5,a5,1
    800031d8:	078e                	slli	a5,a5,0x3
    800031da:	fa843703          	ld	a4,-88(s0)
    800031de:	97ba                	add	a5,a5,a4
    800031e0:	239c                	fld	fa5,0(a5)
    800031e2:	fcf43427          	fsd	fa5,-56(s0)
    800031e6:	fe043707          	fld	fa4,-32(s0)
    800031ea:	fd043787          	fld	fa5,-48(s0)
    800031ee:	a2f727d3          	feq.d	a5,fa4,fa5
    800031f2:	00f037b3          	snez	a5,a5
    800031f6:	0ff7f793          	andi	a5,a5,255
    800031fa:	fcf42223          	sw	a5,-60(s0)
    800031fe:	fd843707          	fld	fa4,-40(s0)
    80003202:	fc843787          	fld	fa5,-56(s0)
    80003206:	a2f727d3          	feq.d	a5,fa4,fa5
    8000320a:	00f037b3          	snez	a5,a5
    8000320e:	0ff7f793          	andi	a5,a5,255
    80003212:	fcf42023          	sw	a5,-64(s0)
    80003216:	fc442783          	lw	a5,-60(s0)
    8000321a:	873e                	mv	a4,a5
    8000321c:	fc042783          	lw	a5,-64(s0)
    80003220:	8ff9                	and	a5,a5,a4
    80003222:	2781                	sext.w	a5,a5
    80003224:	eb91                	bnez	a5,80003238 <verifyDouble+0xb8>
    80003226:	fec42783          	lw	a5,-20(s0)
    8000322a:	2785                	addiw	a5,a5,1
    8000322c:	2781                	sext.w	a5,a5
    8000322e:	fc442703          	lw	a4,-60(s0)
    80003232:	9fb9                	addw	a5,a5,a4
    80003234:	2781                	sext.w	a5,a5
    80003236:	a09d                	j	8000329c <verifyDouble+0x11c>
    80003238:	fec42783          	lw	a5,-20(s0)
    8000323c:	2789                	addiw	a5,a5,2
    8000323e:	fef42623          	sw	a5,-20(s0)
    80003242:	fbc42783          	lw	a5,-68(s0)
    80003246:	01f7d71b          	srliw	a4,a5,0x1f
    8000324a:	9fb9                	addw	a5,a5,a4
    8000324c:	4017d79b          	sraiw	a5,a5,0x1
    80003250:	2781                	sext.w	a5,a5
    80003252:	0017979b          	slliw	a5,a5,0x1
    80003256:	0007871b          	sext.w	a4,a5
    8000325a:	fec42783          	lw	a5,-20(s0)
    8000325e:	2781                	sext.w	a5,a5
    80003260:	f2e7cde3          	blt	a5,a4,8000319a <verifyDouble+0x1a>
    80003264:	fbc42783          	lw	a5,-68(s0)
    80003268:	8b85                	andi	a5,a5,1
    8000326a:	2781                	sext.w	a5,a5
    8000326c:	c79d                	beqz	a5,8000329a <verifyDouble+0x11a>
    8000326e:	fbc42783          	lw	a5,-68(s0)
    80003272:	078e                	slli	a5,a5,0x3
    80003274:	17e1                	addi	a5,a5,-8
    80003276:	fb043703          	ld	a4,-80(s0)
    8000327a:	97ba                	add	a5,a5,a4
    8000327c:	2398                	fld	fa4,0(a5)
    8000327e:	fbc42783          	lw	a5,-68(s0)
    80003282:	078e                	slli	a5,a5,0x3
    80003284:	17e1                	addi	a5,a5,-8
    80003286:	fa843703          	ld	a4,-88(s0)
    8000328a:	97ba                	add	a5,a5,a4
    8000328c:	239c                	fld	fa5,0(a5)
    8000328e:	a2f727d3          	feq.d	a5,fa4,fa5
    80003292:	e781                	bnez	a5,8000329a <verifyDouble+0x11a>
    80003294:	fbc42783          	lw	a5,-68(s0)
    80003298:	a011                	j	8000329c <verifyDouble+0x11c>
    8000329a:	4781                	li	a5,0
    8000329c:	853e                	mv	a0,a5
    8000329e:	6466                	ld	s0,88(sp)
    800032a0:	6125                	addi	sp,sp,96
    800032a2:	8082                	ret

00000000800032a4 <barrier>:
    800032a4:	1101                	addi	sp,sp,-32
    800032a6:	ec22                	sd	s0,24(sp)
    800032a8:	1000                	addi	s0,sp,32
    800032aa:	87aa                	mv	a5,a0
    800032ac:	fef42623          	sw	a5,-20(s0)
    800032b0:	0ff0000f          	fence
    800032b4:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    800032b8:	0017b793          	seqz	a5,a5
    800032bc:	0ff7f793          	andi	a5,a5,255
    800032c0:	0007871b          	sext.w	a4,a5
    800032c4:	00e22023          	sw	a4,0(tp) # 0 <threadsense.4>
    800032c8:	00001797          	auipc	a5,0x1
    800032cc:	1b078793          	addi	a5,a5,432 # 80004478 <count.1>
    800032d0:	4705                	li	a4,1
    800032d2:	0f50000f          	fence	iorw,ow
    800032d6:	04e7a6af          	amoadd.w.aq	a3,a4,(a5)
    800032da:	0006879b          	sext.w	a5,a3
    800032de:	0007871b          	sext.w	a4,a5
    800032e2:	fec42783          	lw	a5,-20(s0)
    800032e6:	37fd                	addiw	a5,a5,-1
    800032e8:	2781                	sext.w	a5,a5
    800032ea:	02f71063          	bne	a4,a5,8000330a <barrier+0x66>
    800032ee:	00001797          	auipc	a5,0x1
    800032f2:	18a78793          	addi	a5,a5,394 # 80004478 <count.1>
    800032f6:	0007a023          	sw	zero,0(a5)
    800032fa:	00022703          	lw	a4,0(tp) # 0 <threadsense.4>
    800032fe:	00001797          	auipc	a5,0x1
    80003302:	17e78793          	addi	a5,a5,382 # 8000447c <sense.0>
    80003306:	c398                	sw	a4,0(a5)
    80003308:	a829                	j	80003322 <barrier+0x7e>
    8000330a:	0001                	nop
    8000330c:	00001797          	auipc	a5,0x1
    80003310:	17078793          	addi	a5,a5,368 # 8000447c <sense.0>
    80003314:	439c                	lw	a5,0(a5)
    80003316:	0007871b          	sext.w	a4,a5
    8000331a:	00022783          	lw	a5,0(tp) # 0 <threadsense.4>
    8000331e:	fef717e3          	bne	a4,a5,8000330c <barrier+0x68>
    80003322:	0ff0000f          	fence
    80003326:	0001                	nop
    80003328:	6462                	ld	s0,24(sp)
    8000332a:	6105                	addi	sp,sp,32
    8000332c:	8082                	ret

000000008000332e <lfsr>:
    8000332e:	7179                	addi	sp,sp,-48
    80003330:	f422                	sd	s0,40(sp)
    80003332:	1800                	addi	s0,sp,48
    80003334:	fca43c23          	sd	a0,-40(s0)
    80003338:	fd843783          	ld	a5,-40(s0)
    8000333c:	0017d713          	srli	a4,a5,0x1
    80003340:	fd843783          	ld	a5,-40(s0)
    80003344:	8fb9                	xor	a5,a5,a4
    80003346:	8b85                	andi	a5,a5,1
    80003348:	fef43423          	sd	a5,-24(s0)
    8000334c:	fd843783          	ld	a5,-40(s0)
    80003350:	0017d713          	srli	a4,a5,0x1
    80003354:	fe843783          	ld	a5,-24(s0)
    80003358:	17fa                	slli	a5,a5,0x3e
    8000335a:	8fd9                	or	a5,a5,a4
    8000335c:	853e                	mv	a0,a5
    8000335e:	7422                	ld	s0,40(sp)
    80003360:	6145                	addi	sp,sp,48
    80003362:	8082                	ret

0000000080003364 <insn_len>:
    80003364:	1101                	addi	sp,sp,-32
    80003366:	ec22                	sd	s0,24(sp)
    80003368:	1000                	addi	s0,sp,32
    8000336a:	fea43423          	sd	a0,-24(s0)
    8000336e:	fe843783          	ld	a5,-24(s0)
    80003372:	0007d783          	lhu	a5,0(a5)
    80003376:	2781                	sext.w	a5,a5
    80003378:	8b8d                	andi	a5,a5,3
    8000337a:	2781                	sext.w	a5,a5
    8000337c:	c399                	beqz	a5,80003382 <insn_len+0x1e>
    8000337e:	4791                	li	a5,4
    80003380:	a011                	j	80003384 <insn_len+0x20>
    80003382:	4789                	li	a5,2
    80003384:	853e                	mv	a0,a5
    80003386:	6462                	ld	s0,24(sp)
    80003388:	6105                	addi	sp,sp,32
    8000338a:	8082                	ret

000000008000338c <syscall>:
    8000338c:	7171                	addi	sp,sp,-176
    8000338e:	f522                	sd	s0,168(sp)
    80003390:	1900                	addi	s0,sp,176
    80003392:	f6a43c23          	sd	a0,-136(s0)
    80003396:	f6b43823          	sd	a1,-144(s0)
    8000339a:	f6c43423          	sd	a2,-152(s0)
    8000339e:	f6d43023          	sd	a3,-160(s0)
    800033a2:	ff040793          	addi	a5,s0,-16
    800033a6:	f4f43c23          	sd	a5,-168(s0)
    800033aa:	f5843783          	ld	a5,-168(s0)
    800033ae:	f9078793          	addi	a5,a5,-112
    800033b2:	03f78793          	addi	a5,a5,63
    800033b6:	8399                	srli	a5,a5,0x6
    800033b8:	079a                	slli	a5,a5,0x6
    800033ba:	f7843703          	ld	a4,-136(s0)
    800033be:	e398                	sd	a4,0(a5)
    800033c0:	f7043703          	ld	a4,-144(s0)
    800033c4:	e798                	sd	a4,8(a5)
    800033c6:	f6843703          	ld	a4,-152(s0)
    800033ca:	eb98                	sd	a4,16(a5)
    800033cc:	f6043703          	ld	a4,-160(s0)
    800033d0:	ef98                	sd	a4,24(a5)
    800033d2:	0ff0000f          	fence
    800033d6:	86be                	mv	a3,a5
    800033d8:	2b001713          	0x2b001713
    800033dc:	177d                	addi	a4,a4,-1
    800033de:	8ef9                	and	a3,a3,a4
    800033e0:	ffffe717          	auipc	a4,0xffffe
    800033e4:	c2070713          	addi	a4,a4,-992 # 80001000 <tohost>
    800033e8:	e314                	sd	a3,0(a4)
    800033ea:	0001                	nop
    800033ec:	ffffe717          	auipc	a4,0xffffe
    800033f0:	c5470713          	addi	a4,a4,-940 # 80001040 <fromhost>
    800033f4:	6318                	ld	a4,0(a4)
    800033f6:	db7d                	beqz	a4,800033ec <syscall+0x60>
    800033f8:	ffffe717          	auipc	a4,0xffffe
    800033fc:	c4870713          	addi	a4,a4,-952 # 80001040 <fromhost>
    80003400:	00073023          	sd	zero,0(a4)
    80003404:	0ff0000f          	fence
    80003408:	639c                	ld	a5,0(a5)
    8000340a:	853e                	mv	a0,a5
    8000340c:	742a                	ld	s0,168(sp)
    8000340e:	614d                	addi	sp,sp,176
    80003410:	8082                	ret

0000000080003412 <setStats>:
    80003412:	715d                	addi	sp,sp,-80
    80003414:	e4a2                	sd	s0,72(sp)
    80003416:	0880                	addi	s0,sp,80
    80003418:	87aa                	mv	a5,a0
    8000341a:	faf42e23          	sw	a5,-68(s0)
    8000341e:	fc042e23          	sw	zero,-36(s0)
    80003422:	fdc42783          	lw	a5,-36(s0)
    80003426:	0007871b          	sext.w	a4,a5
    8000342a:	4785                	li	a5,1
    8000342c:	fee7cbe3          	blt	a5,a4,80003422 <setStats+0x10>
    80003430:	b00027f3          	csrr	a5,mcycle
    80003434:	fcf43823          	sd	a5,-48(s0)
    80003438:	fd043783          	ld	a5,-48(s0)
    8000343c:	fef43423          	sd	a5,-24(s0)
    80003440:	fbc42783          	lw	a5,-68(s0)
    80003444:	2781                	sext.w	a5,a5
    80003446:	ef8d                	bnez	a5,80003480 <setStats+0x6e>
    80003448:	00001717          	auipc	a4,0x1
    8000344c:	01070713          	addi	a4,a4,16 # 80004458 <counters>
    80003450:	fdc42783          	lw	a5,-36(s0)
    80003454:	078e                	slli	a5,a5,0x3
    80003456:	97ba                	add	a5,a5,a4
    80003458:	639c                	ld	a5,0(a5)
    8000345a:	fe843703          	ld	a4,-24(s0)
    8000345e:	40f707b3          	sub	a5,a4,a5
    80003462:	fef43423          	sd	a5,-24(s0)
    80003466:	00001717          	auipc	a4,0x1
    8000346a:	00270713          	addi	a4,a4,2 # 80004468 <counter_names>
    8000346e:	fdc42783          	lw	a5,-36(s0)
    80003472:	078e                	slli	a5,a5,0x3
    80003474:	97ba                	add	a5,a5,a4
    80003476:	00001717          	auipc	a4,0x1
    8000347a:	e4270713          	addi	a4,a4,-446 # 800042b8 <atol+0xde>
    8000347e:	e398                	sd	a4,0(a5)
    80003480:	fdc42783          	lw	a5,-36(s0)
    80003484:	0017871b          	addiw	a4,a5,1
    80003488:	fce42e23          	sw	a4,-36(s0)
    8000348c:	00001717          	auipc	a4,0x1
    80003490:	fcc70713          	addi	a4,a4,-52 # 80004458 <counters>
    80003494:	078e                	slli	a5,a5,0x3
    80003496:	97ba                	add	a5,a5,a4
    80003498:	fe843703          	ld	a4,-24(s0)
    8000349c:	e398                	sd	a4,0(a5)
    8000349e:	fdc42783          	lw	a5,-36(s0)
    800034a2:	0007871b          	sext.w	a4,a5
    800034a6:	4785                	li	a5,1
    800034a8:	fee7cbe3          	blt	a5,a4,8000349e <setStats+0x8c>
    800034ac:	b02027f3          	csrr	a5,minstret
    800034b0:	fcf43423          	sd	a5,-56(s0)
    800034b4:	fc843783          	ld	a5,-56(s0)
    800034b8:	fef43023          	sd	a5,-32(s0)
    800034bc:	fbc42783          	lw	a5,-68(s0)
    800034c0:	2781                	sext.w	a5,a5
    800034c2:	ef8d                	bnez	a5,800034fc <setStats+0xea>
    800034c4:	00001717          	auipc	a4,0x1
    800034c8:	f9470713          	addi	a4,a4,-108 # 80004458 <counters>
    800034cc:	fdc42783          	lw	a5,-36(s0)
    800034d0:	078e                	slli	a5,a5,0x3
    800034d2:	97ba                	add	a5,a5,a4
    800034d4:	639c                	ld	a5,0(a5)
    800034d6:	fe043703          	ld	a4,-32(s0)
    800034da:	40f707b3          	sub	a5,a4,a5
    800034de:	fef43023          	sd	a5,-32(s0)
    800034e2:	00001717          	auipc	a4,0x1
    800034e6:	f8670713          	addi	a4,a4,-122 # 80004468 <counter_names>
    800034ea:	fdc42783          	lw	a5,-36(s0)
    800034ee:	078e                	slli	a5,a5,0x3
    800034f0:	97ba                	add	a5,a5,a4
    800034f2:	00001717          	auipc	a4,0x1
    800034f6:	dce70713          	addi	a4,a4,-562 # 800042c0 <atol+0xe6>
    800034fa:	e398                	sd	a4,0(a5)
    800034fc:	fdc42783          	lw	a5,-36(s0)
    80003500:	0017871b          	addiw	a4,a5,1
    80003504:	fce42e23          	sw	a4,-36(s0)
    80003508:	00001717          	auipc	a4,0x1
    8000350c:	f5070713          	addi	a4,a4,-176 # 80004458 <counters>
    80003510:	078e                	slli	a5,a5,0x3
    80003512:	97ba                	add	a5,a5,a4
    80003514:	fe043703          	ld	a4,-32(s0)
    80003518:	e398                	sd	a4,0(a5)
    8000351a:	0001                	nop
    8000351c:	6426                	ld	s0,72(sp)
    8000351e:	6161                	addi	sp,sp,80
    80003520:	8082                	ret

0000000080003522 <getStats>:
    80003522:	1101                	addi	sp,sp,-32
    80003524:	ec22                	sd	s0,24(sp)
    80003526:	1000                	addi	s0,sp,32
    80003528:	87aa                	mv	a5,a0
    8000352a:	fef42623          	sw	a5,-20(s0)
    8000352e:	00001717          	auipc	a4,0x1
    80003532:	f2a70713          	addi	a4,a4,-214 # 80004458 <counters>
    80003536:	fec42783          	lw	a5,-20(s0)
    8000353a:	078e                	slli	a5,a5,0x3
    8000353c:	97ba                	add	a5,a5,a4
    8000353e:	639c                	ld	a5,0(a5)
    80003540:	853e                	mv	a0,a5
    80003542:	6462                	ld	s0,24(sp)
    80003544:	6105                	addi	sp,sp,32
    80003546:	8082                	ret

0000000080003548 <tohost_exit>:
    80003548:	1101                	addi	sp,sp,-32
    8000354a:	ec22                	sd	s0,24(sp)
    8000354c:	1000                	addi	s0,sp,32
    8000354e:	fea43423          	sd	a0,-24(s0)
    80003552:	fe843783          	ld	a5,-24(s0)
    80003556:	07c6                	slli	a5,a5,0x11
    80003558:	83c1                	srli	a5,a5,0x10
    8000355a:	0017e713          	ori	a4,a5,1
    8000355e:	ffffe797          	auipc	a5,0xffffe
    80003562:	aa278793          	addi	a5,a5,-1374 # 80001000 <tohost>
    80003566:	e398                	sd	a4,0(a5)
    80003568:	0001                	nop
    8000356a:	a001                	j	8000356a <tohost_exit+0x22>

000000008000356c <handle_trap>:
    8000356c:	7179                	addi	sp,sp,-48
    8000356e:	f406                	sd	ra,40(sp)
    80003570:	f022                	sd	s0,32(sp)
    80003572:	1800                	addi	s0,sp,48
    80003574:	fea43423          	sd	a0,-24(s0)
    80003578:	feb43023          	sd	a1,-32(s0)
    8000357c:	fcc43c23          	sd	a2,-40(s0)
    80003580:	53900513          	li	a0,1337
    80003584:	fc5ff0ef          	jal	ra,80003548 <tohost_exit>

0000000080003588 <exit>:
    80003588:	1101                	addi	sp,sp,-32
    8000358a:	ec06                	sd	ra,24(sp)
    8000358c:	e822                	sd	s0,16(sp)
    8000358e:	1000                	addi	s0,sp,32
    80003590:	87aa                	mv	a5,a0
    80003592:	fef42623          	sw	a5,-20(s0)
    80003596:	fec42783          	lw	a5,-20(s0)
    8000359a:	853e                	mv	a0,a5
    8000359c:	fadff0ef          	jal	ra,80003548 <tohost_exit>

00000000800035a0 <abort>:
    800035a0:	1141                	addi	sp,sp,-16
    800035a2:	e406                	sd	ra,8(sp)
    800035a4:	e022                	sd	s0,0(sp)
    800035a6:	0800                	addi	s0,sp,16
    800035a8:	08600513          	li	a0,134
    800035ac:	fddff0ef          	jal	ra,80003588 <exit>

00000000800035b0 <printstr>:
    800035b0:	7179                	addi	sp,sp,-48
    800035b2:	f406                	sd	ra,40(sp)
    800035b4:	f022                	sd	s0,32(sp)
    800035b6:	ec26                	sd	s1,24(sp)
    800035b8:	1800                	addi	s0,sp,48
    800035ba:	fca43c23          	sd	a0,-40(s0)
    800035be:	fd843483          	ld	s1,-40(s0)
    800035c2:	fd843503          	ld	a0,-40(s0)
    800035c6:	2cf000ef          	jal	ra,80004094 <strlen>
    800035ca:	87aa                	mv	a5,a0
    800035cc:	86be                	mv	a3,a5
    800035ce:	8626                	mv	a2,s1
    800035d0:	4585                	li	a1,1
    800035d2:	04000513          	li	a0,64
    800035d6:	db7ff0ef          	jal	ra,8000338c <syscall>
    800035da:	0001                	nop
    800035dc:	70a2                	ld	ra,40(sp)
    800035de:	7402                	ld	s0,32(sp)
    800035e0:	64e2                	ld	s1,24(sp)
    800035e2:	6145                	addi	sp,sp,48
    800035e4:	8082                	ret

00000000800035e6 <thread_entry>:
    800035e6:	1101                	addi	sp,sp,-32
    800035e8:	ec22                	sd	s0,24(sp)
    800035ea:	1000                	addi	s0,sp,32
    800035ec:	87aa                	mv	a5,a0
    800035ee:	872e                	mv	a4,a1
    800035f0:	fef42623          	sw	a5,-20(s0)
    800035f4:	87ba                	mv	a5,a4
    800035f6:	fef42423          	sw	a5,-24(s0)
    800035fa:	0001                	nop
    800035fc:	fec42783          	lw	a5,-20(s0)
    80003600:	2781                	sext.w	a5,a5
    80003602:	ffed                	bnez	a5,800035fc <thread_entry+0x16>
    80003604:	0001                	nop
    80003606:	0001                	nop
    80003608:	6462                	ld	s0,24(sp)
    8000360a:	6105                	addi	sp,sp,32
    8000360c:	8082                	ret
    8000360e:	1101                	addi	sp,sp,-32
    80003610:	ec06                	sd	ra,24(sp)
    80003612:	e822                	sd	s0,16(sp)
    80003614:	1000                	addi	s0,sp,32
    80003616:	87aa                	mv	a5,a0
    80003618:	feb43023          	sd	a1,-32(s0)
    8000361c:	fef42623          	sw	a5,-20(s0)
    80003620:	00001517          	auipc	a0,0x1
    80003624:	cb050513          	addi	a0,a0,-848 # 800042d0 <atol+0xf6>
    80003628:	f89ff0ef          	jal	ra,800035b0 <printstr>
    8000362c:	57fd                	li	a5,-1
    8000362e:	853e                	mv	a0,a5
    80003630:	60e2                	ld	ra,24(sp)
    80003632:	6442                	ld	s0,16(sp)
    80003634:	6105                	addi	sp,sp,32
    80003636:	8082                	ret

0000000080003638 <init_tls>:
    80003638:	1101                	addi	sp,sp,-32
    8000363a:	ec06                	sd	ra,24(sp)
    8000363c:	e822                	sd	s0,16(sp)
    8000363e:	1000                	addi	s0,sp,32
    80003640:	00001717          	auipc	a4,0x1
    80003644:	e4070713          	addi	a4,a4,-448 # 80004480 <_end>
    80003648:	00001797          	auipc	a5,0x1
    8000364c:	e3878793          	addi	a5,a5,-456 # 80004480 <_end>
    80003650:	40f707b3          	sub	a5,a4,a5
    80003654:	fef43423          	sd	a5,-24(s0)
    80003658:	8792                	mv	a5,tp
    8000365a:	fe843603          	ld	a2,-24(s0)
    8000365e:	00001597          	auipc	a1,0x1
    80003662:	e2258593          	addi	a1,a1,-478 # 80004480 <_end>
    80003666:	853e                	mv	a0,a5
    80003668:	0a7000ef          	jal	ra,80003f0e <memcpy>
    8000366c:	8ac18713          	addi	a4,gp,-1876 # 80004504 <_tbss_end>
    80003670:	00001797          	auipc	a5,0x1
    80003674:	e1078793          	addi	a5,a5,-496 # 80004480 <_end>
    80003678:	40f707b3          	sub	a5,a4,a5
    8000367c:	fef43023          	sd	a5,-32(s0)
    80003680:	8712                	mv	a4,tp
    80003682:	fe843783          	ld	a5,-24(s0)
    80003686:	97ba                	add	a5,a5,a4
    80003688:	fe043603          	ld	a2,-32(s0)
    8000368c:	4581                	li	a1,0
    8000368e:	853e                	mv	a0,a5
    80003690:	137000ef          	jal	ra,80003fc6 <memset>
    80003694:	0001                	nop
    80003696:	60e2                	ld	ra,24(sp)
    80003698:	6442                	ld	s0,16(sp)
    8000369a:	6105                	addi	sp,sp,32
    8000369c:	8082                	ret

000000008000369e <_init>:
    8000369e:	7171                	addi	sp,sp,-176
    800036a0:	f506                	sd	ra,168(sp)
    800036a2:	f122                	sd	s0,160(sp)
    800036a4:	ed26                	sd	s1,152(sp)
    800036a6:	1900                	addi	s0,sp,176
    800036a8:	87aa                	mv	a5,a0
    800036aa:	872e                	mv	a4,a1
    800036ac:	f4f42e23          	sw	a5,-164(s0)
    800036b0:	87ba                	mv	a5,a4
    800036b2:	f4f42c23          	sw	a5,-168(s0)
    800036b6:	fe040793          	addi	a5,s0,-32
    800036ba:	f4f43823          	sd	a5,-176(s0)
    800036be:	f5043783          	ld	a5,-176(s0)
    800036c2:	f8078793          	addi	a5,a5,-128
    800036c6:	03f78793          	addi	a5,a5,63
    800036ca:	8399                	srli	a5,a5,0x6
    800036cc:	00679493          	slli	s1,a5,0x6
    800036d0:	f69ff0ef          	jal	ra,80003638 <init_tls>
    800036d4:	f5842703          	lw	a4,-168(s0)
    800036d8:	f5c42783          	lw	a5,-164(s0)
    800036dc:	85ba                	mv	a1,a4
    800036de:	853e                	mv	a0,a5
    800036e0:	f07ff0ef          	jal	ra,800035e6 <thread_entry>
    800036e4:	4581                	li	a1,0
    800036e6:	4501                	li	a0,0
    800036e8:	919ff0ef          	jal	ra,80003000 <main>
    800036ec:	87aa                	mv	a5,a0
    800036ee:	fcf42823          	sw	a5,-48(s0)
    800036f2:	fc943c23          	sd	s1,-40(s0)
    800036f6:	fc042a23          	sw	zero,-44(s0)
    800036fa:	a095                	j	8000375e <_init+0xc0>
    800036fc:	00001717          	auipc	a4,0x1
    80003700:	d5c70713          	addi	a4,a4,-676 # 80004458 <counters>
    80003704:	fd442783          	lw	a5,-44(s0)
    80003708:	078e                	slli	a5,a5,0x3
    8000370a:	97ba                	add	a5,a5,a4
    8000370c:	639c                	ld	a5,0(a5)
    8000370e:	c3b9                	beqz	a5,80003754 <_init+0xb6>
    80003710:	00001717          	auipc	a4,0x1
    80003714:	d5870713          	addi	a4,a4,-680 # 80004468 <counter_names>
    80003718:	fd442783          	lw	a5,-44(s0)
    8000371c:	078e                	slli	a5,a5,0x3
    8000371e:	97ba                	add	a5,a5,a4
    80003720:	6390                	ld	a2,0(a5)
    80003722:	00001717          	auipc	a4,0x1
    80003726:	d3670713          	addi	a4,a4,-714 # 80004458 <counters>
    8000372a:	fd442783          	lw	a5,-44(s0)
    8000372e:	078e                	slli	a5,a5,0x3
    80003730:	97ba                	add	a5,a5,a4
    80003732:	639c                	ld	a5,0(a5)
    80003734:	86be                	mv	a3,a5
    80003736:	00001597          	auipc	a1,0x1
    8000373a:	bb258593          	addi	a1,a1,-1102 # 800042e8 <atol+0x10e>
    8000373e:	fd843503          	ld	a0,-40(s0)
    80003742:	754000ef          	jal	ra,80003e96 <sprintf>
    80003746:	87aa                	mv	a5,a0
    80003748:	873e                	mv	a4,a5
    8000374a:	fd843783          	ld	a5,-40(s0)
    8000374e:	97ba                	add	a5,a5,a4
    80003750:	fcf43c23          	sd	a5,-40(s0)
    80003754:	fd442783          	lw	a5,-44(s0)
    80003758:	2785                	addiw	a5,a5,1
    8000375a:	fcf42a23          	sw	a5,-44(s0)
    8000375e:	fd442783          	lw	a5,-44(s0)
    80003762:	0007871b          	sext.w	a4,a5
    80003766:	4785                	li	a5,1
    80003768:	f8e7dae3          	ble	a4,a5,800036fc <_init+0x5e>
    8000376c:	fd843783          	ld	a5,-40(s0)
    80003770:	00f48563          	beq	s1,a5,8000377a <_init+0xdc>
    80003774:	8526                	mv	a0,s1
    80003776:	e3bff0ef          	jal	ra,800035b0 <printstr>
    8000377a:	fd042783          	lw	a5,-48(s0)
    8000377e:	853e                	mv	a0,a5
    80003780:	e09ff0ef          	jal	ra,80003588 <exit>

0000000080003784 <puts>:
    80003784:	7179                	addi	sp,sp,-48
    80003786:	f406                	sd	ra,40(sp)
    80003788:	f022                	sd	s0,32(sp)
    8000378a:	1800                	addi	s0,sp,48
    8000378c:	fca43c23          	sd	a0,-40(s0)
    80003790:	fd843783          	ld	a5,-40(s0)
    80003794:	fef43423          	sd	a5,-24(s0)
    80003798:	a829                	j	800037b2 <puts+0x2e>
    8000379a:	fe843783          	ld	a5,-24(s0)
    8000379e:	00178713          	addi	a4,a5,1
    800037a2:	fee43423          	sd	a4,-24(s0)
    800037a6:	0007c783          	lbu	a5,0(a5)
    800037aa:	2781                	sext.w	a5,a5
    800037ac:	853e                	mv	a0,a5
    800037ae:	020000ef          	jal	ra,800037ce <putchar>
    800037b2:	fe843783          	ld	a5,-24(s0)
    800037b6:	0007c783          	lbu	a5,0(a5)
    800037ba:	f3e5                	bnez	a5,8000379a <puts+0x16>
    800037bc:	4529                	li	a0,10
    800037be:	010000ef          	jal	ra,800037ce <putchar>
    800037c2:	4781                	li	a5,0
    800037c4:	853e                	mv	a0,a5
    800037c6:	70a2                	ld	ra,40(sp)
    800037c8:	7402                	ld	s0,32(sp)
    800037ca:	6145                	addi	sp,sp,48
    800037cc:	8082                	ret

00000000800037ce <putchar>:
    800037ce:	1101                	addi	sp,sp,-32
    800037d0:	ec06                	sd	ra,24(sp)
    800037d2:	e822                	sd	s0,16(sp)
    800037d4:	1000                	addi	s0,sp,32
    800037d6:	87aa                	mv	a5,a0
    800037d8:	fef42623          	sw	a5,-20(s0)
    800037dc:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    800037e0:	0017871b          	addiw	a4,a5,1
    800037e4:	0007069b          	sext.w	a3,a4
    800037e8:	08d22023          	sw	a3,128(tp) # 80 <buflen.2>
    800037ec:	fec42703          	lw	a4,-20(s0)
    800037f0:	0ff77713          	andi	a4,a4,255
    800037f4:	04020693          	addi	a3,tp,64 # 40 <buf.3>
    800037f8:	97b6                	add	a5,a5,a3
    800037fa:	00e78023          	sb	a4,0(a5)
    800037fe:	fec42783          	lw	a5,-20(s0)
    80003802:	0007871b          	sext.w	a4,a5
    80003806:	47a9                	li	a5,10
    80003808:	00f70963          	beq	a4,a5,8000381a <putchar+0x4c>
    8000380c:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003810:	873e                	mv	a4,a5
    80003812:	04000793          	li	a5,64
    80003816:	00f71f63          	bne	a4,a5,80003834 <putchar+0x66>
    8000381a:	04020713          	addi	a4,tp,64 # 40 <buf.3>
    8000381e:	08022783          	lw	a5,128(tp) # 80 <buflen.2>
    80003822:	86be                	mv	a3,a5
    80003824:	863a                	mv	a2,a4
    80003826:	4585                	li	a1,1
    80003828:	04000513          	li	a0,64
    8000382c:	b61ff0ef          	jal	ra,8000338c <syscall>
    80003830:	08022023          	sw	zero,128(tp) # 80 <buflen.2>
    80003834:	4781                	li	a5,0
    80003836:	853e                	mv	a0,a5
    80003838:	60e2                	ld	ra,24(sp)
    8000383a:	6442                	ld	s0,16(sp)
    8000383c:	6105                	addi	sp,sp,32
    8000383e:	8082                	ret

0000000080003840 <printhex>:
    80003840:	7139                	addi	sp,sp,-64
    80003842:	fc06                	sd	ra,56(sp)
    80003844:	f822                	sd	s0,48(sp)
    80003846:	0080                	addi	s0,sp,64
    80003848:	fca43423          	sd	a0,-56(s0)
    8000384c:	fe042623          	sw	zero,-20(s0)
    80003850:	a899                	j	800038a6 <printhex+0x66>
    80003852:	fc843783          	ld	a5,-56(s0)
    80003856:	0ff7f793          	andi	a5,a5,255
    8000385a:	8bbd                	andi	a5,a5,15
    8000385c:	0ff7f713          	andi	a4,a5,255
    80003860:	fc843783          	ld	a5,-56(s0)
    80003864:	00f7f693          	andi	a3,a5,15
    80003868:	47a5                	li	a5,9
    8000386a:	00d7e563          	bltu	a5,a3,80003874 <printhex+0x34>
    8000386e:	03000793          	li	a5,48
    80003872:	a019                	j	80003878 <printhex+0x38>
    80003874:	05700793          	li	a5,87
    80003878:	46bd                	li	a3,15
    8000387a:	fec42603          	lw	a2,-20(s0)
    8000387e:	9e91                	subw	a3,a3,a2
    80003880:	2681                	sext.w	a3,a3
    80003882:	9fb9                	addw	a5,a5,a4
    80003884:	0ff7f713          	andi	a4,a5,255
    80003888:	ff068793          	addi	a5,a3,-16
    8000388c:	97a2                	add	a5,a5,s0
    8000388e:	fee78423          	sb	a4,-24(a5)
    80003892:	fc843783          	ld	a5,-56(s0)
    80003896:	8391                	srli	a5,a5,0x4
    80003898:	fcf43423          	sd	a5,-56(s0)
    8000389c:	fec42783          	lw	a5,-20(s0)
    800038a0:	2785                	addiw	a5,a5,1
    800038a2:	fef42623          	sw	a5,-20(s0)
    800038a6:	fec42783          	lw	a5,-20(s0)
    800038aa:	0007871b          	sext.w	a4,a5
    800038ae:	47bd                	li	a5,15
    800038b0:	fae7d1e3          	ble	a4,a5,80003852 <printhex+0x12>
    800038b4:	fe040423          	sb	zero,-24(s0)
    800038b8:	fd840793          	addi	a5,s0,-40
    800038bc:	853e                	mv	a0,a5
    800038be:	cf3ff0ef          	jal	ra,800035b0 <printstr>
    800038c2:	0001                	nop
    800038c4:	70e2                	ld	ra,56(sp)
    800038c6:	7442                	ld	s0,48(sp)
    800038c8:	6121                	addi	sp,sp,64
    800038ca:	8082                	ret

00000000800038cc <printnum>:
    800038cc:	714d                	addi	sp,sp,-336
    800038ce:	e686                	sd	ra,328(sp)
    800038d0:	e2a2                	sd	s0,320(sp)
    800038d2:	0a80                	addi	s0,sp,336
    800038d4:	eca43c23          	sd	a0,-296(s0)
    800038d8:	ecb43823          	sd	a1,-304(s0)
    800038dc:	ecc43423          	sd	a2,-312(s0)
    800038e0:	8636                	mv	a2,a3
    800038e2:	86ba                	mv	a3,a4
    800038e4:	873e                	mv	a4,a5
    800038e6:	87b2                	mv	a5,a2
    800038e8:	ecf42223          	sw	a5,-316(s0)
    800038ec:	87b6                	mv	a5,a3
    800038ee:	ecf42023          	sw	a5,-320(s0)
    800038f2:	87ba                	mv	a5,a4
    800038f4:	eaf42e23          	sw	a5,-324(s0)
    800038f8:	fe042623          	sw	zero,-20(s0)
    800038fc:	ec446783          	lwu	a5,-316(s0)
    80003900:	ec843703          	ld	a4,-312(s0)
    80003904:	02f776b3          	remu	a3,a4,a5
    80003908:	fec42783          	lw	a5,-20(s0)
    8000390c:	0017871b          	addiw	a4,a5,1
    80003910:	fee42623          	sw	a4,-20(s0)
    80003914:	0006871b          	sext.w	a4,a3
    80003918:	078a                	slli	a5,a5,0x2
    8000391a:	17c1                	addi	a5,a5,-16
    8000391c:	97a2                	add	a5,a5,s0
    8000391e:	eee7ac23          	sw	a4,-264(a5)
    80003922:	ec446783          	lwu	a5,-316(s0)
    80003926:	ec843703          	ld	a4,-312(s0)
    8000392a:	00f76b63          	bltu	a4,a5,80003940 <printnum+0x74>
    8000392e:	ec446783          	lwu	a5,-316(s0)
    80003932:	ec843703          	ld	a4,-312(s0)
    80003936:	02f757b3          	divu	a5,a4,a5
    8000393a:	ecf43423          	sd	a5,-312(s0)
    8000393e:	bf7d                	j	800038fc <printnum+0x30>
    80003940:	0001                	nop
    80003942:	a809                	j	80003954 <printnum+0x88>
    80003944:	ebc42703          	lw	a4,-324(s0)
    80003948:	ed843783          	ld	a5,-296(s0)
    8000394c:	ed043583          	ld	a1,-304(s0)
    80003950:	853a                	mv	a0,a4
    80003952:	9782                	jalr	a5
    80003954:	ec042783          	lw	a5,-320(s0)
    80003958:	fff7871b          	addiw	a4,a5,-1
    8000395c:	ece42023          	sw	a4,-320(s0)
    80003960:	fec42703          	lw	a4,-20(s0)
    80003964:	2701                	sext.w	a4,a4
    80003966:	fcf74fe3          	blt	a4,a5,80003944 <printnum+0x78>
    8000396a:	a091                	j	800039ae <printnum+0xe2>
    8000396c:	fec42783          	lw	a5,-20(s0)
    80003970:	078a                	slli	a5,a5,0x2
    80003972:	17c1                	addi	a5,a5,-16
    80003974:	97a2                	add	a5,a5,s0
    80003976:	ef87a703          	lw	a4,-264(a5)
    8000397a:	fec42783          	lw	a5,-20(s0)
    8000397e:	078a                	slli	a5,a5,0x2
    80003980:	17c1                	addi	a5,a5,-16
    80003982:	97a2                	add	a5,a5,s0
    80003984:	ef87a783          	lw	a5,-264(a5)
    80003988:	86be                	mv	a3,a5
    8000398a:	47a5                	li	a5,9
    8000398c:	00d7f563          	bleu	a3,a5,80003996 <printnum+0xca>
    80003990:	05700793          	li	a5,87
    80003994:	a019                	j	8000399a <printnum+0xce>
    80003996:	03000793          	li	a5,48
    8000399a:	9fb9                	addw	a5,a5,a4
    8000399c:	2781                	sext.w	a5,a5
    8000399e:	0007871b          	sext.w	a4,a5
    800039a2:	ed843783          	ld	a5,-296(s0)
    800039a6:	ed043583          	ld	a1,-304(s0)
    800039aa:	853a                	mv	a0,a4
    800039ac:	9782                	jalr	a5
    800039ae:	fec42783          	lw	a5,-20(s0)
    800039b2:	fff7871b          	addiw	a4,a5,-1
    800039b6:	fee42623          	sw	a4,-20(s0)
    800039ba:	faf049e3          	bgtz	a5,8000396c <printnum+0xa0>
    800039be:	0001                	nop
    800039c0:	0001                	nop
    800039c2:	60b6                	ld	ra,328(sp)
    800039c4:	6416                	ld	s0,320(sp)
    800039c6:	6171                	addi	sp,sp,336
    800039c8:	8082                	ret

00000000800039ca <getuint>:
    800039ca:	1101                	addi	sp,sp,-32
    800039cc:	ec22                	sd	s0,24(sp)
    800039ce:	1000                	addi	s0,sp,32
    800039d0:	fea43423          	sd	a0,-24(s0)
    800039d4:	87ae                	mv	a5,a1
    800039d6:	fef42223          	sw	a5,-28(s0)
    800039da:	fe442783          	lw	a5,-28(s0)
    800039de:	0007871b          	sext.w	a4,a5
    800039e2:	4785                	li	a5,1
    800039e4:	00e7dc63          	ble	a4,a5,800039fc <getuint+0x32>
    800039e8:	fe843783          	ld	a5,-24(s0)
    800039ec:	639c                	ld	a5,0(a5)
    800039ee:	00878693          	addi	a3,a5,8
    800039f2:	fe843703          	ld	a4,-24(s0)
    800039f6:	e314                	sd	a3,0(a4)
    800039f8:	639c                	ld	a5,0(a5)
    800039fa:	a815                	j	80003a2e <getuint+0x64>
    800039fc:	fe442783          	lw	a5,-28(s0)
    80003a00:	2781                	sext.w	a5,a5
    80003a02:	cb99                	beqz	a5,80003a18 <getuint+0x4e>
    80003a04:	fe843783          	ld	a5,-24(s0)
    80003a08:	639c                	ld	a5,0(a5)
    80003a0a:	00878693          	addi	a3,a5,8
    80003a0e:	fe843703          	ld	a4,-24(s0)
    80003a12:	e314                	sd	a3,0(a4)
    80003a14:	639c                	ld	a5,0(a5)
    80003a16:	a821                	j	80003a2e <getuint+0x64>
    80003a18:	fe843783          	ld	a5,-24(s0)
    80003a1c:	639c                	ld	a5,0(a5)
    80003a1e:	00878693          	addi	a3,a5,8
    80003a22:	fe843703          	ld	a4,-24(s0)
    80003a26:	e314                	sd	a3,0(a4)
    80003a28:	439c                	lw	a5,0(a5)
    80003a2a:	080787bb          	0x80787bb
    80003a2e:	853e                	mv	a0,a5
    80003a30:	6462                	ld	s0,24(sp)
    80003a32:	6105                	addi	sp,sp,32
    80003a34:	8082                	ret

0000000080003a36 <getint>:
    80003a36:	1101                	addi	sp,sp,-32
    80003a38:	ec22                	sd	s0,24(sp)
    80003a3a:	1000                	addi	s0,sp,32
    80003a3c:	fea43423          	sd	a0,-24(s0)
    80003a40:	87ae                	mv	a5,a1
    80003a42:	fef42223          	sw	a5,-28(s0)
    80003a46:	fe442783          	lw	a5,-28(s0)
    80003a4a:	0007871b          	sext.w	a4,a5
    80003a4e:	4785                	li	a5,1
    80003a50:	00e7dc63          	ble	a4,a5,80003a68 <getint+0x32>
    80003a54:	fe843783          	ld	a5,-24(s0)
    80003a58:	639c                	ld	a5,0(a5)
    80003a5a:	00878693          	addi	a3,a5,8
    80003a5e:	fe843703          	ld	a4,-24(s0)
    80003a62:	e314                	sd	a3,0(a4)
    80003a64:	639c                	ld	a5,0(a5)
    80003a66:	a805                	j	80003a96 <getint+0x60>
    80003a68:	fe442783          	lw	a5,-28(s0)
    80003a6c:	2781                	sext.w	a5,a5
    80003a6e:	cb99                	beqz	a5,80003a84 <getint+0x4e>
    80003a70:	fe843783          	ld	a5,-24(s0)
    80003a74:	639c                	ld	a5,0(a5)
    80003a76:	00878693          	addi	a3,a5,8
    80003a7a:	fe843703          	ld	a4,-24(s0)
    80003a7e:	e314                	sd	a3,0(a4)
    80003a80:	639c                	ld	a5,0(a5)
    80003a82:	a811                	j	80003a96 <getint+0x60>
    80003a84:	fe843783          	ld	a5,-24(s0)
    80003a88:	639c                	ld	a5,0(a5)
    80003a8a:	00878693          	addi	a3,a5,8
    80003a8e:	fe843703          	ld	a4,-24(s0)
    80003a92:	e314                	sd	a3,0(a4)
    80003a94:	439c                	lw	a5,0(a5)
    80003a96:	853e                	mv	a0,a5
    80003a98:	6462                	ld	s0,24(sp)
    80003a9a:	6105                	addi	sp,sp,32
    80003a9c:	8082                	ret

0000000080003a9e <vprintfmt>:
    80003a9e:	7159                	addi	sp,sp,-112
    80003aa0:	f486                	sd	ra,104(sp)
    80003aa2:	f0a2                	sd	s0,96(sp)
    80003aa4:	eca6                	sd	s1,88(sp)
    80003aa6:	e8ca                	sd	s2,80(sp)
    80003aa8:	1880                	addi	s0,sp,112
    80003aaa:	faa43423          	sd	a0,-88(s0)
    80003aae:	fab43023          	sd	a1,-96(s0)
    80003ab2:	f8c43c23          	sd	a2,-104(s0)
    80003ab6:	f8d43823          	sd	a3,-112(s0)
    80003aba:	a831                	j	80003ad6 <vprintfmt+0x38>
    80003abc:	32048a63          	beqz	s1,80003df0 <vprintfmt+0x352>
    80003ac0:	f9843783          	ld	a5,-104(s0)
    80003ac4:	0785                	addi	a5,a5,1
    80003ac6:	f8f43c23          	sd	a5,-104(s0)
    80003aca:	fa843783          	ld	a5,-88(s0)
    80003ace:	fa043583          	ld	a1,-96(s0)
    80003ad2:	8526                	mv	a0,s1
    80003ad4:	9782                	jalr	a5
    80003ad6:	f9843783          	ld	a5,-104(s0)
    80003ada:	0007c783          	lbu	a5,0(a5)
    80003ade:	0007849b          	sext.w	s1,a5
    80003ae2:	8726                	mv	a4,s1
    80003ae4:	02500793          	li	a5,37
    80003ae8:	fcf71ae3          	bne	a4,a5,80003abc <vprintfmt+0x1e>
    80003aec:	f9843783          	ld	a5,-104(s0)
    80003af0:	0785                	addi	a5,a5,1
    80003af2:	f8f43c23          	sd	a5,-104(s0)
    80003af6:	f9843783          	ld	a5,-104(s0)
    80003afa:	faf43c23          	sd	a5,-72(s0)
    80003afe:	02000793          	li	a5,32
    80003b02:	fcf403a3          	sb	a5,-57(s0)
    80003b06:	57fd                	li	a5,-1
    80003b08:	fcf42623          	sw	a5,-52(s0)
    80003b0c:	57fd                	li	a5,-1
    80003b0e:	fcf42423          	sw	a5,-56(s0)
    80003b12:	fc042823          	sw	zero,-48(s0)
    80003b16:	fa042a23          	sw	zero,-76(s0)
    80003b1a:	f9843783          	ld	a5,-104(s0)
    80003b1e:	00178713          	addi	a4,a5,1
    80003b22:	f8e43c23          	sd	a4,-104(s0)
    80003b26:	0007c783          	lbu	a5,0(a5)
    80003b2a:	0007849b          	sext.w	s1,a5
    80003b2e:	fdd4869b          	addiw	a3,s1,-35
    80003b32:	0006871b          	sext.w	a4,a3
    80003b36:	05500793          	li	a5,85
    80003b3a:	28e7ee63          	bltu	a5,a4,80003dd6 <vprintfmt+0x338>
    80003b3e:	080687bb          	0x80687bb
    80003b42:	00279713          	slli	a4,a5,0x2
    80003b46:	00000797          	auipc	a5,0x0
    80003b4a:	7ba78793          	addi	a5,a5,1978 # 80004300 <atol+0x126>
    80003b4e:	97ba                	add	a5,a5,a4
    80003b50:	439c                	lw	a5,0(a5)
    80003b52:	0007871b          	sext.w	a4,a5
    80003b56:	00000797          	auipc	a5,0x0
    80003b5a:	7aa78793          	addi	a5,a5,1962 # 80004300 <atol+0x126>
    80003b5e:	97ba                	add	a5,a5,a4
    80003b60:	8782                	jr	a5
    80003b62:	02d00793          	li	a5,45
    80003b66:	fcf403a3          	sb	a5,-57(s0)
    80003b6a:	bf45                	j	80003b1a <vprintfmt+0x7c>
    80003b6c:	03000793          	li	a5,48
    80003b70:	fcf403a3          	sb	a5,-57(s0)
    80003b74:	b75d                	j	80003b1a <vprintfmt+0x7c>
    80003b76:	fc042423          	sw	zero,-56(s0)
    80003b7a:	fc842783          	lw	a5,-56(s0)
    80003b7e:	873e                	mv	a4,a5
    80003b80:	87ba                	mv	a5,a4
    80003b82:	0027979b          	slliw	a5,a5,0x2
    80003b86:	9fb9                	addw	a5,a5,a4
    80003b88:	0017979b          	slliw	a5,a5,0x1
    80003b8c:	2781                	sext.w	a5,a5
    80003b8e:	9fa5                	addw	a5,a5,s1
    80003b90:	2781                	sext.w	a5,a5
    80003b92:	fd07879b          	addiw	a5,a5,-48
    80003b96:	fcf42423          	sw	a5,-56(s0)
    80003b9a:	f9843783          	ld	a5,-104(s0)
    80003b9e:	0007c783          	lbu	a5,0(a5)
    80003ba2:	0007849b          	sext.w	s1,a5
    80003ba6:	8726                	mv	a4,s1
    80003ba8:	02f00793          	li	a5,47
    80003bac:	04e7d363          	ble	a4,a5,80003bf2 <vprintfmt+0x154>
    80003bb0:	8726                	mv	a4,s1
    80003bb2:	03900793          	li	a5,57
    80003bb6:	02e7ce63          	blt	a5,a4,80003bf2 <vprintfmt+0x154>
    80003bba:	f9843783          	ld	a5,-104(s0)
    80003bbe:	0785                	addi	a5,a5,1
    80003bc0:	f8f43c23          	sd	a5,-104(s0)
    80003bc4:	bf5d                	j	80003b7a <vprintfmt+0xdc>
    80003bc6:	f9043783          	ld	a5,-112(s0)
    80003bca:	00878713          	addi	a4,a5,8
    80003bce:	f8e43823          	sd	a4,-112(s0)
    80003bd2:	439c                	lw	a5,0(a5)
    80003bd4:	fcf42423          	sw	a5,-56(s0)
    80003bd8:	a831                	j	80003bf4 <vprintfmt+0x156>
    80003bda:	fcc42783          	lw	a5,-52(s0)
    80003bde:	2781                	sext.w	a5,a5
    80003be0:	f207dde3          	bgez	a5,80003b1a <vprintfmt+0x7c>
    80003be4:	fc042623          	sw	zero,-52(s0)
    80003be8:	bf0d                	j	80003b1a <vprintfmt+0x7c>
    80003bea:	4785                	li	a5,1
    80003bec:	faf42a23          	sw	a5,-76(s0)
    80003bf0:	b72d                	j	80003b1a <vprintfmt+0x7c>
    80003bf2:	0001                	nop
    80003bf4:	fcc42783          	lw	a5,-52(s0)
    80003bf8:	2781                	sext.w	a5,a5
    80003bfa:	f207d0e3          	bgez	a5,80003b1a <vprintfmt+0x7c>
    80003bfe:	fc842783          	lw	a5,-56(s0)
    80003c02:	fcf42623          	sw	a5,-52(s0)
    80003c06:	57fd                	li	a5,-1
    80003c08:	fcf42423          	sw	a5,-56(s0)
    80003c0c:	b739                	j	80003b1a <vprintfmt+0x7c>
    80003c0e:	fd042783          	lw	a5,-48(s0)
    80003c12:	2785                	addiw	a5,a5,1
    80003c14:	fcf42823          	sw	a5,-48(s0)
    80003c18:	b709                	j	80003b1a <vprintfmt+0x7c>
    80003c1a:	f9043783          	ld	a5,-112(s0)
    80003c1e:	00878713          	addi	a4,a5,8
    80003c22:	f8e43823          	sd	a4,-112(s0)
    80003c26:	4398                	lw	a4,0(a5)
    80003c28:	fa843783          	ld	a5,-88(s0)
    80003c2c:	fa043583          	ld	a1,-96(s0)
    80003c30:	853a                	mv	a0,a4
    80003c32:	9782                	jalr	a5
    80003c34:	aa6d                	j	80003dee <vprintfmt+0x350>
    80003c36:	f9043783          	ld	a5,-112(s0)
    80003c3a:	00878713          	addi	a4,a5,8
    80003c3e:	f8e43823          	sd	a4,-112(s0)
    80003c42:	0007b903          	ld	s2,0(a5)
    80003c46:	00091663          	bnez	s2,80003c52 <vprintfmt+0x1b4>
    80003c4a:	00000917          	auipc	s2,0x0
    80003c4e:	6ae90913          	addi	s2,s2,1710 # 800042f8 <atol+0x11e>
    80003c52:	fcc42783          	lw	a5,-52(s0)
    80003c56:	2781                	sext.w	a5,a5
    80003c58:	06f05b63          	blez	a5,80003cce <vprintfmt+0x230>
    80003c5c:	fc744783          	lbu	a5,-57(s0)
    80003c60:	0ff7f713          	andi	a4,a5,255
    80003c64:	02d00793          	li	a5,45
    80003c68:	06f70363          	beq	a4,a5,80003cce <vprintfmt+0x230>
    80003c6c:	fcc42483          	lw	s1,-52(s0)
    80003c70:	fc842783          	lw	a5,-56(s0)
    80003c74:	85be                	mv	a1,a5
    80003c76:	854a                	mv	a0,s2
    80003c78:	458000ef          	jal	ra,800040d0 <strnlen>
    80003c7c:	87aa                	mv	a5,a0
    80003c7e:	2781                	sext.w	a5,a5
    80003c80:	40f487bb          	subw	a5,s1,a5
    80003c84:	2781                	sext.w	a5,a5
    80003c86:	fcf42623          	sw	a5,-52(s0)
    80003c8a:	a005                	j	80003caa <vprintfmt+0x20c>
    80003c8c:	fc744783          	lbu	a5,-57(s0)
    80003c90:	0007871b          	sext.w	a4,a5
    80003c94:	fa843783          	ld	a5,-88(s0)
    80003c98:	fa043583          	ld	a1,-96(s0)
    80003c9c:	853a                	mv	a0,a4
    80003c9e:	9782                	jalr	a5
    80003ca0:	fcc42783          	lw	a5,-52(s0)
    80003ca4:	37fd                	addiw	a5,a5,-1
    80003ca6:	fcf42623          	sw	a5,-52(s0)
    80003caa:	fcc42783          	lw	a5,-52(s0)
    80003cae:	2781                	sext.w	a5,a5
    80003cb0:	fcf04ee3          	bgtz	a5,80003c8c <vprintfmt+0x1ee>
    80003cb4:	a829                	j	80003cce <vprintfmt+0x230>
    80003cb6:	fa843783          	ld	a5,-88(s0)
    80003cba:	fa043583          	ld	a1,-96(s0)
    80003cbe:	8526                	mv	a0,s1
    80003cc0:	9782                	jalr	a5
    80003cc2:	0905                	addi	s2,s2,1
    80003cc4:	fcc42783          	lw	a5,-52(s0)
    80003cc8:	37fd                	addiw	a5,a5,-1
    80003cca:	fcf42623          	sw	a5,-52(s0)
    80003cce:	00094783          	lbu	a5,0(s2)
    80003cd2:	0007849b          	sext.w	s1,a5
    80003cd6:	cc8d                	beqz	s1,80003d10 <vprintfmt+0x272>
    80003cd8:	fc842783          	lw	a5,-56(s0)
    80003cdc:	2781                	sext.w	a5,a5
    80003cde:	fc07cce3          	bltz	a5,80003cb6 <vprintfmt+0x218>
    80003ce2:	fc842783          	lw	a5,-56(s0)
    80003ce6:	37fd                	addiw	a5,a5,-1
    80003ce8:	fcf42423          	sw	a5,-56(s0)
    80003cec:	fc842783          	lw	a5,-56(s0)
    80003cf0:	2781                	sext.w	a5,a5
    80003cf2:	fc07d2e3          	bgez	a5,80003cb6 <vprintfmt+0x218>
    80003cf6:	a829                	j	80003d10 <vprintfmt+0x272>
    80003cf8:	fa843783          	ld	a5,-88(s0)
    80003cfc:	fa043583          	ld	a1,-96(s0)
    80003d00:	02000513          	li	a0,32
    80003d04:	9782                	jalr	a5
    80003d06:	fcc42783          	lw	a5,-52(s0)
    80003d0a:	37fd                	addiw	a5,a5,-1
    80003d0c:	fcf42623          	sw	a5,-52(s0)
    80003d10:	fcc42783          	lw	a5,-52(s0)
    80003d14:	2781                	sext.w	a5,a5
    80003d16:	fef041e3          	bgtz	a5,80003cf8 <vprintfmt+0x25a>
    80003d1a:	a8d1                	j	80003dee <vprintfmt+0x350>
    80003d1c:	fd042703          	lw	a4,-48(s0)
    80003d20:	f9040793          	addi	a5,s0,-112
    80003d24:	85ba                	mv	a1,a4
    80003d26:	853e                	mv	a0,a5
    80003d28:	d0fff0ef          	jal	ra,80003a36 <getint>
    80003d2c:	87aa                	mv	a5,a0
    80003d2e:	fcf43c23          	sd	a5,-40(s0)
    80003d32:	fd843783          	ld	a5,-40(s0)
    80003d36:	0007df63          	bgez	a5,80003d54 <vprintfmt+0x2b6>
    80003d3a:	fa843783          	ld	a5,-88(s0)
    80003d3e:	fa043583          	ld	a1,-96(s0)
    80003d42:	02d00513          	li	a0,45
    80003d46:	9782                	jalr	a5
    80003d48:	fd843783          	ld	a5,-40(s0)
    80003d4c:	40f007b3          	neg	a5,a5
    80003d50:	fcf43c23          	sd	a5,-40(s0)
    80003d54:	47a9                	li	a5,10
    80003d56:	fcf42a23          	sw	a5,-44(s0)
    80003d5a:	a0b9                	j	80003da8 <vprintfmt+0x30a>
    80003d5c:	47a9                	li	a5,10
    80003d5e:	fcf42a23          	sw	a5,-44(s0)
    80003d62:	a80d                	j	80003d94 <vprintfmt+0x2f6>
    80003d64:	47a1                	li	a5,8
    80003d66:	fcf42a23          	sw	a5,-44(s0)
    80003d6a:	a02d                	j	80003d94 <vprintfmt+0x2f6>
    80003d6c:	4785                	li	a5,1
    80003d6e:	fcf42823          	sw	a5,-48(s0)
    80003d72:	fa843783          	ld	a5,-88(s0)
    80003d76:	fa043583          	ld	a1,-96(s0)
    80003d7a:	03000513          	li	a0,48
    80003d7e:	9782                	jalr	a5
    80003d80:	fa843783          	ld	a5,-88(s0)
    80003d84:	fa043583          	ld	a1,-96(s0)
    80003d88:	07800513          	li	a0,120
    80003d8c:	9782                	jalr	a5
    80003d8e:	47c1                	li	a5,16
    80003d90:	fcf42a23          	sw	a5,-44(s0)
    80003d94:	fd042703          	lw	a4,-48(s0)
    80003d98:	f9040793          	addi	a5,s0,-112
    80003d9c:	85ba                	mv	a1,a4
    80003d9e:	853e                	mv	a0,a5
    80003da0:	c2bff0ef          	jal	ra,800039ca <getuint>
    80003da4:	fca43c23          	sd	a0,-40(s0)
    80003da8:	fd442683          	lw	a3,-44(s0)
    80003dac:	fc744783          	lbu	a5,-57(s0)
    80003db0:	2781                	sext.w	a5,a5
    80003db2:	fcc42703          	lw	a4,-52(s0)
    80003db6:	fd843603          	ld	a2,-40(s0)
    80003dba:	fa043583          	ld	a1,-96(s0)
    80003dbe:	fa843503          	ld	a0,-88(s0)
    80003dc2:	b0bff0ef          	jal	ra,800038cc <printnum>
    80003dc6:	a025                	j	80003dee <vprintfmt+0x350>
    80003dc8:	fa843783          	ld	a5,-88(s0)
    80003dcc:	fa043583          	ld	a1,-96(s0)
    80003dd0:	8526                	mv	a0,s1
    80003dd2:	9782                	jalr	a5
    80003dd4:	a829                	j	80003dee <vprintfmt+0x350>
    80003dd6:	fa843783          	ld	a5,-88(s0)
    80003dda:	fa043583          	ld	a1,-96(s0)
    80003dde:	02500513          	li	a0,37
    80003de2:	9782                	jalr	a5
    80003de4:	fb843783          	ld	a5,-72(s0)
    80003de8:	f8f43c23          	sd	a5,-104(s0)
    80003dec:	0001                	nop
    80003dee:	b1e5                	j	80003ad6 <vprintfmt+0x38>
    80003df0:	0001                	nop
    80003df2:	70a6                	ld	ra,104(sp)
    80003df4:	7406                	ld	s0,96(sp)
    80003df6:	64e6                	ld	s1,88(sp)
    80003df8:	6946                	ld	s2,80(sp)
    80003dfa:	6165                	addi	sp,sp,112
    80003dfc:	8082                	ret

0000000080003dfe <printf>:
    80003dfe:	7159                	addi	sp,sp,-112
    80003e00:	f406                	sd	ra,40(sp)
    80003e02:	f022                	sd	s0,32(sp)
    80003e04:	1800                	addi	s0,sp,48
    80003e06:	fca43c23          	sd	a0,-40(s0)
    80003e0a:	e40c                	sd	a1,8(s0)
    80003e0c:	e810                	sd	a2,16(s0)
    80003e0e:	ec14                	sd	a3,24(s0)
    80003e10:	f018                	sd	a4,32(s0)
    80003e12:	f41c                	sd	a5,40(s0)
    80003e14:	03043823          	sd	a6,48(s0)
    80003e18:	03143c23          	sd	a7,56(s0)
    80003e1c:	04040793          	addi	a5,s0,64
    80003e20:	fcf43823          	sd	a5,-48(s0)
    80003e24:	fd043783          	ld	a5,-48(s0)
    80003e28:	fc878793          	addi	a5,a5,-56
    80003e2c:	fef43423          	sd	a5,-24(s0)
    80003e30:	fe843783          	ld	a5,-24(s0)
    80003e34:	86be                	mv	a3,a5
    80003e36:	fd843603          	ld	a2,-40(s0)
    80003e3a:	4581                	li	a1,0
    80003e3c:	00000517          	auipc	a0,0x0
    80003e40:	99250513          	addi	a0,a0,-1646 # 800037ce <putchar>
    80003e44:	c5bff0ef          	jal	ra,80003a9e <vprintfmt>
    80003e48:	4781                	li	a5,0
    80003e4a:	853e                	mv	a0,a5
    80003e4c:	70a2                	ld	ra,40(sp)
    80003e4e:	7402                	ld	s0,32(sp)
    80003e50:	6165                	addi	sp,sp,112
    80003e52:	8082                	ret

0000000080003e54 <sprintf_putch>:
    80003e54:	7179                	addi	sp,sp,-48
    80003e56:	f422                	sd	s0,40(sp)
    80003e58:	1800                	addi	s0,sp,48
    80003e5a:	87aa                	mv	a5,a0
    80003e5c:	fcb43823          	sd	a1,-48(s0)
    80003e60:	fcf42e23          	sw	a5,-36(s0)
    80003e64:	fd043783          	ld	a5,-48(s0)
    80003e68:	fef43423          	sd	a5,-24(s0)
    80003e6c:	fe843783          	ld	a5,-24(s0)
    80003e70:	639c                	ld	a5,0(a5)
    80003e72:	fdc42703          	lw	a4,-36(s0)
    80003e76:	0ff77713          	andi	a4,a4,255
    80003e7a:	00e78023          	sb	a4,0(a5)
    80003e7e:	fe843783          	ld	a5,-24(s0)
    80003e82:	639c                	ld	a5,0(a5)
    80003e84:	00178713          	addi	a4,a5,1
    80003e88:	fe843783          	ld	a5,-24(s0)
    80003e8c:	e398                	sd	a4,0(a5)
    80003e8e:	0001                	nop
    80003e90:	7422                	ld	s0,40(sp)
    80003e92:	6145                	addi	sp,sp,48
    80003e94:	8082                	ret

0000000080003e96 <sprintf>:
    80003e96:	7159                	addi	sp,sp,-112
    80003e98:	fc06                	sd	ra,56(sp)
    80003e9a:	f822                	sd	s0,48(sp)
    80003e9c:	0080                	addi	s0,sp,64
    80003e9e:	fca43c23          	sd	a0,-40(s0)
    80003ea2:	fcb43823          	sd	a1,-48(s0)
    80003ea6:	e010                	sd	a2,0(s0)
    80003ea8:	e414                	sd	a3,8(s0)
    80003eaa:	e818                	sd	a4,16(s0)
    80003eac:	ec1c                	sd	a5,24(s0)
    80003eae:	03043023          	sd	a6,32(s0)
    80003eb2:	03143423          	sd	a7,40(s0)
    80003eb6:	fd843783          	ld	a5,-40(s0)
    80003eba:	fef43423          	sd	a5,-24(s0)
    80003ebe:	03040793          	addi	a5,s0,48
    80003ec2:	fcf43423          	sd	a5,-56(s0)
    80003ec6:	fc843783          	ld	a5,-56(s0)
    80003eca:	fd078793          	addi	a5,a5,-48
    80003ece:	fef43023          	sd	a5,-32(s0)
    80003ed2:	fe043703          	ld	a4,-32(s0)
    80003ed6:	fd840793          	addi	a5,s0,-40
    80003eda:	86ba                	mv	a3,a4
    80003edc:	fd043603          	ld	a2,-48(s0)
    80003ee0:	85be                	mv	a1,a5
    80003ee2:	00000517          	auipc	a0,0x0
    80003ee6:	f7250513          	addi	a0,a0,-142 # 80003e54 <sprintf_putch>
    80003eea:	bb5ff0ef          	jal	ra,80003a9e <vprintfmt>
    80003eee:	fd843783          	ld	a5,-40(s0)
    80003ef2:	00078023          	sb	zero,0(a5)
    80003ef6:	fd843703          	ld	a4,-40(s0)
    80003efa:	fe843783          	ld	a5,-24(s0)
    80003efe:	40f707b3          	sub	a5,a4,a5
    80003f02:	2781                	sext.w	a5,a5
    80003f04:	853e                	mv	a0,a5
    80003f06:	70e2                	ld	ra,56(sp)
    80003f08:	7442                	ld	s0,48(sp)
    80003f0a:	6165                	addi	sp,sp,112
    80003f0c:	8082                	ret

0000000080003f0e <memcpy>:
    80003f0e:	715d                	addi	sp,sp,-80
    80003f10:	e4a2                	sd	s0,72(sp)
    80003f12:	0880                	addi	s0,sp,80
    80003f14:	fca43423          	sd	a0,-56(s0)
    80003f18:	fcb43023          	sd	a1,-64(s0)
    80003f1c:	fac43c23          	sd	a2,-72(s0)
    80003f20:	fc843703          	ld	a4,-56(s0)
    80003f24:	fc043783          	ld	a5,-64(s0)
    80003f28:	8f5d                	or	a4,a4,a5
    80003f2a:	fb843783          	ld	a5,-72(s0)
    80003f2e:	8fd9                	or	a5,a5,a4
    80003f30:	8b9d                	andi	a5,a5,7
    80003f32:	e3b1                	bnez	a5,80003f76 <memcpy+0x68>
    80003f34:	fc043783          	ld	a5,-64(s0)
    80003f38:	fef43423          	sd	a5,-24(s0)
    80003f3c:	fc843783          	ld	a5,-56(s0)
    80003f40:	fef43023          	sd	a5,-32(s0)
    80003f44:	a839                	j	80003f62 <memcpy+0x54>
    80003f46:	fe843703          	ld	a4,-24(s0)
    80003f4a:	00870793          	addi	a5,a4,8
    80003f4e:	fef43423          	sd	a5,-24(s0)
    80003f52:	fe043783          	ld	a5,-32(s0)
    80003f56:	00878693          	addi	a3,a5,8
    80003f5a:	fed43023          	sd	a3,-32(s0)
    80003f5e:	6318                	ld	a4,0(a4)
    80003f60:	e398                	sd	a4,0(a5)
    80003f62:	fc843703          	ld	a4,-56(s0)
    80003f66:	fb843783          	ld	a5,-72(s0)
    80003f6a:	97ba                	add	a5,a5,a4
    80003f6c:	fe043703          	ld	a4,-32(s0)
    80003f70:	fcf76be3          	bltu	a4,a5,80003f46 <memcpy+0x38>
    80003f74:	a099                	j	80003fba <memcpy+0xac>
    80003f76:	fc043783          	ld	a5,-64(s0)
    80003f7a:	fcf43c23          	sd	a5,-40(s0)
    80003f7e:	fc843783          	ld	a5,-56(s0)
    80003f82:	fcf43823          	sd	a5,-48(s0)
    80003f86:	a00d                	j	80003fa8 <memcpy+0x9a>
    80003f88:	fd843703          	ld	a4,-40(s0)
    80003f8c:	00170793          	addi	a5,a4,1
    80003f90:	fcf43c23          	sd	a5,-40(s0)
    80003f94:	fd043783          	ld	a5,-48(s0)
    80003f98:	00178693          	addi	a3,a5,1
    80003f9c:	fcd43823          	sd	a3,-48(s0)
    80003fa0:	00074703          	lbu	a4,0(a4)
    80003fa4:	00e78023          	sb	a4,0(a5)
    80003fa8:	fc843703          	ld	a4,-56(s0)
    80003fac:	fb843783          	ld	a5,-72(s0)
    80003fb0:	97ba                	add	a5,a5,a4
    80003fb2:	fd043703          	ld	a4,-48(s0)
    80003fb6:	fcf769e3          	bltu	a4,a5,80003f88 <memcpy+0x7a>
    80003fba:	fc843783          	ld	a5,-56(s0)
    80003fbe:	853e                	mv	a0,a5
    80003fc0:	6426                	ld	s0,72(sp)
    80003fc2:	6161                	addi	sp,sp,80
    80003fc4:	8082                	ret

0000000080003fc6 <memset>:
    80003fc6:	715d                	addi	sp,sp,-80
    80003fc8:	e4a2                	sd	s0,72(sp)
    80003fca:	0880                	addi	s0,sp,80
    80003fcc:	fca43423          	sd	a0,-56(s0)
    80003fd0:	87ae                	mv	a5,a1
    80003fd2:	fac43c23          	sd	a2,-72(s0)
    80003fd6:	fcf42223          	sw	a5,-60(s0)
    80003fda:	fc843703          	ld	a4,-56(s0)
    80003fde:	fb843783          	ld	a5,-72(s0)
    80003fe2:	8fd9                	or	a5,a5,a4
    80003fe4:	8b9d                	andi	a5,a5,7
    80003fe6:	e7bd                	bnez	a5,80004054 <memset+0x8e>
    80003fe8:	fc442783          	lw	a5,-60(s0)
    80003fec:	0ff7f793          	andi	a5,a5,255
    80003ff0:	fcf43c23          	sd	a5,-40(s0)
    80003ff4:	fd843783          	ld	a5,-40(s0)
    80003ff8:	07a2                	slli	a5,a5,0x8
    80003ffa:	fd843703          	ld	a4,-40(s0)
    80003ffe:	8fd9                	or	a5,a5,a4
    80004000:	fcf43c23          	sd	a5,-40(s0)
    80004004:	fd843783          	ld	a5,-40(s0)
    80004008:	07c2                	slli	a5,a5,0x10
    8000400a:	fd843703          	ld	a4,-40(s0)
    8000400e:	8fd9                	or	a5,a5,a4
    80004010:	fcf43c23          	sd	a5,-40(s0)
    80004014:	fd843783          	ld	a5,-40(s0)
    80004018:	1782                	slli	a5,a5,0x20
    8000401a:	fd843703          	ld	a4,-40(s0)
    8000401e:	8fd9                	or	a5,a5,a4
    80004020:	fcf43c23          	sd	a5,-40(s0)
    80004024:	fc843783          	ld	a5,-56(s0)
    80004028:	fef43423          	sd	a5,-24(s0)
    8000402c:	a811                	j	80004040 <memset+0x7a>
    8000402e:	fe843783          	ld	a5,-24(s0)
    80004032:	00878713          	addi	a4,a5,8
    80004036:	fee43423          	sd	a4,-24(s0)
    8000403a:	fd843703          	ld	a4,-40(s0)
    8000403e:	e398                	sd	a4,0(a5)
    80004040:	fc843703          	ld	a4,-56(s0)
    80004044:	fb843783          	ld	a5,-72(s0)
    80004048:	97ba                	add	a5,a5,a4
    8000404a:	fe843703          	ld	a4,-24(s0)
    8000404e:	fef760e3          	bltu	a4,a5,8000402e <memset+0x68>
    80004052:	a81d                	j	80004088 <memset+0xc2>
    80004054:	fc843783          	ld	a5,-56(s0)
    80004058:	fef43023          	sd	a5,-32(s0)
    8000405c:	a829                	j	80004076 <memset+0xb0>
    8000405e:	fe043783          	ld	a5,-32(s0)
    80004062:	00178713          	addi	a4,a5,1
    80004066:	fee43023          	sd	a4,-32(s0)
    8000406a:	fc442703          	lw	a4,-60(s0)
    8000406e:	0ff77713          	andi	a4,a4,255
    80004072:	00e78023          	sb	a4,0(a5)
    80004076:	fc843703          	ld	a4,-56(s0)
    8000407a:	fb843783          	ld	a5,-72(s0)
    8000407e:	97ba                	add	a5,a5,a4
    80004080:	fe043703          	ld	a4,-32(s0)
    80004084:	fcf76de3          	bltu	a4,a5,8000405e <memset+0x98>
    80004088:	fc843783          	ld	a5,-56(s0)
    8000408c:	853e                	mv	a0,a5
    8000408e:	6426                	ld	s0,72(sp)
    80004090:	6161                	addi	sp,sp,80
    80004092:	8082                	ret

0000000080004094 <strlen>:
    80004094:	7179                	addi	sp,sp,-48
    80004096:	f422                	sd	s0,40(sp)
    80004098:	1800                	addi	s0,sp,48
    8000409a:	fca43c23          	sd	a0,-40(s0)
    8000409e:	fd843783          	ld	a5,-40(s0)
    800040a2:	fef43423          	sd	a5,-24(s0)
    800040a6:	a031                	j	800040b2 <strlen+0x1e>
    800040a8:	fe843783          	ld	a5,-24(s0)
    800040ac:	0785                	addi	a5,a5,1
    800040ae:	fef43423          	sd	a5,-24(s0)
    800040b2:	fe843783          	ld	a5,-24(s0)
    800040b6:	0007c783          	lbu	a5,0(a5)
    800040ba:	f7fd                	bnez	a5,800040a8 <strlen+0x14>
    800040bc:	fe843703          	ld	a4,-24(s0)
    800040c0:	fd843783          	ld	a5,-40(s0)
    800040c4:	40f707b3          	sub	a5,a4,a5
    800040c8:	853e                	mv	a0,a5
    800040ca:	7422                	ld	s0,40(sp)
    800040cc:	6145                	addi	sp,sp,48
    800040ce:	8082                	ret

00000000800040d0 <strnlen>:
    800040d0:	7179                	addi	sp,sp,-48
    800040d2:	f422                	sd	s0,40(sp)
    800040d4:	1800                	addi	s0,sp,48
    800040d6:	fca43c23          	sd	a0,-40(s0)
    800040da:	fcb43823          	sd	a1,-48(s0)
    800040de:	fd843783          	ld	a5,-40(s0)
    800040e2:	fef43423          	sd	a5,-24(s0)
    800040e6:	a031                	j	800040f2 <strnlen+0x22>
    800040e8:	fe843783          	ld	a5,-24(s0)
    800040ec:	0785                	addi	a5,a5,1
    800040ee:	fef43423          	sd	a5,-24(s0)
    800040f2:	fd043783          	ld	a5,-48(s0)
    800040f6:	fff78713          	addi	a4,a5,-1
    800040fa:	fce43823          	sd	a4,-48(s0)
    800040fe:	c791                	beqz	a5,8000410a <strnlen+0x3a>
    80004100:	fe843783          	ld	a5,-24(s0)
    80004104:	0007c783          	lbu	a5,0(a5)
    80004108:	f3e5                	bnez	a5,800040e8 <strnlen+0x18>
    8000410a:	fe843703          	ld	a4,-24(s0)
    8000410e:	fd843783          	ld	a5,-40(s0)
    80004112:	40f707b3          	sub	a5,a4,a5
    80004116:	853e                	mv	a0,a5
    80004118:	7422                	ld	s0,40(sp)
    8000411a:	6145                	addi	sp,sp,48
    8000411c:	8082                	ret

000000008000411e <strcmp>:
    8000411e:	7179                	addi	sp,sp,-48
    80004120:	f422                	sd	s0,40(sp)
    80004122:	1800                	addi	s0,sp,48
    80004124:	fca43c23          	sd	a0,-40(s0)
    80004128:	fcb43823          	sd	a1,-48(s0)
    8000412c:	fd843783          	ld	a5,-40(s0)
    80004130:	00178713          	addi	a4,a5,1
    80004134:	fce43c23          	sd	a4,-40(s0)
    80004138:	0007c783          	lbu	a5,0(a5)
    8000413c:	fef407a3          	sb	a5,-17(s0)
    80004140:	fd043783          	ld	a5,-48(s0)
    80004144:	00178713          	addi	a4,a5,1
    80004148:	fce43823          	sd	a4,-48(s0)
    8000414c:	0007c783          	lbu	a5,0(a5)
    80004150:	fef40723          	sb	a5,-18(s0)
    80004154:	fef44783          	lbu	a5,-17(s0)
    80004158:	0ff7f793          	andi	a5,a5,255
    8000415c:	cf81                	beqz	a5,80004174 <strcmp+0x56>
    8000415e:	fef44783          	lbu	a5,-17(s0)
    80004162:	873e                	mv	a4,a5
    80004164:	fee44783          	lbu	a5,-18(s0)
    80004168:	0ff77713          	andi	a4,a4,255
    8000416c:	0ff7f793          	andi	a5,a5,255
    80004170:	faf70ee3          	beq	a4,a5,8000412c <strcmp+0xe>
    80004174:	fef44783          	lbu	a5,-17(s0)
    80004178:	0007871b          	sext.w	a4,a5
    8000417c:	fee44783          	lbu	a5,-18(s0)
    80004180:	2781                	sext.w	a5,a5
    80004182:	40f707bb          	subw	a5,a4,a5
    80004186:	2781                	sext.w	a5,a5
    80004188:	853e                	mv	a0,a5
    8000418a:	7422                	ld	s0,40(sp)
    8000418c:	6145                	addi	sp,sp,48
    8000418e:	8082                	ret

0000000080004190 <strcpy>:
    80004190:	7179                	addi	sp,sp,-48
    80004192:	f422                	sd	s0,40(sp)
    80004194:	1800                	addi	s0,sp,48
    80004196:	fca43c23          	sd	a0,-40(s0)
    8000419a:	fcb43823          	sd	a1,-48(s0)
    8000419e:	fd843783          	ld	a5,-40(s0)
    800041a2:	fef43423          	sd	a5,-24(s0)
    800041a6:	0001                	nop
    800041a8:	fd043703          	ld	a4,-48(s0)
    800041ac:	00170793          	addi	a5,a4,1
    800041b0:	fcf43823          	sd	a5,-48(s0)
    800041b4:	fe843783          	ld	a5,-24(s0)
    800041b8:	00178693          	addi	a3,a5,1
    800041bc:	fed43423          	sd	a3,-24(s0)
    800041c0:	00074703          	lbu	a4,0(a4)
    800041c4:	00e78023          	sb	a4,0(a5)
    800041c8:	0007c783          	lbu	a5,0(a5)
    800041cc:	fff1                	bnez	a5,800041a8 <strcpy+0x18>
    800041ce:	fd843783          	ld	a5,-40(s0)
    800041d2:	853e                	mv	a0,a5
    800041d4:	7422                	ld	s0,40(sp)
    800041d6:	6145                	addi	sp,sp,48
    800041d8:	8082                	ret

00000000800041da <atol>:
    800041da:	7179                	addi	sp,sp,-48
    800041dc:	f422                	sd	s0,40(sp)
    800041de:	1800                	addi	s0,sp,48
    800041e0:	fca43c23          	sd	a0,-40(s0)
    800041e4:	fe043423          	sd	zero,-24(s0)
    800041e8:	fe042223          	sw	zero,-28(s0)
    800041ec:	a031                	j	800041f8 <atol+0x1e>
    800041ee:	fd843783          	ld	a5,-40(s0)
    800041f2:	0785                	addi	a5,a5,1
    800041f4:	fcf43c23          	sd	a5,-40(s0)
    800041f8:	fd843783          	ld	a5,-40(s0)
    800041fc:	0007c783          	lbu	a5,0(a5)
    80004200:	873e                	mv	a4,a5
    80004202:	02000793          	li	a5,32
    80004206:	fef704e3          	beq	a4,a5,800041ee <atol+0x14>
    8000420a:	fd843783          	ld	a5,-40(s0)
    8000420e:	0007c783          	lbu	a5,0(a5)
    80004212:	873e                	mv	a4,a5
    80004214:	02d00793          	li	a5,45
    80004218:	00f70b63          	beq	a4,a5,8000422e <atol+0x54>
    8000421c:	fd843783          	ld	a5,-40(s0)
    80004220:	0007c783          	lbu	a5,0(a5)
    80004224:	873e                	mv	a4,a5
    80004226:	02b00793          	li	a5,43
    8000422a:	06f71263          	bne	a4,a5,8000428e <atol+0xb4>
    8000422e:	fd843783          	ld	a5,-40(s0)
    80004232:	0007c783          	lbu	a5,0(a5)
    80004236:	0007871b          	sext.w	a4,a5
    8000423a:	02d00793          	li	a5,45
    8000423e:	40f707b3          	sub	a5,a4,a5
    80004242:	0017b793          	seqz	a5,a5
    80004246:	0ff7f793          	andi	a5,a5,255
    8000424a:	fef42223          	sw	a5,-28(s0)
    8000424e:	fd843783          	ld	a5,-40(s0)
    80004252:	0785                	addi	a5,a5,1
    80004254:	fcf43c23          	sd	a5,-40(s0)
    80004258:	a81d                	j	8000428e <atol+0xb4>
    8000425a:	fe843703          	ld	a4,-24(s0)
    8000425e:	87ba                	mv	a5,a4
    80004260:	078a                	slli	a5,a5,0x2
    80004262:	97ba                	add	a5,a5,a4
    80004264:	0786                	slli	a5,a5,0x1
    80004266:	fef43423          	sd	a5,-24(s0)
    8000426a:	fd843783          	ld	a5,-40(s0)
    8000426e:	00178713          	addi	a4,a5,1
    80004272:	fce43c23          	sd	a4,-40(s0)
    80004276:	0007c783          	lbu	a5,0(a5)
    8000427a:	2781                	sext.w	a5,a5
    8000427c:	fd07879b          	addiw	a5,a5,-48
    80004280:	2781                	sext.w	a5,a5
    80004282:	873e                	mv	a4,a5
    80004284:	fe843783          	ld	a5,-24(s0)
    80004288:	97ba                	add	a5,a5,a4
    8000428a:	fef43423          	sd	a5,-24(s0)
    8000428e:	fd843783          	ld	a5,-40(s0)
    80004292:	0007c783          	lbu	a5,0(a5)
    80004296:	f3f1                	bnez	a5,8000425a <atol+0x80>
    80004298:	fe442783          	lw	a5,-28(s0)
    8000429c:	2781                	sext.w	a5,a5
    8000429e:	c791                	beqz	a5,800042aa <atol+0xd0>
    800042a0:	fe843783          	ld	a5,-24(s0)
    800042a4:	40f007b3          	neg	a5,a5
    800042a8:	a019                	j	800042ae <atol+0xd4>
    800042aa:	fe843783          	ld	a5,-24(s0)
    800042ae:	853e                	mv	a0,a5
    800042b0:	7422                	ld	s0,40(sp)
    800042b2:	6145                	addi	sp,sp,48
    800042b4:	8082                	ret
