riscv32-unknown-elf-objdump -Mmarch=rv32imcxgap9 -d /home/meggiman/projects/pulp-training/sw/memlayout-exercise/mem_test/build/mem/mem

/home/meggiman/projects/pulp-training/sw/memlayout-exercise/mem_test/build/mem/mem:     Dateiformat elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	5000206f          	j	1c00a500 <__rt_handle_illegal_instr>
1c008004:	0840006f          	j	1c008088 <pos_no_irq_handler>
1c008008:	0800006f          	j	1c008088 <pos_no_irq_handler>
1c00800c:	07c0006f          	j	1c008088 <pos_no_irq_handler>
1c008010:	0780006f          	j	1c008088 <pos_no_irq_handler>
1c008014:	0740006f          	j	1c008088 <pos_no_irq_handler>
1c008018:	0700006f          	j	1c008088 <pos_no_irq_handler>
1c00801c:	06c0006f          	j	1c008088 <pos_no_irq_handler>
1c008020:	0680006f          	j	1c008088 <pos_no_irq_handler>
1c008024:	0640006f          	j	1c008088 <pos_no_irq_handler>
1c008028:	0600006f          	j	1c008088 <pos_no_irq_handler>
1c00802c:	05c0006f          	j	1c008088 <pos_no_irq_handler>
1c008030:	0580006f          	j	1c008088 <pos_no_irq_handler>
1c008034:	0540006f          	j	1c008088 <pos_no_irq_handler>
1c008038:	0500006f          	j	1c008088 <pos_no_irq_handler>
1c00803c:	04c0006f          	j	1c008088 <pos_no_irq_handler>
1c008040:	0480006f          	j	1c008088 <pos_no_irq_handler>
1c008044:	0440006f          	j	1c008088 <pos_no_irq_handler>
1c008048:	0400006f          	j	1c008088 <pos_no_irq_handler>
1c00804c:	03c0006f          	j	1c008088 <pos_no_irq_handler>
1c008050:	0380006f          	j	1c008088 <pos_no_irq_handler>
1c008054:	0340006f          	j	1c008088 <pos_no_irq_handler>
1c008058:	0300006f          	j	1c008088 <pos_no_irq_handler>
1c00805c:	02c0006f          	j	1c008088 <pos_no_irq_handler>
1c008060:	0280006f          	j	1c008088 <pos_no_irq_handler>
1c008064:	0240006f          	j	1c008088 <pos_no_irq_handler>
1c008068:	0200006f          	j	1c008088 <pos_no_irq_handler>
1c00806c:	01c0006f          	j	1c008088 <pos_no_irq_handler>
1c008070:	0180006f          	j	1c008088 <pos_no_irq_handler>
1c008074:	0140006f          	j	1c008088 <pos_no_irq_handler>
1c008078:	0100006f          	j	1c008088 <pos_no_irq_handler>
1c00807c:	00c0006f          	j	1c008088 <pos_no_irq_handler>

1c008080 <_start>:
1c008080:	0400006f          	j	1c0080c0 <_stext>

1c008084 <pos_illegal_instr>:
1c008084:	47c0206f          	j	1c00a500 <__rt_handle_illegal_instr>

1c008088 <pos_no_irq_handler>:
1c008088:	30200073          	mret

1c00808c <pos_semihosting_call>:
1c00808c:	00100073          	ebreak
1c008090:	00008067          	ret

1c008094 <do_cl_boot>:
1c008094:	10200137          	lui	sp,0x10200
1c008098:	00100193          	li	gp,1
1c00809c:	00000217          	auipc	tp,0x0
1c0080a0:	fe420213          	addi	tp,tp,-28 # 1c008080 <_start>
1c0080a4:	04412023          	sw	tp,64(sp) # 10200040 <__CTOR_LIST__-0xbdfffc4>
1c0080a8:	00312423          	sw	gp,8(sp)

1c0080ac <loop>:
1c0080ac:	1a10a137          	lui	sp,0x1a10a
1c0080b0:	80010113          	addi	sp,sp,-2048 # 1a109800 <__CTOR_LIST__-0x1ef6804>
1c0080b4:	00012023          	sw	zero,0(sp)
1c0080b8:	10500073          	wfi
1c0080bc:	ff1ff06f          	j	1c0080ac <loop>

Disassembly of section .text:

1c0080c0 <_stext>:
1c0080c0:	ffff9297          	auipc	t0,0xffff9
1c0080c4:	90828293          	addi	t0,t0,-1784 # 1c0009c8 <_bss_start>
1c0080c8:	ffff9317          	auipc	t1,0xffff9
1c0080cc:	92c30313          	addi	t1,t1,-1748 # 1c0009f4 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffff9117          	auipc	sp,0xffff9
1c0080de:	8e610113          	addi	sp,sp,-1818 # 1c0009c0 <stack>
1c0080e2:	14a020ef          	jal	ra,1c00a22c <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	01838393          	addi	t2,t2,24 # 1c008106 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	17e020ef          	jal	ra,1c00a27a <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	259000ef          	jal	ra,1c008b5a <exit>

1c008106 <main>:
1c008106:	7179                	addi	sp,sp,-48
1c008108:	d606                	sw	ra,44(sp)
1c00810a:	d422                	sw	s0,40(sp)
1c00810c:	1800                	addi	s0,sp,48
1c00810e:	4795                	li	a5,5
1c008110:	fcf42a23          	sw	a5,-44(s0)
1c008114:	fd442703          	lw	a4,-44(s0)
1c008118:	1c0017b7          	lui	a5,0x1c001
1c00811c:	9ce7a423          	sw	a4,-1592(a5) # 1c0009c8 <_bss_start>
1c008120:	fd442703          	lw	a4,-44(s0)
1c008124:	1c0017b7          	lui	a5,0x1c001
1c008128:	9ce7a623          	sw	a4,-1588(a5) # 1c0009cc <my_static_var_bss1>
1c00812c:	1c0017b7          	lui	a5,0x1c001
1c008130:	9c87a783          	lw	a5,-1592(a5) # 1c0009c8 <_bss_start>
1c008134:	85be                	mv	a1,a5
1c008136:	1c0007b7          	lui	a5,0x1c000
1c00813a:	01c78513          	addi	a0,a5,28 # 1c00001c <__DTOR_END__>
1c00813e:	253000ef          	jal	ra,1c008b90 <printf>
1c008142:	1c0017b7          	lui	a5,0x1c001
1c008146:	9cc7a783          	lw	a5,-1588(a5) # 1c0009cc <my_static_var_bss1>
1c00814a:	85be                	mv	a1,a5
1c00814c:	1c0007b7          	lui	a5,0x1c000
1c008150:	02878513          	addi	a0,a5,40 # 1c000028 <__DTOR_END__+0xc>
1c008154:	23d000ef          	jal	ra,1c008b90 <printf>
1c008158:	1c0007b7          	lui	a5,0x1c000
1c00815c:	03478513          	addi	a0,a5,52 # 1c000034 <__DTOR_END__+0x18>
1c008160:	127000ef          	jal	ra,1c008a86 <puts>
1c008164:	1b0007b7          	lui	a5,0x1b000
1c008168:	fcf42e23          	sw	a5,-36(s0)
1c00816c:	fdc42783          	lw	a5,-36(s0)
1c008170:	abcdf737          	lui	a4,0xabcdf
1c008174:	f1270713          	addi	a4,a4,-238 # abcdef12 <pulp__FC+0xabcdef13>
1c008178:	c398                	sw	a4,0(a5)
1c00817a:	fdc42783          	lw	a5,-36(s0)
1c00817e:	4398                	lw	a4,0(a5)
1c008180:	abcdf7b7          	lui	a5,0xabcdf
1c008184:	f1278793          	addi	a5,a5,-238 # abcdef12 <pulp__FC+0xabcdef13>
1c008188:	00f70e63          	beq	a4,a5,1c0081a4 <main+0x9e>
1c00818c:	fdc42783          	lw	a5,-36(s0)
1c008190:	439c                	lw	a5,0(a5)
1c008192:	85be                	mv	a1,a5
1c008194:	1c0007b7          	lui	a5,0x1c000
1c008198:	07878513          	addi	a0,a5,120 # 1c000078 <__DTOR_END__+0x5c>
1c00819c:	1f5000ef          	jal	ra,1c008b90 <printf>
1c0081a0:	57fd                	li	a5,-1
1c0081a2:	aa99                	j	1c0082f8 <main+0x1f2>
1c0081a4:	1c0007b7          	lui	a5,0x1c000
1c0081a8:	0a078513          	addi	a0,a5,160 # 1c0000a0 <__DTOR_END__+0x84>
1c0081ac:	0db000ef          	jal	ra,1c008a86 <puts>
1c0081b0:	1c0007b7          	lui	a5,0x1c000
1c0081b4:	0a878513          	addi	a0,a5,168 # 1c0000a8 <__DTOR_END__+0x8c>
1c0081b8:	0cf000ef          	jal	ra,1c008a86 <puts>
1c0081bc:	1c0007b7          	lui	a5,0x1c000
1c0081c0:	0ec78513          	addi	a0,a5,236 # 1c0000ec <__DTOR_END__+0xd0>
1c0081c4:	0c3000ef          	jal	ra,1c008a86 <puts>
1c0081c8:	1c0107b7          	lui	a5,0x1c010
1c0081cc:	fcf42c23          	sw	a5,-40(s0)
1c0081d0:	fe042623          	sw	zero,-20(s0)
1c0081d4:	a891                	j	1c008228 <main+0x122>
1c0081d6:	fe042423          	sw	zero,-24(s0)
1c0081da:	a81d                	j	1c008210 <main+0x10a>
1c0081dc:	fec42703          	lw	a4,-20(s0)
1c0081e0:	3e800793          	li	a5,1000
1c0081e4:	02f70733          	mul	a4,a4,a5
1c0081e8:	fe842783          	lw	a5,-24(s0)
1c0081ec:	00f706b3          	add	a3,a4,a5
1c0081f0:	fec42703          	lw	a4,-20(s0)
1c0081f4:	fe842783          	lw	a5,-24(s0)
1c0081f8:	97ba                	add	a5,a5,a4
1c0081fa:	078a                	slli	a5,a5,0x2
1c0081fc:	fd842703          	lw	a4,-40(s0)
1c008200:	97ba                	add	a5,a5,a4
1c008202:	8736                	mv	a4,a3
1c008204:	c398                	sw	a4,0(a5)
1c008206:	fe842783          	lw	a5,-24(s0)
1c00820a:	0785                	addi	a5,a5,1
1c00820c:	fef42423          	sw	a5,-24(s0)
1c008210:	fe842703          	lw	a4,-24(s0)
1c008214:	06300793          	li	a5,99
1c008218:	fce7d2e3          	ble	a4,a5,1c0081dc <main+0xd6>
1c00821c:	fec42783          	lw	a5,-20(s0)
1c008220:	3e878793          	addi	a5,a5,1000 # 1c0103e8 <__l2_shared_end+0x3e8>
1c008224:	fef42623          	sw	a5,-20(s0)
1c008228:	fec42783          	lw	a5,-20(s0)
1c00822c:	d7cd                	beqz	a5,1c0081d6 <main+0xd0>
1c00822e:	1c0007b7          	lui	a5,0x1c000
1c008232:	11c78513          	addi	a0,a5,284 # 1c00011c <__DTOR_END__+0x100>
1c008236:	051000ef          	jal	ra,1c008a86 <puts>
1c00823a:	fe042223          	sw	zero,-28(s0)
1c00823e:	a05d                	j	1c0082e4 <main+0x1de>
1c008240:	fe042023          	sw	zero,-32(s0)
1c008244:	a069                	j	1c0082ce <main+0x1c8>
1c008246:	fe442703          	lw	a4,-28(s0)
1c00824a:	fe042783          	lw	a5,-32(s0)
1c00824e:	97ba                	add	a5,a5,a4
1c008250:	078a                	slli	a5,a5,0x2
1c008252:	fd842703          	lw	a4,-40(s0)
1c008256:	97ba                	add	a5,a5,a4
1c008258:	439c                	lw	a5,0(a5)
1c00825a:	fe442683          	lw	a3,-28(s0)
1c00825e:	3e800713          	li	a4,1000
1c008262:	02e686b3          	mul	a3,a3,a4
1c008266:	fe042703          	lw	a4,-32(s0)
1c00826a:	9736                	add	a4,a4,a3
1c00826c:	04e78c63          	beq	a5,a4,1c0082c4 <main+0x1be>
1c008270:	fe442703          	lw	a4,-28(s0)
1c008274:	fe042783          	lw	a5,-32(s0)
1c008278:	97ba                	add	a5,a5,a4
1c00827a:	078a                	slli	a5,a5,0x2
1c00827c:	fd842703          	lw	a4,-40(s0)
1c008280:	00f705b3          	add	a1,a4,a5
1c008284:	fe442703          	lw	a4,-28(s0)
1c008288:	fe042783          	lw	a5,-32(s0)
1c00828c:	97ba                	add	a5,a5,a4
1c00828e:	078a                	slli	a5,a5,0x2
1c008290:	fd842703          	lw	a4,-40(s0)
1c008294:	97ba                	add	a5,a5,a4
1c008296:	4394                	lw	a3,0(a5)
1c008298:	fe442703          	lw	a4,-28(s0)
1c00829c:	3e800793          	li	a5,1000
1c0082a0:	02f70733          	mul	a4,a4,a5
1c0082a4:	fe042783          	lw	a5,-32(s0)
1c0082a8:	97ba                	add	a5,a5,a4
1c0082aa:	8736                	mv	a4,a3
1c0082ac:	fe042683          	lw	a3,-32(s0)
1c0082b0:	fe442603          	lw	a2,-28(s0)
1c0082b4:	1c000537          	lui	a0,0x1c000
1c0082b8:	14050513          	addi	a0,a0,320 # 1c000140 <__DTOR_END__+0x124>
1c0082bc:	0d5000ef          	jal	ra,1c008b90 <printf>
1c0082c0:	57fd                	li	a5,-1
1c0082c2:	a81d                	j	1c0082f8 <main+0x1f2>
1c0082c4:	fe042783          	lw	a5,-32(s0)
1c0082c8:	0785                	addi	a5,a5,1
1c0082ca:	fef42023          	sw	a5,-32(s0)
1c0082ce:	fe042703          	lw	a4,-32(s0)
1c0082d2:	47cd                	li	a5,19
1c0082d4:	f6e7d9e3          	ble	a4,a5,1c008246 <main+0x140>
1c0082d8:	fe442783          	lw	a5,-28(s0)
1c0082dc:	3e878793          	addi	a5,a5,1000
1c0082e0:	fef42223          	sw	a5,-28(s0)
1c0082e4:	fe442783          	lw	a5,-28(s0)
1c0082e8:	dfa1                	beqz	a5,1c008240 <main+0x13a>
1c0082ea:	1c0007b7          	lui	a5,0x1c000
1c0082ee:	19878513          	addi	a0,a5,408 # 1c000198 <__DTOR_END__+0x17c>
1c0082f2:	794000ef          	jal	ra,1c008a86 <puts>
1c0082f6:	4781                	li	a5,0
1c0082f8:	853e                	mv	a0,a5
1c0082fa:	50b2                	lw	ra,44(sp)
1c0082fc:	5422                	lw	s0,40(sp)
1c0082fe:	6145                	addi	sp,sp,48
1c008300:	8082                	ret

1c008302 <hal_fll_conf_reg1_set>:
1c008302:	1101                	addi	sp,sp,-32
1c008304:	ce22                	sw	s0,28(sp)
1c008306:	1000                	addi	s0,sp,32
1c008308:	fea42623          	sw	a0,-20(s0)
1c00830c:	feb42423          	sw	a1,-24(s0)
1c008310:	fe842783          	lw	a5,-24(s0)
1c008314:	fec42703          	lw	a4,-20(s0)
1c008318:	0712                	slli	a4,a4,0x4
1c00831a:	00470693          	addi	a3,a4,4
1c00831e:	1a100737          	lui	a4,0x1a100
1c008322:	00f766a3          	p.sw	a5,a3(a4)
1c008326:	0001                	nop
1c008328:	4472                	lw	s0,28(sp)
1c00832a:	6105                	addi	sp,sp,32
1c00832c:	8082                	ret

1c00832e <hal_fll_conf_reg1_get>:
1c00832e:	1101                	addi	sp,sp,-32
1c008330:	ce22                	sw	s0,28(sp)
1c008332:	1000                	addi	s0,sp,32
1c008334:	fea42623          	sw	a0,-20(s0)
1c008338:	fec42783          	lw	a5,-20(s0)
1c00833c:	0792                	slli	a5,a5,0x4
1c00833e:	00478713          	addi	a4,a5,4
1c008342:	1a1007b7          	lui	a5,0x1a100
1c008346:	20e7f783          	p.lw	a5,a4(a5)
1c00834a:	853e                	mv	a0,a5
1c00834c:	4472                	lw	s0,28(sp)
1c00834e:	6105                	addi	sp,sp,32
1c008350:	8082                	ret

1c008352 <hal_fll_conf_reg2_set>:
1c008352:	1101                	addi	sp,sp,-32
1c008354:	ce22                	sw	s0,28(sp)
1c008356:	1000                	addi	s0,sp,32
1c008358:	fea42623          	sw	a0,-20(s0)
1c00835c:	feb42423          	sw	a1,-24(s0)
1c008360:	fe842783          	lw	a5,-24(s0)
1c008364:	fec42703          	lw	a4,-20(s0)
1c008368:	0712                	slli	a4,a4,0x4
1c00836a:	00870693          	addi	a3,a4,8 # 1a100008 <__CTOR_LIST__-0x1effffc>
1c00836e:	1a100737          	lui	a4,0x1a100
1c008372:	00f766a3          	p.sw	a5,a3(a4)
1c008376:	0001                	nop
1c008378:	4472                	lw	s0,28(sp)
1c00837a:	6105                	addi	sp,sp,32
1c00837c:	8082                	ret

1c00837e <hal_fll_conf_reg2_get>:
1c00837e:	1101                	addi	sp,sp,-32
1c008380:	ce22                	sw	s0,28(sp)
1c008382:	1000                	addi	s0,sp,32
1c008384:	fea42623          	sw	a0,-20(s0)
1c008388:	fec42783          	lw	a5,-20(s0)
1c00838c:	0792                	slli	a5,a5,0x4
1c00838e:	00878713          	addi	a4,a5,8 # 1a100008 <__CTOR_LIST__-0x1effffc>
1c008392:	1a1007b7          	lui	a5,0x1a100
1c008396:	20e7f783          	p.lw	a5,a4(a5)
1c00839a:	853e                	mv	a0,a5
1c00839c:	4472                	lw	s0,28(sp)
1c00839e:	6105                	addi	sp,sp,32
1c0083a0:	8082                	ret

1c0083a2 <hal_fll_integrator_set>:
1c0083a2:	1101                	addi	sp,sp,-32
1c0083a4:	ce22                	sw	s0,28(sp)
1c0083a6:	1000                	addi	s0,sp,32
1c0083a8:	fea42623          	sw	a0,-20(s0)
1c0083ac:	feb42423          	sw	a1,-24(s0)
1c0083b0:	fe842783          	lw	a5,-24(s0)
1c0083b4:	fec42703          	lw	a4,-20(s0)
1c0083b8:	0712                	slli	a4,a4,0x4
1c0083ba:	00c70693          	addi	a3,a4,12 # 1a10000c <__CTOR_LIST__-0x1effff8>
1c0083be:	1a100737          	lui	a4,0x1a100
1c0083c2:	00f766a3          	p.sw	a5,a3(a4)
1c0083c6:	0001                	nop
1c0083c8:	4472                	lw	s0,28(sp)
1c0083ca:	6105                	addi	sp,sp,32
1c0083cc:	8082                	ret

1c0083ce <hal_fll_integrator_get>:
1c0083ce:	1101                	addi	sp,sp,-32
1c0083d0:	ce22                	sw	s0,28(sp)
1c0083d2:	1000                	addi	s0,sp,32
1c0083d4:	fea42623          	sw	a0,-20(s0)
1c0083d8:	fec42783          	lw	a5,-20(s0)
1c0083dc:	0792                	slli	a5,a5,0x4
1c0083de:	00c78713          	addi	a4,a5,12 # 1a10000c <__CTOR_LIST__-0x1effff8>
1c0083e2:	1a1007b7          	lui	a5,0x1a100
1c0083e6:	20e7f783          	p.lw	a5,a4(a5)
1c0083ea:	853e                	mv	a0,a5
1c0083ec:	4472                	lw	s0,28(sp)
1c0083ee:	6105                	addi	sp,sp,32
1c0083f0:	8082                	ret

1c0083f2 <hal_fll_update_mult_div>:
1c0083f2:	7179                	addi	sp,sp,-48
1c0083f4:	d606                	sw	ra,44(sp)
1c0083f6:	d422                	sw	s0,40(sp)
1c0083f8:	1800                	addi	s0,sp,48
1c0083fa:	fca42e23          	sw	a0,-36(s0)
1c0083fe:	fcb42c23          	sw	a1,-40(s0)
1c008402:	fcc42a23          	sw	a2,-44(s0)
1c008406:	fdc42503          	lw	a0,-36(s0)
1c00840a:	3715                	jal	1c00832e <hal_fll_conf_reg1_get>
1c00840c:	87aa                	mv	a5,a0
1c00840e:	fef42623          	sw	a5,-20(s0)
1c008412:	fd842783          	lw	a5,-40(s0)
1c008416:	1007d7b3          	p.exthz	a5,a5
1c00841a:	fef41623          	sh	a5,-20(s0)
1c00841e:	fd442783          	lw	a5,-44(s0)
1c008422:	f647b7b3          	p.bclr	a5,a5,27,4
1c008426:	0ff7f713          	andi	a4,a5,255
1c00842a:	fef44783          	lbu	a5,-17(s0)
1c00842e:	c62727b3          	p.insert	a5,a4,3,2
1c008432:	fef407a3          	sb	a5,-17(s0)
1c008436:	fec42783          	lw	a5,-20(s0)
1c00843a:	85be                	mv	a1,a5
1c00843c:	fdc42503          	lw	a0,-36(s0)
1c008440:	35c9                	jal	1c008302 <hal_fll_conf_reg1_set>
1c008442:	0001                	nop
1c008444:	50b2                	lw	ra,44(sp)
1c008446:	5422                	lw	s0,40(sp)
1c008448:	6145                	addi	sp,sp,48
1c00844a:	8082                	ret

1c00844c <pos_fll_get_mult_div_from_freq>:
1c00844c:	7139                	addi	sp,sp,-64
1c00844e:	de22                	sw	s0,60(sp)
1c008450:	0080                	addi	s0,sp,64
1c008452:	fca42623          	sw	a0,-52(s0)
1c008456:	fcb42423          	sw	a1,-56(s0)
1c00845a:	fcc42223          	sw	a2,-60(s0)
1c00845e:	67a1                	lui	a5,0x8
1c008460:	fef42623          	sw	a5,-20(s0)
1c008464:	fcc42783          	lw	a5,-52(s0)
1c008468:	477d                	li	a4,31
1c00846a:	100797b3          	p.fl1	a5,a5
1c00846e:	40f707b3          	sub	a5,a4,a5
1c008472:	477d                	li	a4,31
1c008474:	8f1d                	sub	a4,a4,a5
1c008476:	fec42783          	lw	a5,-20(s0)
1c00847a:	46fd                	li	a3,31
1c00847c:	100797b3          	p.fl1	a5,a5
1c008480:	40f687b3          	sub	a5,a3,a5
1c008484:	46fd                	li	a3,31
1c008486:	40f687b3          	sub	a5,a3,a5
1c00848a:	40f707b3          	sub	a5,a4,a5
1c00848e:	fef42423          	sw	a5,-24(s0)
1c008492:	4739                	li	a4,14
1c008494:	fe842783          	lw	a5,-24(s0)
1c008498:	40f707b3          	sub	a5,a4,a5
1c00849c:	8385                	srli	a5,a5,0x1
1c00849e:	cb81                	beqz	a5,1c0084ae <pos_fll_get_mult_div_from_freq+0x62>
1c0084a0:	4739                	li	a4,14
1c0084a2:	fe842783          	lw	a5,-24(s0)
1c0084a6:	40f707b3          	sub	a5,a4,a5
1c0084aa:	8385                	srli	a5,a5,0x1
1c0084ac:	a011                	j	1c0084b0 <pos_fll_get_mult_div_from_freq+0x64>
1c0084ae:	4785                	li	a5,1
1c0084b0:	fef42223          	sw	a5,-28(s0)
1c0084b4:	fcc42703          	lw	a4,-52(s0)
1c0084b8:	fe442783          	lw	a5,-28(s0)
1c0084bc:	00f71733          	sll	a4,a4,a5
1c0084c0:	fec42783          	lw	a5,-20(s0)
1c0084c4:	02f757b3          	divu	a5,a4,a5
1c0084c8:	fef42023          	sw	a5,-32(s0)
1c0084cc:	fec42703          	lw	a4,-20(s0)
1c0084d0:	fe042783          	lw	a5,-32(s0)
1c0084d4:	02f707b3          	mul	a5,a4,a5
1c0084d8:	fe442703          	lw	a4,-28(s0)
1c0084dc:	177d                	addi	a4,a4,-1
1c0084de:	4685                	li	a3,1
1c0084e0:	00e69733          	sll	a4,a3,a4
1c0084e4:	973e                	add	a4,a4,a5
1c0084e6:	fe442783          	lw	a5,-28(s0)
1c0084ea:	00f757b3          	srl	a5,a4,a5
1c0084ee:	fcf42e23          	sw	a5,-36(s0)
1c0084f2:	fc842783          	lw	a5,-56(s0)
1c0084f6:	fe042703          	lw	a4,-32(s0)
1c0084fa:	c398                	sw	a4,0(a5)
1c0084fc:	fe442783          	lw	a5,-28(s0)
1c008500:	00178713          	addi	a4,a5,1 # 8001 <__CTOR_LIST__-0x1bff8003>
1c008504:	fc442783          	lw	a5,-60(s0)
1c008508:	c398                	sw	a4,0(a5)
1c00850a:	fdc42783          	lw	a5,-36(s0)
1c00850e:	853e                	mv	a0,a5
1c008510:	5472                	lw	s0,60(sp)
1c008512:	6121                	addi	sp,sp,64
1c008514:	8082                	ret

1c008516 <pos_fll_get_freq_from_mult_div>:
1c008516:	7179                	addi	sp,sp,-48
1c008518:	d622                	sw	s0,44(sp)
1c00851a:	1800                	addi	s0,sp,48
1c00851c:	fca42e23          	sw	a0,-36(s0)
1c008520:	fcb42c23          	sw	a1,-40(s0)
1c008524:	67a1                	lui	a5,0x8
1c008526:	fef42623          	sw	a5,-20(s0)
1c00852a:	fec42703          	lw	a4,-20(s0)
1c00852e:	fdc42783          	lw	a5,-36(s0)
1c008532:	02f70733          	mul	a4,a4,a5
1c008536:	fd842783          	lw	a5,-40(s0)
1c00853a:	17fd                	addi	a5,a5,-1
1c00853c:	00f757b3          	srl	a5,a4,a5
1c008540:	fef42423          	sw	a5,-24(s0)
1c008544:	fe842783          	lw	a5,-24(s0)
1c008548:	853e                	mv	a0,a5
1c00854a:	5432                	lw	s0,44(sp)
1c00854c:	6145                	addi	sp,sp,48
1c00854e:	8082                	ret

1c008550 <pos_fll_set_freq>:
1c008550:	7179                	addi	sp,sp,-48
1c008552:	d606                	sw	ra,44(sp)
1c008554:	d422                	sw	s0,40(sp)
1c008556:	1800                	addi	s0,sp,48
1c008558:	fca42e23          	sw	a0,-36(s0)
1c00855c:	fcb42c23          	sw	a1,-40(s0)
1c008560:	fe440713          	addi	a4,s0,-28
1c008564:	fe840793          	addi	a5,s0,-24
1c008568:	863a                	mv	a2,a4
1c00856a:	85be                	mv	a1,a5
1c00856c:	fd842503          	lw	a0,-40(s0)
1c008570:	3df1                	jal	1c00844c <pos_fll_get_mult_div_from_freq>
1c008572:	fea42623          	sw	a0,-20(s0)
1c008576:	fec42703          	lw	a4,-20(s0)
1c00857a:	1c0017b7          	lui	a5,0x1c001
1c00857e:	9d478693          	addi	a3,a5,-1580 # 1c0009d4 <pos_fll_freq>
1c008582:	fdc42783          	lw	a5,-36(s0)
1c008586:	078a                	slli	a5,a5,0x2
1c008588:	97b6                	add	a5,a5,a3
1c00858a:	c398                	sw	a4,0(a5)
1c00858c:	1c0017b7          	lui	a5,0x1c001
1c008590:	9d078713          	addi	a4,a5,-1584 # 1c0009d0 <pos_fll_is_on>
1c008594:	fdc42783          	lw	a5,-36(s0)
1c008598:	97ba                	add	a5,a5,a4
1c00859a:	0007c783          	lbu	a5,0(a5)
1c00859e:	cb99                	beqz	a5,1c0085b4 <pos_fll_set_freq+0x64>
1c0085a0:	fe842783          	lw	a5,-24(s0)
1c0085a4:	873e                	mv	a4,a5
1c0085a6:	fe442783          	lw	a5,-28(s0)
1c0085aa:	863e                	mv	a2,a5
1c0085ac:	85ba                	mv	a1,a4
1c0085ae:	fdc42503          	lw	a0,-36(s0)
1c0085b2:	3581                	jal	1c0083f2 <hal_fll_update_mult_div>
1c0085b4:	fec42783          	lw	a5,-20(s0)
1c0085b8:	853e                	mv	a0,a5
1c0085ba:	50b2                	lw	ra,44(sp)
1c0085bc:	5422                	lw	s0,40(sp)
1c0085be:	6145                	addi	sp,sp,48
1c0085c0:	8082                	ret

1c0085c2 <pos_fll_init>:
1c0085c2:	7179                	addi	sp,sp,-48
1c0085c4:	d606                	sw	ra,44(sp)
1c0085c6:	d422                	sw	s0,40(sp)
1c0085c8:	1800                	addi	s0,sp,48
1c0085ca:	fca42e23          	sw	a0,-36(s0)
1c0085ce:	fdc42503          	lw	a0,-36(s0)
1c0085d2:	3bb1                	jal	1c00832e <hal_fll_conf_reg1_get>
1c0085d4:	87aa                	mv	a5,a0
1c0085d6:	fef42423          	sw	a5,-24(s0)
1c0085da:	feb44783          	lbu	a5,-21(s0)
1c0085de:	cc07b7b3          	p.bclr	a5,a5,6,0
1c0085e2:	0ff7f793          	andi	a5,a5,255
1c0085e6:	e7c1                	bnez	a5,1c00866e <pos_fll_init+0xac>
1c0085e8:	fdc42503          	lw	a0,-36(s0)
1c0085ec:	3b49                	jal	1c00837e <hal_fll_conf_reg2_get>
1c0085ee:	87aa                	mv	a5,a0
1c0085f0:	fef42223          	sw	a5,-28(s0)
1c0085f4:	fe544783          	lbu	a5,-27(s0)
1c0085f8:	4719                	li	a4,6
1c0085fa:	ca2727b3          	p.insert	a5,a4,5,2
1c0085fe:	fef402a3          	sb	a5,-27(s0)
1c008602:	fe645783          	lhu	a5,-26(s0)
1c008606:	05000713          	li	a4,80
1c00860a:	d60727b3          	p.insert	a5,a4,11,0
1c00860e:	fef41323          	sh	a5,-26(s0)
1c008612:	fe442783          	lw	a5,-28(s0)
1c008616:	85be                	mv	a1,a5
1c008618:	fdc42503          	lw	a0,-36(s0)
1c00861c:	3b1d                	jal	1c008352 <hal_fll_conf_reg2_set>
1c00861e:	fdc42503          	lw	a0,-36(s0)
1c008622:	3375                	jal	1c0083ce <hal_fll_integrator_get>
1c008624:	87aa                	mv	a5,a0
1c008626:	fef42023          	sw	a5,-32(s0)
1c00862a:	fe245783          	lhu	a5,-30(s0)
1c00862e:	14c00713          	li	a4,332
1c008632:	d20727b3          	p.insert	a5,a4,9,0
1c008636:	fef41123          	sh	a5,-30(s0)
1c00863a:	fe042783          	lw	a5,-32(s0)
1c00863e:	85be                	mv	a1,a5
1c008640:	fdc42503          	lw	a0,-36(s0)
1c008644:	3bb9                	jal	1c0083a2 <hal_fll_integrator_set>
1c008646:	feb44783          	lbu	a5,-21(s0)
1c00864a:	4705                	li	a4,1
1c00864c:	c06727b3          	p.insert	a5,a4,0,6
1c008650:	fef405a3          	sb	a5,-21(s0)
1c008654:	feb44783          	lbu	a5,-21(s0)
1c008658:	4705                	li	a4,1
1c00865a:	c07727b3          	p.insert	a5,a4,0,7
1c00865e:	fef405a3          	sb	a5,-21(s0)
1c008662:	fe842783          	lw	a5,-24(s0)
1c008666:	85be                	mv	a1,a5
1c008668:	fdc42503          	lw	a0,-36(s0)
1c00866c:	3959                	jal	1c008302 <hal_fll_conf_reg1_set>
1c00866e:	1c0017b7          	lui	a5,0x1c001
1c008672:	9d478713          	addi	a4,a5,-1580 # 1c0009d4 <pos_fll_freq>
1c008676:	fdc42783          	lw	a5,-36(s0)
1c00867a:	078a                	slli	a5,a5,0x2
1c00867c:	97ba                	add	a5,a5,a4
1c00867e:	439c                	lw	a5,0(a5)
1c008680:	fef42623          	sw	a5,-20(s0)
1c008684:	fec42783          	lw	a5,-20(s0)
1c008688:	c799                	beqz	a5,1c008696 <pos_fll_init+0xd4>
1c00868a:	fec42583          	lw	a1,-20(s0)
1c00868e:	fdc42503          	lw	a0,-36(s0)
1c008692:	3d7d                	jal	1c008550 <pos_fll_set_freq>
1c008694:	a815                	j	1c0086c8 <pos_fll_init+0x106>
1c008696:	fe845783          	lhu	a5,-24(s0)
1c00869a:	873e                	mv	a4,a5
1c00869c:	feb44783          	lbu	a5,-21(s0)
1c0086a0:	c62797b3          	p.extractu	a5,a5,3,2
1c0086a4:	0ff7f793          	andi	a5,a5,255
1c0086a8:	85be                	mv	a1,a5
1c0086aa:	853a                	mv	a0,a4
1c0086ac:	35ad                	jal	1c008516 <pos_fll_get_freq_from_mult_div>
1c0086ae:	fea42623          	sw	a0,-20(s0)
1c0086b2:	fec42703          	lw	a4,-20(s0)
1c0086b6:	1c0017b7          	lui	a5,0x1c001
1c0086ba:	9d478693          	addi	a3,a5,-1580 # 1c0009d4 <pos_fll_freq>
1c0086be:	fdc42783          	lw	a5,-36(s0)
1c0086c2:	078a                	slli	a5,a5,0x2
1c0086c4:	97b6                	add	a5,a5,a3
1c0086c6:	c398                	sw	a4,0(a5)
1c0086c8:	1c0017b7          	lui	a5,0x1c001
1c0086cc:	9d078713          	addi	a4,a5,-1584 # 1c0009d0 <pos_fll_is_on>
1c0086d0:	fdc42783          	lw	a5,-36(s0)
1c0086d4:	97ba                	add	a5,a5,a4
1c0086d6:	4705                	li	a4,1
1c0086d8:	00e78023          	sb	a4,0(a5)
1c0086dc:	fec42783          	lw	a5,-20(s0)
1c0086e0:	853e                	mv	a0,a5
1c0086e2:	50b2                	lw	ra,44(sp)
1c0086e4:	5422                	lw	s0,40(sp)
1c0086e6:	6145                	addi	sp,sp,48
1c0086e8:	8082                	ret

1c0086ea <pos_fll_constructor>:
1c0086ea:	1101                	addi	sp,sp,-32
1c0086ec:	ce22                	sw	s0,28(sp)
1c0086ee:	1000                	addi	s0,sp,32
1c0086f0:	fe042623          	sw	zero,-20(s0)
1c0086f4:	a80d                	j	1c008726 <pos_fll_constructor+0x3c>
1c0086f6:	1c0017b7          	lui	a5,0x1c001
1c0086fa:	9d478713          	addi	a4,a5,-1580 # 1c0009d4 <pos_fll_freq>
1c0086fe:	fec42783          	lw	a5,-20(s0)
1c008702:	078a                	slli	a5,a5,0x2
1c008704:	97ba                	add	a5,a5,a4
1c008706:	0007a023          	sw	zero,0(a5)
1c00870a:	1c0017b7          	lui	a5,0x1c001
1c00870e:	9d078713          	addi	a4,a5,-1584 # 1c0009d0 <pos_fll_is_on>
1c008712:	fec42783          	lw	a5,-20(s0)
1c008716:	97ba                	add	a5,a5,a4
1c008718:	00078023          	sb	zero,0(a5)
1c00871c:	fec42783          	lw	a5,-20(s0)
1c008720:	0785                	addi	a5,a5,1
1c008722:	fef42623          	sw	a5,-20(s0)
1c008726:	fec42703          	lw	a4,-20(s0)
1c00872a:	4785                	li	a5,1
1c00872c:	fce7d5e3          	ble	a4,a5,1c0086f6 <pos_fll_constructor+0xc>
1c008730:	0001                	nop
1c008732:	4472                	lw	s0,28(sp)
1c008734:	6105                	addi	sp,sp,32
1c008736:	8082                	ret

1c008738 <pos_soc_init>:
1c008738:	1141                	addi	sp,sp,-16
1c00873a:	c606                	sw	ra,12(sp)
1c00873c:	c422                	sw	s0,8(sp)
1c00873e:	0800                	addi	s0,sp,16
1c008740:	376d                	jal	1c0086ea <pos_fll_constructor>
1c008742:	4501                	li	a0,0
1c008744:	3dbd                	jal	1c0085c2 <pos_fll_init>
1c008746:	87aa                	mv	a5,a0
1c008748:	873e                	mv	a4,a5
1c00874a:	1c0017b7          	lui	a5,0x1c001
1c00874e:	9ce7ae23          	sw	a4,-1572(a5) # 1c0009dc <pos_freq_domains>
1c008752:	4505                	li	a0,1
1c008754:	35bd                	jal	1c0085c2 <pos_fll_init>
1c008756:	87aa                	mv	a5,a0
1c008758:	873e                	mv	a4,a5
1c00875a:	1c0017b7          	lui	a5,0x1c001
1c00875e:	9dc78793          	addi	a5,a5,-1572 # 1c0009dc <pos_freq_domains>
1c008762:	c798                	sw	a4,8(a5)
1c008764:	0001                	nop
1c008766:	40b2                	lw	ra,12(sp)
1c008768:	4422                	lw	s0,8(sp)
1c00876a:	0141                	addi	sp,sp,16
1c00876c:	8082                	ret

1c00876e <core_id>:
1c00876e:	1101                	addi	sp,sp,-32
1c008770:	ce22                	sw	s0,28(sp)
1c008772:	1000                	addi	s0,sp,32
1c008774:	f14027f3          	csrr	a5,mhartid
1c008778:	fef42623          	sw	a5,-20(s0)
1c00877c:	fec42783          	lw	a5,-20(s0)
1c008780:	f457b7b3          	p.bclr	a5,a5,26,5
1c008784:	853e                	mv	a0,a5
1c008786:	4472                	lw	s0,28(sp)
1c008788:	6105                	addi	sp,sp,32
1c00878a:	8082                	ret

1c00878c <cluster_id>:
1c00878c:	1101                	addi	sp,sp,-32
1c00878e:	ce22                	sw	s0,28(sp)
1c008790:	1000                	addi	s0,sp,32
1c008792:	f14027f3          	csrr	a5,mhartid
1c008796:	fef42623          	sw	a5,-20(s0)
1c00879a:	fec42783          	lw	a5,-20(s0)
1c00879e:	8795                	srai	a5,a5,0x5
1c0087a0:	f267b7b3          	p.bclr	a5,a5,25,6
1c0087a4:	853e                	mv	a0,a5
1c0087a6:	4472                	lw	s0,28(sp)
1c0087a8:	6105                	addi	sp,sp,32
1c0087aa:	8082                	ret

1c0087ac <hal_core_id>:
1c0087ac:	1141                	addi	sp,sp,-16
1c0087ae:	c606                	sw	ra,12(sp)
1c0087b0:	c422                	sw	s0,8(sp)
1c0087b2:	0800                	addi	s0,sp,16
1c0087b4:	3f6d                	jal	1c00876e <core_id>
1c0087b6:	87aa                	mv	a5,a0
1c0087b8:	853e                	mv	a0,a5
1c0087ba:	40b2                	lw	ra,12(sp)
1c0087bc:	4422                	lw	s0,8(sp)
1c0087be:	0141                	addi	sp,sp,16
1c0087c0:	8082                	ret

1c0087c2 <hal_cluster_id>:
1c0087c2:	1141                	addi	sp,sp,-16
1c0087c4:	c606                	sw	ra,12(sp)
1c0087c6:	c422                	sw	s0,8(sp)
1c0087c8:	0800                	addi	s0,sp,16
1c0087ca:	37c9                	jal	1c00878c <cluster_id>
1c0087cc:	87aa                	mv	a5,a0
1c0087ce:	853e                	mv	a0,a5
1c0087d0:	40b2                	lw	ra,12(sp)
1c0087d2:	4422                	lw	s0,8(sp)
1c0087d4:	0141                	addi	sp,sp,16
1c0087d6:	8082                	ret

1c0087d8 <hal_itc_enable_clr>:
1c0087d8:	1101                	addi	sp,sp,-32
1c0087da:	ce22                	sw	s0,28(sp)
1c0087dc:	1000                	addi	s0,sp,32
1c0087de:	fea42623          	sw	a0,-20(s0)
1c0087e2:	1a10a7b7          	lui	a5,0x1a10a
1c0087e6:	80878793          	addi	a5,a5,-2040 # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c0087ea:	fec42703          	lw	a4,-20(s0)
1c0087ee:	c398                	sw	a4,0(a5)
1c0087f0:	0001                	nop
1c0087f2:	4472                	lw	s0,28(sp)
1c0087f4:	6105                	addi	sp,sp,32
1c0087f6:	8082                	ret

1c0087f8 <hal_itc_wait_for_interrupt>:
1c0087f8:	1141                	addi	sp,sp,-16
1c0087fa:	c622                	sw	s0,12(sp)
1c0087fc:	0800                	addi	s0,sp,16
1c0087fe:	10500073          	wfi
1c008802:	0001                	nop
1c008804:	4432                	lw	s0,12(sp)
1c008806:	0141                	addi	sp,sp,16
1c008808:	8082                	ret

1c00880a <apb_soc_status_set>:
1c00880a:	1101                	addi	sp,sp,-32
1c00880c:	ce22                	sw	s0,28(sp)
1c00880e:	1000                	addi	s0,sp,32
1c008810:	fea42623          	sw	a0,-20(s0)
1c008814:	1a1047b7          	lui	a5,0x1a104
1c008818:	0a078793          	addi	a5,a5,160 # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00881c:	fec42683          	lw	a3,-20(s0)
1c008820:	80000737          	lui	a4,0x80000
1c008824:	8f55                	or	a4,a4,a3
1c008826:	c398                	sw	a4,0(a5)
1c008828:	0001                	nop
1c00882a:	4472                	lw	s0,28(sp)
1c00882c:	6105                	addi	sp,sp,32
1c00882e:	8082                	ret

1c008830 <memcpy>:
1c008830:	7139                	addi	sp,sp,-64
1c008832:	de22                	sw	s0,60(sp)
1c008834:	0080                	addi	s0,sp,64
1c008836:	fca42623          	sw	a0,-52(s0)
1c00883a:	fcb42423          	sw	a1,-56(s0)
1c00883e:	fcc42223          	sw	a2,-60(s0)
1c008842:	fcc42783          	lw	a5,-52(s0)
1c008846:	fcf42e23          	sw	a5,-36(s0)
1c00884a:	fc842783          	lw	a5,-56(s0)
1c00884e:	fa27b7b3          	p.bclr	a5,a5,29,2
1c008852:	0017b793          	seqz	a5,a5
1c008856:	0ff7f793          	andi	a5,a5,255
1c00885a:	fcf40da3          	sb	a5,-37(s0)
1c00885e:	fcc42783          	lw	a5,-52(s0)
1c008862:	fa27b7b3          	p.bclr	a5,a5,29,2
1c008866:	0017b793          	seqz	a5,a5
1c00886a:	0ff7f793          	andi	a5,a5,255
1c00886e:	fcf40d23          	sb	a5,-38(s0)
1c008872:	fc442783          	lw	a5,-60(s0)
1c008876:	fa27b7b3          	p.bclr	a5,a5,29,2
1c00887a:	0017b793          	seqz	a5,a5
1c00887e:	0ff7f793          	andi	a5,a5,255
1c008882:	fcf40ca3          	sb	a5,-39(s0)
1c008886:	fdb44783          	lbu	a5,-37(s0)
1c00888a:	c7b9                	beqz	a5,1c0088d8 <memcpy+0xa8>
1c00888c:	fda44783          	lbu	a5,-38(s0)
1c008890:	c7a1                	beqz	a5,1c0088d8 <memcpy+0xa8>
1c008892:	fd944783          	lbu	a5,-39(s0)
1c008896:	c3a9                	beqz	a5,1c0088d8 <memcpy+0xa8>
1c008898:	fcc42783          	lw	a5,-52(s0)
1c00889c:	fef42623          	sw	a5,-20(s0)
1c0088a0:	fc842783          	lw	a5,-56(s0)
1c0088a4:	fef42423          	sw	a5,-24(s0)
1c0088a8:	a025                	j	1c0088d0 <memcpy+0xa0>
1c0088aa:	fe842703          	lw	a4,-24(s0)
1c0088ae:	00470793          	addi	a5,a4,4 # 80000004 <pulp__FC+0x80000005>
1c0088b2:	fef42423          	sw	a5,-24(s0)
1c0088b6:	fec42783          	lw	a5,-20(s0)
1c0088ba:	00478693          	addi	a3,a5,4
1c0088be:	fed42623          	sw	a3,-20(s0)
1c0088c2:	4318                	lw	a4,0(a4)
1c0088c4:	c398                	sw	a4,0(a5)
1c0088c6:	fc442783          	lw	a5,-60(s0)
1c0088ca:	17f1                	addi	a5,a5,-4
1c0088cc:	fcf42223          	sw	a5,-60(s0)
1c0088d0:	fc442783          	lw	a5,-60(s0)
1c0088d4:	fbf9                	bnez	a5,1c0088aa <memcpy+0x7a>
1c0088d6:	a091                	j	1c00891a <memcpy+0xea>
1c0088d8:	fcc42783          	lw	a5,-52(s0)
1c0088dc:	fef42223          	sw	a5,-28(s0)
1c0088e0:	fc842783          	lw	a5,-56(s0)
1c0088e4:	fef42023          	sw	a5,-32(s0)
1c0088e8:	a035                	j	1c008914 <memcpy+0xe4>
1c0088ea:	fe042703          	lw	a4,-32(s0)
1c0088ee:	00170793          	addi	a5,a4,1
1c0088f2:	fef42023          	sw	a5,-32(s0)
1c0088f6:	fe442783          	lw	a5,-28(s0)
1c0088fa:	00178693          	addi	a3,a5,1
1c0088fe:	fed42223          	sw	a3,-28(s0)
1c008902:	00074703          	lbu	a4,0(a4)
1c008906:	00e78023          	sb	a4,0(a5)
1c00890a:	fc442783          	lw	a5,-60(s0)
1c00890e:	17fd                	addi	a5,a5,-1
1c008910:	fcf42223          	sw	a5,-60(s0)
1c008914:	fc442783          	lw	a5,-60(s0)
1c008918:	fbe9                	bnez	a5,1c0088ea <memcpy+0xba>
1c00891a:	fdc42783          	lw	a5,-36(s0)
1c00891e:	853e                	mv	a0,a5
1c008920:	5472                	lw	s0,60(sp)
1c008922:	6121                	addi	sp,sp,64
1c008924:	8082                	ret

1c008926 <memmove>:
1c008926:	7179                	addi	sp,sp,-48
1c008928:	d622                	sw	s0,44(sp)
1c00892a:	1800                	addi	s0,sp,48
1c00892c:	fca42e23          	sw	a0,-36(s0)
1c008930:	fcb42c23          	sw	a1,-40(s0)
1c008934:	fcc42a23          	sw	a2,-44(s0)
1c008938:	fdc42783          	lw	a5,-36(s0)
1c00893c:	fef42623          	sw	a5,-20(s0)
1c008940:	fd842783          	lw	a5,-40(s0)
1c008944:	fef42423          	sw	a5,-24(s0)
1c008948:	fec42703          	lw	a4,-20(s0)
1c00894c:	fe842783          	lw	a5,-24(s0)
1c008950:	40f707b3          	sub	a5,a4,a5
1c008954:	873e                	mv	a4,a5
1c008956:	fd442783          	lw	a5,-44(s0)
1c00895a:	06f77163          	bleu	a5,a4,1c0089bc <memmove+0x96>
1c00895e:	a025                	j	1c008986 <memmove+0x60>
1c008960:	fd442783          	lw	a5,-44(s0)
1c008964:	17fd                	addi	a5,a5,-1
1c008966:	fcf42a23          	sw	a5,-44(s0)
1c00896a:	fe842703          	lw	a4,-24(s0)
1c00896e:	fd442783          	lw	a5,-44(s0)
1c008972:	973e                	add	a4,a4,a5
1c008974:	fec42683          	lw	a3,-20(s0)
1c008978:	fd442783          	lw	a5,-44(s0)
1c00897c:	97b6                	add	a5,a5,a3
1c00897e:	00074703          	lbu	a4,0(a4)
1c008982:	00e78023          	sb	a4,0(a5)
1c008986:	fd442783          	lw	a5,-44(s0)
1c00898a:	fbf9                	bnez	a5,1c008960 <memmove+0x3a>
1c00898c:	a81d                	j	1c0089c2 <memmove+0x9c>
1c00898e:	fe842783          	lw	a5,-24(s0)
1c008992:	0007c703          	lbu	a4,0(a5)
1c008996:	fec42783          	lw	a5,-20(s0)
1c00899a:	00e78023          	sb	a4,0(a5)
1c00899e:	fec42783          	lw	a5,-20(s0)
1c0089a2:	0785                	addi	a5,a5,1
1c0089a4:	fef42623          	sw	a5,-20(s0)
1c0089a8:	fe842783          	lw	a5,-24(s0)
1c0089ac:	0785                	addi	a5,a5,1
1c0089ae:	fef42423          	sw	a5,-24(s0)
1c0089b2:	fd442783          	lw	a5,-44(s0)
1c0089b6:	17fd                	addi	a5,a5,-1
1c0089b8:	fcf42a23          	sw	a5,-44(s0)
1c0089bc:	fd442783          	lw	a5,-44(s0)
1c0089c0:	f7f9                	bnez	a5,1c00898e <memmove+0x68>
1c0089c2:	fdc42783          	lw	a5,-36(s0)
1c0089c6:	853e                	mv	a0,a5
1c0089c8:	5432                	lw	s0,44(sp)
1c0089ca:	6145                	addi	sp,sp,48
1c0089cc:	8082                	ret

1c0089ce <strchr>:
1c0089ce:	7179                	addi	sp,sp,-48
1c0089d0:	d622                	sw	s0,44(sp)
1c0089d2:	1800                	addi	s0,sp,48
1c0089d4:	fca42e23          	sw	a0,-36(s0)
1c0089d8:	fcb42c23          	sw	a1,-40(s0)
1c0089dc:	fd842783          	lw	a5,-40(s0)
1c0089e0:	fef407a3          	sb	a5,-17(s0)
1c0089e4:	a031                	j	1c0089f0 <strchr+0x22>
1c0089e6:	fdc42783          	lw	a5,-36(s0)
1c0089ea:	0785                	addi	a5,a5,1
1c0089ec:	fcf42e23          	sw	a5,-36(s0)
1c0089f0:	fdc42783          	lw	a5,-36(s0)
1c0089f4:	0007c783          	lbu	a5,0(a5)
1c0089f8:	fef44703          	lbu	a4,-17(s0)
1c0089fc:	00f70763          	beq	a4,a5,1c008a0a <strchr+0x3c>
1c008a00:	fdc42783          	lw	a5,-36(s0)
1c008a04:	0007c783          	lbu	a5,0(a5)
1c008a08:	fff9                	bnez	a5,1c0089e6 <strchr+0x18>
1c008a0a:	fdc42783          	lw	a5,-36(s0)
1c008a0e:	0007c783          	lbu	a5,0(a5)
1c008a12:	fef44703          	lbu	a4,-17(s0)
1c008a16:	00f71563          	bne	a4,a5,1c008a20 <strchr+0x52>
1c008a1a:	fdc42783          	lw	a5,-36(s0)
1c008a1e:	a011                	j	1c008a22 <strchr+0x54>
1c008a20:	4781                	li	a5,0
1c008a22:	853e                	mv	a0,a5
1c008a24:	5432                	lw	s0,44(sp)
1c008a26:	6145                	addi	sp,sp,48
1c008a28:	8082                	ret

1c008a2a <pos_libc_putc_stdout>:
1c008a2a:	1101                	addi	sp,sp,-32
1c008a2c:	ce06                	sw	ra,28(sp)
1c008a2e:	cc22                	sw	s0,24(sp)
1c008a30:	ca26                	sw	s1,20(sp)
1c008a32:	1000                	addi	s0,sp,32
1c008a34:	87aa                	mv	a5,a0
1c008a36:	fef407a3          	sb	a5,-17(s0)
1c008a3a:	3b8d                	jal	1c0087ac <hal_core_id>
1c008a3c:	87aa                	mv	a5,a0
1c008a3e:	00379493          	slli	s1,a5,0x3
1c008a42:	3341                	jal	1c0087c2 <hal_cluster_id>
1c008a44:	87aa                	mv	a5,a0
1c008a46:	079e                	slli	a5,a5,0x7
1c008a48:	00f48733          	add	a4,s1,a5
1c008a4c:	1a10f7b7          	lui	a5,0x1a10f
1c008a50:	97ba                	add	a5,a5,a4
1c008a52:	873e                	mv	a4,a5
1c008a54:	fef44783          	lbu	a5,-17(s0)
1c008a58:	c31c                	sw	a5,0(a4)
1c008a5a:	0001                	nop
1c008a5c:	40f2                	lw	ra,28(sp)
1c008a5e:	4462                	lw	s0,24(sp)
1c008a60:	44d2                	lw	s1,20(sp)
1c008a62:	6105                	addi	sp,sp,32
1c008a64:	8082                	ret

1c008a66 <pos_putc>:
1c008a66:	1101                	addi	sp,sp,-32
1c008a68:	ce06                	sw	ra,28(sp)
1c008a6a:	cc22                	sw	s0,24(sp)
1c008a6c:	1000                	addi	s0,sp,32
1c008a6e:	87aa                	mv	a5,a0
1c008a70:	fef407a3          	sb	a5,-17(s0)
1c008a74:	fef44783          	lbu	a5,-17(s0)
1c008a78:	853e                	mv	a0,a5
1c008a7a:	3f45                	jal	1c008a2a <pos_libc_putc_stdout>
1c008a7c:	0001                	nop
1c008a7e:	40f2                	lw	ra,28(sp)
1c008a80:	4462                	lw	s0,24(sp)
1c008a82:	6105                	addi	sp,sp,32
1c008a84:	8082                	ret

1c008a86 <puts>:
1c008a86:	7179                	addi	sp,sp,-48
1c008a88:	d606                	sw	ra,44(sp)
1c008a8a:	d422                	sw	s0,40(sp)
1c008a8c:	1800                	addi	s0,sp,48
1c008a8e:	fca42e23          	sw	a0,-36(s0)
1c008a92:	fdc42783          	lw	a5,-36(s0)
1c008a96:	0007c783          	lbu	a5,0(a5) # 1a10f000 <__CTOR_LIST__-0x1ef1004>
1c008a9a:	fef407a3          	sb	a5,-17(s0)
1c008a9e:	fef44783          	lbu	a5,-17(s0)
1c008aa2:	e781                	bnez	a5,1c008aaa <puts+0x24>
1c008aa4:	4529                	li	a0,10
1c008aa6:	37c1                	jal	1c008a66 <pos_putc>
1c008aa8:	a819                	j	1c008abe <puts+0x38>
1c008aaa:	fef44783          	lbu	a5,-17(s0)
1c008aae:	853e                	mv	a0,a5
1c008ab0:	3f5d                	jal	1c008a66 <pos_putc>
1c008ab2:	fdc42783          	lw	a5,-36(s0)
1c008ab6:	0785                	addi	a5,a5,1
1c008ab8:	fcf42e23          	sw	a5,-36(s0)
1c008abc:	bfd9                	j	1c008a92 <puts+0xc>
1c008abe:	4781                	li	a5,0
1c008ac0:	853e                	mv	a0,a5
1c008ac2:	50b2                	lw	ra,44(sp)
1c008ac4:	5422                	lw	s0,40(sp)
1c008ac6:	6145                	addi	sp,sp,48
1c008ac8:	8082                	ret

1c008aca <pos_libc_fputc_locked>:
1c008aca:	1101                	addi	sp,sp,-32
1c008acc:	ce06                	sw	ra,28(sp)
1c008ace:	cc22                	sw	s0,24(sp)
1c008ad0:	1000                	addi	s0,sp,32
1c008ad2:	fea42623          	sw	a0,-20(s0)
1c008ad6:	feb42423          	sw	a1,-24(s0)
1c008ada:	fec42783          	lw	a5,-20(s0)
1c008ade:	0ff7f793          	andi	a5,a5,255
1c008ae2:	853e                	mv	a0,a5
1c008ae4:	3749                	jal	1c008a66 <pos_putc>
1c008ae6:	4781                	li	a5,0
1c008ae8:	853e                	mv	a0,a5
1c008aea:	40f2                	lw	ra,28(sp)
1c008aec:	4462                	lw	s0,24(sp)
1c008aee:	6105                	addi	sp,sp,32
1c008af0:	8082                	ret

1c008af2 <pos_libc_prf_locked>:
1c008af2:	7179                	addi	sp,sp,-48
1c008af4:	d606                	sw	ra,44(sp)
1c008af6:	d422                	sw	s0,40(sp)
1c008af8:	1800                	addi	s0,sp,48
1c008afa:	fca42e23          	sw	a0,-36(s0)
1c008afe:	fcb42c23          	sw	a1,-40(s0)
1c008b02:	fcc42a23          	sw	a2,-44(s0)
1c008b06:	fcd42823          	sw	a3,-48(s0)
1c008b0a:	fd042683          	lw	a3,-48(s0)
1c008b0e:	fd442603          	lw	a2,-44(s0)
1c008b12:	fd842583          	lw	a1,-40(s0)
1c008b16:	fdc42503          	lw	a0,-36(s0)
1c008b1a:	7b3000ef          	jal	ra,1c009acc <pos_libc_prf>
1c008b1e:	fea42623          	sw	a0,-20(s0)
1c008b22:	fec42783          	lw	a5,-20(s0)
1c008b26:	853e                	mv	a0,a5
1c008b28:	50b2                	lw	ra,44(sp)
1c008b2a:	5422                	lw	s0,40(sp)
1c008b2c:	6145                	addi	sp,sp,48
1c008b2e:	8082                	ret

1c008b30 <pos_wait_forever>:
1c008b30:	1141                	addi	sp,sp,-16
1c008b32:	c606                	sw	ra,12(sp)
1c008b34:	c422                	sw	s0,8(sp)
1c008b36:	0800                	addi	s0,sp,16
1c008b38:	4785                	li	a5,1
1c008b3a:	cb89                	beqz	a5,1c008b4c <pos_wait_forever+0x1c>
1c008b3c:	3159                	jal	1c0087c2 <hal_cluster_id>
1c008b3e:	87aa                	mv	a5,a0
1c008b40:	1785                	addi	a5,a5,-31
1c008b42:	0017b793          	seqz	a5,a5
1c008b46:	0ff7f793          	andi	a5,a5,255
1c008b4a:	a011                	j	1c008b4e <pos_wait_forever+0x1e>
1c008b4c:	4781                	li	a5,0
1c008b4e:	c789                	beqz	a5,1c008b58 <pos_wait_forever+0x28>
1c008b50:	557d                	li	a0,-1
1c008b52:	3159                	jal	1c0087d8 <hal_itc_enable_clr>
1c008b54:	3155                	jal	1c0087f8 <hal_itc_wait_for_interrupt>
1c008b56:	bffd                	j	1c008b54 <pos_wait_forever+0x24>
1c008b58:	a001                	j	1c008b58 <pos_wait_forever+0x28>

1c008b5a <exit>:
1c008b5a:	1101                	addi	sp,sp,-32
1c008b5c:	ce06                	sw	ra,28(sp)
1c008b5e:	cc22                	sw	s0,24(sp)
1c008b60:	1000                	addi	s0,sp,32
1c008b62:	fea42623          	sw	a0,-20(s0)
1c008b66:	fec42783          	lw	a5,-20(s0)
1c008b6a:	853e                	mv	a0,a5
1c008b6c:	3979                	jal	1c00880a <apb_soc_status_set>
1c008b6e:	37c9                	jal	1c008b30 <pos_wait_forever>

1c008b70 <pos_io_start>:
1c008b70:	1141                	addi	sp,sp,-16
1c008b72:	c622                	sw	s0,12(sp)
1c008b74:	0800                	addi	s0,sp,16
1c008b76:	4781                	li	a5,0
1c008b78:	853e                	mv	a0,a5
1c008b7a:	4432                	lw	s0,12(sp)
1c008b7c:	0141                	addi	sp,sp,16
1c008b7e:	8082                	ret

1c008b80 <pos_io_stop>:
1c008b80:	1141                	addi	sp,sp,-16
1c008b82:	c622                	sw	s0,12(sp)
1c008b84:	0800                	addi	s0,sp,16
1c008b86:	4781                	li	a5,0
1c008b88:	853e                	mv	a0,a5
1c008b8a:	4432                	lw	s0,12(sp)
1c008b8c:	0141                	addi	sp,sp,16
1c008b8e:	8082                	ret

1c008b90 <printf>:
1c008b90:	715d                	addi	sp,sp,-80
1c008b92:	d606                	sw	ra,44(sp)
1c008b94:	d422                	sw	s0,40(sp)
1c008b96:	1800                	addi	s0,sp,48
1c008b98:	fca42e23          	sw	a0,-36(s0)
1c008b9c:	c04c                	sw	a1,4(s0)
1c008b9e:	c410                	sw	a2,8(s0)
1c008ba0:	c454                	sw	a3,12(s0)
1c008ba2:	c818                	sw	a4,16(s0)
1c008ba4:	c85c                	sw	a5,20(s0)
1c008ba6:	01042c23          	sw	a6,24(s0)
1c008baa:	01142e23          	sw	a7,28(s0)
1c008bae:	02040793          	addi	a5,s0,32
1c008bb2:	1791                	addi	a5,a5,-28
1c008bb4:	fef42423          	sw	a5,-24(s0)
1c008bb8:	fe842783          	lw	a5,-24(s0)
1c008bbc:	86be                	mv	a3,a5
1c008bbe:	fdc42603          	lw	a2,-36(s0)
1c008bc2:	4589                	li	a1,2
1c008bc4:	1c0097b7          	lui	a5,0x1c009
1c008bc8:	aca78513          	addi	a0,a5,-1334 # 1c008aca <pos_libc_fputc_locked>
1c008bcc:	371d                	jal	1c008af2 <pos_libc_prf_locked>
1c008bce:	fea42623          	sw	a0,-20(s0)
1c008bd2:	fec42783          	lw	a5,-20(s0)
1c008bd6:	853e                	mv	a0,a5
1c008bd8:	50b2                	lw	ra,44(sp)
1c008bda:	5422                	lw	s0,40(sp)
1c008bdc:	6161                	addi	sp,sp,80
1c008bde:	8082                	ret

1c008be0 <isupper>:
1c008be0:	1101                	addi	sp,sp,-32
1c008be2:	ce22                	sw	s0,28(sp)
1c008be4:	1000                	addi	s0,sp,32
1c008be6:	fea42623          	sw	a0,-20(s0)
1c008bea:	fec42783          	lw	a5,-20(s0)
1c008bee:	fbf78793          	addi	a5,a5,-65
1c008bf2:	01a7b793          	sltiu	a5,a5,26
1c008bf6:	0ff7f793          	andi	a5,a5,255
1c008bfa:	853e                	mv	a0,a5
1c008bfc:	4472                	lw	s0,28(sp)
1c008bfe:	6105                	addi	sp,sp,32
1c008c00:	8082                	ret

1c008c02 <isdigit>:
1c008c02:	1101                	addi	sp,sp,-32
1c008c04:	ce22                	sw	s0,28(sp)
1c008c06:	1000                	addi	s0,sp,32
1c008c08:	fea42623          	sw	a0,-20(s0)
1c008c0c:	fec42783          	lw	a5,-20(s0)
1c008c10:	fd078793          	addi	a5,a5,-48
1c008c14:	00a7b793          	sltiu	a5,a5,10
1c008c18:	0ff7f793          	andi	a5,a5,255
1c008c1c:	853e                	mv	a0,a5
1c008c1e:	4472                	lw	s0,28(sp)
1c008c20:	6105                	addi	sp,sp,32
1c008c22:	8082                	ret

1c008c24 <pos_libc_uc>:
1c008c24:	1101                	addi	sp,sp,-32
1c008c26:	ce22                	sw	s0,28(sp)
1c008c28:	1000                	addi	s0,sp,32
1c008c2a:	fea42623          	sw	a0,-20(s0)
1c008c2e:	a089                	j	1c008c70 <pos_libc_uc+0x4c>
1c008c30:	fec42783          	lw	a5,-20(s0)
1c008c34:	0007c703          	lbu	a4,0(a5)
1c008c38:	06000793          	li	a5,96
1c008c3c:	02e7f563          	bleu	a4,a5,1c008c66 <pos_libc_uc+0x42>
1c008c40:	fec42783          	lw	a5,-20(s0)
1c008c44:	0007c703          	lbu	a4,0(a5)
1c008c48:	07a00793          	li	a5,122
1c008c4c:	00e7ed63          	bltu	a5,a4,1c008c66 <pos_libc_uc+0x42>
1c008c50:	fec42783          	lw	a5,-20(s0)
1c008c54:	0007c783          	lbu	a5,0(a5)
1c008c58:	1781                	addi	a5,a5,-32
1c008c5a:	0ff7f713          	andi	a4,a5,255
1c008c5e:	fec42783          	lw	a5,-20(s0)
1c008c62:	00e78023          	sb	a4,0(a5)
1c008c66:	fec42783          	lw	a5,-20(s0)
1c008c6a:	0785                	addi	a5,a5,1
1c008c6c:	fef42623          	sw	a5,-20(s0)
1c008c70:	fec42783          	lw	a5,-20(s0)
1c008c74:	0007c783          	lbu	a5,0(a5)
1c008c78:	ffc5                	bnez	a5,1c008c30 <pos_libc_uc+0xc>
1c008c7a:	0001                	nop
1c008c7c:	4472                	lw	s0,28(sp)
1c008c7e:	6105                	addi	sp,sp,32
1c008c80:	8082                	ret

1c008c82 <pos_libc_reverse_and_pad>:
1c008c82:	7179                	addi	sp,sp,-48
1c008c84:	d622                	sw	s0,44(sp)
1c008c86:	1800                	addi	s0,sp,48
1c008c88:	fca42e23          	sw	a0,-36(s0)
1c008c8c:	fcb42c23          	sw	a1,-40(s0)
1c008c90:	fcc42a23          	sw	a2,-44(s0)
1c008c94:	a819                	j	1c008caa <pos_libc_reverse_and_pad+0x28>
1c008c96:	fd842783          	lw	a5,-40(s0)
1c008c9a:	00178713          	addi	a4,a5,1
1c008c9e:	fce42c23          	sw	a4,-40(s0)
1c008ca2:	03000713          	li	a4,48
1c008ca6:	00e78023          	sb	a4,0(a5)
1c008caa:	fd842703          	lw	a4,-40(s0)
1c008cae:	fdc42783          	lw	a5,-36(s0)
1c008cb2:	40f707b3          	sub	a5,a4,a5
1c008cb6:	fd442703          	lw	a4,-44(s0)
1c008cba:	fce7cee3          	blt	a5,a4,1c008c96 <pos_libc_reverse_and_pad+0x14>
1c008cbe:	fd842783          	lw	a5,-40(s0)
1c008cc2:	00078023          	sb	zero,0(a5)
1c008cc6:	fd842703          	lw	a4,-40(s0)
1c008cca:	fdc42783          	lw	a5,-36(s0)
1c008cce:	40f707b3          	sub	a5,a4,a5
1c008cd2:	fef42623          	sw	a5,-20(s0)
1c008cd6:	fd842783          	lw	a5,-40(s0)
1c008cda:	17fd                	addi	a5,a5,-1
1c008cdc:	fcf42c23          	sw	a5,-40(s0)
1c008ce0:	a83d                	j	1c008d1e <pos_libc_reverse_and_pad+0x9c>
1c008ce2:	fd842783          	lw	a5,-40(s0)
1c008ce6:	0007c783          	lbu	a5,0(a5)
1c008cea:	fef405a3          	sb	a5,-21(s0)
1c008cee:	fdc42783          	lw	a5,-36(s0)
1c008cf2:	0007c703          	lbu	a4,0(a5)
1c008cf6:	fd842783          	lw	a5,-40(s0)
1c008cfa:	00e78023          	sb	a4,0(a5)
1c008cfe:	fdc42783          	lw	a5,-36(s0)
1c008d02:	feb44703          	lbu	a4,-21(s0)
1c008d06:	00e78023          	sb	a4,0(a5)
1c008d0a:	fd842783          	lw	a5,-40(s0)
1c008d0e:	17fd                	addi	a5,a5,-1
1c008d10:	fcf42c23          	sw	a5,-40(s0)
1c008d14:	fdc42783          	lw	a5,-36(s0)
1c008d18:	0785                	addi	a5,a5,1
1c008d1a:	fcf42e23          	sw	a5,-36(s0)
1c008d1e:	fd842703          	lw	a4,-40(s0)
1c008d22:	fdc42783          	lw	a5,-36(s0)
1c008d26:	fae7eee3          	bltu	a5,a4,1c008ce2 <pos_libc_reverse_and_pad+0x60>
1c008d2a:	fec42783          	lw	a5,-20(s0)
1c008d2e:	853e                	mv	a0,a5
1c008d30:	5432                	lw	s0,44(sp)
1c008d32:	6145                	addi	sp,sp,48
1c008d34:	8082                	ret

1c008d36 <pos_libc_to_x>:
1c008d36:	7179                	addi	sp,sp,-48
1c008d38:	d606                	sw	ra,44(sp)
1c008d3a:	d422                	sw	s0,40(sp)
1c008d3c:	1800                	addi	s0,sp,48
1c008d3e:	fca42e23          	sw	a0,-36(s0)
1c008d42:	fcb42c23          	sw	a1,-40(s0)
1c008d46:	fcc42a23          	sw	a2,-44(s0)
1c008d4a:	fcd42823          	sw	a3,-48(s0)
1c008d4e:	fdc42783          	lw	a5,-36(s0)
1c008d52:	fef42623          	sw	a5,-20(s0)
1c008d56:	fd442783          	lw	a5,-44(s0)
1c008d5a:	fd842703          	lw	a4,-40(s0)
1c008d5e:	02f777b3          	remu	a5,a4,a5
1c008d62:	fef42423          	sw	a5,-24(s0)
1c008d66:	fd442783          	lw	a5,-44(s0)
1c008d6a:	fd842703          	lw	a4,-40(s0)
1c008d6e:	02f757b3          	divu	a5,a4,a5
1c008d72:	fcf42c23          	sw	a5,-40(s0)
1c008d76:	fe842783          	lw	a5,-24(s0)
1c008d7a:	0ff7f713          	andi	a4,a5,255
1c008d7e:	fe842683          	lw	a3,-24(s0)
1c008d82:	47a5                	li	a5,9
1c008d84:	00d7d563          	ble	a3,a5,1c008d8e <pos_libc_to_x+0x58>
1c008d88:	02700793          	li	a5,39
1c008d8c:	a011                	j	1c008d90 <pos_libc_to_x+0x5a>
1c008d8e:	4781                	li	a5,0
1c008d90:	97ba                	add	a5,a5,a4
1c008d92:	0ff7f713          	andi	a4,a5,255
1c008d96:	fdc42783          	lw	a5,-36(s0)
1c008d9a:	00178693          	addi	a3,a5,1
1c008d9e:	fcd42e23          	sw	a3,-36(s0)
1c008da2:	03070713          	addi	a4,a4,48
1c008da6:	0ff77713          	andi	a4,a4,255
1c008daa:	00e78023          	sb	a4,0(a5)
1c008dae:	fd842783          	lw	a5,-40(s0)
1c008db2:	f3d5                	bnez	a5,1c008d56 <pos_libc_to_x+0x20>
1c008db4:	fd042603          	lw	a2,-48(s0)
1c008db8:	fdc42583          	lw	a1,-36(s0)
1c008dbc:	fec42503          	lw	a0,-20(s0)
1c008dc0:	35c9                	jal	1c008c82 <pos_libc_reverse_and_pad>
1c008dc2:	87aa                	mv	a5,a0
1c008dc4:	853e                	mv	a0,a5
1c008dc6:	50b2                	lw	ra,44(sp)
1c008dc8:	5422                	lw	s0,40(sp)
1c008dca:	6145                	addi	sp,sp,48
1c008dcc:	8082                	ret

1c008dce <pos_libc_to_hex>:
1c008dce:	7139                	addi	sp,sp,-64
1c008dd0:	de06                	sw	ra,60(sp)
1c008dd2:	dc22                	sw	s0,56(sp)
1c008dd4:	0080                	addi	s0,sp,64
1c008dd6:	fca42e23          	sw	a0,-36(s0)
1c008dda:	fcb42c23          	sw	a1,-40(s0)
1c008dde:	fcc42a23          	sw	a2,-44(s0)
1c008de2:	fcd42823          	sw	a3,-48(s0)
1c008de6:	fce42623          	sw	a4,-52(s0)
1c008dea:	fdc42783          	lw	a5,-36(s0)
1c008dee:	fef42623          	sw	a5,-20(s0)
1c008df2:	fd442783          	lw	a5,-44(s0)
1c008df6:	c78d                	beqz	a5,1c008e20 <pos_libc_to_hex+0x52>
1c008df8:	fdc42783          	lw	a5,-36(s0)
1c008dfc:	00178713          	addi	a4,a5,1
1c008e00:	fce42e23          	sw	a4,-36(s0)
1c008e04:	03000713          	li	a4,48
1c008e08:	00e78023          	sb	a4,0(a5)
1c008e0c:	fdc42783          	lw	a5,-36(s0)
1c008e10:	00178713          	addi	a4,a5,1
1c008e14:	fce42e23          	sw	a4,-36(s0)
1c008e18:	07800713          	li	a4,120
1c008e1c:	00e78023          	sb	a4,0(a5)
1c008e20:	fd042683          	lw	a3,-48(s0)
1c008e24:	4641                	li	a2,16
1c008e26:	fd842583          	lw	a1,-40(s0)
1c008e2a:	fdc42503          	lw	a0,-36(s0)
1c008e2e:	3721                	jal	1c008d36 <pos_libc_to_x>
1c008e30:	fea42423          	sw	a0,-24(s0)
1c008e34:	fcc42703          	lw	a4,-52(s0)
1c008e38:	05800793          	li	a5,88
1c008e3c:	00f71563          	bne	a4,a5,1c008e46 <pos_libc_to_hex+0x78>
1c008e40:	fec42503          	lw	a0,-20(s0)
1c008e44:	33c5                	jal	1c008c24 <pos_libc_uc>
1c008e46:	fdc42703          	lw	a4,-36(s0)
1c008e4a:	fec42783          	lw	a5,-20(s0)
1c008e4e:	8f1d                	sub	a4,a4,a5
1c008e50:	fe842783          	lw	a5,-24(s0)
1c008e54:	97ba                	add	a5,a5,a4
1c008e56:	853e                	mv	a0,a5
1c008e58:	50f2                	lw	ra,60(sp)
1c008e5a:	5462                	lw	s0,56(sp)
1c008e5c:	6121                	addi	sp,sp,64
1c008e5e:	8082                	ret

1c008e60 <pos_libc_to_octal>:
1c008e60:	7179                	addi	sp,sp,-48
1c008e62:	d606                	sw	ra,44(sp)
1c008e64:	d422                	sw	s0,40(sp)
1c008e66:	d226                	sw	s1,36(sp)
1c008e68:	1800                	addi	s0,sp,48
1c008e6a:	fca42e23          	sw	a0,-36(s0)
1c008e6e:	fcb42c23          	sw	a1,-40(s0)
1c008e72:	fcc42a23          	sw	a2,-44(s0)
1c008e76:	fcd42823          	sw	a3,-48(s0)
1c008e7a:	fdc42783          	lw	a5,-36(s0)
1c008e7e:	fef42623          	sw	a5,-20(s0)
1c008e82:	fd442783          	lw	a5,-44(s0)
1c008e86:	cb85                	beqz	a5,1c008eb6 <pos_libc_to_octal+0x56>
1c008e88:	fdc42783          	lw	a5,-36(s0)
1c008e8c:	00178713          	addi	a4,a5,1
1c008e90:	fce42e23          	sw	a4,-36(s0)
1c008e94:	03000713          	li	a4,48
1c008e98:	00e78023          	sb	a4,0(a5)
1c008e9c:	fd842783          	lw	a5,-40(s0)
1c008ea0:	eb99                	bnez	a5,1c008eb6 <pos_libc_to_octal+0x56>
1c008ea2:	fdc42783          	lw	a5,-36(s0)
1c008ea6:	00178713          	addi	a4,a5,1
1c008eaa:	fce42e23          	sw	a4,-36(s0)
1c008eae:	00078023          	sb	zero,0(a5)
1c008eb2:	4785                	li	a5,1
1c008eb4:	a00d                	j	1c008ed6 <pos_libc_to_octal+0x76>
1c008eb6:	fdc42703          	lw	a4,-36(s0)
1c008eba:	fec42783          	lw	a5,-20(s0)
1c008ebe:	40f704b3          	sub	s1,a4,a5
1c008ec2:	fd042683          	lw	a3,-48(s0)
1c008ec6:	4621                	li	a2,8
1c008ec8:	fd842583          	lw	a1,-40(s0)
1c008ecc:	fdc42503          	lw	a0,-36(s0)
1c008ed0:	359d                	jal	1c008d36 <pos_libc_to_x>
1c008ed2:	87aa                	mv	a5,a0
1c008ed4:	97a6                	add	a5,a5,s1
1c008ed6:	853e                	mv	a0,a5
1c008ed8:	50b2                	lw	ra,44(sp)
1c008eda:	5422                	lw	s0,40(sp)
1c008edc:	5492                	lw	s1,36(sp)
1c008ede:	6145                	addi	sp,sp,48
1c008ee0:	8082                	ret

1c008ee2 <pos_libc_to_udec>:
1c008ee2:	1101                	addi	sp,sp,-32
1c008ee4:	ce06                	sw	ra,28(sp)
1c008ee6:	cc22                	sw	s0,24(sp)
1c008ee8:	1000                	addi	s0,sp,32
1c008eea:	fea42623          	sw	a0,-20(s0)
1c008eee:	feb42423          	sw	a1,-24(s0)
1c008ef2:	fec42223          	sw	a2,-28(s0)
1c008ef6:	fe442683          	lw	a3,-28(s0)
1c008efa:	4629                	li	a2,10
1c008efc:	fe842583          	lw	a1,-24(s0)
1c008f00:	fec42503          	lw	a0,-20(s0)
1c008f04:	3d0d                	jal	1c008d36 <pos_libc_to_x>
1c008f06:	87aa                	mv	a5,a0
1c008f08:	853e                	mv	a0,a5
1c008f0a:	40f2                	lw	ra,28(sp)
1c008f0c:	4462                	lw	s0,24(sp)
1c008f0e:	6105                	addi	sp,sp,32
1c008f10:	8082                	ret

1c008f12 <pos_libc_to_dec>:
1c008f12:	7139                	addi	sp,sp,-64
1c008f14:	de06                	sw	ra,60(sp)
1c008f16:	dc22                	sw	s0,56(sp)
1c008f18:	0080                	addi	s0,sp,64
1c008f1a:	fca42e23          	sw	a0,-36(s0)
1c008f1e:	fcb42c23          	sw	a1,-40(s0)
1c008f22:	fcc42a23          	sw	a2,-44(s0)
1c008f26:	fcd42823          	sw	a3,-48(s0)
1c008f2a:	fce42623          	sw	a4,-52(s0)
1c008f2e:	fdc42783          	lw	a5,-36(s0)
1c008f32:	fef42623          	sw	a5,-20(s0)
1c008f36:	fd842783          	lw	a5,-40(s0)
1c008f3a:	0207d963          	bgez	a5,1c008f6c <pos_libc_to_dec+0x5a>
1c008f3e:	fdc42783          	lw	a5,-36(s0)
1c008f42:	00178713          	addi	a4,a5,1
1c008f46:	fce42e23          	sw	a4,-36(s0)
1c008f4a:	02d00713          	li	a4,45
1c008f4e:	00e78023          	sb	a4,0(a5)
1c008f52:	fd842703          	lw	a4,-40(s0)
1c008f56:	800007b7          	lui	a5,0x80000
1c008f5a:	04f70463          	beq	a4,a5,1c008fa2 <pos_libc_to_dec+0x90>
1c008f5e:	fd842783          	lw	a5,-40(s0)
1c008f62:	40f007b3          	neg	a5,a5
1c008f66:	fcf42c23          	sw	a5,-40(s0)
1c008f6a:	a825                	j	1c008fa2 <pos_libc_to_dec+0x90>
1c008f6c:	fd442783          	lw	a5,-44(s0)
1c008f70:	cf81                	beqz	a5,1c008f88 <pos_libc_to_dec+0x76>
1c008f72:	fdc42783          	lw	a5,-36(s0)
1c008f76:	00178713          	addi	a4,a5,1 # 80000001 <pulp__FC+0x80000002>
1c008f7a:	fce42e23          	sw	a4,-36(s0)
1c008f7e:	02b00713          	li	a4,43
1c008f82:	00e78023          	sb	a4,0(a5)
1c008f86:	a831                	j	1c008fa2 <pos_libc_to_dec+0x90>
1c008f88:	fd042783          	lw	a5,-48(s0)
1c008f8c:	cb99                	beqz	a5,1c008fa2 <pos_libc_to_dec+0x90>
1c008f8e:	fdc42783          	lw	a5,-36(s0)
1c008f92:	00178713          	addi	a4,a5,1
1c008f96:	fce42e23          	sw	a4,-36(s0)
1c008f9a:	02000713          	li	a4,32
1c008f9e:	00e78023          	sb	a4,0(a5)
1c008fa2:	fd842783          	lw	a5,-40(s0)
1c008fa6:	fcc42603          	lw	a2,-52(s0)
1c008faa:	85be                	mv	a1,a5
1c008fac:	fdc42503          	lw	a0,-36(s0)
1c008fb0:	3f0d                	jal	1c008ee2 <pos_libc_to_udec>
1c008fb2:	87aa                	mv	a5,a0
1c008fb4:	873e                	mv	a4,a5
1c008fb6:	fdc42783          	lw	a5,-36(s0)
1c008fba:	97ba                	add	a5,a5,a4
1c008fbc:	873e                	mv	a4,a5
1c008fbe:	fec42783          	lw	a5,-20(s0)
1c008fc2:	40f707b3          	sub	a5,a4,a5
1c008fc6:	853e                	mv	a0,a5
1c008fc8:	50f2                	lw	ra,60(sp)
1c008fca:	5462                	lw	s0,56(sp)
1c008fcc:	6121                	addi	sp,sp,64
1c008fce:	8082                	ret

1c008fd0 <pos_libc_rlrshift>:
1c008fd0:	1101                	addi	sp,sp,-32
1c008fd2:	ce22                	sw	s0,28(sp)
1c008fd4:	1000                	addi	s0,sp,32
1c008fd6:	fea42623          	sw	a0,-20(s0)
1c008fda:	fec42603          	lw	a2,-20(s0)
1c008fde:	420c                	lw	a1,0(a2)
1c008fe0:	4250                	lw	a2,4(a2)
1c008fe2:	fc15b6b3          	p.bclr	a3,a1,30,1
1c008fe6:	fe063733          	p.bclr	a4,a2,31,0
1c008fea:	fec42603          	lw	a2,-20(s0)
1c008fee:	420c                	lw	a1,0(a2)
1c008ff0:	4250                	lw	a2,4(a2)
1c008ff2:	01f61513          	slli	a0,a2,0x1f
1c008ff6:	0015d793          	srli	a5,a1,0x1
1c008ffa:	8fc9                	or	a5,a5,a0
1c008ffc:	00165813          	srli	a6,a2,0x1
1c009000:	00f685b3          	add	a1,a3,a5
1c009004:	852e                	mv	a0,a1
1c009006:	00d53533          	sltu	a0,a0,a3
1c00900a:	01070633          	add	a2,a4,a6
1c00900e:	00c507b3          	add	a5,a0,a2
1c009012:	863e                	mv	a2,a5
1c009014:	87ae                	mv	a5,a1
1c009016:	8832                	mv	a6,a2
1c009018:	fec42703          	lw	a4,-20(s0)
1c00901c:	c31c                	sw	a5,0(a4)
1c00901e:	01072223          	sw	a6,4(a4)
1c009022:	0001                	nop
1c009024:	4472                	lw	s0,28(sp)
1c009026:	6105                	addi	sp,sp,32
1c009028:	8082                	ret

1c00902a <pos_libc_ldiv5>:
1c00902a:	715d                	addi	sp,sp,-80
1c00902c:	c6a2                	sw	s0,76(sp)
1c00902e:	0880                	addi	s0,sp,80
1c009030:	faa42e23          	sw	a0,-68(s0)
1c009034:	fbc42783          	lw	a5,-68(s0)
1c009038:	0047a803          	lw	a6,4(a5)
1c00903c:	439c                	lw	a5,0(a5)
1c00903e:	fef42023          	sw	a5,-32(s0)
1c009042:	ff042223          	sw	a6,-28(s0)
1c009046:	4781                	li	a5,0
1c009048:	4801                	li	a6,0
1c00904a:	fcf42c23          	sw	a5,-40(s0)
1c00904e:	fd042e23          	sw	a6,-36(s0)
1c009052:	fe042e03          	lw	t3,-32(s0)
1c009056:	fe442e83          	lw	t4,-28(s0)
1c00905a:	4f09                	li	t5,2
1c00905c:	4f81                	li	t6,0
1c00905e:	01ee07b3          	add	a5,t3,t5
1c009062:	853e                	mv	a0,a5
1c009064:	01c53533          	sltu	a0,a0,t3
1c009068:	01fe8833          	add	a6,t4,t6
1c00906c:	9542                	add	a0,a0,a6
1c00906e:	882a                	mv	a6,a0
1c009070:	fef42023          	sw	a5,-32(s0)
1c009074:	ff042223          	sw	a6,-28(s0)
1c009078:	fe042623          	sw	zero,-20(s0)
1c00907c:	aa05                	j	1c0091ac <pos_libc_ldiv5+0x182>
1c00907e:	1c0017b7          	lui	a5,0x1c001
1c009082:	9c078513          	addi	a0,a5,-1600 # 1c0009c0 <stack>
1c009086:	fec42783          	lw	a5,-20(s0)
1c00908a:	97aa                	add	a5,a5,a0
1c00908c:	0007c783          	lbu	a5,0(a5)
1c009090:	0207f513          	andi	a0,a5,32
1c009094:	c519                	beqz	a0,1c0090a2 <pos_libc_ldiv5+0x78>
1c009096:	fe442503          	lw	a0,-28(s0)
1c00909a:	00f556b3          	srl	a3,a0,a5
1c00909e:	4701                	li	a4,0
1c0090a0:	a015                	j	1c0090c4 <pos_libc_ldiv5+0x9a>
1c0090a2:	fe442503          	lw	a0,-28(s0)
1c0090a6:	00151813          	slli	a6,a0,0x1
1c0090aa:	fff7c513          	not	a0,a5
1c0090ae:	00a81533          	sll	a0,a6,a0
1c0090b2:	fe042803          	lw	a6,-32(s0)
1c0090b6:	00f856b3          	srl	a3,a6,a5
1c0090ba:	8ec9                	or	a3,a3,a0
1c0090bc:	fe442503          	lw	a0,-28(s0)
1c0090c0:	00f55733          	srl	a4,a0,a5
1c0090c4:	fcd42a23          	sw	a3,-44(s0)
1c0090c8:	fd442503          	lw	a0,-44(s0)
1c0090cc:	4795                	li	a5,5
1c0090ce:	02f557b3          	divu	a5,a0,a5
1c0090d2:	85be                	mv	a1,a5
1c0090d4:	4601                	li	a2,0
1c0090d6:	1c0017b7          	lui	a5,0x1c001
1c0090da:	9c078513          	addi	a0,a5,-1600 # 1c0009c0 <stack>
1c0090de:	fec42783          	lw	a5,-20(s0)
1c0090e2:	97aa                	add	a5,a5,a0
1c0090e4:	0007c783          	lbu	a5,0(a5)
1c0090e8:	0207f513          	andi	a0,a5,32
1c0090ec:	c901                	beqz	a0,1c0090fc <pos_libc_ldiv5+0xd2>
1c0090ee:	00f597b3          	sll	a5,a1,a5
1c0090f2:	fcf42623          	sw	a5,-52(s0)
1c0090f6:	fc042423          	sw	zero,-56(s0)
1c0090fa:	a00d                	j	1c00911c <pos_libc_ldiv5+0xf2>
1c0090fc:	0015d813          	srli	a6,a1,0x1
1c009100:	fff7c513          	not	a0,a5
1c009104:	00a85533          	srl	a0,a6,a0
1c009108:	00f61833          	sll	a6,a2,a5
1c00910c:	00a86533          	or	a0,a6,a0
1c009110:	fca42623          	sw	a0,-52(s0)
1c009114:	00f597b3          	sll	a5,a1,a5
1c009118:	fcf42423          	sw	a5,-56(s0)
1c00911c:	fc842f03          	lw	t5,-56(s0)
1c009120:	fcc42f83          	lw	t6,-52(s0)
1c009124:	87fa                	mv	a5,t5
1c009126:	887e                	mv	a6,t6
1c009128:	01e7d513          	srli	a0,a5,0x1e
1c00912c:	00281393          	slli	t2,a6,0x2
1c009130:	007563b3          	or	t2,a0,t2
1c009134:	00279313          	slli	t1,a5,0x2
1c009138:	879a                	mv	a5,t1
1c00913a:	881e                	mv	a6,t2
1c00913c:	01e78e33          	add	t3,a5,t5
1c009140:	8572                	mv	a0,t3
1c009142:	00f53533          	sltu	a0,a0,a5
1c009146:	01f80eb3          	add	t4,a6,t6
1c00914a:	01d507b3          	add	a5,a0,t4
1c00914e:	8ebe                	mv	t4,a5
1c009150:	8f72                	mv	t5,t3
1c009152:	8ff6                	mv	t6,t4
1c009154:	fe042e03          	lw	t3,-32(s0)
1c009158:	fe442e83          	lw	t4,-28(s0)
1c00915c:	41ee07b3          	sub	a5,t3,t5
1c009160:	853e                	mv	a0,a5
1c009162:	00ae3533          	sltu	a0,t3,a0
1c009166:	41fe8833          	sub	a6,t4,t6
1c00916a:	40a80533          	sub	a0,a6,a0
1c00916e:	882a                	mv	a6,a0
1c009170:	fef42023          	sw	a5,-32(s0)
1c009174:	ff042223          	sw	a6,-28(s0)
1c009178:	fd842e03          	lw	t3,-40(s0)
1c00917c:	fdc42e83          	lw	t4,-36(s0)
1c009180:	fc842f03          	lw	t5,-56(s0)
1c009184:	fcc42f83          	lw	t6,-52(s0)
1c009188:	01ee07b3          	add	a5,t3,t5
1c00918c:	853e                	mv	a0,a5
1c00918e:	01c53533          	sltu	a0,a0,t3
1c009192:	01fe8833          	add	a6,t4,t6
1c009196:	9542                	add	a0,a0,a6
1c009198:	882a                	mv	a6,a0
1c00919a:	fcf42c23          	sw	a5,-40(s0)
1c00919e:	fd042e23          	sw	a6,-36(s0)
1c0091a2:	fec42783          	lw	a5,-20(s0)
1c0091a6:	0785                	addi	a5,a5,1
1c0091a8:	fef42623          	sw	a5,-20(s0)
1c0091ac:	fec42503          	lw	a0,-20(s0)
1c0091b0:	4789                	li	a5,2
1c0091b2:	eca7f6e3          	bleu	a0,a5,1c00907e <pos_libc_ldiv5+0x54>
1c0091b6:	fbc42703          	lw	a4,-68(s0)
1c0091ba:	fd842783          	lw	a5,-40(s0)
1c0091be:	fdc42803          	lw	a6,-36(s0)
1c0091c2:	c31c                	sw	a5,0(a4)
1c0091c4:	01072223          	sw	a6,4(a4)
1c0091c8:	0001                	nop
1c0091ca:	4436                	lw	s0,76(sp)
1c0091cc:	6161                	addi	sp,sp,80
1c0091ce:	8082                	ret

1c0091d0 <pos_libc_get_digit>:
1c0091d0:	7179                	addi	sp,sp,-48
1c0091d2:	d622                	sw	s0,44(sp)
1c0091d4:	d44a                	sw	s2,40(sp)
1c0091d6:	d24e                	sw	s3,36(sp)
1c0091d8:	1800                	addi	s0,sp,48
1c0091da:	fca42e23          	sw	a0,-36(s0)
1c0091de:	fcb42c23          	sw	a1,-40(s0)
1c0091e2:	fd842783          	lw	a5,-40(s0)
1c0091e6:	439c                	lw	a5,0(a5)
1c0091e8:	0af05663          	blez	a5,1c009294 <pos_libc_get_digit+0xc4>
1c0091ec:	fd842783          	lw	a5,-40(s0)
1c0091f0:	439c                	lw	a5,0(a5)
1c0091f2:	fff78613          	addi	a2,a5,-1
1c0091f6:	fd842783          	lw	a5,-40(s0)
1c0091fa:	c390                	sw	a2,0(a5)
1c0091fc:	fdc42783          	lw	a5,-36(s0)
1c009200:	0007ae03          	lw	t3,0(a5)
1c009204:	0047ae83          	lw	t4,4(a5)
1c009208:	87f2                	mv	a5,t3
1c00920a:	8876                	mv	a6,t4
1c00920c:	01e7d613          	srli	a2,a5,0x1e
1c009210:	00281393          	slli	t2,a6,0x2
1c009214:	007663b3          	or	t2,a2,t2
1c009218:	00279313          	slli	t1,a5,0x2
1c00921c:	879a                	mv	a5,t1
1c00921e:	881e                	mv	a6,t2
1c009220:	01c785b3          	add	a1,a5,t3
1c009224:	852e                	mv	a0,a1
1c009226:	00f53533          	sltu	a0,a0,a5
1c00922a:	01d80633          	add	a2,a6,t4
1c00922e:	00c507b3          	add	a5,a0,a2
1c009232:	863e                	mv	a2,a5
1c009234:	87ae                	mv	a5,a1
1c009236:	8832                	mv	a6,a2
1c009238:	01f7d613          	srli	a2,a5,0x1f
1c00923c:	00181713          	slli	a4,a6,0x1
1c009240:	8f51                	or	a4,a4,a2
1c009242:	00179693          	slli	a3,a5,0x1
1c009246:	87b6                	mv	a5,a3
1c009248:	883a                	mv	a6,a4
1c00924a:	fdc42703          	lw	a4,-36(s0)
1c00924e:	c31c                	sw	a5,0(a4)
1c009250:	01072223          	sw	a6,4(a4)
1c009254:	fdc42783          	lw	a5,-36(s0)
1c009258:	0047a803          	lw	a6,4(a5)
1c00925c:	439c                	lw	a5,0(a5)
1c00925e:	01c85913          	srli	s2,a6,0x1c
1c009262:	4981                	li	s3,0
1c009264:	87ca                	mv	a5,s2
1c009266:	03078793          	addi	a5,a5,48
1c00926a:	fef42623          	sw	a5,-20(s0)
1c00926e:	fdc42783          	lw	a5,-36(s0)
1c009272:	0047a803          	lw	a6,4(a5)
1c009276:	439c                	lw	a5,0(a5)
1c009278:	fff7ff13          	andi	t5,a5,-1
1c00927c:	10000737          	lui	a4,0x10000
1c009280:	177d                	addi	a4,a4,-1
1c009282:	00e87fb3          	and	t6,a6,a4
1c009286:	fdc42783          	lw	a5,-36(s0)
1c00928a:	01e7a023          	sw	t5,0(a5)
1c00928e:	01f7a223          	sw	t6,4(a5)
1c009292:	a029                	j	1c00929c <pos_libc_get_digit+0xcc>
1c009294:	03000793          	li	a5,48
1c009298:	fef42623          	sw	a5,-20(s0)
1c00929c:	fec42783          	lw	a5,-20(s0)
1c0092a0:	0ff7f793          	andi	a5,a5,255
1c0092a4:	853e                	mv	a0,a5
1c0092a6:	5432                	lw	s0,44(sp)
1c0092a8:	5922                	lw	s2,40(sp)
1c0092aa:	5992                	lw	s3,36(sp)
1c0092ac:	6145                	addi	sp,sp,48
1c0092ae:	8082                	ret

1c0092b0 <pos_libc_to_float>:
1c0092b0:	7171                	addi	sp,sp,-176
1c0092b2:	d706                	sw	ra,172(sp)
1c0092b4:	d522                	sw	s0,168(sp)
1c0092b6:	d326                	sw	s1,164(sp)
1c0092b8:	d14a                	sw	s2,160(sp)
1c0092ba:	cf4e                	sw	s3,156(sp)
1c0092bc:	cd52                	sw	s4,152(sp)
1c0092be:	cb56                	sw	s5,148(sp)
1c0092c0:	c95a                	sw	s6,144(sp)
1c0092c2:	c75e                	sw	s7,140(sp)
1c0092c4:	c562                	sw	s8,136(sp)
1c0092c6:	c366                	sw	s9,132(sp)
1c0092c8:	c16a                	sw	s10,128(sp)
1c0092ca:	1900                	addi	s0,sp,176
1c0092cc:	faa42623          	sw	a0,-84(s0)
1c0092d0:	fab42023          	sw	a1,-96(s0)
1c0092d4:	fac42223          	sw	a2,-92(s0)
1c0092d8:	fad42423          	sw	a3,-88(s0)
1c0092dc:	f8e42e23          	sw	a4,-100(s0)
1c0092e0:	f8f42c23          	sw	a5,-104(s0)
1c0092e4:	f9042a23          	sw	a6,-108(s0)
1c0092e8:	f9142823          	sw	a7,-112(s0)
1c0092ec:	fac42783          	lw	a5,-84(s0)
1c0092f0:	fcf42423          	sw	a5,-56(s0)
1c0092f4:	fa442783          	lw	a5,-92(s0)
1c0092f8:	83d1                	srli	a5,a5,0x14
1c0092fa:	f8f42423          	sw	a5,-120(s0)
1c0092fe:	f8042623          	sw	zero,-116(s0)
1c009302:	f8842783          	lw	a5,-120(s0)
1c009306:	e8b7b933          	p.bclr	s2,a5,20,11
1c00930a:	fa042783          	lw	a5,-96(s0)
1c00930e:	0157d713          	srli	a4,a5,0x15
1c009312:	fa442783          	lw	a5,-92(s0)
1c009316:	00b79393          	slli	t2,a5,0xb
1c00931a:	007763b3          	or	t2,a4,t2
1c00931e:	fa042783          	lw	a5,-96(s0)
1c009322:	00b79313          	slli	t1,a5,0xb
1c009326:	fff37713          	andi	a4,t1,-1
1c00932a:	f8e42023          	sw	a4,-128(s0)
1c00932e:	800007b7          	lui	a5,0x80000
1c009332:	fff7c793          	not	a5,a5
1c009336:	00f3f7b3          	and	a5,t2,a5
1c00933a:	f8f42223          	sw	a5,-124(s0)
1c00933e:	f8042783          	lw	a5,-128(s0)
1c009342:	f8442803          	lw	a6,-124(s0)
1c009346:	faf42c23          	sw	a5,-72(s0)
1c00934a:	fb042e23          	sw	a6,-68(s0)
1c00934e:	fa042783          	lw	a5,-96(s0)
1c009352:	fa442803          	lw	a6,-92(s0)
1c009356:	01f85793          	srli	a5,a6,0x1f
1c00935a:	0ff7f793          	andi	a5,a5,255
1c00935e:	fcf42223          	sw	a5,-60(s0)
1c009362:	7ff00793          	li	a5,2047
1c009366:	14f91863          	bne	s2,a5,1c0094b6 <pos_libc_to_float+0x206>
1c00936a:	fc442783          	lw	a5,-60(s0)
1c00936e:	cb99                	beqz	a5,1c009384 <pos_libc_to_float+0xd4>
1c009370:	fac42783          	lw	a5,-84(s0)
1c009374:	00178713          	addi	a4,a5,1 # 80000001 <pulp__FC+0x80000002>
1c009378:	fae42623          	sw	a4,-84(s0)
1c00937c:	02d00713          	li	a4,45
1c009380:	00e78023          	sb	a4,0(a5)
1c009384:	fb842683          	lw	a3,-72(s0)
1c009388:	fbc42703          	lw	a4,-68(s0)
1c00938c:	87b6                	mv	a5,a3
1c00938e:	8fd9                	or	a5,a5,a4
1c009390:	e7c9                	bnez	a5,1c00941a <pos_libc_to_float+0x16a>
1c009392:	fa842503          	lw	a0,-88(s0)
1c009396:	84bff0ef          	jal	ra,1c008be0 <isupper>
1c00939a:	87aa                	mv	a5,a0
1c00939c:	c3a1                	beqz	a5,1c0093dc <pos_libc_to_float+0x12c>
1c00939e:	fac42783          	lw	a5,-84(s0)
1c0093a2:	00178713          	addi	a4,a5,1
1c0093a6:	fae42623          	sw	a4,-84(s0)
1c0093aa:	04900713          	li	a4,73
1c0093ae:	00e78023          	sb	a4,0(a5)
1c0093b2:	fac42783          	lw	a5,-84(s0)
1c0093b6:	00178713          	addi	a4,a5,1
1c0093ba:	fae42623          	sw	a4,-84(s0)
1c0093be:	04e00713          	li	a4,78
1c0093c2:	00e78023          	sb	a4,0(a5)
1c0093c6:	fac42783          	lw	a5,-84(s0)
1c0093ca:	00178713          	addi	a4,a5,1
1c0093ce:	fae42623          	sw	a4,-84(s0)
1c0093d2:	04600713          	li	a4,70
1c0093d6:	00e78023          	sb	a4,0(a5)
1c0093da:	a0d9                	j	1c0094a0 <pos_libc_to_float+0x1f0>
1c0093dc:	fac42783          	lw	a5,-84(s0)
1c0093e0:	00178713          	addi	a4,a5,1
1c0093e4:	fae42623          	sw	a4,-84(s0)
1c0093e8:	06900713          	li	a4,105
1c0093ec:	00e78023          	sb	a4,0(a5)
1c0093f0:	fac42783          	lw	a5,-84(s0)
1c0093f4:	00178713          	addi	a4,a5,1
1c0093f8:	fae42623          	sw	a4,-84(s0)
1c0093fc:	06e00713          	li	a4,110
1c009400:	00e78023          	sb	a4,0(a5)
1c009404:	fac42783          	lw	a5,-84(s0)
1c009408:	00178713          	addi	a4,a5,1
1c00940c:	fae42623          	sw	a4,-84(s0)
1c009410:	06600713          	li	a4,102
1c009414:	00e78023          	sb	a4,0(a5)
1c009418:	a061                	j	1c0094a0 <pos_libc_to_float+0x1f0>
1c00941a:	fa842503          	lw	a0,-88(s0)
1c00941e:	fc2ff0ef          	jal	ra,1c008be0 <isupper>
1c009422:	87aa                	mv	a5,a0
1c009424:	c3a1                	beqz	a5,1c009464 <pos_libc_to_float+0x1b4>
1c009426:	fac42783          	lw	a5,-84(s0)
1c00942a:	00178713          	addi	a4,a5,1
1c00942e:	fae42623          	sw	a4,-84(s0)
1c009432:	04e00713          	li	a4,78
1c009436:	00e78023          	sb	a4,0(a5)
1c00943a:	fac42783          	lw	a5,-84(s0)
1c00943e:	00178713          	addi	a4,a5,1
1c009442:	fae42623          	sw	a4,-84(s0)
1c009446:	04100713          	li	a4,65
1c00944a:	00e78023          	sb	a4,0(a5)
1c00944e:	fac42783          	lw	a5,-84(s0)
1c009452:	00178713          	addi	a4,a5,1
1c009456:	fae42623          	sw	a4,-84(s0)
1c00945a:	04e00713          	li	a4,78
1c00945e:	00e78023          	sb	a4,0(a5)
1c009462:	a83d                	j	1c0094a0 <pos_libc_to_float+0x1f0>
1c009464:	fac42783          	lw	a5,-84(s0)
1c009468:	00178713          	addi	a4,a5,1
1c00946c:	fae42623          	sw	a4,-84(s0)
1c009470:	06e00713          	li	a4,110
1c009474:	00e78023          	sb	a4,0(a5)
1c009478:	fac42783          	lw	a5,-84(s0)
1c00947c:	00178713          	addi	a4,a5,1
1c009480:	fae42623          	sw	a4,-84(s0)
1c009484:	06100713          	li	a4,97
1c009488:	00e78023          	sb	a4,0(a5)
1c00948c:	fac42783          	lw	a5,-84(s0)
1c009490:	00178713          	addi	a4,a5,1
1c009494:	fae42623          	sw	a4,-84(s0)
1c009498:	06e00713          	li	a4,110
1c00949c:	00e78023          	sb	a4,0(a5)
1c0094a0:	fac42783          	lw	a5,-84(s0)
1c0094a4:	00078023          	sb	zero,0(a5)
1c0094a8:	fac42703          	lw	a4,-84(s0)
1c0094ac:	fc842783          	lw	a5,-56(s0)
1c0094b0:	40f707b3          	sub	a5,a4,a5
1c0094b4:	a345                	j	1c009a54 <pos_libc_to_float+0x7a4>
1c0094b6:	fa842703          	lw	a4,-88(s0)
1c0094ba:	04600793          	li	a5,70
1c0094be:	00f71663          	bne	a4,a5,1c0094ca <pos_libc_to_float+0x21a>
1c0094c2:	06600793          	li	a5,102
1c0094c6:	faf42423          	sw	a5,-88(s0)
1c0094ca:	8f4a                	mv	t5,s2
1c0094cc:	41f95793          	srai	a5,s2,0x1f
1c0094d0:	8fbe                	mv	t6,a5
1c0094d2:	fb842783          	lw	a5,-72(s0)
1c0094d6:	fbc42803          	lw	a6,-68(s0)
1c0094da:	00ff6e33          	or	t3,t5,a5
1c0094de:	010feeb3          	or	t4,t6,a6
1c0094e2:	87f2                	mv	a5,t3
1c0094e4:	01d7e7b3          	or	a5,a5,t4
1c0094e8:	cb9d                	beqz	a5,1c00951e <pos_libc_to_float+0x26e>
1c0094ea:	c0290913          	addi	s2,s2,-1022
1c0094ee:	fb842783          	lw	a5,-72(s0)
1c0094f2:	fbc42803          	lw	a6,-68(s0)
1c0094f6:	0007e713          	ori	a4,a5,0
1c0094fa:	f6e42c23          	sw	a4,-136(s0)
1c0094fe:	80000737          	lui	a4,0x80000
1c009502:	00e86733          	or	a4,a6,a4
1c009506:	f6e42e23          	sw	a4,-132(s0)
1c00950a:	f7842783          	lw	a5,-136(s0)
1c00950e:	f7c42803          	lw	a6,-132(s0)
1c009512:	faf42c23          	sw	a5,-72(s0)
1c009516:	fb042e23          	sw	a6,-68(s0)
1c00951a:	4485                	li	s1,1
1c00951c:	a011                	j	1c009520 <pos_libc_to_float+0x270>
1c00951e:	4481                	li	s1,0
1c009520:	cc99                	beqz	s1,1c00953e <pos_libc_to_float+0x28e>
1c009522:	fc442783          	lw	a5,-60(s0)
1c009526:	cf81                	beqz	a5,1c00953e <pos_libc_to_float+0x28e>
1c009528:	fac42783          	lw	a5,-84(s0)
1c00952c:	00178713          	addi	a4,a5,1
1c009530:	fae42623          	sw	a4,-84(s0)
1c009534:	02d00713          	li	a4,45
1c009538:	00e78023          	sb	a4,0(a5)
1c00953c:	a825                	j	1c009574 <pos_libc_to_float+0x2c4>
1c00953e:	f9842783          	lw	a5,-104(s0)
1c009542:	cf81                	beqz	a5,1c00955a <pos_libc_to_float+0x2aa>
1c009544:	fac42783          	lw	a5,-84(s0)
1c009548:	00178713          	addi	a4,a5,1
1c00954c:	fae42623          	sw	a4,-84(s0)
1c009550:	02b00713          	li	a4,43
1c009554:	00e78023          	sb	a4,0(a5)
1c009558:	a831                	j	1c009574 <pos_libc_to_float+0x2c4>
1c00955a:	f9442783          	lw	a5,-108(s0)
1c00955e:	cb99                	beqz	a5,1c009574 <pos_libc_to_float+0x2c4>
1c009560:	fac42783          	lw	a5,-84(s0)
1c009564:	00178713          	addi	a4,a5,1
1c009568:	fae42623          	sw	a4,-84(s0)
1c00956c:	02000713          	li	a4,32
1c009570:	00e78023          	sb	a4,0(a5)
1c009574:	4481                	li	s1,0
1c009576:	a8d1                	j	1c00964a <pos_libc_to_float+0x39a>
1c009578:	fb840793          	addi	a5,s0,-72
1c00957c:	853e                	mv	a0,a5
1c00957e:	3c89                	jal	1c008fd0 <pos_libc_rlrshift>
1c009580:	0905                	addi	s2,s2,1
1c009582:	fb842783          	lw	a5,-72(s0)
1c009586:	fbc42803          	lw	a6,-68(s0)
1c00958a:	00085713          	srli	a4,a6,0x0
1c00958e:	f6e42823          	sw	a4,-144(s0)
1c009592:	f6042a23          	sw	zero,-140(s0)
1c009596:	f7442783          	lw	a5,-140(s0)
1c00959a:	fff9                	bnez	a5,1c009578 <pos_libc_to_float+0x2c8>
1c00959c:	f7442783          	lw	a5,-140(s0)
1c0095a0:	eb89                	bnez	a5,1c0095b2 <pos_libc_to_float+0x302>
1c0095a2:	f7042703          	lw	a4,-144(s0)
1c0095a6:	333337b7          	lui	a5,0x33333
1c0095aa:	33278793          	addi	a5,a5,818 # 33333332 <__l2_shared_end+0x17323332>
1c0095ae:	fce7e5e3          	bltu	a5,a4,1c009578 <pos_libc_to_float+0x2c8>
1c0095b2:	fb842583          	lw	a1,-72(s0)
1c0095b6:	fbc42603          	lw	a2,-68(s0)
1c0095ba:	87ae                	mv	a5,a1
1c0095bc:	8832                	mv	a6,a2
1c0095be:	01e7d713          	srli	a4,a5,0x1e
1c0095c2:	00281c13          	slli	s8,a6,0x2
1c0095c6:	01876c33          	or	s8,a4,s8
1c0095ca:	00279b93          	slli	s7,a5,0x2
1c0095ce:	87de                	mv	a5,s7
1c0095d0:	8862                	mv	a6,s8
1c0095d2:	00b786b3          	add	a3,a5,a1
1c0095d6:	8536                	mv	a0,a3
1c0095d8:	00f53533          	sltu	a0,a0,a5
1c0095dc:	00c80733          	add	a4,a6,a2
1c0095e0:	00e507b3          	add	a5,a0,a4
1c0095e4:	873e                	mv	a4,a5
1c0095e6:	87b6                	mv	a5,a3
1c0095e8:	883a                	mv	a6,a4
1c0095ea:	faf42c23          	sw	a5,-72(s0)
1c0095ee:	fb042e23          	sw	a6,-68(s0)
1c0095f2:	0905                	addi	s2,s2,1
1c0095f4:	14fd                	addi	s1,s1,-1
1c0095f6:	a015                	j	1c00961a <pos_libc_to_float+0x36a>
1c0095f8:	fb842783          	lw	a5,-72(s0)
1c0095fc:	fbc42803          	lw	a6,-68(s0)
1c009600:	01f7d713          	srli	a4,a5,0x1f
1c009604:	00181b13          	slli	s6,a6,0x1
1c009608:	01676b33          	or	s6,a4,s6
1c00960c:	00179a93          	slli	s5,a5,0x1
1c009610:	fb542c23          	sw	s5,-72(s0)
1c009614:	fb642e23          	sw	s6,-68(s0)
1c009618:	197d                	addi	s2,s2,-1
1c00961a:	fb842783          	lw	a5,-72(s0)
1c00961e:	fbc42803          	lw	a6,-68(s0)
1c009622:	00085713          	srli	a4,a6,0x0
1c009626:	f6e42423          	sw	a4,-152(s0)
1c00962a:	f6042623          	sw	zero,-148(s0)
1c00962e:	f6c42783          	lw	a5,-148(s0)
1c009632:	ef81                	bnez	a5,1c00964a <pos_libc_to_float+0x39a>
1c009634:	f6c42783          	lw	a5,-148(s0)
1c009638:	f3e1                	bnez	a5,1c0095f8 <pos_libc_to_float+0x348>
1c00963a:	f6842703          	lw	a4,-152(s0)
1c00963e:	800007b7          	lui	a5,0x80000
1c009642:	fff7c793          	not	a5,a5
1c009646:	fae7f9e3          	bleu	a4,a5,1c0095f8 <pos_libc_to_float+0x348>
1c00964a:	57f9                	li	a5,-2
1c00964c:	f2f94be3          	blt	s2,a5,1c009582 <pos_libc_to_float+0x2d2>
1c009650:	a08d                	j	1c0096b2 <pos_libc_to_float+0x402>
1c009652:	fb840793          	addi	a5,s0,-72
1c009656:	853e                	mv	a0,a5
1c009658:	3ac9                	jal	1c00902a <pos_libc_ldiv5>
1c00965a:	197d                	addi	s2,s2,-1
1c00965c:	0485                	addi	s1,s1,1
1c00965e:	a015                	j	1c009682 <pos_libc_to_float+0x3d2>
1c009660:	fb842783          	lw	a5,-72(s0)
1c009664:	fbc42803          	lw	a6,-68(s0)
1c009668:	01f7d713          	srli	a4,a5,0x1f
1c00966c:	00181a13          	slli	s4,a6,0x1
1c009670:	01476a33          	or	s4,a4,s4
1c009674:	00179993          	slli	s3,a5,0x1
1c009678:	fb342c23          	sw	s3,-72(s0)
1c00967c:	fb442e23          	sw	s4,-68(s0)
1c009680:	197d                	addi	s2,s2,-1
1c009682:	fb842783          	lw	a5,-72(s0)
1c009686:	fbc42803          	lw	a6,-68(s0)
1c00968a:	00085713          	srli	a4,a6,0x0
1c00968e:	f6e42023          	sw	a4,-160(s0)
1c009692:	f6042223          	sw	zero,-156(s0)
1c009696:	f6442783          	lw	a5,-156(s0)
1c00969a:	ef81                	bnez	a5,1c0096b2 <pos_libc_to_float+0x402>
1c00969c:	f6442783          	lw	a5,-156(s0)
1c0096a0:	f3e1                	bnez	a5,1c009660 <pos_libc_to_float+0x3b0>
1c0096a2:	f6042703          	lw	a4,-160(s0)
1c0096a6:	800007b7          	lui	a5,0x80000
1c0096aa:	fff7c793          	not	a5,a5
1c0096ae:	fae7f9e3          	bleu	a4,a5,1c009660 <pos_libc_to_float+0x3b0>
1c0096b2:	fb2040e3          	bgtz	s2,1c009652 <pos_libc_to_float+0x3a2>
1c0096b6:	a031                	j	1c0096c2 <pos_libc_to_float+0x412>
1c0096b8:	fb840793          	addi	a5,s0,-72
1c0096bc:	853e                	mv	a0,a5
1c0096be:	3a09                	jal	1c008fd0 <pos_libc_rlrshift>
1c0096c0:	0905                	addi	s2,s2,1
1c0096c2:	478d                	li	a5,3
1c0096c4:	ff27dae3          	ble	s2,a5,1c0096b8 <pos_libc_to_float+0x408>
1c0096c8:	f9042783          	lw	a5,-112(s0)
1c0096cc:	0007d563          	bgez	a5,1c0096d6 <pos_libc_to_float+0x426>
1c0096d0:	4799                	li	a5,6
1c0096d2:	f8f42823          	sw	a5,-112(s0)
1c0096d6:	fc042623          	sw	zero,-52(s0)
1c0096da:	fa842703          	lw	a4,-88(s0)
1c0096de:	06700793          	li	a5,103
1c0096e2:	00f70863          	beq	a4,a5,1c0096f2 <pos_libc_to_float+0x442>
1c0096e6:	fa842703          	lw	a4,-88(s0)
1c0096ea:	04700793          	li	a5,71
1c0096ee:	04f71863          	bne	a4,a5,1c00973e <pos_libc_to_float+0x48e>
1c0096f2:	f9c42783          	lw	a5,-100(s0)
1c0096f6:	eb81                	bnez	a5,1c009706 <pos_libc_to_float+0x456>
1c0096f8:	f9042783          	lw	a5,-112(s0)
1c0096fc:	00f05563          	blez	a5,1c009706 <pos_libc_to_float+0x456>
1c009700:	4785                	li	a5,1
1c009702:	fcf42623          	sw	a5,-52(s0)
1c009706:	57f5                	li	a5,-3
1c009708:	00f4c763          	blt	s1,a5,1c009716 <pos_libc_to_float+0x466>
1c00970c:	f9042783          	lw	a5,-112(s0)
1c009710:	0785                	addi	a5,a5,1
1c009712:	0297d263          	ble	s1,a5,1c009736 <pos_libc_to_float+0x486>
1c009716:	fa842703          	lw	a4,-88(s0)
1c00971a:	06700793          	li	a5,103
1c00971e:	00f71763          	bne	a4,a5,1c00972c <pos_libc_to_float+0x47c>
1c009722:	06500793          	li	a5,101
1c009726:	faf42423          	sw	a5,-88(s0)
1c00972a:	a811                	j	1c00973e <pos_libc_to_float+0x48e>
1c00972c:	04500793          	li	a5,69
1c009730:	faf42423          	sw	a5,-88(s0)
1c009734:	a029                	j	1c00973e <pos_libc_to_float+0x48e>
1c009736:	06600793          	li	a5,102
1c00973a:	faf42423          	sw	a5,-88(s0)
1c00973e:	fa842703          	lw	a4,-88(s0)
1c009742:	06600793          	li	a5,102
1c009746:	00f71a63          	bne	a4,a5,1c00975a <pos_libc_to_float+0x4aa>
1c00974a:	f9042783          	lw	a5,-112(s0)
1c00974e:	00f48933          	add	s2,s1,a5
1c009752:	00095863          	bgez	s2,1c009762 <pos_libc_to_float+0x4b2>
1c009756:	4901                	li	s2,0
1c009758:	a029                	j	1c009762 <pos_libc_to_float+0x4b2>
1c00975a:	f9042783          	lw	a5,-112(s0)
1c00975e:	00178913          	addi	s2,a5,1 # 80000001 <pulp__FC+0x80000002>
1c009762:	47c1                	li	a5,16
1c009764:	fcf42023          	sw	a5,-64(s0)
1c009768:	47c1                	li	a5,16
1c00976a:	0127d363          	ble	s2,a5,1c009770 <pos_libc_to_float+0x4c0>
1c00976e:	4941                	li	s2,16
1c009770:	4781                	li	a5,0
1c009772:	08000837          	lui	a6,0x8000
1c009776:	faf42823          	sw	a5,-80(s0)
1c00977a:	fb042a23          	sw	a6,-76(s0)
1c00977e:	a819                	j	1c009794 <pos_libc_to_float+0x4e4>
1c009780:	fb040793          	addi	a5,s0,-80
1c009784:	853e                	mv	a0,a5
1c009786:	8a5ff0ef          	jal	ra,1c00902a <pos_libc_ldiv5>
1c00978a:	fb040793          	addi	a5,s0,-80
1c00978e:	853e                	mv	a0,a5
1c009790:	841ff0ef          	jal	ra,1c008fd0 <pos_libc_rlrshift>
1c009794:	87ca                	mv	a5,s2
1c009796:	fff78913          	addi	s2,a5,-1
1c00979a:	f3fd                	bnez	a5,1c009780 <pos_libc_to_float+0x4d0>
1c00979c:	fb842783          	lw	a5,-72(s0)
1c0097a0:	fbc42803          	lw	a6,-68(s0)
1c0097a4:	fb042583          	lw	a1,-80(s0)
1c0097a8:	fb442603          	lw	a2,-76(s0)
1c0097ac:	00b786b3          	add	a3,a5,a1
1c0097b0:	8536                	mv	a0,a3
1c0097b2:	00f53533          	sltu	a0,a0,a5
1c0097b6:	00c80733          	add	a4,a6,a2
1c0097ba:	00e507b3          	add	a5,a0,a4
1c0097be:	873e                	mv	a4,a5
1c0097c0:	87b6                	mv	a5,a3
1c0097c2:	883a                	mv	a6,a4
1c0097c4:	faf42c23          	sw	a5,-72(s0)
1c0097c8:	fb042e23          	sw	a6,-68(s0)
1c0097cc:	fb842783          	lw	a5,-72(s0)
1c0097d0:	fbc42803          	lw	a6,-68(s0)
1c0097d4:	00085713          	srli	a4,a6,0x0
1c0097d8:	f4e42c23          	sw	a4,-168(s0)
1c0097dc:	f4042e23          	sw	zero,-164(s0)
1c0097e0:	f00007b7          	lui	a5,0xf0000
1c0097e4:	f5842803          	lw	a6,-168(s0)
1c0097e8:	00f87cb3          	and	s9,a6,a5
1c0097ec:	f5c42703          	lw	a4,-164(s0)
1c0097f0:	fe073d33          	p.bclr	s10,a4,31,0
1c0097f4:	87e6                	mv	a5,s9
1c0097f6:	01a7e7b3          	or	a5,a5,s10
1c0097fa:	cf81                	beqz	a5,1c009812 <pos_libc_to_float+0x562>
1c0097fc:	fb840793          	addi	a5,s0,-72
1c009800:	853e                	mv	a0,a5
1c009802:	829ff0ef          	jal	ra,1c00902a <pos_libc_ldiv5>
1c009806:	fb840793          	addi	a5,s0,-72
1c00980a:	853e                	mv	a0,a5
1c00980c:	fc4ff0ef          	jal	ra,1c008fd0 <pos_libc_rlrshift>
1c009810:	0485                	addi	s1,s1,1
1c009812:	fa842703          	lw	a4,-88(s0)
1c009816:	06600793          	li	a5,102
1c00981a:	0af71c63          	bne	a4,a5,1c0098d2 <pos_libc_to_float+0x622>
1c00981e:	02905763          	blez	s1,1c00984c <pos_libc_to_float+0x59c>
1c009822:	a015                	j	1c009846 <pos_libc_to_float+0x596>
1c009824:	fac42903          	lw	s2,-84(s0)
1c009828:	00190793          	addi	a5,s2,1
1c00982c:	faf42623          	sw	a5,-84(s0)
1c009830:	fc040713          	addi	a4,s0,-64
1c009834:	fb840793          	addi	a5,s0,-72
1c009838:	85ba                	mv	a1,a4
1c00983a:	853e                	mv	a0,a5
1c00983c:	3a51                	jal	1c0091d0 <pos_libc_get_digit>
1c00983e:	87aa                	mv	a5,a0
1c009840:	00f90023          	sb	a5,0(s2)
1c009844:	14fd                	addi	s1,s1,-1
1c009846:	fc904fe3          	bgtz	s1,1c009824 <pos_libc_to_float+0x574>
1c00984a:	a819                	j	1c009860 <pos_libc_to_float+0x5b0>
1c00984c:	fac42783          	lw	a5,-84(s0)
1c009850:	00178713          	addi	a4,a5,1 # f0000001 <pulp__FC+0xf0000002>
1c009854:	fae42623          	sw	a4,-84(s0)
1c009858:	03000713          	li	a4,48
1c00985c:	00e78023          	sb	a4,0(a5)
1c009860:	f9c42783          	lw	a5,-100(s0)
1c009864:	e789                	bnez	a5,1c00986e <pos_libc_to_float+0x5be>
1c009866:	f9042783          	lw	a5,-112(s0)
1c00986a:	04f05b63          	blez	a5,1c0098c0 <pos_libc_to_float+0x610>
1c00986e:	fac42783          	lw	a5,-84(s0)
1c009872:	00178713          	addi	a4,a5,1
1c009876:	fae42623          	sw	a4,-84(s0)
1c00987a:	02e00713          	li	a4,46
1c00987e:	00e78023          	sb	a4,0(a5)
1c009882:	a83d                	j	1c0098c0 <pos_libc_to_float+0x610>
1c009884:	0004de63          	bgez	s1,1c0098a0 <pos_libc_to_float+0x5f0>
1c009888:	fac42783          	lw	a5,-84(s0)
1c00988c:	00178713          	addi	a4,a5,1
1c009890:	fae42623          	sw	a4,-84(s0)
1c009894:	03000713          	li	a4,48
1c009898:	00e78023          	sb	a4,0(a5)
1c00989c:	0485                	addi	s1,s1,1
1c00989e:	a00d                	j	1c0098c0 <pos_libc_to_float+0x610>
1c0098a0:	fac42903          	lw	s2,-84(s0)
1c0098a4:	00190793          	addi	a5,s2,1
1c0098a8:	faf42623          	sw	a5,-84(s0)
1c0098ac:	fc040713          	addi	a4,s0,-64
1c0098b0:	fb840793          	addi	a5,s0,-72
1c0098b4:	85ba                	mv	a1,a4
1c0098b6:	853e                	mv	a0,a5
1c0098b8:	3a21                	jal	1c0091d0 <pos_libc_get_digit>
1c0098ba:	87aa                	mv	a5,a0
1c0098bc:	00f90023          	sb	a5,0(s2)
1c0098c0:	f9042783          	lw	a5,-112(s0)
1c0098c4:	fff78713          	addi	a4,a5,-1
1c0098c8:	f8e42823          	sw	a4,-112(s0)
1c0098cc:	faf04ce3          	bgtz	a5,1c009884 <pos_libc_to_float+0x5d4>
1c0098d0:	a079                	j	1c00995e <pos_libc_to_float+0x6ae>
1c0098d2:	fc040713          	addi	a4,s0,-64
1c0098d6:	fb840793          	addi	a5,s0,-72
1c0098da:	85ba                	mv	a1,a4
1c0098dc:	853e                	mv	a0,a5
1c0098de:	8f3ff0ef          	jal	ra,1c0091d0 <pos_libc_get_digit>
1c0098e2:	87aa                	mv	a5,a0
1c0098e4:	873e                	mv	a4,a5
1c0098e6:	fac42783          	lw	a5,-84(s0)
1c0098ea:	00e78023          	sb	a4,0(a5)
1c0098ee:	fac42783          	lw	a5,-84(s0)
1c0098f2:	00178713          	addi	a4,a5,1
1c0098f6:	fae42623          	sw	a4,-84(s0)
1c0098fa:	0007c703          	lbu	a4,0(a5)
1c0098fe:	03000793          	li	a5,48
1c009902:	00f70363          	beq	a4,a5,1c009908 <pos_libc_to_float+0x658>
1c009906:	14fd                	addi	s1,s1,-1
1c009908:	f9c42783          	lw	a5,-100(s0)
1c00990c:	e789                	bnez	a5,1c009916 <pos_libc_to_float+0x666>
1c00990e:	f9042783          	lw	a5,-112(s0)
1c009912:	02f05e63          	blez	a5,1c00994e <pos_libc_to_float+0x69e>
1c009916:	fac42783          	lw	a5,-84(s0)
1c00991a:	00178713          	addi	a4,a5,1
1c00991e:	fae42623          	sw	a4,-84(s0)
1c009922:	02e00713          	li	a4,46
1c009926:	00e78023          	sb	a4,0(a5)
1c00992a:	a015                	j	1c00994e <pos_libc_to_float+0x69e>
1c00992c:	fac42903          	lw	s2,-84(s0)
1c009930:	00190793          	addi	a5,s2,1
1c009934:	faf42623          	sw	a5,-84(s0)
1c009938:	fc040713          	addi	a4,s0,-64
1c00993c:	fb840793          	addi	a5,s0,-72
1c009940:	85ba                	mv	a1,a4
1c009942:	853e                	mv	a0,a5
1c009944:	88dff0ef          	jal	ra,1c0091d0 <pos_libc_get_digit>
1c009948:	87aa                	mv	a5,a0
1c00994a:	00f90023          	sb	a5,0(s2)
1c00994e:	f9042783          	lw	a5,-112(s0)
1c009952:	fff78713          	addi	a4,a5,-1
1c009956:	f8e42823          	sw	a4,-112(s0)
1c00995a:	fcf049e3          	bgtz	a5,1c00992c <pos_libc_to_float+0x67c>
1c00995e:	fcc42783          	lw	a5,-52(s0)
1c009962:	cb9d                	beqz	a5,1c009998 <pos_libc_to_float+0x6e8>
1c009964:	fac42783          	lw	a5,-84(s0)
1c009968:	17fd                	addi	a5,a5,-1
1c00996a:	faf42623          	sw	a5,-84(s0)
1c00996e:	fac42783          	lw	a5,-84(s0)
1c009972:	0007c703          	lbu	a4,0(a5)
1c009976:	03000793          	li	a5,48
1c00997a:	fef705e3          	beq	a4,a5,1c009964 <pos_libc_to_float+0x6b4>
1c00997e:	fac42783          	lw	a5,-84(s0)
1c009982:	0007c703          	lbu	a4,0(a5)
1c009986:	02e00793          	li	a5,46
1c00998a:	00f70763          	beq	a4,a5,1c009998 <pos_libc_to_float+0x6e8>
1c00998e:	fac42783          	lw	a5,-84(s0)
1c009992:	0785                	addi	a5,a5,1
1c009994:	faf42623          	sw	a5,-84(s0)
1c009998:	fa842703          	lw	a4,-88(s0)
1c00999c:	06500793          	li	a5,101
1c0099a0:	00f70863          	beq	a4,a5,1c0099b0 <pos_libc_to_float+0x700>
1c0099a4:	fa842703          	lw	a4,-88(s0)
1c0099a8:	04500793          	li	a5,69
1c0099ac:	08f71a63          	bne	a4,a5,1c009a40 <pos_libc_to_float+0x790>
1c0099b0:	fac42783          	lw	a5,-84(s0)
1c0099b4:	00178713          	addi	a4,a5,1
1c0099b8:	fae42623          	sw	a4,-84(s0)
1c0099bc:	fa842703          	lw	a4,-88(s0)
1c0099c0:	0ff77713          	andi	a4,a4,255
1c0099c4:	00e78023          	sb	a4,0(a5)
1c0099c8:	0004df63          	bgez	s1,1c0099e6 <pos_libc_to_float+0x736>
1c0099cc:	409004b3          	neg	s1,s1
1c0099d0:	fac42783          	lw	a5,-84(s0)
1c0099d4:	00178713          	addi	a4,a5,1
1c0099d8:	fae42623          	sw	a4,-84(s0)
1c0099dc:	02d00713          	li	a4,45
1c0099e0:	00e78023          	sb	a4,0(a5)
1c0099e4:	a819                	j	1c0099fa <pos_libc_to_float+0x74a>
1c0099e6:	fac42783          	lw	a5,-84(s0)
1c0099ea:	00178713          	addi	a4,a5,1
1c0099ee:	fae42623          	sw	a4,-84(s0)
1c0099f2:	02b00713          	li	a4,43
1c0099f6:	00e78023          	sb	a4,0(a5)
1c0099fa:	47a9                	li	a5,10
1c0099fc:	02f4c7b3          	div	a5,s1,a5
1c009a00:	0ff7f713          	andi	a4,a5,255
1c009a04:	fac42783          	lw	a5,-84(s0)
1c009a08:	00178693          	addi	a3,a5,1
1c009a0c:	fad42623          	sw	a3,-84(s0)
1c009a10:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c009a14:	0ff77713          	andi	a4,a4,255
1c009a18:	00e78023          	sb	a4,0(a5)
1c009a1c:	47a9                	li	a5,10
1c009a1e:	02f4e7b3          	rem	a5,s1,a5
1c009a22:	84be                	mv	s1,a5
1c009a24:	0ff4f713          	andi	a4,s1,255
1c009a28:	fac42783          	lw	a5,-84(s0)
1c009a2c:	00178693          	addi	a3,a5,1
1c009a30:	fad42623          	sw	a3,-84(s0)
1c009a34:	03070713          	addi	a4,a4,48
1c009a38:	0ff77713          	andi	a4,a4,255
1c009a3c:	00e78023          	sb	a4,0(a5)
1c009a40:	fac42783          	lw	a5,-84(s0)
1c009a44:	00078023          	sb	zero,0(a5)
1c009a48:	fac42703          	lw	a4,-84(s0)
1c009a4c:	fc842783          	lw	a5,-56(s0)
1c009a50:	40f707b3          	sub	a5,a4,a5
1c009a54:	853e                	mv	a0,a5
1c009a56:	50ba                	lw	ra,172(sp)
1c009a58:	542a                	lw	s0,168(sp)
1c009a5a:	549a                	lw	s1,164(sp)
1c009a5c:	590a                	lw	s2,160(sp)
1c009a5e:	49fa                	lw	s3,156(sp)
1c009a60:	4a6a                	lw	s4,152(sp)
1c009a62:	4ada                	lw	s5,148(sp)
1c009a64:	4b4a                	lw	s6,144(sp)
1c009a66:	4bba                	lw	s7,140(sp)
1c009a68:	4c2a                	lw	s8,136(sp)
1c009a6a:	4c9a                	lw	s9,132(sp)
1c009a6c:	4d0a                	lw	s10,128(sp)
1c009a6e:	614d                	addi	sp,sp,176
1c009a70:	8082                	ret

1c009a72 <pos_libc_atoi>:
1c009a72:	1101                	addi	sp,sp,-32
1c009a74:	ce06                	sw	ra,28(sp)
1c009a76:	cc22                	sw	s0,24(sp)
1c009a78:	ca26                	sw	s1,20(sp)
1c009a7a:	c84a                	sw	s2,16(sp)
1c009a7c:	1000                	addi	s0,sp,32
1c009a7e:	fea42623          	sw	a0,-20(s0)
1c009a82:	4901                	li	s2,0
1c009a84:	fec42783          	lw	a5,-20(s0)
1c009a88:	4384                	lw	s1,0(a5)
1c009a8a:	14fd                	addi	s1,s1,-1
1c009a8c:	a831                	j	1c009aa8 <pos_libc_atoi+0x36>
1c009a8e:	87ca                	mv	a5,s2
1c009a90:	078a                	slli	a5,a5,0x2
1c009a92:	97ca                	add	a5,a5,s2
1c009a94:	0786                	slli	a5,a5,0x1
1c009a96:	873e                	mv	a4,a5
1c009a98:	87a6                	mv	a5,s1
1c009a9a:	00178493          	addi	s1,a5,1
1c009a9e:	0007c783          	lbu	a5,0(a5)
1c009aa2:	97ba                	add	a5,a5,a4
1c009aa4:	fd078913          	addi	s2,a5,-48
1c009aa8:	0004c783          	lbu	a5,0(s1)
1c009aac:	853e                	mv	a0,a5
1c009aae:	954ff0ef          	jal	ra,1c008c02 <isdigit>
1c009ab2:	87aa                	mv	a5,a0
1c009ab4:	ffe9                	bnez	a5,1c009a8e <pos_libc_atoi+0x1c>
1c009ab6:	fec42783          	lw	a5,-20(s0)
1c009aba:	c384                	sw	s1,0(a5)
1c009abc:	87ca                	mv	a5,s2
1c009abe:	853e                	mv	a0,a5
1c009ac0:	40f2                	lw	ra,28(sp)
1c009ac2:	4462                	lw	s0,24(sp)
1c009ac4:	44d2                	lw	s1,20(sp)
1c009ac6:	4942                	lw	s2,16(sp)
1c009ac8:	6105                	addi	sp,sp,32
1c009aca:	8082                	ret

1c009acc <pos_libc_prf>:
1c009acc:	7129                	addi	sp,sp,-320
1c009ace:	12112e23          	sw	ra,316(sp)
1c009ad2:	12812c23          	sw	s0,312(sp)
1c009ad6:	12912a23          	sw	s1,308(sp)
1c009ada:	13212823          	sw	s2,304(sp)
1c009ade:	0280                	addi	s0,sp,320
1c009ae0:	eca42623          	sw	a0,-308(s0)
1c009ae4:	ecb42423          	sw	a1,-312(s0)
1c009ae8:	ecc42223          	sw	a2,-316(s0)
1c009aec:	ecd42023          	sw	a3,-320(s0)
1c009af0:	fe042623          	sw	zero,-20(s0)
1c009af4:	ad0d                	j	1c00a126 <pos_libc_prf+0x65a>
1c009af6:	02500793          	li	a5,37
1c009afa:	02f48363          	beq	s1,a5,1c009b20 <pos_libc_prf+0x54>
1c009afe:	ecc42783          	lw	a5,-308(s0)
1c009b02:	ec842583          	lw	a1,-312(s0)
1c009b06:	8526                	mv	a0,s1
1c009b08:	9782                	jalr	a5
1c009b0a:	87aa                	mv	a5,a0
1c009b0c:	01f7b463          	p.bneimm	a5,-1,1c009b14 <pos_libc_prf+0x48>
1c009b10:	57fd                	li	a5,-1
1c009b12:	a53d                	j	1c00a140 <pos_libc_prf+0x674>
1c009b14:	fec42783          	lw	a5,-20(s0)
1c009b18:	0785                	addi	a5,a5,1
1c009b1a:	fef42623          	sw	a5,-20(s0)
1c009b1e:	a521                	j	1c00a126 <pos_libc_prf+0x65a>
1c009b20:	fe042423          	sw	zero,-24(s0)
1c009b24:	fe842783          	lw	a5,-24(s0)
1c009b28:	fcf42e23          	sw	a5,-36(s0)
1c009b2c:	fdc42783          	lw	a5,-36(s0)
1c009b30:	fef42023          	sw	a5,-32(s0)
1c009b34:	fe042783          	lw	a5,-32(s0)
1c009b38:	fef42223          	sw	a5,-28(s0)
1c009b3c:	02000793          	li	a5,32
1c009b40:	fcf40ba3          	sb	a5,-41(s0)
1c009b44:	57fd                	li	a5,-1
1c009b46:	fcf42823          	sw	a5,-48(s0)
1c009b4a:	a0a5                	j	1c009bb2 <pos_libc_prf+0xe6>
1c009b4c:	02300793          	li	a5,35
1c009b50:	04f48563          	beq	s1,a5,1c009b9a <pos_libc_prf+0xce>
1c009b54:	02300793          	li	a5,35
1c009b58:	0097c863          	blt	a5,s1,1c009b68 <pos_libc_prf+0x9c>
1c009b5c:	c8a1                	beqz	s1,1c009bac <pos_libc_prf+0xe0>
1c009b5e:	02000793          	li	a5,32
1c009b62:	02f48863          	beq	s1,a5,1c009b92 <pos_libc_prf+0xc6>
1c009b66:	a0b1                	j	1c009bb2 <pos_libc_prf+0xe6>
1c009b68:	02d00793          	li	a5,45
1c009b6c:	00f48b63          	beq	s1,a5,1c009b82 <pos_libc_prf+0xb6>
1c009b70:	03000793          	li	a5,48
1c009b74:	02f48763          	beq	s1,a5,1c009ba2 <pos_libc_prf+0xd6>
1c009b78:	02b00793          	li	a5,43
1c009b7c:	00f48763          	beq	s1,a5,1c009b8a <pos_libc_prf+0xbe>
1c009b80:	a80d                	j	1c009bb2 <pos_libc_prf+0xe6>
1c009b82:	4785                	li	a5,1
1c009b84:	fef42223          	sw	a5,-28(s0)
1c009b88:	a02d                	j	1c009bb2 <pos_libc_prf+0xe6>
1c009b8a:	4785                	li	a5,1
1c009b8c:	fef42023          	sw	a5,-32(s0)
1c009b90:	a00d                	j	1c009bb2 <pos_libc_prf+0xe6>
1c009b92:	4785                	li	a5,1
1c009b94:	fcf42e23          	sw	a5,-36(s0)
1c009b98:	a829                	j	1c009bb2 <pos_libc_prf+0xe6>
1c009b9a:	4785                	li	a5,1
1c009b9c:	fef42423          	sw	a5,-24(s0)
1c009ba0:	a809                	j	1c009bb2 <pos_libc_prf+0xe6>
1c009ba2:	03000793          	li	a5,48
1c009ba6:	fcf40ba3          	sb	a5,-41(s0)
1c009baa:	a021                	j	1c009bb2 <pos_libc_prf+0xe6>
1c009bac:	fec42783          	lw	a5,-20(s0)
1c009bb0:	ab41                	j	1c00a140 <pos_libc_prf+0x674>
1c009bb2:	ec442783          	lw	a5,-316(s0)
1c009bb6:	00178713          	addi	a4,a5,1
1c009bba:	ece42223          	sw	a4,-316(s0)
1c009bbe:	0007c783          	lbu	a5,0(a5)
1c009bc2:	84be                	mv	s1,a5
1c009bc4:	85a6                	mv	a1,s1
1c009bc6:	1c0007b7          	lui	a5,0x1c000
1c009bca:	1b078513          	addi	a0,a5,432 # 1c0001b0 <__DTOR_END__+0x194>
1c009bce:	e01fe0ef          	jal	ra,1c0089ce <strchr>
1c009bd2:	87aa                	mv	a5,a0
1c009bd4:	ffa5                	bnez	a5,1c009b4c <pos_libc_prf+0x80>
1c009bd6:	02a00793          	li	a5,42
1c009bda:	04f49263          	bne	s1,a5,1c009c1e <pos_libc_prf+0x152>
1c009bde:	ec042783          	lw	a5,-320(s0)
1c009be2:	00478713          	addi	a4,a5,4
1c009be6:	ece42023          	sw	a4,-320(s0)
1c009bea:	439c                	lw	a5,0(a5)
1c009bec:	fcf42423          	sw	a5,-56(s0)
1c009bf0:	fc842783          	lw	a5,-56(s0)
1c009bf4:	0007db63          	bgez	a5,1c009c0a <pos_libc_prf+0x13e>
1c009bf8:	4785                	li	a5,1
1c009bfa:	fef42223          	sw	a5,-28(s0)
1c009bfe:	fc842783          	lw	a5,-56(s0)
1c009c02:	40f007b3          	neg	a5,a5
1c009c06:	fcf42423          	sw	a5,-56(s0)
1c009c0a:	ec442783          	lw	a5,-316(s0)
1c009c0e:	00178713          	addi	a4,a5,1
1c009c12:	ece42223          	sw	a4,-316(s0)
1c009c16:	0007c783          	lbu	a5,0(a5)
1c009c1a:	84be                	mv	s1,a5
1c009c1c:	a805                	j	1c009c4c <pos_libc_prf+0x180>
1c009c1e:	8526                	mv	a0,s1
1c009c20:	fe3fe0ef          	jal	ra,1c008c02 <isdigit>
1c009c24:	87aa                	mv	a5,a0
1c009c26:	e781                	bnez	a5,1c009c2e <pos_libc_prf+0x162>
1c009c28:	fc042423          	sw	zero,-56(s0)
1c009c2c:	a005                	j	1c009c4c <pos_libc_prf+0x180>
1c009c2e:	ec440793          	addi	a5,s0,-316
1c009c32:	853e                	mv	a0,a5
1c009c34:	3d3d                	jal	1c009a72 <pos_libc_atoi>
1c009c36:	fca42423          	sw	a0,-56(s0)
1c009c3a:	ec442783          	lw	a5,-316(s0)
1c009c3e:	00178713          	addi	a4,a5,1
1c009c42:	ece42223          	sw	a4,-316(s0)
1c009c46:	0007c783          	lbu	a5,0(a5)
1c009c4a:	84be                	mv	s1,a5
1c009c4c:	fc842703          	lw	a4,-56(s0)
1c009c50:	0c800793          	li	a5,200
1c009c54:	00e7f663          	bleu	a4,a5,1c009c60 <pos_libc_prf+0x194>
1c009c58:	0c800793          	li	a5,200
1c009c5c:	fcf42423          	sw	a5,-56(s0)
1c009c60:	02e00793          	li	a5,46
1c009c64:	06f49163          	bne	s1,a5,1c009cc6 <pos_libc_prf+0x1fa>
1c009c68:	ec442783          	lw	a5,-316(s0)
1c009c6c:	00178713          	addi	a4,a5,1
1c009c70:	ece42223          	sw	a4,-316(s0)
1c009c74:	0007c783          	lbu	a5,0(a5)
1c009c78:	84be                	mv	s1,a5
1c009c7a:	02a00793          	li	a5,42
1c009c7e:	00f49c63          	bne	s1,a5,1c009c96 <pos_libc_prf+0x1ca>
1c009c82:	ec042783          	lw	a5,-320(s0)
1c009c86:	00478713          	addi	a4,a5,4
1c009c8a:	ece42023          	sw	a4,-320(s0)
1c009c8e:	439c                	lw	a5,0(a5)
1c009c90:	fcf42823          	sw	a5,-48(s0)
1c009c94:	a039                	j	1c009ca2 <pos_libc_prf+0x1d6>
1c009c96:	ec440793          	addi	a5,s0,-316
1c009c9a:	853e                	mv	a0,a5
1c009c9c:	3bd9                	jal	1c009a72 <pos_libc_atoi>
1c009c9e:	fca42823          	sw	a0,-48(s0)
1c009ca2:	fd042703          	lw	a4,-48(s0)
1c009ca6:	0c800793          	li	a5,200
1c009caa:	00e7d563          	ble	a4,a5,1c009cb4 <pos_libc_prf+0x1e8>
1c009cae:	57fd                	li	a5,-1
1c009cb0:	fcf42823          	sw	a5,-48(s0)
1c009cb4:	ec442783          	lw	a5,-316(s0)
1c009cb8:	00178713          	addi	a4,a5,1
1c009cbc:	ece42223          	sw	a4,-316(s0)
1c009cc0:	0007c783          	lbu	a5,0(a5)
1c009cc4:	84be                	mv	s1,a5
1c009cc6:	85a6                	mv	a1,s1
1c009cc8:	1c0007b7          	lui	a5,0x1c000
1c009ccc:	1b878513          	addi	a0,a5,440 # 1c0001b8 <__DTOR_END__+0x19c>
1c009cd0:	cfffe0ef          	jal	ra,1c0089ce <strchr>
1c009cd4:	87aa                	mv	a5,a0
1c009cd6:	cb99                	beqz	a5,1c009cec <pos_libc_prf+0x220>
1c009cd8:	8926                	mv	s2,s1
1c009cda:	ec442783          	lw	a5,-316(s0)
1c009cde:	00178713          	addi	a4,a5,1
1c009ce2:	ece42223          	sw	a4,-316(s0)
1c009ce6:	0007c783          	lbu	a5,0(a5)
1c009cea:	84be                	mv	s1,a5
1c009cec:	fc042c23          	sw	zero,-40(s0)
1c009cf0:	fc042623          	sw	zero,-52(s0)
1c009cf4:	06700793          	li	a5,103
1c009cf8:	0497c263          	blt	a5,s1,1c009d3c <pos_libc_prf+0x270>
1c009cfc:	06500793          	li	a5,101
1c009d00:	10f4d263          	ble	a5,s1,1c009e04 <pos_libc_prf+0x338>
1c009d04:	04700793          	li	a5,71
1c009d08:	0097cd63          	blt	a5,s1,1c009d22 <pos_libc_prf+0x256>
1c009d0c:	04500793          	li	a5,69
1c009d10:	0ef4da63          	ble	a5,s1,1c009e04 <pos_libc_prf+0x338>
1c009d14:	32048163          	beqz	s1,1c00a036 <pos_libc_prf+0x56a>
1c009d18:	02500793          	li	a5,37
1c009d1c:	2ef48b63          	beq	s1,a5,1c00a012 <pos_libc_prf+0x546>
1c009d20:	ae0d                	j	1c00a052 <pos_libc_prf+0x586>
1c009d22:	06300793          	li	a5,99
1c009d26:	04f48d63          	beq	s1,a5,1c009d80 <pos_libc_prf+0x2b4>
1c009d2a:	06300793          	li	a5,99
1c009d2e:	0697cb63          	blt	a5,s1,1c009da4 <pos_libc_prf+0x2d8>
1c009d32:	05800793          	li	a5,88
1c009d36:	28f48663          	beq	s1,a5,1c009fc2 <pos_libc_prf+0x4f6>
1c009d3a:	ae21                	j	1c00a052 <pos_libc_prf+0x586>
1c009d3c:	07000793          	li	a5,112
1c009d40:	18f48f63          	beq	s1,a5,1c009ede <pos_libc_prf+0x412>
1c009d44:	07000793          	li	a5,112
1c009d48:	0097cf63          	blt	a5,s1,1c009d66 <pos_libc_prf+0x29a>
1c009d4c:	06e00793          	li	a5,110
1c009d50:	12f48763          	beq	s1,a5,1c009e7e <pos_libc_prf+0x3b2>
1c009d54:	06e00793          	li	a5,110
1c009d58:	1497c263          	blt	a5,s1,1c009e9c <pos_libc_prf+0x3d0>
1c009d5c:	06900793          	li	a5,105
1c009d60:	04f48263          	beq	s1,a5,1c009da4 <pos_libc_prf+0x2d8>
1c009d64:	a4fd                	j	1c00a052 <pos_libc_prf+0x586>
1c009d66:	07500793          	li	a5,117
1c009d6a:	20f48d63          	beq	s1,a5,1c009f84 <pos_libc_prf+0x4b8>
1c009d6e:	07800793          	li	a5,120
1c009d72:	24f48863          	beq	s1,a5,1c009fc2 <pos_libc_prf+0x4f6>
1c009d76:	07300793          	li	a5,115
1c009d7a:	1af48363          	beq	s1,a5,1c009f20 <pos_libc_prf+0x454>
1c009d7e:	acd1                	j	1c00a052 <pos_libc_prf+0x586>
1c009d80:	ec042783          	lw	a5,-320(s0)
1c009d84:	00478713          	addi	a4,a5,4
1c009d88:	ece42023          	sw	a4,-320(s0)
1c009d8c:	439c                	lw	a5,0(a5)
1c009d8e:	0ff7f793          	andi	a5,a5,255
1c009d92:	eef40223          	sb	a5,-284(s0)
1c009d96:	ee0402a3          	sb	zero,-283(s0)
1c009d9a:	4785                	li	a5,1
1c009d9c:	fcf42c23          	sw	a5,-40(s0)
1c009da0:	4485                	li	s1,1
1c009da2:	ac45                	j	1c00a052 <pos_libc_prf+0x586>
1c009da4:	ec042783          	lw	a5,-320(s0)
1c009da8:	00478713          	addi	a4,a5,4
1c009dac:	ece42023          	sw	a4,-320(s0)
1c009db0:	439c                	lw	a5,0(a5)
1c009db2:	faf42c23          	sw	a5,-72(s0)
1c009db6:	ee440793          	addi	a5,s0,-284
1c009dba:	fd042703          	lw	a4,-48(s0)
1c009dbe:	fdc42683          	lw	a3,-36(s0)
1c009dc2:	fe042603          	lw	a2,-32(s0)
1c009dc6:	fb842583          	lw	a1,-72(s0)
1c009dca:	853e                	mv	a0,a5
1c009dcc:	946ff0ef          	jal	ra,1c008f12 <pos_libc_to_dec>
1c009dd0:	84aa                	mv	s1,a0
1c009dd2:	fe042783          	lw	a5,-32(s0)
1c009dd6:	eb81                	bnez	a5,1c009de6 <pos_libc_prf+0x31a>
1c009dd8:	fdc42783          	lw	a5,-36(s0)
1c009ddc:	e789                	bnez	a5,1c009de6 <pos_libc_prf+0x31a>
1c009dde:	fb842783          	lw	a5,-72(s0)
1c009de2:	0007d563          	bgez	a5,1c009dec <pos_libc_prf+0x320>
1c009de6:	4785                	li	a5,1
1c009de8:	fcf42623          	sw	a5,-52(s0)
1c009dec:	4785                	li	a5,1
1c009dee:	fcf42c23          	sw	a5,-40(s0)
1c009df2:	fd042783          	lw	a5,-48(s0)
1c009df6:	25f7a363          	p.beqimm	a5,-1,1c00a03c <pos_libc_prf+0x570>
1c009dfa:	02000793          	li	a5,32
1c009dfe:	fcf40ba3          	sb	a5,-41(s0)
1c009e02:	ac2d                	j	1c00a03c <pos_libc_prf+0x570>
1c009e04:	ec042783          	lw	a5,-320(s0)
1c009e08:	079d                	addi	a5,a5,7
1c009e0a:	c407b7b3          	p.bclr	a5,a5,2,0
1c009e0e:	00878713          	addi	a4,a5,8
1c009e12:	ece42023          	sw	a4,-320(s0)
1c009e16:	0047a803          	lw	a6,4(a5)
1c009e1a:	439c                	lw	a5,0(a5)
1c009e1c:	ecf42c23          	sw	a5,-296(s0)
1c009e20:	ed042e23          	sw	a6,-292(s0)
1c009e24:	ed842783          	lw	a5,-296(s0)
1c009e28:	edc42803          	lw	a6,-292(s0)
1c009e2c:	faf42823          	sw	a5,-80(s0)
1c009e30:	fb042a23          	sw	a6,-76(s0)
1c009e34:	ee440513          	addi	a0,s0,-284
1c009e38:	fd042883          	lw	a7,-48(s0)
1c009e3c:	fdc42803          	lw	a6,-36(s0)
1c009e40:	fe042783          	lw	a5,-32(s0)
1c009e44:	fe842703          	lw	a4,-24(s0)
1c009e48:	86a6                	mv	a3,s1
1c009e4a:	fb042583          	lw	a1,-80(s0)
1c009e4e:	fb442603          	lw	a2,-76(s0)
1c009e52:	c5eff0ef          	jal	ra,1c0092b0 <pos_libc_to_float>
1c009e56:	84aa                	mv	s1,a0
1c009e58:	fe042783          	lw	a5,-32(s0)
1c009e5c:	eb91                	bnez	a5,1c009e70 <pos_libc_prf+0x3a4>
1c009e5e:	fdc42783          	lw	a5,-36(s0)
1c009e62:	e799                	bnez	a5,1c009e70 <pos_libc_prf+0x3a4>
1c009e64:	ee444703          	lbu	a4,-284(s0)
1c009e68:	02d00793          	li	a5,45
1c009e6c:	00f71563          	bne	a4,a5,1c009e76 <pos_libc_prf+0x3aa>
1c009e70:	4785                	li	a5,1
1c009e72:	fcf42623          	sw	a5,-52(s0)
1c009e76:	4785                	li	a5,1
1c009e78:	fcf42c23          	sw	a5,-40(s0)
1c009e7c:	aad9                	j	1c00a052 <pos_libc_prf+0x586>
1c009e7e:	ec042783          	lw	a5,-320(s0)
1c009e82:	00478713          	addi	a4,a5,4
1c009e86:	ece42023          	sw	a4,-320(s0)
1c009e8a:	439c                	lw	a5,0(a5)
1c009e8c:	faf42e23          	sw	a5,-68(s0)
1c009e90:	fbc42783          	lw	a5,-68(s0)
1c009e94:	fec42703          	lw	a4,-20(s0)
1c009e98:	c398                	sw	a4,0(a5)
1c009e9a:	aa65                	j	1c00a052 <pos_libc_prf+0x586>
1c009e9c:	ec042783          	lw	a5,-320(s0)
1c009ea0:	00478713          	addi	a4,a5,4
1c009ea4:	ece42023          	sw	a4,-320(s0)
1c009ea8:	439c                	lw	a5,0(a5)
1c009eaa:	fcf42223          	sw	a5,-60(s0)
1c009eae:	ee440793          	addi	a5,s0,-284
1c009eb2:	fd042683          	lw	a3,-48(s0)
1c009eb6:	fe842603          	lw	a2,-24(s0)
1c009eba:	fc442583          	lw	a1,-60(s0)
1c009ebe:	853e                	mv	a0,a5
1c009ec0:	fa1fe0ef          	jal	ra,1c008e60 <pos_libc_to_octal>
1c009ec4:	84aa                	mv	s1,a0
1c009ec6:	4785                	li	a5,1
1c009ec8:	fcf42c23          	sw	a5,-40(s0)
1c009ecc:	fd042783          	lw	a5,-48(s0)
1c009ed0:	17f7a863          	p.beqimm	a5,-1,1c00a040 <pos_libc_prf+0x574>
1c009ed4:	02000793          	li	a5,32
1c009ed8:	fcf40ba3          	sb	a5,-41(s0)
1c009edc:	a295                	j	1c00a040 <pos_libc_prf+0x574>
1c009ede:	ec042783          	lw	a5,-320(s0)
1c009ee2:	00478713          	addi	a4,a5,4
1c009ee6:	ece42023          	sw	a4,-320(s0)
1c009eea:	439c                	lw	a5,0(a5)
1c009eec:	fcf42223          	sw	a5,-60(s0)
1c009ef0:	ee440793          	addi	a5,s0,-284
1c009ef4:	07800713          	li	a4,120
1c009ef8:	46a1                	li	a3,8
1c009efa:	4605                	li	a2,1
1c009efc:	fc442583          	lw	a1,-60(s0)
1c009f00:	853e                	mv	a0,a5
1c009f02:	ecdfe0ef          	jal	ra,1c008dce <pos_libc_to_hex>
1c009f06:	84aa                	mv	s1,a0
1c009f08:	4785                	li	a5,1
1c009f0a:	fcf42c23          	sw	a5,-40(s0)
1c009f0e:	fd042783          	lw	a5,-48(s0)
1c009f12:	13f7a963          	p.beqimm	a5,-1,1c00a044 <pos_libc_prf+0x578>
1c009f16:	02000793          	li	a5,32
1c009f1a:	fcf40ba3          	sb	a5,-41(s0)
1c009f1e:	a21d                	j	1c00a044 <pos_libc_prf+0x578>
1c009f20:	ec042783          	lw	a5,-320(s0)
1c009f24:	00478713          	addi	a4,a5,4
1c009f28:	ece42023          	sw	a4,-320(s0)
1c009f2c:	439c                	lw	a5,0(a5)
1c009f2e:	fcf42023          	sw	a5,-64(s0)
1c009f32:	4481                	li	s1,0
1c009f34:	a809                	j	1c009f46 <pos_libc_prf+0x47a>
1c009f36:	8726                	mv	a4,s1
1c009f38:	fc042783          	lw	a5,-64(s0)
1c009f3c:	97ba                	add	a5,a5,a4
1c009f3e:	0007c783          	lbu	a5,0(a5)
1c009f42:	c799                	beqz	a5,1c009f50 <pos_libc_prf+0x484>
1c009f44:	0485                	addi	s1,s1,1
1c009f46:	0c700793          	li	a5,199
1c009f4a:	fe97d6e3          	ble	s1,a5,1c009f36 <pos_libc_prf+0x46a>
1c009f4e:	a011                	j	1c009f52 <pos_libc_prf+0x486>
1c009f50:	0001                	nop
1c009f52:	fd042783          	lw	a5,-48(s0)
1c009f56:	0007c863          	bltz	a5,1c009f66 <pos_libc_prf+0x49a>
1c009f5a:	fd042783          	lw	a5,-48(s0)
1c009f5e:	0097d463          	ble	s1,a5,1c009f66 <pos_libc_prf+0x49a>
1c009f62:	fd042483          	lw	s1,-48(s0)
1c009f66:	0e905163          	blez	s1,1c00a048 <pos_libc_prf+0x57c>
1c009f6a:	8726                	mv	a4,s1
1c009f6c:	ee440793          	addi	a5,s0,-284
1c009f70:	863a                	mv	a2,a4
1c009f72:	fc042583          	lw	a1,-64(s0)
1c009f76:	853e                	mv	a0,a5
1c009f78:	8b9fe0ef          	jal	ra,1c008830 <memcpy>
1c009f7c:	4785                	li	a5,1
1c009f7e:	fcf42c23          	sw	a5,-40(s0)
1c009f82:	a0d9                	j	1c00a048 <pos_libc_prf+0x57c>
1c009f84:	ec042783          	lw	a5,-320(s0)
1c009f88:	00478713          	addi	a4,a5,4
1c009f8c:	ece42023          	sw	a4,-320(s0)
1c009f90:	439c                	lw	a5,0(a5)
1c009f92:	fcf42223          	sw	a5,-60(s0)
1c009f96:	ee440793          	addi	a5,s0,-284
1c009f9a:	fd042603          	lw	a2,-48(s0)
1c009f9e:	fc442583          	lw	a1,-60(s0)
1c009fa2:	853e                	mv	a0,a5
1c009fa4:	f3ffe0ef          	jal	ra,1c008ee2 <pos_libc_to_udec>
1c009fa8:	84aa                	mv	s1,a0
1c009faa:	4785                	li	a5,1
1c009fac:	fcf42c23          	sw	a5,-40(s0)
1c009fb0:	fd042783          	lw	a5,-48(s0)
1c009fb4:	09f7ac63          	p.beqimm	a5,-1,1c00a04c <pos_libc_prf+0x580>
1c009fb8:	02000793          	li	a5,32
1c009fbc:	fcf40ba3          	sb	a5,-41(s0)
1c009fc0:	a071                	j	1c00a04c <pos_libc_prf+0x580>
1c009fc2:	ec042783          	lw	a5,-320(s0)
1c009fc6:	00478713          	addi	a4,a5,4
1c009fca:	ece42023          	sw	a4,-320(s0)
1c009fce:	439c                	lw	a5,0(a5)
1c009fd0:	fcf42223          	sw	a5,-60(s0)
1c009fd4:	ee440793          	addi	a5,s0,-284
1c009fd8:	8726                	mv	a4,s1
1c009fda:	fd042683          	lw	a3,-48(s0)
1c009fde:	fe842603          	lw	a2,-24(s0)
1c009fe2:	fc442583          	lw	a1,-60(s0)
1c009fe6:	853e                	mv	a0,a5
1c009fe8:	de7fe0ef          	jal	ra,1c008dce <pos_libc_to_hex>
1c009fec:	84aa                	mv	s1,a0
1c009fee:	fe842783          	lw	a5,-24(s0)
1c009ff2:	c781                	beqz	a5,1c009ffa <pos_libc_prf+0x52e>
1c009ff4:	4789                	li	a5,2
1c009ff6:	fcf42623          	sw	a5,-52(s0)
1c009ffa:	4785                	li	a5,1
1c009ffc:	fcf42c23          	sw	a5,-40(s0)
1c00a000:	fd042783          	lw	a5,-48(s0)
1c00a004:	05f7a663          	p.beqimm	a5,-1,1c00a050 <pos_libc_prf+0x584>
1c00a008:	02000793          	li	a5,32
1c00a00c:	fcf40ba3          	sb	a5,-41(s0)
1c00a010:	a081                	j	1c00a050 <pos_libc_prf+0x584>
1c00a012:	ecc42783          	lw	a5,-308(s0)
1c00a016:	ec842583          	lw	a1,-312(s0)
1c00a01a:	02500513          	li	a0,37
1c00a01e:	9782                	jalr	a5
1c00a020:	87aa                	mv	a5,a0
1c00a022:	01f7b463          	p.bneimm	a5,-1,1c00a02a <pos_libc_prf+0x55e>
1c00a026:	57fd                	li	a5,-1
1c00a028:	aa21                	j	1c00a140 <pos_libc_prf+0x674>
1c00a02a:	fec42783          	lw	a5,-20(s0)
1c00a02e:	0785                	addi	a5,a5,1
1c00a030:	fef42623          	sw	a5,-20(s0)
1c00a034:	a839                	j	1c00a052 <pos_libc_prf+0x586>
1c00a036:	fec42783          	lw	a5,-20(s0)
1c00a03a:	a219                	j	1c00a140 <pos_libc_prf+0x674>
1c00a03c:	0001                	nop
1c00a03e:	a811                	j	1c00a052 <pos_libc_prf+0x586>
1c00a040:	0001                	nop
1c00a042:	a801                	j	1c00a052 <pos_libc_prf+0x586>
1c00a044:	0001                	nop
1c00a046:	a031                	j	1c00a052 <pos_libc_prf+0x586>
1c00a048:	0001                	nop
1c00a04a:	a021                	j	1c00a052 <pos_libc_prf+0x586>
1c00a04c:	0001                	nop
1c00a04e:	a011                	j	1c00a052 <pos_libc_prf+0x586>
1c00a050:	0001                	nop
1c00a052:	0c800793          	li	a5,200
1c00a056:	0097d463          	ble	s1,a5,1c00a05e <pos_libc_prf+0x592>
1c00a05a:	57fd                	li	a5,-1
1c00a05c:	a0d5                	j	1c00a140 <pos_libc_prf+0x674>
1c00a05e:	fd842783          	lw	a5,-40(s0)
1c00a062:	c3f1                	beqz	a5,1c00a126 <pos_libc_prf+0x65a>
1c00a064:	fc842783          	lw	a5,-56(s0)
1c00a068:	08f4d663          	ble	a5,s1,1c00a0f4 <pos_libc_prf+0x628>
1c00a06c:	fe442783          	lw	a5,-28(s0)
1c00a070:	c38d                	beqz	a5,1c00a092 <pos_libc_prf+0x5c6>
1c00a072:	8926                	mv	s2,s1
1c00a074:	a811                	j	1c00a088 <pos_libc_prf+0x5bc>
1c00a076:	ff040713          	addi	a4,s0,-16
1c00a07a:	012707b3          	add	a5,a4,s2
1c00a07e:	02000713          	li	a4,32
1c00a082:	eee78a23          	sb	a4,-268(a5)
1c00a086:	0905                	addi	s2,s2,1
1c00a088:	fc842783          	lw	a5,-56(s0)
1c00a08c:	fef945e3          	blt	s2,a5,1c00a076 <pos_libc_prf+0x5aa>
1c00a090:	a085                	j	1c00a0f0 <pos_libc_prf+0x624>
1c00a092:	fc842783          	lw	a5,-56(s0)
1c00a096:	8f85                	sub	a5,a5,s1
1c00a098:	873e                	mv	a4,a5
1c00a09a:	ee440793          	addi	a5,s0,-284
1c00a09e:	97ba                	add	a5,a5,a4
1c00a0a0:	00148713          	addi	a4,s1,1
1c00a0a4:	86ba                	mv	a3,a4
1c00a0a6:	ee440713          	addi	a4,s0,-284
1c00a0aa:	8636                	mv	a2,a3
1c00a0ac:	85ba                	mv	a1,a4
1c00a0ae:	853e                	mv	a0,a5
1c00a0b0:	877fe0ef          	jal	ra,1c008926 <memmove>
1c00a0b4:	fd744703          	lbu	a4,-41(s0)
1c00a0b8:	02000793          	li	a5,32
1c00a0bc:	00f71463          	bne	a4,a5,1c00a0c4 <pos_libc_prf+0x5f8>
1c00a0c0:	fc042623          	sw	zero,-52(s0)
1c00a0c4:	fc842783          	lw	a5,-56(s0)
1c00a0c8:	40978733          	sub	a4,a5,s1
1c00a0cc:	fcc42783          	lw	a5,-52(s0)
1c00a0d0:	00f704b3          	add	s1,a4,a5
1c00a0d4:	fcc42903          	lw	s2,-52(s0)
1c00a0d8:	a811                	j	1c00a0ec <pos_libc_prf+0x620>
1c00a0da:	ff040713          	addi	a4,s0,-16
1c00a0de:	012707b3          	add	a5,a4,s2
1c00a0e2:	fd744703          	lbu	a4,-41(s0)
1c00a0e6:	eee78a23          	sb	a4,-268(a5)
1c00a0ea:	0905                	addi	s2,s2,1
1c00a0ec:	fe9947e3          	blt	s2,s1,1c00a0da <pos_libc_prf+0x60e>
1c00a0f0:	fc842483          	lw	s1,-56(s0)
1c00a0f4:	ee440913          	addi	s2,s0,-284
1c00a0f8:	a02d                	j	1c00a122 <pos_libc_prf+0x656>
1c00a0fa:	00094783          	lbu	a5,0(s2)
1c00a0fe:	ecc42703          	lw	a4,-308(s0)
1c00a102:	ec842583          	lw	a1,-312(s0)
1c00a106:	853e                	mv	a0,a5
1c00a108:	9702                	jalr	a4
1c00a10a:	87aa                	mv	a5,a0
1c00a10c:	01f7b463          	p.bneimm	a5,-1,1c00a114 <pos_libc_prf+0x648>
1c00a110:	57fd                	li	a5,-1
1c00a112:	a03d                	j	1c00a140 <pos_libc_prf+0x674>
1c00a114:	14fd                	addi	s1,s1,-1
1c00a116:	0905                	addi	s2,s2,1
1c00a118:	fec42783          	lw	a5,-20(s0)
1c00a11c:	0785                	addi	a5,a5,1
1c00a11e:	fef42623          	sw	a5,-20(s0)
1c00a122:	fc904ce3          	bgtz	s1,1c00a0fa <pos_libc_prf+0x62e>
1c00a126:	ec442783          	lw	a5,-316(s0)
1c00a12a:	00178713          	addi	a4,a5,1
1c00a12e:	ece42223          	sw	a4,-316(s0)
1c00a132:	0007c783          	lbu	a5,0(a5)
1c00a136:	84be                	mv	s1,a5
1c00a138:	9a049fe3          	bnez	s1,1c009af6 <pos_libc_prf+0x2a>
1c00a13c:	fec42783          	lw	a5,-20(s0)
1c00a140:	853e                	mv	a0,a5
1c00a142:	13c12083          	lw	ra,316(sp)
1c00a146:	13812403          	lw	s0,312(sp)
1c00a14a:	13412483          	lw	s1,308(sp)
1c00a14e:	13012903          	lw	s2,304(sp)
1c00a152:	6131                	addi	sp,sp,320
1c00a154:	8082                	ret

1c00a156 <cluster_id>:
1c00a156:	1101                	addi	sp,sp,-32
1c00a158:	ce22                	sw	s0,28(sp)
1c00a15a:	1000                	addi	s0,sp,32
1c00a15c:	f14027f3          	csrr	a5,mhartid
1c00a160:	fef42623          	sw	a5,-20(s0)
1c00a164:	fec42783          	lw	a5,-20(s0)
1c00a168:	8795                	srai	a5,a5,0x5
1c00a16a:	f267b7b3          	p.bclr	a5,a5,25,6
1c00a16e:	853e                	mv	a0,a5
1c00a170:	4472                	lw	s0,28(sp)
1c00a172:	6105                	addi	sp,sp,32
1c00a174:	8082                	ret

1c00a176 <hal_cluster_id>:
1c00a176:	1141                	addi	sp,sp,-16
1c00a178:	c606                	sw	ra,12(sp)
1c00a17a:	c422                	sw	s0,8(sp)
1c00a17c:	0800                	addi	s0,sp,16
1c00a17e:	3fe1                	jal	1c00a156 <cluster_id>
1c00a180:	87aa                	mv	a5,a0
1c00a182:	853e                	mv	a0,a5
1c00a184:	40b2                	lw	ra,12(sp)
1c00a186:	4422                	lw	s0,8(sp)
1c00a188:	0141                	addi	sp,sp,16
1c00a18a:	8082                	ret

1c00a18c <hal_irq_enable>:
1c00a18c:	1101                	addi	sp,sp,-32
1c00a18e:	ce22                	sw	s0,28(sp)
1c00a190:	1000                	addi	s0,sp,32
1c00a192:	300467f3          	csrrsi	a5,mstatus,8
1c00a196:	fef42623          	sw	a5,-20(s0)
1c00a19a:	0001                	nop
1c00a19c:	4472                	lw	s0,28(sp)
1c00a19e:	6105                	addi	sp,sp,32
1c00a1a0:	8082                	ret

1c00a1a2 <cluster_start>:
1c00a1a2:	1101                	addi	sp,sp,-32
1c00a1a4:	ce22                	sw	s0,28(sp)
1c00a1a6:	1000                	addi	s0,sp,32
1c00a1a8:	fea42623          	sw	a0,-20(s0)
1c00a1ac:	feb42423          	sw	a1,-24(s0)
1c00a1b0:	0001                	nop
1c00a1b2:	4472                	lw	s0,28(sp)
1c00a1b4:	6105                	addi	sp,sp,32
1c00a1b6:	8082                	ret

1c00a1b8 <pos_init_do_ctors>:
1c00a1b8:	1101                	addi	sp,sp,-32
1c00a1ba:	ce06                	sw	ra,28(sp)
1c00a1bc:	cc22                	sw	s0,24(sp)
1c00a1be:	1000                	addi	s0,sp,32
1c00a1c0:	1c0007b7          	lui	a5,0x1c000
1c00a1c4:	00c78793          	addi	a5,a5,12 # 1c00000c <ctor_list+0x4>
1c00a1c8:	fef42623          	sw	a5,-20(s0)
1c00a1cc:	a811                	j	1c00a1e0 <pos_init_do_ctors+0x28>
1c00a1ce:	fec42783          	lw	a5,-20(s0)
1c00a1d2:	439c                	lw	a5,0(a5)
1c00a1d4:	9782                	jalr	a5
1c00a1d6:	fec42783          	lw	a5,-20(s0)
1c00a1da:	0791                	addi	a5,a5,4
1c00a1dc:	fef42623          	sw	a5,-20(s0)
1c00a1e0:	fec42783          	lw	a5,-20(s0)
1c00a1e4:	439c                	lw	a5,0(a5)
1c00a1e6:	f7e5                	bnez	a5,1c00a1ce <pos_init_do_ctors+0x16>
1c00a1e8:	0001                	nop
1c00a1ea:	40f2                	lw	ra,28(sp)
1c00a1ec:	4462                	lw	s0,24(sp)
1c00a1ee:	6105                	addi	sp,sp,32
1c00a1f0:	8082                	ret

1c00a1f2 <pos_init_do_dtors>:
1c00a1f2:	1101                	addi	sp,sp,-32
1c00a1f4:	ce06                	sw	ra,28(sp)
1c00a1f6:	cc22                	sw	s0,24(sp)
1c00a1f8:	1000                	addi	s0,sp,32
1c00a1fa:	1c0007b7          	lui	a5,0x1c000
1c00a1fe:	01878793          	addi	a5,a5,24 # 1c000018 <dtor_list+0x4>
1c00a202:	fef42623          	sw	a5,-20(s0)
1c00a206:	a811                	j	1c00a21a <pos_init_do_dtors+0x28>
1c00a208:	fec42783          	lw	a5,-20(s0)
1c00a20c:	439c                	lw	a5,0(a5)
1c00a20e:	9782                	jalr	a5
1c00a210:	fec42783          	lw	a5,-20(s0)
1c00a214:	0791                	addi	a5,a5,4
1c00a216:	fef42623          	sw	a5,-20(s0)
1c00a21a:	fec42783          	lw	a5,-20(s0)
1c00a21e:	439c                	lw	a5,0(a5)
1c00a220:	f7e5                	bnez	a5,1c00a208 <pos_init_do_dtors+0x16>
1c00a222:	0001                	nop
1c00a224:	40f2                	lw	ra,28(sp)
1c00a226:	4462                	lw	s0,24(sp)
1c00a228:	6105                	addi	sp,sp,32
1c00a22a:	8082                	ret

1c00a22c <pos_init_start>:
1c00a22c:	1141                	addi	sp,sp,-16
1c00a22e:	c606                	sw	ra,12(sp)
1c00a230:	c422                	sw	s0,8(sp)
1c00a232:	0800                	addi	s0,sp,16
1c00a234:	d04fe0ef          	jal	ra,1c008738 <pos_soc_init>
1c00a238:	2cd9                	jal	1c00a50e <pos_irq_init>
1c00a23a:	2eb9                	jal	1c00a598 <pos_soc_event_init>
1c00a23c:	226d                	jal	1c00a3e6 <pos_allocs_init>
1c00a23e:	3fad                	jal	1c00a1b8 <pos_init_do_ctors>
1c00a240:	931fe0ef          	jal	ra,1c008b70 <pos_io_start>
1c00a244:	37a1                	jal	1c00a18c <hal_irq_enable>
1c00a246:	4785                	li	a5,1
1c00a248:	cb89                	beqz	a5,1c00a25a <pos_init_start+0x2e>
1c00a24a:	3735                	jal	1c00a176 <hal_cluster_id>
1c00a24c:	87aa                	mv	a5,a0
1c00a24e:	1785                	addi	a5,a5,-31
1c00a250:	0017b793          	seqz	a5,a5
1c00a254:	0ff7f793          	andi	a5,a5,255
1c00a258:	a011                	j	1c00a25c <pos_init_start+0x30>
1c00a25a:	4781                	li	a5,0
1c00a25c:	eb91                	bnez	a5,1c00a270 <pos_init_start+0x44>
1c00a25e:	3f21                	jal	1c00a176 <hal_cluster_id>
1c00a260:	87aa                	mv	a5,a0
1c00a262:	873e                	mv	a4,a5
1c00a264:	1c0087b7          	lui	a5,0x1c008
1c00a268:	10678593          	addi	a1,a5,262 # 1c008106 <main>
1c00a26c:	853a                	mv	a0,a4
1c00a26e:	3f15                	jal	1c00a1a2 <cluster_start>
1c00a270:	0001                	nop
1c00a272:	40b2                	lw	ra,12(sp)
1c00a274:	4422                	lw	s0,8(sp)
1c00a276:	0141                	addi	sp,sp,16
1c00a278:	8082                	ret

1c00a27a <pos_init_stop>:
1c00a27a:	1141                	addi	sp,sp,-16
1c00a27c:	c606                	sw	ra,12(sp)
1c00a27e:	c422                	sw	s0,8(sp)
1c00a280:	0800                	addi	s0,sp,16
1c00a282:	8fffe0ef          	jal	ra,1c008b80 <pos_io_stop>
1c00a286:	37b5                	jal	1c00a1f2 <pos_init_do_dtors>
1c00a288:	0001                	nop
1c00a28a:	40b2                	lw	ra,12(sp)
1c00a28c:	4422                	lw	s0,8(sp)
1c00a28e:	0141                	addi	sp,sp,16
1c00a290:	8082                	ret

1c00a292 <pos_alloc_init>:
1c00a292:	7179                	addi	sp,sp,-48
1c00a294:	d622                	sw	s0,44(sp)
1c00a296:	1800                	addi	s0,sp,48
1c00a298:	fca42e23          	sw	a0,-36(s0)
1c00a29c:	fcb42c23          	sw	a1,-40(s0)
1c00a2a0:	fcc42a23          	sw	a2,-44(s0)
1c00a2a4:	fd842783          	lw	a5,-40(s0)
1c00a2a8:	079d                	addi	a5,a5,7
1c00a2aa:	c407b7b3          	p.bclr	a5,a5,2,0
1c00a2ae:	fef42623          	sw	a5,-20(s0)
1c00a2b2:	fdc42783          	lw	a5,-36(s0)
1c00a2b6:	fec42703          	lw	a4,-20(s0)
1c00a2ba:	c398                	sw	a4,0(a5)
1c00a2bc:	fec42703          	lw	a4,-20(s0)
1c00a2c0:	fd842783          	lw	a5,-40(s0)
1c00a2c4:	40f707b3          	sub	a5,a4,a5
1c00a2c8:	fd442703          	lw	a4,-44(s0)
1c00a2cc:	40f707b3          	sub	a5,a4,a5
1c00a2d0:	fcf42a23          	sw	a5,-44(s0)
1c00a2d4:	fd442783          	lw	a5,-44(s0)
1c00a2d8:	00f05d63          	blez	a5,1c00a2f2 <pos_alloc_init+0x60>
1c00a2dc:	fd442783          	lw	a5,-44(s0)
1c00a2e0:	c407b733          	p.bclr	a4,a5,2,0
1c00a2e4:	fec42783          	lw	a5,-20(s0)
1c00a2e8:	c398                	sw	a4,0(a5)
1c00a2ea:	fec42783          	lw	a5,-20(s0)
1c00a2ee:	0007a223          	sw	zero,4(a5)
1c00a2f2:	0001                	nop
1c00a2f4:	5432                	lw	s0,44(sp)
1c00a2f6:	6145                	addi	sp,sp,48
1c00a2f8:	8082                	ret

1c00a2fa <pos_l2_priv0_base>:
1c00a2fa:	1141                	addi	sp,sp,-16
1c00a2fc:	c622                	sw	s0,12(sp)
1c00a2fe:	0800                	addi	s0,sp,16
1c00a300:	1c0017b7          	lui	a5,0x1c001
1c00a304:	9f478713          	addi	a4,a5,-1548 # 1c0009f4 <__l2_priv0_end>
1c00a308:	1c0087b7          	lui	a5,0x1c008
1c00a30c:	00f74463          	blt	a4,a5,1c00a314 <pos_l2_priv0_base+0x1a>
1c00a310:	4781                	li	a5,0
1c00a312:	a029                	j	1c00a31c <pos_l2_priv0_base+0x22>
1c00a314:	1c0017b7          	lui	a5,0x1c001
1c00a318:	9f478793          	addi	a5,a5,-1548 # 1c0009f4 <__l2_priv0_end>
1c00a31c:	853e                	mv	a0,a5
1c00a31e:	4432                	lw	s0,12(sp)
1c00a320:	0141                	addi	sp,sp,16
1c00a322:	8082                	ret

1c00a324 <pos_l2_priv0_size>:
1c00a324:	1141                	addi	sp,sp,-16
1c00a326:	c622                	sw	s0,12(sp)
1c00a328:	0800                	addi	s0,sp,16
1c00a32a:	1c0017b7          	lui	a5,0x1c001
1c00a32e:	9f478713          	addi	a4,a5,-1548 # 1c0009f4 <__l2_priv0_end>
1c00a332:	1c0087b7          	lui	a5,0x1c008
1c00a336:	00f74463          	blt	a4,a5,1c00a33e <pos_l2_priv0_size+0x1a>
1c00a33a:	4781                	li	a5,0
1c00a33c:	a809                	j	1c00a34e <pos_l2_priv0_size+0x2a>
1c00a33e:	1c0017b7          	lui	a5,0x1c001
1c00a342:	9f478793          	addi	a5,a5,-1548 # 1c0009f4 <__l2_priv0_end>
1c00a346:	1c008737          	lui	a4,0x1c008
1c00a34a:	40f707b3          	sub	a5,a4,a5
1c00a34e:	853e                	mv	a0,a5
1c00a350:	4432                	lw	s0,12(sp)
1c00a352:	0141                	addi	sp,sp,16
1c00a354:	8082                	ret

1c00a356 <pos_l2_priv1_base>:
1c00a356:	1141                	addi	sp,sp,-16
1c00a358:	c622                	sw	s0,12(sp)
1c00a35a:	0800                	addi	s0,sp,16
1c00a35c:	1c00a7b7          	lui	a5,0x1c00a
1c00a360:	5b078713          	addi	a4,a5,1456 # 1c00a5b0 <__l2_priv1_end>
1c00a364:	1c0107b7          	lui	a5,0x1c010
1c00a368:	00f74463          	blt	a4,a5,1c00a370 <pos_l2_priv1_base+0x1a>
1c00a36c:	4781                	li	a5,0
1c00a36e:	a029                	j	1c00a378 <pos_l2_priv1_base+0x22>
1c00a370:	1c00a7b7          	lui	a5,0x1c00a
1c00a374:	5b078793          	addi	a5,a5,1456 # 1c00a5b0 <__l2_priv1_end>
1c00a378:	853e                	mv	a0,a5
1c00a37a:	4432                	lw	s0,12(sp)
1c00a37c:	0141                	addi	sp,sp,16
1c00a37e:	8082                	ret

1c00a380 <pos_l2_priv1_size>:
1c00a380:	1141                	addi	sp,sp,-16
1c00a382:	c622                	sw	s0,12(sp)
1c00a384:	0800                	addi	s0,sp,16
1c00a386:	1c00a7b7          	lui	a5,0x1c00a
1c00a38a:	5b078713          	addi	a4,a5,1456 # 1c00a5b0 <__l2_priv1_end>
1c00a38e:	1c0107b7          	lui	a5,0x1c010
1c00a392:	00f74463          	blt	a4,a5,1c00a39a <pos_l2_priv1_size+0x1a>
1c00a396:	4781                	li	a5,0
1c00a398:	a809                	j	1c00a3aa <pos_l2_priv1_size+0x2a>
1c00a39a:	1c00a7b7          	lui	a5,0x1c00a
1c00a39e:	5b078793          	addi	a5,a5,1456 # 1c00a5b0 <__l2_priv1_end>
1c00a3a2:	1c010737          	lui	a4,0x1c010
1c00a3a6:	40f707b3          	sub	a5,a4,a5
1c00a3aa:	853e                	mv	a0,a5
1c00a3ac:	4432                	lw	s0,12(sp)
1c00a3ae:	0141                	addi	sp,sp,16
1c00a3b0:	8082                	ret

1c00a3b2 <pos_l2_shared_base>:
1c00a3b2:	1141                	addi	sp,sp,-16
1c00a3b4:	c622                	sw	s0,12(sp)
1c00a3b6:	0800                	addi	s0,sp,16
1c00a3b8:	1c0107b7          	lui	a5,0x1c010
1c00a3bc:	00078793          	mv	a5,a5
1c00a3c0:	853e                	mv	a0,a5
1c00a3c2:	4432                	lw	s0,12(sp)
1c00a3c4:	0141                	addi	sp,sp,16
1c00a3c6:	8082                	ret

1c00a3c8 <pos_l2_shared_size>:
1c00a3c8:	1141                	addi	sp,sp,-16
1c00a3ca:	c622                	sw	s0,12(sp)
1c00a3cc:	0800                	addi	s0,sp,16
1c00a3ce:	1c0107b7          	lui	a5,0x1c010
1c00a3d2:	00078793          	mv	a5,a5
1c00a3d6:	1c080737          	lui	a4,0x1c080
1c00a3da:	40f707b3          	sub	a5,a4,a5
1c00a3de:	853e                	mv	a0,a5
1c00a3e0:	4432                	lw	s0,12(sp)
1c00a3e2:	0141                	addi	sp,sp,16
1c00a3e4:	8082                	ret

1c00a3e6 <pos_allocs_init>:
1c00a3e6:	1141                	addi	sp,sp,-16
1c00a3e8:	c606                	sw	ra,12(sp)
1c00a3ea:	c422                	sw	s0,8(sp)
1c00a3ec:	c226                	sw	s1,4(sp)
1c00a3ee:	0800                	addi	s0,sp,16
1c00a3f0:	3729                	jal	1c00a2fa <pos_l2_priv0_base>
1c00a3f2:	84aa                	mv	s1,a0
1c00a3f4:	3f05                	jal	1c00a324 <pos_l2_priv0_size>
1c00a3f6:	87aa                	mv	a5,a0
1c00a3f8:	863e                	mv	a2,a5
1c00a3fa:	85a6                	mv	a1,s1
1c00a3fc:	1c0017b7          	lui	a5,0x1c001
1c00a400:	9e878513          	addi	a0,a5,-1560 # 1c0009e8 <pos_alloc_l2>
1c00a404:	3579                	jal	1c00a292 <pos_alloc_init>
1c00a406:	3f81                	jal	1c00a356 <pos_l2_priv1_base>
1c00a408:	84aa                	mv	s1,a0
1c00a40a:	3f9d                	jal	1c00a380 <pos_l2_priv1_size>
1c00a40c:	87aa                	mv	a5,a0
1c00a40e:	863e                	mv	a2,a5
1c00a410:	85a6                	mv	a1,s1
1c00a412:	1c0017b7          	lui	a5,0x1c001
1c00a416:	9ec78513          	addi	a0,a5,-1556 # 1c0009ec <pos_alloc_l2+0x4>
1c00a41a:	3da5                	jal	1c00a292 <pos_alloc_init>
1c00a41c:	3f59                	jal	1c00a3b2 <pos_l2_shared_base>
1c00a41e:	84aa                	mv	s1,a0
1c00a420:	3765                	jal	1c00a3c8 <pos_l2_shared_size>
1c00a422:	87aa                	mv	a5,a0
1c00a424:	863e                	mv	a2,a5
1c00a426:	85a6                	mv	a1,s1
1c00a428:	1c0017b7          	lui	a5,0x1c001
1c00a42c:	9f078513          	addi	a0,a5,-1552 # 1c0009f0 <pos_alloc_l2+0x8>
1c00a430:	358d                	jal	1c00a292 <pos_alloc_init>
1c00a432:	0001                	nop
1c00a434:	40b2                	lw	ra,12(sp)
1c00a436:	4422                	lw	s0,8(sp)
1c00a438:	4492                	lw	s1,4(sp)
1c00a43a:	0141                	addi	sp,sp,16
1c00a43c:	8082                	ret

1c00a43e <cluster_id>:
1c00a43e:	1101                	addi	sp,sp,-32
1c00a440:	ce22                	sw	s0,28(sp)
1c00a442:	1000                	addi	s0,sp,32
1c00a444:	f14027f3          	csrr	a5,mhartid
1c00a448:	fef42623          	sw	a5,-20(s0)
1c00a44c:	fec42783          	lw	a5,-20(s0)
1c00a450:	8795                	srai	a5,a5,0x5
1c00a452:	f267b7b3          	p.bclr	a5,a5,25,6
1c00a456:	853e                	mv	a0,a5
1c00a458:	4472                	lw	s0,28(sp)
1c00a45a:	6105                	addi	sp,sp,32
1c00a45c:	8082                	ret

1c00a45e <hal_cluster_id>:
1c00a45e:	1141                	addi	sp,sp,-16
1c00a460:	c606                	sw	ra,12(sp)
1c00a462:	c422                	sw	s0,8(sp)
1c00a464:	0800                	addi	s0,sp,16
1c00a466:	3fe1                	jal	1c00a43e <cluster_id>
1c00a468:	87aa                	mv	a5,a0
1c00a46a:	853e                	mv	a0,a5
1c00a46c:	40b2                	lw	ra,12(sp)
1c00a46e:	4422                	lw	s0,8(sp)
1c00a470:	0141                	addi	sp,sp,16
1c00a472:	8082                	ret

1c00a474 <hal_itc_enable_clr>:
1c00a474:	1101                	addi	sp,sp,-32
1c00a476:	ce22                	sw	s0,28(sp)
1c00a478:	1000                	addi	s0,sp,32
1c00a47a:	fea42623          	sw	a0,-20(s0)
1c00a47e:	1a10a7b7          	lui	a5,0x1a10a
1c00a482:	80878793          	addi	a5,a5,-2040 # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a486:	fec42703          	lw	a4,-20(s0)
1c00a48a:	c398                	sw	a4,0(a5)
1c00a48c:	0001                	nop
1c00a48e:	4472                	lw	s0,28(sp)
1c00a490:	6105                	addi	sp,sp,32
1c00a492:	8082                	ret

1c00a494 <rt_irq_mask_clr>:
1c00a494:	1101                	addi	sp,sp,-32
1c00a496:	ce06                	sw	ra,28(sp)
1c00a498:	cc22                	sw	s0,24(sp)
1c00a49a:	1000                	addi	s0,sp,32
1c00a49c:	fea42623          	sw	a0,-20(s0)
1c00a4a0:	fec42503          	lw	a0,-20(s0)
1c00a4a4:	3fc1                	jal	1c00a474 <hal_itc_enable_clr>
1c00a4a6:	0001                	nop
1c00a4a8:	40f2                	lw	ra,28(sp)
1c00a4aa:	4462                	lw	s0,24(sp)
1c00a4ac:	6105                	addi	sp,sp,32
1c00a4ae:	8082                	ret

1c00a4b0 <rt_irq_set_fc_vector_base>:
1c00a4b0:	1101                	addi	sp,sp,-32
1c00a4b2:	ce06                	sw	ra,28(sp)
1c00a4b4:	cc22                	sw	s0,24(sp)
1c00a4b6:	1000                	addi	s0,sp,32
1c00a4b8:	fea42623          	sw	a0,-20(s0)
1c00a4bc:	4785                	li	a5,1
1c00a4be:	cb89                	beqz	a5,1c00a4d0 <rt_irq_set_fc_vector_base+0x20>
1c00a4c0:	3f79                	jal	1c00a45e <hal_cluster_id>
1c00a4c2:	87aa                	mv	a5,a0
1c00a4c4:	1785                	addi	a5,a5,-31
1c00a4c6:	0017b793          	seqz	a5,a5
1c00a4ca:	0ff7f793          	andi	a5,a5,255
1c00a4ce:	a011                	j	1c00a4d2 <rt_irq_set_fc_vector_base+0x22>
1c00a4d0:	4781                	li	a5,0
1c00a4d2:	c799                	beqz	a5,1c00a4e0 <rt_irq_set_fc_vector_base+0x30>
1c00a4d4:	fec42783          	lw	a5,-20(s0)
1c00a4d8:	c007c7b3          	p.bset	a5,a5,0,0
1c00a4dc:	30579073          	csrw	mtvec,a5
1c00a4e0:	0001                	nop
1c00a4e2:	40f2                	lw	ra,28(sp)
1c00a4e4:	4462                	lw	s0,24(sp)
1c00a4e6:	6105                	addi	sp,sp,32
1c00a4e8:	8082                	ret

1c00a4ea <pos_irq_vector_base>:
1c00a4ea:	1141                	addi	sp,sp,-16
1c00a4ec:	c622                	sw	s0,12(sp)
1c00a4ee:	0800                	addi	s0,sp,16
1c00a4f0:	1c0087b7          	lui	a5,0x1c008
1c00a4f4:	00078793          	mv	a5,a5
1c00a4f8:	853e                	mv	a0,a5
1c00a4fa:	4432                	lw	s0,12(sp)
1c00a4fc:	0141                	addi	sp,sp,16
1c00a4fe:	8082                	ret

1c00a500 <__rt_handle_illegal_instr>:
1c00a500:	1141                	addi	sp,sp,-16
1c00a502:	c622                	sw	s0,12(sp)
1c00a504:	0800                	addi	s0,sp,16
1c00a506:	0001                	nop
1c00a508:	4432                	lw	s0,12(sp)
1c00a50a:	0141                	addi	sp,sp,16
1c00a50c:	8082                	ret

1c00a50e <pos_irq_init>:
1c00a50e:	1141                	addi	sp,sp,-16
1c00a510:	c606                	sw	ra,12(sp)
1c00a512:	c422                	sw	s0,8(sp)
1c00a514:	0800                	addi	s0,sp,16
1c00a516:	557d                	li	a0,-1
1c00a518:	3fb5                	jal	1c00a494 <rt_irq_mask_clr>
1c00a51a:	3fc1                	jal	1c00a4ea <pos_irq_vector_base>
1c00a51c:	87aa                	mv	a5,a0
1c00a51e:	853e                	mv	a0,a5
1c00a520:	3f41                	jal	1c00a4b0 <rt_irq_set_fc_vector_base>
1c00a522:	0001                	nop
1c00a524:	40b2                	lw	ra,12(sp)
1c00a526:	4422                	lw	s0,8(sp)
1c00a528:	0141                	addi	sp,sp,16
1c00a52a:	8082                	ret

1c00a52c <soc_eu_eventMask_set>:
1c00a52c:	1101                	addi	sp,sp,-32
1c00a52e:	ce22                	sw	s0,28(sp)
1c00a530:	1000                	addi	s0,sp,32
1c00a532:	fea42623          	sw	a0,-20(s0)
1c00a536:	feb42423          	sw	a1,-24(s0)
1c00a53a:	fec42703          	lw	a4,-20(s0)
1c00a53e:	1a1067b7          	lui	a5,0x1a106
1c00a542:	97ba                	add	a5,a5,a4
1c00a544:	873e                	mv	a4,a5
1c00a546:	fe842783          	lw	a5,-24(s0)
1c00a54a:	c31c                	sw	a5,0(a4)
1c00a54c:	0001                	nop
1c00a54e:	4472                	lw	s0,28(sp)
1c00a550:	6105                	addi	sp,sp,32
1c00a552:	8082                	ret

1c00a554 <soc_eu_eventMask_reset>:
1c00a554:	7179                	addi	sp,sp,-48
1c00a556:	d606                	sw	ra,44(sp)
1c00a558:	d422                	sw	s0,40(sp)
1c00a55a:	1800                	addi	s0,sp,48
1c00a55c:	fca42e23          	sw	a0,-36(s0)
1c00a560:	fe042623          	sw	zero,-20(s0)
1c00a564:	a005                	j	1c00a584 <soc_eu_eventMask_reset+0x30>
1c00a566:	fec42783          	lw	a5,-20(s0)
1c00a56a:	078a                	slli	a5,a5,0x2
1c00a56c:	873e                	mv	a4,a5
1c00a56e:	fdc42783          	lw	a5,-36(s0)
1c00a572:	97ba                	add	a5,a5,a4
1c00a574:	55fd                	li	a1,-1
1c00a576:	853e                	mv	a0,a5
1c00a578:	3f55                	jal	1c00a52c <soc_eu_eventMask_set>
1c00a57a:	fec42783          	lw	a5,-20(s0)
1c00a57e:	0785                	addi	a5,a5,1
1c00a580:	fef42623          	sw	a5,-20(s0)
1c00a584:	fec42703          	lw	a4,-20(s0)
1c00a588:	479d                	li	a5,7
1c00a58a:	fce7dee3          	ble	a4,a5,1c00a566 <soc_eu_eventMask_reset+0x12>
1c00a58e:	0001                	nop
1c00a590:	50b2                	lw	ra,44(sp)
1c00a592:	5422                	lw	s0,40(sp)
1c00a594:	6145                	addi	sp,sp,48
1c00a596:	8082                	ret

1c00a598 <pos_soc_event_init>:
1c00a598:	1141                	addi	sp,sp,-16
1c00a59a:	c606                	sw	ra,12(sp)
1c00a59c:	c422                	sw	s0,8(sp)
1c00a59e:	0800                	addi	s0,sp,16
1c00a5a0:	4511                	li	a0,4
1c00a5a2:	3f4d                	jal	1c00a554 <soc_eu_eventMask_reset>
1c00a5a4:	0001                	nop
1c00a5a6:	40b2                	lw	ra,12(sp)
1c00a5a8:	4422                	lw	s0,8(sp)
1c00a5aa:	0141                	addi	sp,sp,16
1c00a5ac:	8082                	ret

1c00a5ae <_endtext>:
	...
