


0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 b5 8f 00 00 	mov    0x8fb5(%rip),%rax        # 9fc0 <__gmon_start__@Base>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <strncmp@plt-0x10>:
    1020:	ff 35 ca 8f 00 00    	push   0x8fca(%rip)        # 9ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 8f 00 00    	jmp    *0x8fcc(%rip)        # 9ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <strncmp@plt>:
    1030:	ff 25 ca 8f 00 00    	jmp    *0x8fca(%rip)        # a000 <strncmp@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <strcpy@plt>:
    1040:	ff 25 c2 8f 00 00    	jmp    *0x8fc2(%rip)        # a008 <strcpy@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <puts@plt>:
    1050:	ff 25 ba 8f 00 00    	jmp    *0x8fba(%rip)        # a010 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <fread@plt>:
    1060:	ff 25 b2 8f 00 00    	jmp    *0x8fb2(%rip)        # a018 <fread@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <strtod@plt>:
    1070:	ff 25 aa 8f 00 00    	jmp    *0x8faa(%rip)        # a020 <strtod@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <fclose@plt>:
    1080:	ff 25 a2 8f 00 00    	jmp    *0x8fa2(%rip)        # a028 <fclose@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <strlen@plt>:
    1090:	ff 25 9a 8f 00 00    	jmp    *0x8f9a(%rip)        # a030 <strlen@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <__stack_chk_fail@plt>:
    10a0:	ff 25 92 8f 00 00    	jmp    *0x8f92(%rip)        # a038 <__stack_chk_fail@GLIBC_2.4>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <snprintf@plt>:
    10b0:	ff 25 8a 8f 00 00    	jmp    *0x8f8a(%rip)        # a040 <snprintf@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <memset@plt>:
    10c0:	ff 25 82 8f 00 00    	jmp    *0x8f82(%rip)        # a048 <memset@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <strcmp@plt>:
    10d0:	ff 25 7a 8f 00 00    	jmp    *0x8f7a(%rip)        # a050 <strcmp@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <ftell@plt>:
    10e0:	ff 25 72 8f 00 00    	jmp    *0x8f72(%rip)        # a058 <ftell@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <memcpy@plt>:
    10f0:	ff 25 6a 8f 00 00    	jmp    *0x8f6a(%rip)        # a060 <memcpy@GLIBC_2.14>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <tolower@plt>:
    1100:	ff 25 62 8f 00 00    	jmp    *0x8f62(%rip)        # a068 <tolower@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001110 <__isoc99_sscanf@plt>:
    1110:	ff 25 5a 8f 00 00    	jmp    *0x8f5a(%rip)        # a070 <__isoc99_sscanf@GLIBC_2.7>
    1116:	68 0e 00 00 00       	push   $0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001120 <fseek@plt>:
    1120:	ff 25 52 8f 00 00    	jmp    *0x8f52(%rip)        # a078 <fseek@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	push   $0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001130 <fopen@plt>:
    1130:	ff 25 4a 8f 00 00    	jmp    *0x8f4a(%rip)        # a080 <fopen@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	push   $0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001140 <sprintf@plt>:
    1140:	ff 25 42 8f 00 00    	jmp    *0x8f42(%rip)        # a088 <sprintf@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	push   $0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001150 <fwrite@plt>:
    1150:	ff 25 3a 8f 00 00    	jmp    *0x8f3a(%rip)        # a090 <fwrite@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	push   $0x12
    115b:	e9 c0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001160 <strdup@plt>:
    1160:	ff 25 32 8f 00 00    	jmp    *0x8f32(%rip)        # a098 <strdup@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	push   $0x13
    116b:	e9 b0 fe ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001170 <free@plt>:
    1170:	ff 25 32 8e 00 00    	jmp    *0x8e32(%rip)        # 9fa8 <free@GLIBC_2.2.5>
    1176:	66 90                	xchg   %ax,%ax

0000000000001178 <malloc@plt>:
    1178:	ff 25 4a 8e 00 00    	jmp    *0x8e4a(%rip)        # 9fc8 <malloc@GLIBC_2.2.5>
    117e:	66 90                	xchg   %ax,%ax

0000000000001180 <realloc@plt>:
    1180:	ff 25 4a 8e 00 00    	jmp    *0x8e4a(%rip)        # 9fd0 <realloc@GLIBC_2.2.5>
    1186:	66 90                	xchg   %ax,%ax

0000000000001188 <__cxa_finalize@plt>:
    1188:	ff 25 52 8e 00 00    	jmp    *0x8e52(%rip)        # 9fe0 <__cxa_finalize@GLIBC_2.2.5>
    118e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001190 <_start>:
    1190:	31 ed                	xor    %ebp,%ebp
    1192:	49 89 d1             	mov    %rdx,%r9
    1195:	5e                   	pop    %rsi
    1196:	48 89 e2             	mov    %rsp,%rdx
    1199:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    119d:	50                   	push   %rax
    119e:	54                   	push   %rsp
    119f:	45 31 c0             	xor    %r8d,%r8d
    11a2:	31 c9                	xor    %ecx,%ecx
    11a4:	48 8d 3d bd 03 00 00 	lea    0x3bd(%rip),%rdi        # 1568 <main>
    11ab:	ff 15 ff 8d 00 00    	call   *0x8dff(%rip)        # 9fb0 <__libc_start_main@GLIBC_2.34>
    11b1:	f4                   	hlt
    11b2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11b9:	00 00 00 
    11bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011c0 <deregister_tm_clones>:
    11c0:	48 8d 3d 01 8f 00 00 	lea    0x8f01(%rip),%rdi        # a0c8 <__TMC_END__>
    11c7:	48 8d 05 fa 8e 00 00 	lea    0x8efa(%rip),%rax        # a0c8 <__TMC_END__>
    11ce:	48 39 f8             	cmp    %rdi,%rax
    11d1:	74 15                	je     11e8 <deregister_tm_clones+0x28>
    11d3:	48 8b 05 de 8d 00 00 	mov    0x8dde(%rip),%rax        # 9fb8 <_ITM_deregisterTMCloneTable@Base>
    11da:	48 85 c0             	test   %rax,%rax
    11dd:	74 09                	je     11e8 <deregister_tm_clones+0x28>
    11df:	ff e0                	jmp    *%rax
    11e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11e8:	c3                   	ret
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011f0 <register_tm_clones>:
    11f0:	48 8d 3d d1 8e 00 00 	lea    0x8ed1(%rip),%rdi        # a0c8 <__TMC_END__>
    11f7:	48 8d 35 ca 8e 00 00 	lea    0x8eca(%rip),%rsi        # a0c8 <__TMC_END__>
    11fe:	48 29 fe             	sub    %rdi,%rsi
    1201:	48 89 f0             	mov    %rsi,%rax
    1204:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1208:	48 c1 f8 03          	sar    $0x3,%rax
    120c:	48 01 c6             	add    %rax,%rsi
    120f:	48 d1 fe             	sar    $1,%rsi
    1212:	74 14                	je     1228 <register_tm_clones+0x38>
    1214:	48 8b 05 bd 8d 00 00 	mov    0x8dbd(%rip),%rax        # 9fd8 <_ITM_registerTMCloneTable@Base>
    121b:	48 85 c0             	test   %rax,%rax
    121e:	74 08                	je     1228 <register_tm_clones+0x38>
    1220:	ff e0                	jmp    *%rax
    1222:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1228:	c3                   	ret
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <__do_global_dtors_aux>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	80 3d cd 8e 00 00 00 	cmpb   $0x0,0x8ecd(%rip)        # a108 <completed.0>
    123b:	75 2b                	jne    1268 <__do_global_dtors_aux+0x38>
    123d:	55                   	push   %rbp
    123e:	48 83 3d 9a 8d 00 00 	cmpq   $0x0,0x8d9a(%rip)        # 9fe0 <__cxa_finalize@GLIBC_2.2.5>
    1245:	00 
    1246:	48 89 e5             	mov    %rsp,%rbp
    1249:	74 0c                	je     1257 <__do_global_dtors_aux+0x27>
    124b:	48 8b 3d 56 8e 00 00 	mov    0x8e56(%rip),%rdi        # a0a8 <__dso_handle>
    1252:	e8 31 ff ff ff       	call   1188 <__cxa_finalize@plt>
    1257:	e8 64 ff ff ff       	call   11c0 <deregister_tm_clones>
    125c:	c6 05 a5 8e 00 00 01 	movb   $0x1,0x8ea5(%rip)        # a108 <completed.0>
    1263:	5d                   	pop    %rbp
    1264:	c3                   	ret
    1265:	0f 1f 00             	nopl   (%rax)
    1268:	c3                   	ret
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <frame_dummy>:
    1270:	f3 0f 1e fa          	endbr64
    1274:	e9 77 ff ff ff       	jmp    11f0 <register_tm_clones>

0000000000001279 <append_to_headers>:
    1279:	55                   	push   %rbp
    127a:	48 89 e5             	mov    %rsp,%rbp
    127d:	48 83 ec 20          	sub    $0x20,%rsp
    1281:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1285:	8b 15 91 8e 00 00    	mov    0x8e91(%rip),%edx        # a11c <headers_idx>
    128b:	8b 05 87 8e 00 00    	mov    0x8e87(%rip),%eax        # a118 <headers_cap>
    1291:	39 c2                	cmp    %eax,%edx
    1293:	7c 74                	jl     1309 <append_to_headers+0x90>
    1295:	8b 05 7d 8e 00 00    	mov    0x8e7d(%rip),%eax        # a118 <headers_cap>
    129b:	83 c0 0a             	add    $0xa,%eax
    129e:	89 05 74 8e 00 00    	mov    %eax,0x8e74(%rip)        # a118 <headers_cap>
    12a4:	8b 05 6e 8e 00 00    	mov    0x8e6e(%rip),%eax        # a118 <headers_cap>
    12aa:	48 98                	cltq
    12ac:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    12b3:	00 
    12b4:	48 8b 05 55 8e 00 00 	mov    0x8e55(%rip),%rax        # a110 <headers>
    12bb:	48 89 d6             	mov    %rdx,%rsi
    12be:	48 89 c7             	mov    %rax,%rdi
    12c1:	e8 ba fe ff ff       	call   1180 <realloc@plt>
    12c6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12ca:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    12cf:	75 2d                	jne    12fe <append_to_headers+0x85>
    12d1:	48 8b 05 28 8e 00 00 	mov    0x8e28(%rip),%rax        # a100 <stderr@GLIBC_2.2.5>
    12d8:	48 89 c1             	mov    %rax,%rcx
    12db:	ba 13 00 00 00       	mov    $0x13,%edx
    12e0:	be 01 00 00 00       	mov    $0x1,%esi
    12e5:	48 8d 05 18 5d 00 00 	lea    0x5d18(%rip),%rax        # 7004 <_IO_stdin_used+0x4>
    12ec:	48 89 c7             	mov    %rax,%rdi
    12ef:	e8 5c fe ff ff       	call   1150 <fwrite@plt>
    12f4:	b8 01 00 00 00       	mov    $0x1,%eax
    12f9:	e9 80 00 00 00       	jmp    137e <append_to_headers+0x105>
    12fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1302:	48 89 05 07 8e 00 00 	mov    %rax,0x8e07(%rip)        # a110 <headers>
    1309:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1310:	eb 35                	jmp    1347 <append_to_headers+0xce>
    1312:	48 8b 05 f7 8d 00 00 	mov    0x8df7(%rip),%rax        # a110 <headers>
    1319:	8b 55 f4             	mov    -0xc(%rbp),%edx
    131c:	48 63 d2             	movslq %edx,%rdx
    131f:	48 c1 e2 03          	shl    $0x3,%rdx
    1323:	48 01 d0             	add    %rdx,%rax
    1326:	48 8b 00             	mov    (%rax),%rax
    1329:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    132d:	48 89 d6             	mov    %rdx,%rsi
    1330:	48 89 c7             	mov    %rax,%rdi
    1333:	e8 98 fd ff ff       	call   10d0 <strcmp@plt>
    1338:	85 c0                	test   %eax,%eax
    133a:	75 07                	jne    1343 <append_to_headers+0xca>
    133c:	b8 00 00 00 00       	mov    $0x0,%eax
    1341:	eb 3b                	jmp    137e <append_to_headers+0x105>
    1343:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1347:	8b 05 cf 8d 00 00    	mov    0x8dcf(%rip),%eax        # a11c <headers_idx>
    134d:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1350:	7c c0                	jl     1312 <append_to_headers+0x99>
    1352:	48 8b 0d b7 8d 00 00 	mov    0x8db7(%rip),%rcx        # a110 <headers>
    1359:	8b 05 bd 8d 00 00    	mov    0x8dbd(%rip),%eax        # a11c <headers_idx>
    135f:	8d 50 01             	lea    0x1(%rax),%edx
    1362:	89 15 b4 8d 00 00    	mov    %edx,0x8db4(%rip)        # a11c <headers_idx>
    1368:	48 98                	cltq
    136a:	48 c1 e0 03          	shl    $0x3,%rax
    136e:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
    1372:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1376:	48 89 02             	mov    %rax,(%rdx)
    1379:	b8 00 00 00 00       	mov    $0x0,%eax
    137e:	c9                   	leave
    137f:	c3                   	ret

0000000000001380 <load_headers>:
    1380:	55                   	push   %rbp
    1381:	48 89 e5             	mov    %rsp,%rbp
    1384:	48 83 ec 30          	sub    $0x30,%rsp
    1388:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    138c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1390:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    1395:	75 0a                	jne    13a1 <load_headers+0x21>
    1397:	b8 00 00 00 00       	mov    $0x0,%eax
    139c:	e9 c5 01 00 00       	jmp    1566 <load_headers+0x1e6>
    13a1:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    13a6:	74 0a                	je     13b2 <load_headers+0x32>
    13a8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13ac:	48 8b 40 10          	mov    0x10(%rax),%rax
    13b0:	eb 05                	jmp    13b7 <load_headers+0x37>
    13b2:	b8 00 00 00 00       	mov    $0x0,%eax
    13b7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    13bb:	e9 96 01 00 00       	jmp    1556 <load_headers+0x1d6>
    13c0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13c4:	48 89 c7             	mov    %rax,%rdi
    13c7:	e8 a2 51 00 00       	call   656e <cJSON_IsObject>
    13cc:	85 c0                	test   %eax,%eax
    13ce:	74 11                	je     13e1 <load_headers+0x61>
    13d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    13d4:	48 8b 40 38          	mov    0x38(%rax),%rax
    13d8:	48 85 c0             	test   %rax,%rax
    13db:	0f 84 69 01 00 00    	je     154a <load_headers+0x1ca>
    13e1:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    13e8:	00 
    13e9:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    13ee:	0f 84 89 00 00 00    	je     147d <load_headers+0xfd>
    13f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    13f8:	48 8b 40 38          	mov    0x38(%rax),%rax
    13fc:	48 85 c0             	test   %rax,%rax
    13ff:	74 7c                	je     147d <load_headers+0xfd>
    1401:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1405:	48 8b 50 38          	mov    0x38(%rax),%rdx
    1409:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    140d:	49 89 d0             	mov    %rdx,%r8
    1410:	48 89 c1             	mov    %rax,%rcx
    1413:	48 8d 05 fe 5b 00 00 	lea    0x5bfe(%rip),%rax        # 7018 <_IO_stdin_used+0x18>
    141a:	48 89 c2             	mov    %rax,%rdx
    141d:	be 00 00 00 00       	mov    $0x0,%esi
    1422:	bf 00 00 00 00       	mov    $0x0,%edi
    1427:	b8 00 00 00 00       	mov    $0x0,%eax
    142c:	e8 7f fc ff ff       	call   10b0 <snprintf@plt>
    1431:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1434:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1437:	83 c0 01             	add    $0x1,%eax
    143a:	48 98                	cltq
    143c:	48 89 c7             	mov    %rax,%rdi
    143f:	e8 34 fd ff ff       	call   1178 <malloc@plt>
    1444:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1448:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    144c:	48 8b 48 38          	mov    0x38(%rax),%rcx
    1450:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1453:	83 c0 01             	add    $0x1,%eax
    1456:	48 63 f0             	movslq %eax,%rsi
    1459:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    145d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1461:	49 89 c8             	mov    %rcx,%r8
    1464:	48 89 d1             	mov    %rdx,%rcx
    1467:	48 8d 15 aa 5b 00 00 	lea    0x5baa(%rip),%rdx        # 7018 <_IO_stdin_used+0x18>
    146e:	48 89 c7             	mov    %rax,%rdi
    1471:	b8 00 00 00 00       	mov    $0x0,%eax
    1476:	e8 35 fc ff ff       	call   10b0 <snprintf@plt>
    147b:	eb 43                	jmp    14c0 <load_headers+0x140>
    147d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1481:	48 8b 40 38          	mov    0x38(%rax),%rax
    1485:	48 85 c0             	test   %rax,%rax
    1488:	74 16                	je     14a0 <load_headers+0x120>
    148a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    148e:	48 8b 40 38          	mov    0x38(%rax),%rax
    1492:	48 89 c7             	mov    %rax,%rdi
    1495:	e8 c6 fc ff ff       	call   1160 <strdup@plt>
    149a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    149e:	eb 20                	jmp    14c0 <load_headers+0x140>
    14a0:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    14a5:	74 06                	je     14ad <load_headers+0x12d>
    14a7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    14ab:	eb 07                	jmp    14b4 <load_headers+0x134>
    14ad:	48 8d 05 6b 5b 00 00 	lea    0x5b6b(%rip),%rax        # 701f <_IO_stdin_used+0x1f>
    14b4:	48 89 c7             	mov    %rax,%rdi
    14b7:	e8 a4 fc ff ff       	call   1160 <strdup@plt>
    14bc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    14c0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14c4:	48 89 c7             	mov    %rax,%rdi
    14c7:	e8 77 50 00 00       	call   6543 <cJSON_IsArray>
    14cc:	85 c0                	test   %eax,%eax
    14ce:	75 10                	jne    14e0 <load_headers+0x160>
    14d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14d4:	48 89 c7             	mov    %rax,%rdi
    14d7:	e8 92 50 00 00       	call   656e <cJSON_IsObject>
    14dc:	85 c0                	test   %eax,%eax
    14de:	74 2a                	je     150a <load_headers+0x18a>
    14e0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    14e4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14e8:	48 89 d6             	mov    %rdx,%rsi
    14eb:	48 89 c7             	mov    %rax,%rdi
    14ee:	e8 8d fe ff ff       	call   1380 <load_headers>
    14f3:	85 c0                	test   %eax,%eax
    14f5:	74 45                	je     153c <load_headers+0x1bc>
    14f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14fb:	48 89 c7             	mov    %rax,%rdi
    14fe:	e8 6d fc ff ff       	call   1170 <free@plt>
    1503:	b8 01 00 00 00       	mov    $0x1,%eax
    1508:	eb 5c                	jmp    1566 <load_headers+0x1e6>
    150a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    150f:	74 2b                	je     153c <load_headers+0x1bc>
    1511:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1515:	48 89 c7             	mov    %rax,%rdi
    1518:	e8 43 fc ff ff       	call   1160 <strdup@plt>
    151d:	48 89 c7             	mov    %rax,%rdi
    1520:	e8 54 fd ff ff       	call   1279 <append_to_headers>
    1525:	85 c0                	test   %eax,%eax
    1527:	74 13                	je     153c <load_headers+0x1bc>
    1529:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    152d:	48 89 c7             	mov    %rax,%rdi
    1530:	e8 3b fc ff ff       	call   1170 <free@plt>
    1535:	b8 01 00 00 00       	mov    $0x1,%eax
    153a:	eb 2a                	jmp    1566 <load_headers+0x1e6>
    153c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1540:	48 89 c7             	mov    %rax,%rdi
    1543:	e8 28 fc ff ff       	call   1170 <free@plt>
    1548:	eb 01                	jmp    154b <load_headers+0x1cb>
    154a:	90                   	nop
    154b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    154f:	48 8b 00             	mov    (%rax),%rax
    1552:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1556:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    155b:	0f 85 5f fe ff ff    	jne    13c0 <load_headers+0x40>
    1561:	b8 00 00 00 00       	mov    $0x0,%eax
    1566:	c9                   	leave
    1567:	c3                   	ret

0000000000001568 <main>:
    1568:	55                   	push   %rbp
    1569:	48 89 e5             	mov    %rsp,%rbp
    156c:	48 83 ec 30          	sub    $0x30,%rsp
    1570:	48 8b 05 69 8b 00 00 	mov    0x8b69(%rip),%rax        # a0e0 <stdout@GLIBC_2.2.5>
    1577:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    157b:	48 8d 05 9e 5a 00 00 	lea    0x5a9e(%rip),%rax        # 7020 <_IO_stdin_used+0x20>
    1582:	48 89 c6             	mov    %rax,%rsi
    1585:	48 8d 05 96 5a 00 00 	lea    0x5a96(%rip),%rax        # 7022 <_IO_stdin_used+0x22>
    158c:	48 89 c7             	mov    %rax,%rdi
    158f:	e8 9c fb ff ff       	call   1130 <fopen@plt>
    1594:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1598:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    159d:	75 2d                	jne    15cc <main+0x64>
    159f:	48 8b 05 5a 8b 00 00 	mov    0x8b5a(%rip),%rax        # a100 <stderr@GLIBC_2.2.5>
    15a6:	48 89 c1             	mov    %rax,%rcx
    15a9:	ba 19 00 00 00       	mov    $0x19,%edx
    15ae:	be 01 00 00 00       	mov    $0x1,%esi
    15b3:	48 8d 05 72 5a 00 00 	lea    0x5a72(%rip),%rax        # 702c <_IO_stdin_used+0x2c>
    15ba:	48 89 c7             	mov    %rax,%rdi
    15bd:	e8 8e fb ff ff       	call   1150 <fwrite@plt>
    15c2:	b8 01 00 00 00       	mov    $0x1,%eax
    15c7:	e9 7c 01 00 00       	jmp    1748 <main+0x1e0>
    15cc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    15d0:	ba 02 00 00 00       	mov    $0x2,%edx
    15d5:	be 00 00 00 00       	mov    $0x0,%esi
    15da:	48 89 c7             	mov    %rax,%rdi
    15dd:	e8 3e fb ff ff       	call   1120 <fseek@plt>
    15e2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    15e6:	48 89 c7             	mov    %rax,%rdi
    15e9:	e8 f2 fa ff ff       	call   10e0 <ftell@plt>
    15ee:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    15f2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    15f6:	ba 00 00 00 00       	mov    $0x0,%edx
    15fb:	be 00 00 00 00       	mov    $0x0,%esi
    1600:	48 89 c7             	mov    %rax,%rdi
    1603:	e8 18 fb ff ff       	call   1120 <fseek@plt>
    1608:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    160c:	48 83 c0 01          	add    $0x1,%rax
    1610:	48 89 c7             	mov    %rax,%rdi
    1613:	e8 60 fb ff ff       	call   1178 <malloc@plt>
    1618:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    161c:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1621:	75 39                	jne    165c <main+0xf4>
    1623:	48 8b 05 d6 8a 00 00 	mov    0x8ad6(%rip),%rax        # a100 <stderr@GLIBC_2.2.5>
    162a:	48 89 c1             	mov    %rax,%rcx
    162d:	ba 17 00 00 00       	mov    $0x17,%edx
    1632:	be 01 00 00 00       	mov    $0x1,%esi
    1637:	48 8d 05 08 5a 00 00 	lea    0x5a08(%rip),%rax        # 7046 <_IO_stdin_used+0x46>
    163e:	48 89 c7             	mov    %rax,%rdi
    1641:	e8 0a fb ff ff       	call   1150 <fwrite@plt>
    1646:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    164a:	48 89 c7             	mov    %rax,%rdi
    164d:	e8 2e fa ff ff       	call   1080 <fclose@plt>
    1652:	b8 01 00 00 00       	mov    $0x1,%eax
    1657:	e9 ec 00 00 00       	jmp    1748 <main+0x1e0>
    165c:	8b 05 b6 8a 00 00    	mov    0x8ab6(%rip),%eax        # a118 <headers_cap>
    1662:	48 98                	cltq
    1664:	48 c1 e0 03          	shl    $0x3,%rax
    1668:	48 89 c7             	mov    %rax,%rdi
    166b:	e8 08 fb ff ff       	call   1178 <malloc@plt>
    1670:	48 89 05 99 8a 00 00 	mov    %rax,0x8a99(%rip)        # a110 <headers>
    1677:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    167b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    167f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1683:	be 01 00 00 00       	mov    $0x1,%esi
    1688:	48 89 c7             	mov    %rax,%rdi
    168b:	e8 d0 f9 ff ff       	call   1060 <fread@plt>
    1690:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1694:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1698:	48 01 d0             	add    %rdx,%rax
    169b:	c6 00 00             	movb   $0x0,(%rax)
    169e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16a2:	48 89 c7             	mov    %rax,%rdi
    16a5:	e8 d6 f9 ff ff       	call   1080 <fclose@plt>
    16aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    16ae:	48 89 c7             	mov    %rax,%rdi
    16b1:	e8 ed 1b 00 00       	call   32a3 <cJSON_Parse>
    16b6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    16ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    16be:	48 89 c7             	mov    %rax,%rdi
    16c1:	e8 aa fa ff ff       	call   1170 <free@plt>
    16c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16ca:	48 89 c7             	mov    %rax,%rdi
    16cd:	e8 71 4e 00 00       	call   6543 <cJSON_IsArray>
    16d2:	85 c0                	test   %eax,%eax
    16d4:	74 11                	je     16e7 <main+0x17f>
    16d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16da:	be 00 00 00 00       	mov    $0x0,%esi
    16df:	48 89 c7             	mov    %rax,%rdi
    16e2:	e8 99 fc ff ff       	call   1380 <load_headers>
    16e7:	8b 05 2f 8a 00 00    	mov    0x8a2f(%rip),%eax        # a11c <headers_idx>
    16ed:	85 c0                	test   %eax,%eax
    16ef:	74 37                	je     1728 <main+0x1c0>
    16f1:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    16f8:	eb 23                	jmp    171d <main+0x1b5>
    16fa:	48 8b 05 0f 8a 00 00 	mov    0x8a0f(%rip),%rax        # a110 <headers>
    1701:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    1704:	48 63 d2             	movslq %edx,%rdx
    1707:	48 c1 e2 03          	shl    $0x3,%rdx
    170b:	48 01 d0             	add    %rdx,%rax
    170e:	48 8b 00             	mov    (%rax),%rax
    1711:	48 89 c7             	mov    %rax,%rdi
    1714:	e8 37 f9 ff ff       	call   1050 <puts@plt>
    1719:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
    171d:	8b 05 f9 89 00 00    	mov    0x89f9(%rip),%eax        # a11c <headers_idx>
    1723:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
    1726:	7c d2                	jl     16fa <main+0x192>
    1728:	48 8b 05 e1 89 00 00 	mov    0x89e1(%rip),%rax        # a110 <headers>
    172f:	48 89 c7             	mov    %rax,%rdi
    1732:	e8 39 fa ff ff       	call   1170 <free@plt>
    1737:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    173b:	48 89 c7             	mov    %rax,%rdi
    173e:	e8 eb 51 00 00       	call   692e <cJSON_free>
    1743:	b8 00 00 00 00       	mov    $0x0,%eax
    1748:	c9                   	leave
    1749:	c3                   	ret

000000000000174a <cJSON_GetErrorPtr>:
    174a:	55                   	push   %rbp
    174b:	48 89 e5             	mov    %rsp,%rbp
    174e:	48 8b 15 cb 89 00 00 	mov    0x89cb(%rip),%rdx        # a120 <global_error>
    1755:	48 8b 05 cc 89 00 00 	mov    0x89cc(%rip),%rax        # a128 <global_error+0x8>
    175c:	48 01 d0             	add    %rdx,%rax
    175f:	5d                   	pop    %rbp
    1760:	c3                   	ret

0000000000001761 <cJSON_GetStringValue>:
    1761:	55                   	push   %rbp
    1762:	48 89 e5             	mov    %rsp,%rbp
    1765:	48 83 ec 10          	sub    $0x10,%rsp
    1769:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    176d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1771:	48 89 c7             	mov    %rax,%rdi
    1774:	e8 9f 4d 00 00       	call   6518 <cJSON_IsString>
    1779:	85 c0                	test   %eax,%eax
    177b:	75 07                	jne    1784 <cJSON_GetStringValue+0x23>
    177d:	b8 00 00 00 00       	mov    $0x0,%eax
    1782:	eb 08                	jmp    178c <cJSON_GetStringValue+0x2b>
    1784:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1788:	48 8b 40 20          	mov    0x20(%rax),%rax
    178c:	c9                   	leave
    178d:	c3                   	ret

000000000000178e <cJSON_GetNumberValue>:
    178e:	55                   	push   %rbp
    178f:	48 89 e5             	mov    %rsp,%rbp
    1792:	48 83 ec 10          	sub    $0x10,%rsp
    1796:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    179a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    179e:	48 89 c7             	mov    %rax,%rdi
    17a1:	e8 47 4d 00 00       	call   64ed <cJSON_IsNumber>
    17a6:	85 c0                	test   %eax,%eax
    17a8:	75 0a                	jne    17b4 <cJSON_GetNumberValue+0x26>
    17aa:	f2 0f 10 05 56 5b 00 	movsd  0x5b56(%rip),%xmm0        # 7308 <default_buffer_size.0+0x8>
    17b1:	00 
    17b2:	eb 09                	jmp    17bd <cJSON_GetNumberValue+0x2f>
    17b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17b8:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    17bd:	c9                   	leave
    17be:	c3                   	ret

00000000000017bf <cJSON_Version>:
    17bf:	55                   	push   %rbp
    17c0:	48 89 e5             	mov    %rsp,%rbp
    17c3:	41 b8 13 00 00 00    	mov    $0x13,%r8d
    17c9:	b9 07 00 00 00       	mov    $0x7,%ecx
    17ce:	ba 01 00 00 00       	mov    $0x1,%edx
    17d3:	48 8d 05 86 58 00 00 	lea    0x5886(%rip),%rax        # 7060 <_IO_stdin_used+0x60>
    17da:	48 89 c6             	mov    %rax,%rsi
    17dd:	48 8d 05 4c 89 00 00 	lea    0x894c(%rip),%rax        # a130 <version.1>
    17e4:	48 89 c7             	mov    %rax,%rdi
    17e7:	b8 00 00 00 00       	mov    $0x0,%eax
    17ec:	e8 4f f9 ff ff       	call   1140 <sprintf@plt>
    17f1:	48 8d 05 38 89 00 00 	lea    0x8938(%rip),%rax        # a130 <version.1>
    17f8:	5d                   	pop    %rbp
    17f9:	c3                   	ret

00000000000017fa <case_insensitive_strcmp>:
    17fa:	55                   	push   %rbp
    17fb:	48 89 e5             	mov    %rsp,%rbp
    17fe:	53                   	push   %rbx
    17ff:	48 83 ec 18          	sub    $0x18,%rsp
    1803:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1807:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    180b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1810:	74 07                	je     1819 <case_insensitive_strcmp+0x1f>
    1812:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    1817:	75 07                	jne    1820 <case_insensitive_strcmp+0x26>
    1819:	b8 01 00 00 00       	mov    $0x1,%eax
    181e:	eb 7f                	jmp    189f <case_insensitive_strcmp+0xa5>
    1820:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1824:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    1828:	75 23                	jne    184d <case_insensitive_strcmp+0x53>
    182a:	b8 00 00 00 00       	mov    $0x0,%eax
    182f:	eb 6e                	jmp    189f <case_insensitive_strcmp+0xa5>
    1831:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1835:	0f b6 00             	movzbl (%rax),%eax
    1838:	84 c0                	test   %al,%al
    183a:	75 07                	jne    1843 <case_insensitive_strcmp+0x49>
    183c:	b8 00 00 00 00       	mov    $0x0,%eax
    1841:	eb 5c                	jmp    189f <case_insensitive_strcmp+0xa5>
    1843:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    1848:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    184d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1851:	0f b6 00             	movzbl (%rax),%eax
    1854:	0f b6 c0             	movzbl %al,%eax
    1857:	89 c7                	mov    %eax,%edi
    1859:	e8 a2 f8 ff ff       	call   1100 <tolower@plt>
    185e:	89 c3                	mov    %eax,%ebx
    1860:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1864:	0f b6 00             	movzbl (%rax),%eax
    1867:	0f b6 c0             	movzbl %al,%eax
    186a:	89 c7                	mov    %eax,%edi
    186c:	e8 8f f8 ff ff       	call   1100 <tolower@plt>
    1871:	39 c3                	cmp    %eax,%ebx
    1873:	74 bc                	je     1831 <case_insensitive_strcmp+0x37>
    1875:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1879:	0f b6 00             	movzbl (%rax),%eax
    187c:	0f b6 c0             	movzbl %al,%eax
    187f:	89 c7                	mov    %eax,%edi
    1881:	e8 7a f8 ff ff       	call   1100 <tolower@plt>
    1886:	89 c3                	mov    %eax,%ebx
    1888:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    188c:	0f b6 00             	movzbl (%rax),%eax
    188f:	0f b6 c0             	movzbl %al,%eax
    1892:	89 c7                	mov    %eax,%edi
    1894:	e8 67 f8 ff ff       	call   1100 <tolower@plt>
    1899:	89 c2                	mov    %eax,%edx
    189b:	89 d8                	mov    %ebx,%eax
    189d:	29 d0                	sub    %edx,%eax
    189f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    18a3:	c9                   	leave
    18a4:	c3                   	ret

00000000000018a5 <cJSON_strdup>:
    18a5:	55                   	push   %rbp
    18a6:	48 89 e5             	mov    %rsp,%rbp
    18a9:	48 83 ec 20          	sub    $0x20,%rsp
    18ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    18b1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    18b5:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    18bc:	00 
    18bd:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    18c4:	00 
    18c5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    18ca:	75 07                	jne    18d3 <cJSON_strdup+0x2e>
    18cc:	b8 00 00 00 00       	mov    $0x0,%eax
    18d1:	eb 51                	jmp    1924 <cJSON_strdup+0x7f>
    18d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18d7:	48 89 c7             	mov    %rax,%rdi
    18da:	e8 b1 f7 ff ff       	call   1090 <strlen@plt>
    18df:	48 83 c0 01          	add    $0x1,%rax
    18e3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    18e7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    18eb:	48 8b 10             	mov    (%rax),%rdx
    18ee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18f2:	48 89 c7             	mov    %rax,%rdi
    18f5:	ff d2                	call   *%rdx
    18f7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    18fb:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1900:	75 07                	jne    1909 <cJSON_strdup+0x64>
    1902:	b8 00 00 00 00       	mov    $0x0,%eax
    1907:	eb 1b                	jmp    1924 <cJSON_strdup+0x7f>
    1909:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    190d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1911:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1915:	48 89 ce             	mov    %rcx,%rsi
    1918:	48 89 c7             	mov    %rax,%rdi
    191b:	e8 d0 f7 ff ff       	call   10f0 <memcpy@plt>
    1920:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1924:	c9                   	leave
    1925:	c3                   	ret

0000000000001926 <cJSON_InitHooks>:
    1926:	55                   	push   %rbp
    1927:	48 89 e5             	mov    %rsp,%rbp
    192a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    192e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1933:	75 2f                	jne    1964 <cJSON_InitHooks+0x3e>
    1935:	48 8b 05 8c 86 00 00 	mov    0x868c(%rip),%rax        # 9fc8 <malloc@GLIBC_2.2.5>
    193c:	48 89 05 6d 87 00 00 	mov    %rax,0x876d(%rip)        # a0b0 <malloc@GLIBC_2.2.5>
    1943:	48 8b 05 5e 86 00 00 	mov    0x865e(%rip),%rax        # 9fa8 <free@GLIBC_2.2.5>
    194a:	48 89 05 67 87 00 00 	mov    %rax,0x8767(%rip)        # a0b8 <free@GLIBC_2.2.5>
    1951:	48 8b 05 78 86 00 00 	mov    0x8678(%rip),%rax        # 9fd0 <realloc@GLIBC_2.2.5>
    1958:	48 89 05 61 87 00 00 	mov    %rax,0x8761(%rip)        # a0c0 <realloc@GLIBC_2.2.5>
    195f:	e9 91 00 00 00       	jmp    19f5 <cJSON_InitHooks+0xcf>
    1964:	48 8b 05 5d 86 00 00 	mov    0x865d(%rip),%rax        # 9fc8 <malloc@GLIBC_2.2.5>
    196b:	48 89 05 3e 87 00 00 	mov    %rax,0x873e(%rip)        # a0b0 <malloc@GLIBC_2.2.5>
    1972:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1976:	48 8b 00             	mov    (%rax),%rax
    1979:	48 85 c0             	test   %rax,%rax
    197c:	74 0e                	je     198c <cJSON_InitHooks+0x66>
    197e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1982:	48 8b 00             	mov    (%rax),%rax
    1985:	48 89 05 24 87 00 00 	mov    %rax,0x8724(%rip)        # a0b0 <malloc@GLIBC_2.2.5>
    198c:	48 8b 05 15 86 00 00 	mov    0x8615(%rip),%rax        # 9fa8 <free@GLIBC_2.2.5>
    1993:	48 89 05 1e 87 00 00 	mov    %rax,0x871e(%rip)        # a0b8 <free@GLIBC_2.2.5>
    199a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    199e:	48 8b 40 08          	mov    0x8(%rax),%rax
    19a2:	48 85 c0             	test   %rax,%rax
    19a5:	74 0f                	je     19b6 <cJSON_InitHooks+0x90>
    19a7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19ab:	48 8b 40 08          	mov    0x8(%rax),%rax
    19af:	48 89 05 02 87 00 00 	mov    %rax,0x8702(%rip)        # a0b8 <free@GLIBC_2.2.5>
    19b6:	48 c7 05 ff 86 00 00 	movq   $0x0,0x86ff(%rip)        # a0c0 <realloc@GLIBC_2.2.5>
    19bd:	00 00 00 00 
    19c1:	48 8b 05 e8 86 00 00 	mov    0x86e8(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    19c8:	48 8b 15 f9 85 00 00 	mov    0x85f9(%rip),%rdx        # 9fc8 <malloc@GLIBC_2.2.5>
    19cf:	48 39 d0             	cmp    %rdx,%rax
    19d2:	75 21                	jne    19f5 <cJSON_InitHooks+0xcf>
    19d4:	48 8b 05 dd 86 00 00 	mov    0x86dd(%rip),%rax        # a0b8 <free@GLIBC_2.2.5>
    19db:	48 8b 15 c6 85 00 00 	mov    0x85c6(%rip),%rdx        # 9fa8 <free@GLIBC_2.2.5>
    19e2:	48 39 d0             	cmp    %rdx,%rax
    19e5:	75 0e                	jne    19f5 <cJSON_InitHooks+0xcf>
    19e7:	48 8b 05 e2 85 00 00 	mov    0x85e2(%rip),%rax        # 9fd0 <realloc@GLIBC_2.2.5>
    19ee:	48 89 05 cb 86 00 00 	mov    %rax,0x86cb(%rip)        # a0c0 <realloc@GLIBC_2.2.5>
    19f5:	5d                   	pop    %rbp
    19f6:	c3                   	ret

00000000000019f7 <cJSON_New_Item>:
    19f7:	55                   	push   %rbp
    19f8:	48 89 e5             	mov    %rsp,%rbp
    19fb:	48 83 ec 20          	sub    $0x20,%rsp
    19ff:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1a03:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a07:	48 8b 00             	mov    (%rax),%rax
    1a0a:	bf 40 00 00 00       	mov    $0x40,%edi
    1a0f:	ff d0                	call   *%rax
    1a11:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1a15:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1a1a:	74 16                	je     1a32 <cJSON_New_Item+0x3b>
    1a1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a20:	ba 40 00 00 00       	mov    $0x40,%edx
    1a25:	be 00 00 00 00       	mov    $0x0,%esi
    1a2a:	48 89 c7             	mov    %rax,%rdi
    1a2d:	e8 8e f6 ff ff       	call   10c0 <memset@plt>
    1a32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a36:	c9                   	leave
    1a37:	c3                   	ret

0000000000001a38 <cJSON_Delete>:
    1a38:	55                   	push   %rbp
    1a39:	48 89 e5             	mov    %rsp,%rbp
    1a3c:	48 83 ec 20          	sub    $0x20,%rsp
    1a40:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1a44:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1a4b:	00 
    1a4c:	e9 ca 00 00 00       	jmp    1b1b <cJSON_Delete+0xe3>
    1a51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a55:	48 8b 00             	mov    (%rax),%rax
    1a58:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1a5c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a60:	8b 40 18             	mov    0x18(%rax),%eax
    1a63:	25 00 01 00 00       	and    $0x100,%eax
    1a68:	85 c0                	test   %eax,%eax
    1a6a:	75 1d                	jne    1a89 <cJSON_Delete+0x51>
    1a6c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a70:	48 8b 40 10          	mov    0x10(%rax),%rax
    1a74:	48 85 c0             	test   %rax,%rax
    1a77:	74 10                	je     1a89 <cJSON_Delete+0x51>
    1a79:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a7d:	48 8b 40 10          	mov    0x10(%rax),%rax
    1a81:	48 89 c7             	mov    %rax,%rdi
    1a84:	e8 af ff ff ff       	call   1a38 <cJSON_Delete>
    1a89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a8d:	8b 40 18             	mov    0x18(%rax),%eax
    1a90:	25 00 01 00 00       	and    $0x100,%eax
    1a95:	85 c0                	test   %eax,%eax
    1a97:	75 2d                	jne    1ac6 <cJSON_Delete+0x8e>
    1a99:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a9d:	48 8b 40 20          	mov    0x20(%rax),%rax
    1aa1:	48 85 c0             	test   %rax,%rax
    1aa4:	74 20                	je     1ac6 <cJSON_Delete+0x8e>
    1aa6:	48 8b 15 0b 86 00 00 	mov    0x860b(%rip),%rdx        # a0b8 <free@GLIBC_2.2.5>
    1aad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ab1:	48 8b 40 20          	mov    0x20(%rax),%rax
    1ab5:	48 89 c7             	mov    %rax,%rdi
    1ab8:	ff d2                	call   *%rdx
    1aba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1abe:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
    1ac5:	00 
    1ac6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1aca:	8b 40 18             	mov    0x18(%rax),%eax
    1acd:	25 00 02 00 00       	and    $0x200,%eax
    1ad2:	85 c0                	test   %eax,%eax
    1ad4:	75 2d                	jne    1b03 <cJSON_Delete+0xcb>
    1ad6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ada:	48 8b 40 38          	mov    0x38(%rax),%rax
    1ade:	48 85 c0             	test   %rax,%rax
    1ae1:	74 20                	je     1b03 <cJSON_Delete+0xcb>
    1ae3:	48 8b 15 ce 85 00 00 	mov    0x85ce(%rip),%rdx        # a0b8 <free@GLIBC_2.2.5>
    1aea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1aee:	48 8b 40 38          	mov    0x38(%rax),%rax
    1af2:	48 89 c7             	mov    %rax,%rdi
    1af5:	ff d2                	call   *%rdx
    1af7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1afb:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
    1b02:	00 
    1b03:	48 8b 15 ae 85 00 00 	mov    0x85ae(%rip),%rdx        # a0b8 <free@GLIBC_2.2.5>
    1b0a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b0e:	48 89 c7             	mov    %rax,%rdi
    1b11:	ff d2                	call   *%rdx
    1b13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b17:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1b1b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1b20:	0f 85 2b ff ff ff    	jne    1a51 <cJSON_Delete+0x19>
    1b26:	90                   	nop
    1b27:	90                   	nop
    1b28:	c9                   	leave
    1b29:	c3                   	ret

0000000000001b2a <get_decimal_point>:
    1b2a:	55                   	push   %rbp
    1b2b:	48 89 e5             	mov    %rsp,%rbp
    1b2e:	b8 2e 00 00 00       	mov    $0x2e,%eax
    1b33:	5d                   	pop    %rbp
    1b34:	c3                   	ret

0000000000001b35 <parse_number>:
    1b35:	55                   	push   %rbp
    1b36:	48 89 e5             	mov    %rsp,%rbp
    1b39:	48 83 ec 50          	sub    $0x50,%rsp
    1b3d:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    1b41:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    1b45:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b4c:	00 00 
    1b4e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1b52:	31 c0                	xor    %eax,%eax
    1b54:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1b58:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    1b5d:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1b64:	00 
    1b65:	e8 c0 ff ff ff       	call   1b2a <get_decimal_point>
    1b6a:	88 45 cb             	mov    %al,-0x35(%rbp)
    1b6d:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1b74:	00 
    1b75:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    1b7c:	00 
    1b7d:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    1b84:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
    1b89:	74 0c                	je     1b97 <parse_number+0x62>
    1b8b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1b8f:	48 8b 00             	mov    (%rax),%rax
    1b92:	48 85 c0             	test   %rax,%rax
    1b95:	75 0a                	jne    1ba1 <parse_number+0x6c>
    1b97:	b8 00 00 00 00       	mov    $0x0,%eax
    1b9c:	e9 22 02 00 00       	jmp    1dc3 <parse_number+0x28e>
    1ba1:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1ba8:	00 
    1ba9:	eb 78                	jmp    1c23 <parse_number+0xee>
    1bab:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1baf:	48 8b 10             	mov    (%rax),%rdx
    1bb2:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1bb6:	48 8b 48 10          	mov    0x10(%rax),%rcx
    1bba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1bbe:	48 01 c8             	add    %rcx,%rax
    1bc1:	48 01 d0             	add    %rdx,%rax
    1bc4:	0f b6 00             	movzbl (%rax),%eax
    1bc7:	0f b6 c0             	movzbl %al,%eax
    1bca:	83 e8 2b             	sub    $0x2b,%eax
    1bcd:	83 f8 3a             	cmp    $0x3a,%eax
    1bd0:	0f 97 c2             	seta   %dl
    1bd3:	84 d2                	test   %dl,%dl
    1bd5:	75 75                	jne    1c4c <parse_number+0x117>
    1bd7:	ba 01 00 00 00       	mov    $0x1,%edx
    1bdc:	89 c1                	mov    %eax,%ecx
    1bde:	48 d3 e2             	shl    %cl,%rdx
    1be1:	48 89 d0             	mov    %rdx,%rax
    1be4:	48 ba e5 7f 00 04 00 	movabs $0x400000004007fe5,%rdx
    1beb:	00 00 04 
    1bee:	48 21 c2             	and    %rax,%rdx
    1bf1:	48 85 d2             	test   %rdx,%rdx
    1bf4:	0f 95 c2             	setne  %dl
    1bf7:	84 d2                	test   %dl,%dl
    1bf9:	75 0f                	jne    1c0a <parse_number+0xd5>
    1bfb:	83 e0 08             	and    $0x8,%eax
    1bfe:	48 85 c0             	test   %rax,%rax
    1c01:	0f 95 c0             	setne  %al
    1c04:	84 c0                	test   %al,%al
    1c06:	75 09                	jne    1c11 <parse_number+0xdc>
    1c08:	eb 42                	jmp    1c4c <parse_number+0x117>
    1c0a:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    1c0f:	eb 0d                	jmp    1c1e <parse_number+0xe9>
    1c11:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    1c16:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%rbp)
    1c1d:	90                   	nop
    1c1e:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    1c23:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
    1c28:	74 25                	je     1c4f <parse_number+0x11a>
    1c2a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1c2e:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1c32:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1c36:	48 01 c2             	add    %rax,%rdx
    1c39:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1c3d:	48 8b 40 08          	mov    0x8(%rax),%rax
    1c41:	48 39 c2             	cmp    %rax,%rdx
    1c44:	0f 82 61 ff ff ff    	jb     1bab <parse_number+0x76>
    1c4a:	eb 03                	jmp    1c4f <parse_number+0x11a>
    1c4c:	90                   	nop
    1c4d:	eb 01                	jmp    1c50 <parse_number+0x11b>
    1c4f:	90                   	nop
    1c50:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1c54:	48 8b 40 20          	mov    0x20(%rax),%rax
    1c58:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1c5c:	48 83 c2 01          	add    $0x1,%rdx
    1c60:	48 89 d7             	mov    %rdx,%rdi
    1c63:	ff d0                	call   *%rax
    1c65:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1c69:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1c6e:	75 0a                	jne    1c7a <parse_number+0x145>
    1c70:	b8 00 00 00 00       	mov    $0x0,%eax
    1c75:	e9 49 01 00 00       	jmp    1dc3 <parse_number+0x28e>
    1c7a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1c7e:	48 8b 10             	mov    (%rax),%rdx
    1c81:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1c85:	48 8b 40 10          	mov    0x10(%rax),%rax
    1c89:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    1c8d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1c91:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1c95:	48 89 ce             	mov    %rcx,%rsi
    1c98:	48 89 c7             	mov    %rax,%rdi
    1c9b:	e8 50 f4 ff ff       	call   10f0 <memcpy@plt>
    1ca0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1ca4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1ca8:	48 01 d0             	add    %rdx,%rax
    1cab:	c6 00 00             	movb   $0x0,(%rax)
    1cae:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    1cb2:	74 3c                	je     1cf0 <parse_number+0x1bb>
    1cb4:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1cbb:	00 
    1cbc:	eb 28                	jmp    1ce6 <parse_number+0x1b1>
    1cbe:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1cc2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1cc6:	48 01 d0             	add    %rdx,%rax
    1cc9:	0f b6 00             	movzbl (%rax),%eax
    1ccc:	3c 2e                	cmp    $0x2e,%al
    1cce:	75 11                	jne    1ce1 <parse_number+0x1ac>
    1cd0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1cd4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1cd8:	48 01 c2             	add    %rax,%rdx
    1cdb:	0f b6 45 cb          	movzbl -0x35(%rbp),%eax
    1cdf:	88 02                	mov    %al,(%rdx)
    1ce1:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    1ce6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1cea:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    1cee:	72 ce                	jb     1cbe <parse_number+0x189>
    1cf0:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    1cf4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1cf8:	48 89 d6             	mov    %rdx,%rsi
    1cfb:	48 89 c7             	mov    %rax,%rdi
    1cfe:	e8 6d f3 ff ff       	call   1070 <strtod@plt>
    1d03:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1d08:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1d0c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1d10:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    1d14:	75 1b                	jne    1d31 <parse_number+0x1fc>
    1d16:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1d1a:	48 8b 50 28          	mov    0x28(%rax),%rdx
    1d1e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d22:	48 89 c7             	mov    %rax,%rdi
    1d25:	ff d2                	call   *%rdx
    1d27:	b8 00 00 00 00       	mov    $0x0,%eax
    1d2c:	e9 92 00 00 00       	jmp    1dc3 <parse_number+0x28e>
    1d31:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1d35:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    1d3a:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    1d3f:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    1d44:	66 0f 2f 05 c4 55 00 	comisd 0x55c4(%rip),%xmm0        # 7310 <default_buffer_size.0+0x10>
    1d4b:	00 
    1d4c:	72 0d                	jb     1d5b <parse_number+0x226>
    1d4e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1d52:	c7 40 28 ff ff ff 7f 	movl   $0x7fffffff,0x28(%rax)
    1d59:	eb 2c                	jmp    1d87 <parse_number+0x252>
    1d5b:	f2 0f 10 05 b5 55 00 	movsd  0x55b5(%rip),%xmm0        # 7318 <default_buffer_size.0+0x18>
    1d62:	00 
    1d63:	66 0f 2f 45 e8       	comisd -0x18(%rbp),%xmm0
    1d68:	72 0d                	jb     1d77 <parse_number+0x242>
    1d6a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1d6e:	c7 40 28 00 00 00 80 	movl   $0x80000000,0x28(%rax)
    1d75:	eb 10                	jmp    1d87 <parse_number+0x252>
    1d77:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    1d7c:	f2 0f 2c d0          	cvttsd2si %xmm0,%edx
    1d80:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1d84:	89 50 28             	mov    %edx,0x28(%rax)
    1d87:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1d8b:	c7 40 18 08 00 00 00 	movl   $0x8,0x18(%rax)
    1d92:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1d96:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1d9a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1d9e:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    1da2:	48 01 c2             	add    %rax,%rdx
    1da5:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1da9:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1dad:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1db1:	48 8b 50 28          	mov    0x28(%rax),%rdx
    1db5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1db9:	48 89 c7             	mov    %rax,%rdi
    1dbc:	ff d2                	call   *%rdx
    1dbe:	b8 01 00 00 00       	mov    $0x1,%eax
    1dc3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1dc7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1dce:	00 00 
    1dd0:	74 05                	je     1dd7 <parse_number+0x2a2>
    1dd2:	e8 c9 f2 ff ff       	call   10a0 <__stack_chk_fail@plt>
    1dd7:	c9                   	leave
    1dd8:	c3                   	ret

0000000000001dd9 <cJSON_SetNumberHelper>:
    1dd9:	55                   	push   %rbp
    1dda:	48 89 e5             	mov    %rsp,%rbp
    1ddd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1de1:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    1de6:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1deb:	75 0a                	jne    1df7 <cJSON_SetNumberHelper+0x1e>
    1ded:	f2 0f 10 05 13 55 00 	movsd  0x5513(%rip),%xmm0        # 7308 <default_buffer_size.0+0x8>
    1df4:	00 
    1df5:	eb 5f                	jmp    1e56 <cJSON_SetNumberHelper+0x7d>
    1df7:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    1dfc:	66 0f 2f 05 0c 55 00 	comisd 0x550c(%rip),%xmm0        # 7310 <default_buffer_size.0+0x10>
    1e03:	00 
    1e04:	72 0d                	jb     1e13 <cJSON_SetNumberHelper+0x3a>
    1e06:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e0a:	c7 40 28 ff ff ff 7f 	movl   $0x7fffffff,0x28(%rax)
    1e11:	eb 2c                	jmp    1e3f <cJSON_SetNumberHelper+0x66>
    1e13:	f2 0f 10 05 fd 54 00 	movsd  0x54fd(%rip),%xmm0        # 7318 <default_buffer_size.0+0x18>
    1e1a:	00 
    1e1b:	66 0f 2f 45 f0       	comisd -0x10(%rbp),%xmm0
    1e20:	72 0d                	jb     1e2f <cJSON_SetNumberHelper+0x56>
    1e22:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e26:	c7 40 28 00 00 00 80 	movl   $0x80000000,0x28(%rax)
    1e2d:	eb 10                	jmp    1e3f <cJSON_SetNumberHelper+0x66>
    1e2f:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    1e34:	f2 0f 2c d0          	cvttsd2si %xmm0,%edx
    1e38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e3c:	89 50 28             	mov    %edx,0x28(%rax)
    1e3f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e43:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    1e48:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    1e4d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e51:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    1e56:	5d                   	pop    %rbp
    1e57:	c3                   	ret

0000000000001e58 <cJSON_SetValuestring>:
    1e58:	55                   	push   %rbp
    1e59:	48 89 e5             	mov    %rsp,%rbp
    1e5c:	48 83 ec 30          	sub    $0x30,%rsp
    1e60:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1e64:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1e68:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1e6f:	00 
    1e70:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    1e75:	74 1e                	je     1e95 <cJSON_SetValuestring+0x3d>
    1e77:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1e7b:	8b 40 18             	mov    0x18(%rax),%eax
    1e7e:	83 e0 10             	and    $0x10,%eax
    1e81:	85 c0                	test   %eax,%eax
    1e83:	74 10                	je     1e95 <cJSON_SetValuestring+0x3d>
    1e85:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1e89:	8b 40 18             	mov    0x18(%rax),%eax
    1e8c:	25 00 01 00 00       	and    $0x100,%eax
    1e91:	85 c0                	test   %eax,%eax
    1e93:	74 0a                	je     1e9f <cJSON_SetValuestring+0x47>
    1e95:	b8 00 00 00 00       	mov    $0x0,%eax
    1e9a:	e9 f6 00 00 00       	jmp    1f95 <cJSON_SetValuestring+0x13d>
    1e9f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1ea3:	48 8b 40 20          	mov    0x20(%rax),%rax
    1ea7:	48 85 c0             	test   %rax,%rax
    1eaa:	74 07                	je     1eb3 <cJSON_SetValuestring+0x5b>
    1eac:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    1eb1:	75 0a                	jne    1ebd <cJSON_SetValuestring+0x65>
    1eb3:	b8 00 00 00 00       	mov    $0x0,%eax
    1eb8:	e9 d8 00 00 00       	jmp    1f95 <cJSON_SetValuestring+0x13d>
    1ebd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1ec1:	48 89 c7             	mov    %rax,%rdi
    1ec4:	e8 c7 f1 ff ff       	call   1090 <strlen@plt>
    1ec9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1ecd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1ed1:	48 8b 40 20          	mov    0x20(%rax),%rax
    1ed5:	48 89 c7             	mov    %rax,%rdi
    1ed8:	e8 b3 f1 ff ff       	call   1090 <strlen@plt>
    1edd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1ee1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ee5:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    1ee9:	72 55                	jb     1f40 <cJSON_SetValuestring+0xe8>
    1eeb:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    1eef:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ef3:	48 01 c2             	add    %rax,%rdx
    1ef6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1efa:	48 8b 40 20          	mov    0x20(%rax),%rax
    1efe:	48 39 c2             	cmp    %rax,%rdx
    1f01:	72 1c                	jb     1f1f <cJSON_SetValuestring+0xc7>
    1f03:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f07:	48 8b 50 20          	mov    0x20(%rax),%rdx
    1f0b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1f0f:	48 01 d0             	add    %rdx,%rax
    1f12:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
    1f16:	72 07                	jb     1f1f <cJSON_SetValuestring+0xc7>
    1f18:	b8 00 00 00 00       	mov    $0x0,%eax
    1f1d:	eb 76                	jmp    1f95 <cJSON_SetValuestring+0x13d>
    1f1f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f23:	48 8b 40 20          	mov    0x20(%rax),%rax
    1f27:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    1f2b:	48 89 d6             	mov    %rdx,%rsi
    1f2e:	48 89 c7             	mov    %rax,%rdi
    1f31:	e8 0a f1 ff ff       	call   1040 <strcpy@plt>
    1f36:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f3a:	48 8b 40 20          	mov    0x20(%rax),%rax
    1f3e:	eb 55                	jmp    1f95 <cJSON_SetValuestring+0x13d>
    1f40:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1f44:	48 8d 15 65 81 00 00 	lea    0x8165(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    1f4b:	48 89 d6             	mov    %rdx,%rsi
    1f4e:	48 89 c7             	mov    %rax,%rdi
    1f51:	e8 4f f9 ff ff       	call   18a5 <cJSON_strdup>
    1f56:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1f5a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1f5f:	75 07                	jne    1f68 <cJSON_SetValuestring+0x110>
    1f61:	b8 00 00 00 00       	mov    $0x0,%eax
    1f66:	eb 2d                	jmp    1f95 <cJSON_SetValuestring+0x13d>
    1f68:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f6c:	48 8b 40 20          	mov    0x20(%rax),%rax
    1f70:	48 85 c0             	test   %rax,%rax
    1f73:	74 10                	je     1f85 <cJSON_SetValuestring+0x12d>
    1f75:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f79:	48 8b 40 20          	mov    0x20(%rax),%rax
    1f7d:	48 89 c7             	mov    %rax,%rdi
    1f80:	e8 a9 49 00 00       	call   692e <cJSON_free>
    1f85:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f89:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1f8d:	48 89 50 20          	mov    %rdx,0x20(%rax)
    1f91:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1f95:	c9                   	leave
    1f96:	c3                   	ret

0000000000001f97 <ensure>:
    1f97:	55                   	push   %rbp
    1f98:	48 89 e5             	mov    %rsp,%rbp
    1f9b:	48 83 ec 20          	sub    $0x20,%rsp
    1f9f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1fa3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1fa7:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    1fae:	00 
    1faf:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1fb6:	00 
    1fb7:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    1fbc:	74 0c                	je     1fca <ensure+0x33>
    1fbe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1fc2:	48 8b 00             	mov    (%rax),%rax
    1fc5:	48 85 c0             	test   %rax,%rax
    1fc8:	75 0a                	jne    1fd4 <ensure+0x3d>
    1fca:	b8 00 00 00 00       	mov    $0x0,%eax
    1fcf:	e9 dc 01 00 00       	jmp    21b0 <ensure+0x219>
    1fd4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1fd8:	48 8b 40 08          	mov    0x8(%rax),%rax
    1fdc:	48 85 c0             	test   %rax,%rax
    1fdf:	74 1f                	je     2000 <ensure+0x69>
    1fe1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1fe5:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1fe9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1fed:	48 8b 40 08          	mov    0x8(%rax),%rax
    1ff1:	48 39 c2             	cmp    %rax,%rdx
    1ff4:	72 0a                	jb     2000 <ensure+0x69>
    1ff6:	b8 00 00 00 00       	mov    $0x0,%eax
    1ffb:	e9 b0 01 00 00       	jmp    21b0 <ensure+0x219>
    2000:	b8 00 00 00 80       	mov    $0x80000000,%eax
    2005:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    2009:	72 0a                	jb     2015 <ensure+0x7e>
    200b:	b8 00 00 00 00       	mov    $0x0,%eax
    2010:	e9 9b 01 00 00       	jmp    21b0 <ensure+0x219>
    2015:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2019:	48 8b 50 10          	mov    0x10(%rax),%rdx
    201d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2021:	48 01 d0             	add    %rdx,%rax
    2024:	48 83 c0 01          	add    $0x1,%rax
    2028:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    202c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2030:	48 8b 40 08          	mov    0x8(%rax),%rax
    2034:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    2038:	72 17                	jb     2051 <ensure+0xba>
    203a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    203e:	48 8b 10             	mov    (%rax),%rdx
    2041:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2045:	48 8b 40 10          	mov    0x10(%rax),%rax
    2049:	48 01 d0             	add    %rdx,%rax
    204c:	e9 5f 01 00 00       	jmp    21b0 <ensure+0x219>
    2051:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2055:	8b 40 20             	mov    0x20(%rax),%eax
    2058:	85 c0                	test   %eax,%eax
    205a:	74 0a                	je     2066 <ensure+0xcf>
    205c:	b8 00 00 00 00       	mov    $0x0,%eax
    2061:	e9 4a 01 00 00       	jmp    21b0 <ensure+0x219>
    2066:	48 81 7d e0 ff ff ff 	cmpq   $0x3fffffff,-0x20(%rbp)
    206d:	3f 
    206e:	76 1f                	jbe    208f <ensure+0xf8>
    2070:	b8 00 00 00 80       	mov    $0x80000000,%eax
    2075:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    2079:	73 0a                	jae    2085 <ensure+0xee>
    207b:	48 c7 45 f8 ff ff ff 	movq   $0x7fffffff,-0x8(%rbp)
    2082:	7f 
    2083:	eb 15                	jmp    209a <ensure+0x103>
    2085:	b8 00 00 00 00       	mov    $0x0,%eax
    208a:	e9 21 01 00 00       	jmp    21b0 <ensure+0x219>
    208f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2093:	48 01 c0             	add    %rax,%rax
    2096:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    209a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    209e:	48 8b 40 38          	mov    0x38(%rax),%rax
    20a2:	48 85 c0             	test   %rax,%rax
    20a5:	74 5f                	je     2106 <ensure+0x16f>
    20a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20ab:	48 8b 48 38          	mov    0x38(%rax),%rcx
    20af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20b3:	48 8b 00             	mov    (%rax),%rax
    20b6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    20ba:	48 89 d6             	mov    %rdx,%rsi
    20bd:	48 89 c7             	mov    %rax,%rdi
    20c0:	ff d1                	call   *%rcx
    20c2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    20c6:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    20cb:	0f 85 b9 00 00 00    	jne    218a <ensure+0x1f3>
    20d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20d5:	48 8b 50 30          	mov    0x30(%rax),%rdx
    20d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20dd:	48 8b 00             	mov    (%rax),%rax
    20e0:	48 89 c7             	mov    %rax,%rdi
    20e3:	ff d2                	call   *%rdx
    20e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20e9:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    20f0:	00 
    20f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20f5:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    20fc:	b8 00 00 00 00       	mov    $0x0,%eax
    2101:	e9 aa 00 00 00       	jmp    21b0 <ensure+0x219>
    2106:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    210a:	48 8b 50 28          	mov    0x28(%rax),%rdx
    210e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2112:	48 89 c7             	mov    %rax,%rdi
    2115:	ff d2                	call   *%rdx
    2117:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    211b:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    2120:	75 32                	jne    2154 <ensure+0x1bd>
    2122:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2126:	48 8b 50 30          	mov    0x30(%rax),%rdx
    212a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    212e:	48 8b 00             	mov    (%rax),%rax
    2131:	48 89 c7             	mov    %rax,%rdi
    2134:	ff d2                	call   *%rdx
    2136:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    213a:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    2141:	00 
    2142:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2146:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    214d:	b8 00 00 00 00       	mov    $0x0,%eax
    2152:	eb 5c                	jmp    21b0 <ensure+0x219>
    2154:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2158:	48 8b 40 10          	mov    0x10(%rax),%rax
    215c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2160:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2164:	48 8b 08             	mov    (%rax),%rcx
    2167:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    216b:	48 89 ce             	mov    %rcx,%rsi
    216e:	48 89 c7             	mov    %rax,%rdi
    2171:	e8 7a ef ff ff       	call   10f0 <memcpy@plt>
    2176:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    217a:	48 8b 50 30          	mov    0x30(%rax),%rdx
    217e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2182:	48 8b 00             	mov    (%rax),%rax
    2185:	48 89 c7             	mov    %rax,%rdi
    2188:	ff d2                	call   *%rdx
    218a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    218e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2192:	48 89 50 08          	mov    %rdx,0x8(%rax)
    2196:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    219a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    219e:	48 89 10             	mov    %rdx,(%rax)
    21a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21a5:	48 8b 50 10          	mov    0x10(%rax),%rdx
    21a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    21ad:	48 01 d0             	add    %rdx,%rax
    21b0:	c9                   	leave
    21b1:	c3                   	ret

00000000000021b2 <update_offset>:
    21b2:	55                   	push   %rbp
    21b3:	48 89 e5             	mov    %rsp,%rbp
    21b6:	53                   	push   %rbx
    21b7:	48 83 ec 28          	sub    $0x28,%rsp
    21bb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    21bf:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    21c6:	00 
    21c7:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    21cc:	74 44                	je     2212 <update_offset+0x60>
    21ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    21d2:	48 8b 00             	mov    (%rax),%rax
    21d5:	48 85 c0             	test   %rax,%rax
    21d8:	74 38                	je     2212 <update_offset+0x60>
    21da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    21de:	48 8b 10             	mov    (%rax),%rdx
    21e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    21e5:	48 8b 40 10          	mov    0x10(%rax),%rax
    21e9:	48 01 d0             	add    %rdx,%rax
    21ec:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    21f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    21f4:	48 8b 58 10          	mov    0x10(%rax),%rbx
    21f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21fc:	48 89 c7             	mov    %rax,%rdi
    21ff:	e8 8c ee ff ff       	call   1090 <strlen@plt>
    2204:	48 8d 14 03          	lea    (%rbx,%rax,1),%rdx
    2208:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    220c:	48 89 50 10          	mov    %rdx,0x10(%rax)
    2210:	eb 01                	jmp    2213 <update_offset+0x61>
    2212:	90                   	nop
    2213:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2217:	c9                   	leave
    2218:	c3                   	ret

0000000000002219 <compare_double>:
    2219:	55                   	push   %rbp
    221a:	48 89 e5             	mov    %rsp,%rbp
    221d:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    2222:	f2 0f 11 4d e0       	movsd  %xmm1,-0x20(%rbp)
    2227:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    222c:	f3 0f 7e 0d ec 50 00 	movq   0x50ec(%rip),%xmm1        # 7320 <default_buffer_size.0+0x20>
    2233:	00 
    2234:	66 0f 54 c1          	andpd  %xmm1,%xmm0
    2238:	f2 0f 10 4d e0       	movsd  -0x20(%rbp),%xmm1
    223d:	f3 0f 7e 15 db 50 00 	movq   0x50db(%rip),%xmm2        # 7320 <default_buffer_size.0+0x20>
    2244:	00 
    2245:	66 0f 54 ca          	andpd  %xmm2,%xmm1
    2249:	66 0f 2f c1          	comisd %xmm1,%xmm0
    224d:	76 13                	jbe    2262 <compare_double+0x49>
    224f:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    2254:	f3 0f 7e 0d c4 50 00 	movq   0x50c4(%rip),%xmm1        # 7320 <default_buffer_size.0+0x20>
    225b:	00 
    225c:	66 0f 54 c1          	andpd  %xmm1,%xmm0
    2260:	eb 11                	jmp    2273 <compare_double+0x5a>
    2262:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    2267:	f3 0f 7e 0d b1 50 00 	movq   0x50b1(%rip),%xmm1        # 7320 <default_buffer_size.0+0x20>
    226e:	00 
    226f:	66 0f 54 c1          	andpd  %xmm1,%xmm0
    2273:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    2278:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    227d:	f2 0f 5c 45 e0       	subsd  -0x20(%rbp),%xmm0
    2282:	f3 0f 7e 0d 96 50 00 	movq   0x5096(%rip),%xmm1        # 7320 <default_buffer_size.0+0x20>
    2289:	00 
    228a:	66 0f 54 c8          	andpd  %xmm0,%xmm1
    228e:	f2 0f 10 55 f8       	movsd  -0x8(%rbp),%xmm2
    2293:	f2 0f 10 05 95 50 00 	movsd  0x5095(%rip),%xmm0        # 7330 <default_buffer_size.0+0x30>
    229a:	00 
    229b:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    229f:	66 0f 2f c1          	comisd %xmm1,%xmm0
    22a3:	0f 93 c0             	setae  %al
    22a6:	0f b6 c0             	movzbl %al,%eax
    22a9:	5d                   	pop    %rbp
    22aa:	c3                   	ret

00000000000022ab <print_number>:
    22ab:	55                   	push   %rbp
    22ac:	48 89 e5             	mov    %rsp,%rbp
    22af:	48 83 ec 70          	sub    $0x70,%rsp
    22b3:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
    22b7:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
    22bb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    22c2:	00 00 
    22c4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    22c8:	31 c0                	xor    %eax,%eax
    22ca:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    22d1:	00 
    22d2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    22d6:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    22db:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
    22e0:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
    22e7:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    22ee:	00 
    22ef:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    22f6:	00 
    22f7:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    22fe:	00 
    22ff:	48 c7 45 da 00 00 00 	movq   $0x0,-0x26(%rbp)
    2306:	00 
    2307:	48 c7 45 e2 00 00 00 	movq   $0x0,-0x1e(%rbp)
    230e:	00 
    230f:	e8 16 f8 ff ff       	call   1b2a <get_decimal_point>
    2314:	88 45 ab             	mov    %al,-0x55(%rbp)
    2317:	66 0f ef c0          	pxor   %xmm0,%xmm0
    231b:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
    2320:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
    2325:	75 0a                	jne    2331 <print_number+0x86>
    2327:	b8 00 00 00 00       	mov    $0x0,%eax
    232c:	e9 ec 01 00 00       	jmp    251d <print_number+0x272>
    2331:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    2336:	66 0f 2e 45 c8       	ucomisd -0x38(%rbp),%xmm0
    233b:	7a 23                	jp     2360 <print_number+0xb5>
    233d:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    2342:	f3 0f 7e 0d d6 4f 00 	movq   0x4fd6(%rip),%xmm1        # 7320 <default_buffer_size.0+0x20>
    2349:	00 
    234a:	66 0f 54 c1          	andpd  %xmm1,%xmm0
    234e:	66 0f 2e 05 e2 4f 00 	ucomisd 0x4fe2(%rip),%xmm0        # 7338 <default_buffer_size.0+0x38>
    2355:	00 
    2356:	0f 96 c0             	setbe  %al
    2359:	83 f0 01             	xor    $0x1,%eax
    235c:	84 c0                	test   %al,%al
    235e:	74 23                	je     2383 <print_number+0xd8>
    2360:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2364:	48 8d 15 fe 4c 00 00 	lea    0x4cfe(%rip),%rdx        # 7069 <_IO_stdin_used+0x69>
    236b:	48 89 d6             	mov    %rdx,%rsi
    236e:	48 89 c7             	mov    %rax,%rdi
    2371:	b8 00 00 00 00       	mov    $0x0,%eax
    2376:	e8 c5 ed ff ff       	call   1140 <sprintf@plt>
    237b:	89 45 ac             	mov    %eax,-0x54(%rbp)
    237e:	e9 d4 00 00 00       	jmp    2457 <print_number+0x1ac>
    2383:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    2387:	8b 40 28             	mov    0x28(%rax),%eax
    238a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    238e:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    2392:	66 0f 2e 45 c8       	ucomisd -0x38(%rbp),%xmm0
    2397:	7a 31                	jp     23ca <print_number+0x11f>
    2399:	66 0f 2e 45 c8       	ucomisd -0x38(%rbp),%xmm0
    239e:	75 2a                	jne    23ca <print_number+0x11f>
    23a0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    23a4:	8b 50 28             	mov    0x28(%rax),%edx
    23a7:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    23ab:	48 8d 0d bc 4c 00 00 	lea    0x4cbc(%rip),%rcx        # 706e <_IO_stdin_used+0x6e>
    23b2:	48 89 ce             	mov    %rcx,%rsi
    23b5:	48 89 c7             	mov    %rax,%rdi
    23b8:	b8 00 00 00 00       	mov    $0x0,%eax
    23bd:	e8 7e ed ff ff       	call   1140 <sprintf@plt>
    23c2:	89 45 ac             	mov    %eax,-0x54(%rbp)
    23c5:	e9 8d 00 00 00       	jmp    2457 <print_number+0x1ac>
    23ca:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    23ce:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    23d2:	66 48 0f 6e c2       	movq   %rdx,%xmm0
    23d7:	48 8d 15 93 4c 00 00 	lea    0x4c93(%rip),%rdx        # 7071 <_IO_stdin_used+0x71>
    23de:	48 89 d6             	mov    %rdx,%rsi
    23e1:	48 89 c7             	mov    %rax,%rdi
    23e4:	b8 01 00 00 00       	mov    $0x1,%eax
    23e9:	e8 52 ed ff ff       	call   1140 <sprintf@plt>
    23ee:	89 45 ac             	mov    %eax,-0x54(%rbp)
    23f1:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    23f5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    23f9:	48 8d 0d 78 4c 00 00 	lea    0x4c78(%rip),%rcx        # 7078 <_IO_stdin_used+0x78>
    2400:	48 89 ce             	mov    %rcx,%rsi
    2403:	48 89 c7             	mov    %rax,%rdi
    2406:	b8 00 00 00 00       	mov    $0x0,%eax
    240b:	e8 00 ed ff ff       	call   1110 <__isoc99_sscanf@plt>
    2410:	83 f8 01             	cmp    $0x1,%eax
    2413:	75 1b                	jne    2430 <print_number+0x185>
    2415:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2419:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    241e:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2422:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2427:	e8 ed fd ff ff       	call   2219 <compare_double>
    242c:	85 c0                	test   %eax,%eax
    242e:	75 27                	jne    2457 <print_number+0x1ac>
    2430:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2434:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2438:	66 48 0f 6e c2       	movq   %rdx,%xmm0
    243d:	48 8d 15 38 4c 00 00 	lea    0x4c38(%rip),%rdx        # 707c <_IO_stdin_used+0x7c>
    2444:	48 89 d6             	mov    %rdx,%rsi
    2447:	48 89 c7             	mov    %rax,%rdi
    244a:	b8 01 00 00 00       	mov    $0x1,%eax
    244f:	e8 ec ec ff ff       	call   1140 <sprintf@plt>
    2454:	89 45 ac             	mov    %eax,-0x54(%rbp)
    2457:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
    245b:	78 06                	js     2463 <print_number+0x1b8>
    245d:	83 7d ac 19          	cmpl   $0x19,-0x54(%rbp)
    2461:	7e 0a                	jle    246d <print_number+0x1c2>
    2463:	b8 00 00 00 00       	mov    $0x0,%eax
    2468:	e9 b0 00 00 00       	jmp    251d <print_number+0x272>
    246d:	8b 45 ac             	mov    -0x54(%rbp),%eax
    2470:	48 98                	cltq
    2472:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2476:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    247a:	48 89 d6             	mov    %rdx,%rsi
    247d:	48 89 c7             	mov    %rax,%rdi
    2480:	e8 12 fb ff ff       	call   1f97 <ensure>
    2485:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    2489:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
    248e:	75 0a                	jne    249a <print_number+0x1ef>
    2490:	b8 00 00 00 00       	mov    $0x0,%eax
    2495:	e9 83 00 00 00       	jmp    251d <print_number+0x272>
    249a:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    24a1:	00 
    24a2:	eb 43                	jmp    24e7 <print_number+0x23c>
    24a4:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    24a8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    24ac:	48 01 d0             	add    %rdx,%rax
    24af:	0f b6 00             	movzbl (%rax),%eax
    24b2:	38 45 ab             	cmp    %al,-0x55(%rbp)
    24b5:	75 10                	jne    24c7 <print_number+0x21c>
    24b7:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    24bb:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    24bf:	48 01 d0             	add    %rdx,%rax
    24c2:	c6 00 2e             	movb   $0x2e,(%rax)
    24c5:	eb 1b                	jmp    24e2 <print_number+0x237>
    24c7:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    24cb:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    24cf:	48 01 c2             	add    %rax,%rdx
    24d2:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    24d6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    24da:	48 01 c8             	add    %rcx,%rax
    24dd:	0f b6 00             	movzbl (%rax),%eax
    24e0:	88 02                	mov    %al,(%rdx)
    24e2:	48 83 45 b8 01       	addq   $0x1,-0x48(%rbp)
    24e7:	8b 45 ac             	mov    -0x54(%rbp),%eax
    24ea:	48 98                	cltq
    24ec:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
    24f0:	72 b2                	jb     24a4 <print_number+0x1f9>
    24f2:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    24f6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    24fa:	48 01 d0             	add    %rdx,%rax
    24fd:	c6 00 00             	movb   $0x0,(%rax)
    2500:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    2504:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2508:	8b 45 ac             	mov    -0x54(%rbp),%eax
    250b:	48 98                	cltq
    250d:	48 01 c2             	add    %rax,%rdx
    2510:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    2514:	48 89 50 10          	mov    %rdx,0x10(%rax)
    2518:	b8 01 00 00 00       	mov    $0x1,%eax
    251d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2521:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2528:	00 00 
    252a:	74 05                	je     2531 <print_number+0x286>
    252c:	e8 6f eb ff ff       	call   10a0 <__stack_chk_fail@plt>
    2531:	c9                   	leave
    2532:	c3                   	ret

0000000000002533 <parse_hex4>:
    2533:	55                   	push   %rbp
    2534:	48 89 e5             	mov    %rsp,%rbp
    2537:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    253b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    2542:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    2549:	00 
    254a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    2551:	00 
    2552:	e9 e0 00 00 00       	jmp    2637 <parse_hex4+0x104>
    2557:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    255b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    255f:	48 01 d0             	add    %rdx,%rax
    2562:	0f b6 00             	movzbl (%rax),%eax
    2565:	3c 2f                	cmp    $0x2f,%al
    2567:	76 33                	jbe    259c <parse_hex4+0x69>
    2569:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    256d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2571:	48 01 d0             	add    %rdx,%rax
    2574:	0f b6 00             	movzbl (%rax),%eax
    2577:	3c 39                	cmp    $0x39,%al
    2579:	77 21                	ja     259c <parse_hex4+0x69>
    257b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    257f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2583:	48 01 d0             	add    %rdx,%rax
    2586:	0f b6 00             	movzbl (%rax),%eax
    2589:	0f b6 d0             	movzbl %al,%edx
    258c:	8b 45 f4             	mov    -0xc(%rbp),%eax
    258f:	01 d0                	add    %edx,%eax
    2591:	83 e8 30             	sub    $0x30,%eax
    2594:	89 45 f4             	mov    %eax,-0xc(%rbp)
    2597:	e9 8b 00 00 00       	jmp    2627 <parse_hex4+0xf4>
    259c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    25a0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    25a4:	48 01 d0             	add    %rdx,%rax
    25a7:	0f b6 00             	movzbl (%rax),%eax
    25aa:	3c 40                	cmp    $0x40,%al
    25ac:	76 30                	jbe    25de <parse_hex4+0xab>
    25ae:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    25b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    25b6:	48 01 d0             	add    %rdx,%rax
    25b9:	0f b6 00             	movzbl (%rax),%eax
    25bc:	3c 46                	cmp    $0x46,%al
    25be:	77 1e                	ja     25de <parse_hex4+0xab>
    25c0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    25c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    25c8:	48 01 d0             	add    %rdx,%rax
    25cb:	0f b6 00             	movzbl (%rax),%eax
    25ce:	0f b6 d0             	movzbl %al,%edx
    25d1:	8b 45 f4             	mov    -0xc(%rbp),%eax
    25d4:	01 d0                	add    %edx,%eax
    25d6:	83 e8 37             	sub    $0x37,%eax
    25d9:	89 45 f4             	mov    %eax,-0xc(%rbp)
    25dc:	eb 49                	jmp    2627 <parse_hex4+0xf4>
    25de:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    25e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    25e6:	48 01 d0             	add    %rdx,%rax
    25e9:	0f b6 00             	movzbl (%rax),%eax
    25ec:	3c 60                	cmp    $0x60,%al
    25ee:	76 30                	jbe    2620 <parse_hex4+0xed>
    25f0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    25f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    25f8:	48 01 d0             	add    %rdx,%rax
    25fb:	0f b6 00             	movzbl (%rax),%eax
    25fe:	3c 66                	cmp    $0x66,%al
    2600:	77 1e                	ja     2620 <parse_hex4+0xed>
    2602:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2606:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    260a:	48 01 d0             	add    %rdx,%rax
    260d:	0f b6 00             	movzbl (%rax),%eax
    2610:	0f b6 d0             	movzbl %al,%edx
    2613:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2616:	01 d0                	add    %edx,%eax
    2618:	83 e8 57             	sub    $0x57,%eax
    261b:	89 45 f4             	mov    %eax,-0xc(%rbp)
    261e:	eb 07                	jmp    2627 <parse_hex4+0xf4>
    2620:	b8 00 00 00 00       	mov    $0x0,%eax
    2625:	eb 1e                	jmp    2645 <parse_hex4+0x112>
    2627:	48 83 7d f8 02       	cmpq   $0x2,-0x8(%rbp)
    262c:	77 04                	ja     2632 <parse_hex4+0xff>
    262e:	c1 65 f4 04          	shll   $0x4,-0xc(%rbp)
    2632:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    2637:	48 83 7d f8 03       	cmpq   $0x3,-0x8(%rbp)
    263c:	0f 86 15 ff ff ff    	jbe    2557 <parse_hex4+0x24>
    2642:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2645:	5d                   	pop    %rbp
    2646:	c3                   	ret

0000000000002647 <utf16_literal_to_utf8>:
    2647:	55                   	push   %rbp
    2648:	48 89 e5             	mov    %rsp,%rbp
    264b:	48 83 ec 48          	sub    $0x48,%rsp
    264f:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    2653:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    2657:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    265b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    2662:	00 
    2663:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    266a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    266e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2672:	c6 45 dc 00          	movb   $0x0,-0x24(%rbp)
    2676:	c6 45 dd 00          	movb   $0x0,-0x23(%rbp)
    267a:	c6 45 de 00          	movb   $0x0,-0x22(%rbp)
    267e:	c6 45 df 00          	movb   $0x0,-0x21(%rbp)
    2682:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2686:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    268a:	48 83 f8 05          	cmp    $0x5,%rax
    268e:	0f 8e bb 01 00 00    	jle    284f <utf16_literal_to_utf8+0x208>
    2694:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2698:	48 83 c0 02          	add    $0x2,%rax
    269c:	48 89 c7             	mov    %rax,%rdi
    269f:	e8 8f fe ff ff       	call   2533 <parse_hex4>
    26a4:	89 45 e0             	mov    %eax,-0x20(%rbp)
    26a7:	81 7d e0 ff db 00 00 	cmpl   $0xdbff,-0x20(%rbp)
    26ae:	76 0d                	jbe    26bd <utf16_literal_to_utf8+0x76>
    26b0:	81 7d e0 ff df 00 00 	cmpl   $0xdfff,-0x20(%rbp)
    26b7:	0f 86 95 01 00 00    	jbe    2852 <utf16_literal_to_utf8+0x20b>
    26bd:	81 7d e0 ff d7 00 00 	cmpl   $0xd7ff,-0x20(%rbp)
    26c4:	0f 86 a9 00 00 00    	jbe    2773 <utf16_literal_to_utf8+0x12c>
    26ca:	81 7d e0 ff db 00 00 	cmpl   $0xdbff,-0x20(%rbp)
    26d1:	0f 87 9c 00 00 00    	ja     2773 <utf16_literal_to_utf8+0x12c>
    26d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    26db:	48 83 c0 06          	add    $0x6,%rax
    26df:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    26e3:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    26ea:	c6 45 de 0c          	movb   $0xc,-0x22(%rbp)
    26ee:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    26f2:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    26f6:	48 83 f8 05          	cmp    $0x5,%rax
    26fa:	0f 8e 55 01 00 00    	jle    2855 <utf16_literal_to_utf8+0x20e>
    2700:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2704:	0f b6 00             	movzbl (%rax),%eax
    2707:	3c 5c                	cmp    $0x5c,%al
    2709:	0f 85 49 01 00 00    	jne    2858 <utf16_literal_to_utf8+0x211>
    270f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2713:	48 83 c0 01          	add    $0x1,%rax
    2717:	0f b6 00             	movzbl (%rax),%eax
    271a:	3c 75                	cmp    $0x75,%al
    271c:	0f 85 36 01 00 00    	jne    2858 <utf16_literal_to_utf8+0x211>
    2722:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2726:	48 83 c0 02          	add    $0x2,%rax
    272a:	48 89 c7             	mov    %rax,%rdi
    272d:	e8 01 fe ff ff       	call   2533 <parse_hex4>
    2732:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    2735:	81 7d e4 ff db 00 00 	cmpl   $0xdbff,-0x1c(%rbp)
    273c:	0f 86 19 01 00 00    	jbe    285b <utf16_literal_to_utf8+0x214>
    2742:	81 7d e4 ff df 00 00 	cmpl   $0xdfff,-0x1c(%rbp)
    2749:	0f 87 0c 01 00 00    	ja     285b <utf16_literal_to_utf8+0x214>
    274f:	8b 45 e0             	mov    -0x20(%rbp),%eax
    2752:	c1 e0 0a             	shl    $0xa,%eax
    2755:	25 00 fc 0f 00       	and    $0xffc00,%eax
    275a:	89 c2                	mov    %eax,%edx
    275c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    275f:	25 ff 03 00 00       	and    $0x3ff,%eax
    2764:	09 d0                	or     %edx,%eax
    2766:	05 00 00 01 00       	add    $0x10000,%eax
    276b:	89 c0                	mov    %eax,%eax
    276d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2771:	eb 0b                	jmp    277e <utf16_literal_to_utf8+0x137>
    2773:	c6 45 de 06          	movb   $0x6,-0x22(%rbp)
    2777:	8b 45 e0             	mov    -0x20(%rbp),%eax
    277a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    277e:	48 83 7d e8 7f       	cmpq   $0x7f,-0x18(%rbp)
    2783:	77 06                	ja     278b <utf16_literal_to_utf8+0x144>
    2785:	c6 45 dc 01          	movb   $0x1,-0x24(%rbp)
    2789:	eb 3e                	jmp    27c9 <utf16_literal_to_utf8+0x182>
    278b:	48 81 7d e8 ff 07 00 	cmpq   $0x7ff,-0x18(%rbp)
    2792:	00 
    2793:	77 0a                	ja     279f <utf16_literal_to_utf8+0x158>
    2795:	c6 45 dc 02          	movb   $0x2,-0x24(%rbp)
    2799:	c6 45 df c0          	movb   $0xc0,-0x21(%rbp)
    279d:	eb 2a                	jmp    27c9 <utf16_literal_to_utf8+0x182>
    279f:	48 81 7d e8 ff ff 00 	cmpq   $0xffff,-0x18(%rbp)
    27a6:	00 
    27a7:	77 0a                	ja     27b3 <utf16_literal_to_utf8+0x16c>
    27a9:	c6 45 dc 03          	movb   $0x3,-0x24(%rbp)
    27ad:	c6 45 df e0          	movb   $0xe0,-0x21(%rbp)
    27b1:	eb 16                	jmp    27c9 <utf16_literal_to_utf8+0x182>
    27b3:	48 81 7d e8 ff ff 10 	cmpq   $0x10ffff,-0x18(%rbp)
    27ba:	00 
    27bb:	0f 87 9d 00 00 00    	ja     285e <utf16_literal_to_utf8+0x217>
    27c1:	c6 45 dc 04          	movb   $0x4,-0x24(%rbp)
    27c5:	c6 45 df f0          	movb   $0xf0,-0x21(%rbp)
    27c9:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    27cd:	83 e8 01             	sub    $0x1,%eax
    27d0:	88 45 dd             	mov    %al,-0x23(%rbp)
    27d3:	eb 2d                	jmp    2802 <utf16_literal_to_utf8+0x1bb>
    27d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    27d9:	83 e0 3f             	and    $0x3f,%eax
    27dc:	89 c1                	mov    %eax,%ecx
    27de:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    27e2:	48 8b 10             	mov    (%rax),%rdx
    27e5:	0f b6 45 dd          	movzbl -0x23(%rbp),%eax
    27e9:	48 01 d0             	add    %rdx,%rax
    27ec:	83 c9 80             	or     $0xffffff80,%ecx
    27ef:	89 ca                	mov    %ecx,%edx
    27f1:	88 10                	mov    %dl,(%rax)
    27f3:	48 c1 6d e8 06       	shrq   $0x6,-0x18(%rbp)
    27f8:	0f b6 45 dd          	movzbl -0x23(%rbp),%eax
    27fc:	83 e8 01             	sub    $0x1,%eax
    27ff:	88 45 dd             	mov    %al,-0x23(%rbp)
    2802:	80 7d dd 00          	cmpb   $0x0,-0x23(%rbp)
    2806:	75 cd                	jne    27d5 <utf16_literal_to_utf8+0x18e>
    2808:	80 7d dc 01          	cmpb   $0x1,-0x24(%rbp)
    280c:	76 14                	jbe    2822 <utf16_literal_to_utf8+0x1db>
    280e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2812:	89 c2                	mov    %eax,%edx
    2814:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2818:	48 8b 00             	mov    (%rax),%rax
    281b:	0a 55 df             	or     -0x21(%rbp),%dl
    281e:	88 10                	mov    %dl,(%rax)
    2820:	eb 12                	jmp    2834 <utf16_literal_to_utf8+0x1ed>
    2822:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2826:	89 c2                	mov    %eax,%edx
    2828:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    282c:	48 8b 00             	mov    (%rax),%rax
    282f:	83 e2 7f             	and    $0x7f,%edx
    2832:	88 10                	mov    %dl,(%rax)
    2834:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2838:	48 8b 10             	mov    (%rax),%rdx
    283b:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    283f:	48 01 c2             	add    %rax,%rdx
    2842:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2846:	48 89 10             	mov    %rdx,(%rax)
    2849:	0f b6 45 de          	movzbl -0x22(%rbp),%eax
    284d:	eb 15                	jmp    2864 <utf16_literal_to_utf8+0x21d>
    284f:	90                   	nop
    2850:	eb 0d                	jmp    285f <utf16_literal_to_utf8+0x218>
    2852:	90                   	nop
    2853:	eb 0a                	jmp    285f <utf16_literal_to_utf8+0x218>
    2855:	90                   	nop
    2856:	eb 07                	jmp    285f <utf16_literal_to_utf8+0x218>
    2858:	90                   	nop
    2859:	eb 04                	jmp    285f <utf16_literal_to_utf8+0x218>
    285b:	90                   	nop
    285c:	eb 01                	jmp    285f <utf16_literal_to_utf8+0x218>
    285e:	90                   	nop
    285f:	b8 00 00 00 00       	mov    $0x0,%eax
    2864:	c9                   	leave
    2865:	c3                   	ret

0000000000002866 <parse_string>:
    2866:	55                   	push   %rbp
    2867:	48 89 e5             	mov    %rsp,%rbp
    286a:	48 83 ec 50          	sub    $0x50,%rsp
    286e:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    2872:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    2876:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    287d:	00 00 
    287f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2883:	31 c0                	xor    %eax,%eax
    2885:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2889:	48 8b 10             	mov    (%rax),%rdx
    288c:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2890:	48 8b 40 10          	mov    0x10(%rax),%rax
    2894:	48 83 c0 01          	add    $0x1,%rax
    2898:	48 01 d0             	add    %rdx,%rax
    289b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    289f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    28a3:	48 8b 10             	mov    (%rax),%rdx
    28a6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    28aa:	48 8b 40 10          	mov    0x10(%rax),%rax
    28ae:	48 83 c0 01          	add    $0x1,%rax
    28b2:	48 01 d0             	add    %rdx,%rax
    28b5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    28b9:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    28c0:	00 
    28c1:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    28c8:	00 
    28c9:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    28cd:	48 8b 10             	mov    (%rax),%rdx
    28d0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    28d4:	48 8b 40 10          	mov    0x10(%rax),%rax
    28d8:	48 01 d0             	add    %rdx,%rax
    28db:	0f b6 00             	movzbl (%rax),%eax
    28de:	3c 22                	cmp    $0x22,%al
    28e0:	0f 85 b8 02 00 00    	jne    2b9e <parse_string+0x338>
    28e6:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    28ed:	00 
    28ee:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    28f5:	00 
    28f6:	eb 3d                	jmp    2935 <parse_string+0xcf>
    28f8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    28fc:	0f b6 00             	movzbl (%rax),%eax
    28ff:	3c 5c                	cmp    $0x5c,%al
    2901:	75 2d                	jne    2930 <parse_string+0xca>
    2903:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2907:	48 8d 50 01          	lea    0x1(%rax),%rdx
    290b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    290f:	48 8b 00             	mov    (%rax),%rax
    2912:	48 29 c2             	sub    %rax,%rdx
    2915:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2919:	48 8b 40 08          	mov    0x8(%rax),%rax
    291d:	48 39 c2             	cmp    %rax,%rdx
    2920:	0f 83 7b 02 00 00    	jae    2ba1 <parse_string+0x33b>
    2926:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    292b:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    2930:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    2935:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2939:	48 8b 00             	mov    (%rax),%rax
    293c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2940:	48 29 c2             	sub    %rax,%rdx
    2943:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2947:	48 8b 40 08          	mov    0x8(%rax),%rax
    294b:	48 39 c2             	cmp    %rax,%rdx
    294e:	73 0b                	jae    295b <parse_string+0xf5>
    2950:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2954:	0f b6 00             	movzbl (%rax),%eax
    2957:	3c 22                	cmp    $0x22,%al
    2959:	75 9d                	jne    28f8 <parse_string+0x92>
    295b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    295f:	48 8b 00             	mov    (%rax),%rax
    2962:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2966:	48 29 c2             	sub    %rax,%rdx
    2969:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    296d:	48 8b 40 08          	mov    0x8(%rax),%rax
    2971:	48 39 c2             	cmp    %rax,%rdx
    2974:	0f 83 2a 02 00 00    	jae    2ba4 <parse_string+0x33e>
    297a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    297e:	0f b6 00             	movzbl (%rax),%eax
    2981:	3c 22                	cmp    $0x22,%al
    2983:	0f 85 1b 02 00 00    	jne    2ba4 <parse_string+0x33e>
    2989:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    298d:	48 8b 10             	mov    (%rax),%rdx
    2990:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2994:	48 8b 40 10          	mov    0x10(%rax),%rax
    2998:	48 01 d0             	add    %rdx,%rax
    299b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    299f:	48 29 c2             	sub    %rax,%rdx
    29a2:	48 89 d0             	mov    %rdx,%rax
    29a5:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    29a9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    29ad:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    29b1:	48 8b 40 20          	mov    0x20(%rax),%rax
    29b5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    29b9:	48 83 c2 01          	add    $0x1,%rdx
    29bd:	48 89 d7             	mov    %rdx,%rdi
    29c0:	ff d0                	call   *%rax
    29c2:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    29c6:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    29cb:	0f 84 d6 01 00 00    	je     2ba7 <parse_string+0x341>
    29d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    29d5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    29d9:	e9 63 01 00 00       	jmp    2b41 <parse_string+0x2db>
    29de:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    29e2:	0f b6 00             	movzbl (%rax),%eax
    29e5:	3c 5c                	cmp    $0x5c,%al
    29e7:	74 22                	je     2a0b <parse_string+0x1a5>
    29e9:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    29ed:	48 8d 42 01          	lea    0x1(%rdx),%rax
    29f1:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    29f5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    29f9:	48 8d 48 01          	lea    0x1(%rax),%rcx
    29fd:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    2a01:	0f b6 12             	movzbl (%rdx),%edx
    2a04:	88 10                	mov    %dl,(%rax)
    2a06:	e9 36 01 00 00       	jmp    2b41 <parse_string+0x2db>
    2a0b:	c6 45 c7 02          	movb   $0x2,-0x39(%rbp)
    2a0f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2a13:	48 2b 45 d0          	sub    -0x30(%rbp),%rax
    2a17:	48 85 c0             	test   %rax,%rax
    2a1a:	0f 8e 8a 01 00 00    	jle    2baa <parse_string+0x344>
    2a20:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2a24:	48 83 c0 01          	add    $0x1,%rax
    2a28:	0f b6 00             	movzbl (%rax),%eax
    2a2b:	0f b6 c0             	movzbl %al,%eax
    2a2e:	83 f8 5c             	cmp    $0x5c,%eax
    2a31:	7f 5f                	jg     2a92 <parse_string+0x22c>
    2a33:	83 f8 22             	cmp    $0x22,%eax
    2a36:	7d 33                	jge    2a6b <parse_string+0x205>
    2a38:	e9 70 01 00 00       	jmp    2bad <parse_string+0x347>
    2a3d:	83 e8 62             	sub    $0x62,%eax
    2a40:	83 f8 13             	cmp    $0x13,%eax
    2a43:	0f 87 64 01 00 00    	ja     2bad <parse_string+0x347>
    2a49:	89 c0                	mov    %eax,%eax
    2a4b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2a52:	00 
    2a53:	48 8d 05 2a 46 00 00 	lea    0x462a(%rip),%rax        # 7084 <_IO_stdin_used+0x84>
    2a5a:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    2a5d:	48 98                	cltq
    2a5f:	48 8d 15 1e 46 00 00 	lea    0x461e(%rip),%rdx        # 7084 <_IO_stdin_used+0x84>
    2a66:	48 01 d0             	add    %rdx,%rax
    2a69:	ff e0                	jmp    *%rax
    2a6b:	83 e8 22             	sub    $0x22,%eax
    2a6e:	48 ba 01 20 00 00 00 	movabs $0x400000000002001,%rdx
    2a75:	00 00 04 
    2a78:	89 c1                	mov    %eax,%ecx
    2a7a:	48 d3 ea             	shr    %cl,%rdx
    2a7d:	48 89 d0             	mov    %rdx,%rax
    2a80:	83 e0 01             	and    $0x1,%eax
    2a83:	48 85 c0             	test   %rax,%rax
    2a86:	0f 95 c0             	setne  %al
    2a89:	84 c0                	test   %al,%al
    2a8b:	75 70                	jne    2afd <parse_string+0x297>
    2a8d:	e9 1b 01 00 00       	jmp    2bad <parse_string+0x347>
    2a92:	83 f8 75             	cmp    $0x75,%eax
    2a95:	0f 8f 12 01 00 00    	jg     2bad <parse_string+0x347>
    2a9b:	83 f8 62             	cmp    $0x62,%eax
    2a9e:	7d 9d                	jge    2a3d <parse_string+0x1d7>
    2aa0:	e9 08 01 00 00       	jmp    2bad <parse_string+0x347>
    2aa5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2aa9:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2aad:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    2ab1:	c6 00 08             	movb   $0x8,(%rax)
    2ab4:	e9 80 00 00 00       	jmp    2b39 <parse_string+0x2d3>
    2ab9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2abd:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2ac1:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    2ac5:	c6 00 0c             	movb   $0xc,(%rax)
    2ac8:	eb 6f                	jmp    2b39 <parse_string+0x2d3>
    2aca:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2ace:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2ad2:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    2ad6:	c6 00 0a             	movb   $0xa,(%rax)
    2ad9:	eb 5e                	jmp    2b39 <parse_string+0x2d3>
    2adb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2adf:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2ae3:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    2ae7:	c6 00 0d             	movb   $0xd,(%rax)
    2aea:	eb 4d                	jmp    2b39 <parse_string+0x2d3>
    2aec:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2af0:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2af4:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    2af8:	c6 00 09             	movb   $0x9,(%rax)
    2afb:	eb 3c                	jmp    2b39 <parse_string+0x2d3>
    2afd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2b01:	48 8d 48 01          	lea    0x1(%rax),%rcx
    2b05:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2b09:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2b0d:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    2b11:	0f b6 11             	movzbl (%rcx),%edx
    2b14:	88 10                	mov    %dl,(%rax)
    2b16:	eb 21                	jmp    2b39 <parse_string+0x2d3>
    2b18:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    2b1c:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    2b20:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2b24:	48 89 ce             	mov    %rcx,%rsi
    2b27:	48 89 c7             	mov    %rax,%rdi
    2b2a:	e8 18 fb ff ff       	call   2647 <utf16_literal_to_utf8>
    2b2f:	88 45 c7             	mov    %al,-0x39(%rbp)
    2b32:	80 7d c7 00          	cmpb   $0x0,-0x39(%rbp)
    2b36:	74 78                	je     2bb0 <parse_string+0x34a>
    2b38:	90                   	nop
    2b39:	0f b6 45 c7          	movzbl -0x39(%rbp),%eax
    2b3d:	48 01 45 d0          	add    %rax,-0x30(%rbp)
    2b41:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2b45:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    2b49:	0f 82 8f fe ff ff    	jb     29de <parse_string+0x178>
    2b4f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2b53:	c6 00 00             	movb   $0x0,(%rax)
    2b56:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2b5a:	c7 40 18 10 00 00 00 	movl   $0x10,0x18(%rax)
    2b61:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2b65:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    2b69:	48 89 50 20          	mov    %rdx,0x20(%rax)
    2b6d:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2b71:	48 8b 00             	mov    (%rax),%rax
    2b74:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2b78:	48 29 c2             	sub    %rax,%rdx
    2b7b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2b7f:	48 89 50 10          	mov    %rdx,0x10(%rax)
    2b83:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2b87:	48 8b 40 10          	mov    0x10(%rax),%rax
    2b8b:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2b8f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2b93:	48 89 50 10          	mov    %rdx,0x10(%rax)
    2b97:	b8 01 00 00 00       	mov    $0x1,%eax
    2b9c:	eb 55                	jmp    2bf3 <parse_string+0x38d>
    2b9e:	90                   	nop
    2b9f:	eb 10                	jmp    2bb1 <parse_string+0x34b>
    2ba1:	90                   	nop
    2ba2:	eb 0d                	jmp    2bb1 <parse_string+0x34b>
    2ba4:	90                   	nop
    2ba5:	eb 0a                	jmp    2bb1 <parse_string+0x34b>
    2ba7:	90                   	nop
    2ba8:	eb 07                	jmp    2bb1 <parse_string+0x34b>
    2baa:	90                   	nop
    2bab:	eb 04                	jmp    2bb1 <parse_string+0x34b>
    2bad:	90                   	nop
    2bae:	eb 01                	jmp    2bb1 <parse_string+0x34b>
    2bb0:	90                   	nop
    2bb1:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    2bb6:	74 19                	je     2bd1 <parse_string+0x36b>
    2bb8:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2bbc:	48 8b 50 28          	mov    0x28(%rax),%rdx
    2bc0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2bc4:	48 89 c7             	mov    %rax,%rdi
    2bc7:	ff d2                	call   *%rdx
    2bc9:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    2bd0:	00 
    2bd1:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    2bd6:	74 16                	je     2bee <parse_string+0x388>
    2bd8:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2bdc:	48 8b 00             	mov    (%rax),%rax
    2bdf:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    2be3:	48 29 c2             	sub    %rax,%rdx
    2be6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2bea:	48 89 50 10          	mov    %rdx,0x10(%rax)
    2bee:	b8 00 00 00 00       	mov    $0x0,%eax
    2bf3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2bf7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2bfe:	00 00 
    2c00:	74 05                	je     2c07 <parse_string+0x3a1>
    2c02:	e8 99 e4 ff ff       	call   10a0 <__stack_chk_fail@plt>
    2c07:	c9                   	leave
    2c08:	c3                   	ret

0000000000002c09 <print_string_ptr>:
    2c09:	55                   	push   %rbp
    2c0a:	48 89 e5             	mov    %rsp,%rbp
    2c0d:	48 83 ec 40          	sub    $0x40,%rsp
    2c11:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    2c15:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    2c19:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2c20:	00 
    2c21:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    2c28:	00 
    2c29:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    2c30:	00 
    2c31:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    2c38:	00 
    2c39:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    2c40:	00 
    2c41:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
    2c46:	75 0a                	jne    2c52 <print_string_ptr+0x49>
    2c48:	b8 00 00 00 00       	mov    $0x0,%eax
    2c4d:	e9 92 02 00 00       	jmp    2ee4 <print_string_ptr+0x2db>
    2c52:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    2c57:	75 3d                	jne    2c96 <print_string_ptr+0x8d>
    2c59:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2c5d:	be 03 00 00 00       	mov    $0x3,%esi
    2c62:	48 89 c7             	mov    %rax,%rdi
    2c65:	e8 2d f3 ff ff       	call   1f97 <ensure>
    2c6a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2c6e:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    2c73:	75 0a                	jne    2c7f <print_string_ptr+0x76>
    2c75:	b8 00 00 00 00       	mov    $0x0,%eax
    2c7a:	e9 65 02 00 00       	jmp    2ee4 <print_string_ptr+0x2db>
    2c7f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2c83:	66 c7 00 22 22       	movw   $0x2222,(%rax)
    2c88:	c6 40 02 00          	movb   $0x0,0x2(%rax)
    2c8c:	b8 01 00 00 00       	mov    $0x1,%eax
    2c91:	e9 4e 02 00 00       	jmp    2ee4 <print_string_ptr+0x2db>
    2c96:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2c9a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2c9e:	eb 4f                	jmp    2cef <print_string_ptr+0xe6>
    2ca0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2ca4:	0f b6 00             	movzbl (%rax),%eax
    2ca7:	0f b6 c0             	movzbl %al,%eax
    2caa:	83 f8 5c             	cmp    $0x5c,%eax
    2cad:	74 23                	je     2cd2 <print_string_ptr+0xc9>
    2caf:	83 f8 5c             	cmp    $0x5c,%eax
    2cb2:	7f 25                	jg     2cd9 <print_string_ptr+0xd0>
    2cb4:	83 f8 22             	cmp    $0x22,%eax
    2cb7:	74 19                	je     2cd2 <print_string_ptr+0xc9>
    2cb9:	83 f8 22             	cmp    $0x22,%eax
    2cbc:	7f 1b                	jg     2cd9 <print_string_ptr+0xd0>
    2cbe:	83 f8 0a             	cmp    $0xa,%eax
    2cc1:	7f 07                	jg     2cca <print_string_ptr+0xc1>
    2cc3:	83 f8 08             	cmp    $0x8,%eax
    2cc6:	7d 0a                	jge    2cd2 <print_string_ptr+0xc9>
    2cc8:	eb 0f                	jmp    2cd9 <print_string_ptr+0xd0>
    2cca:	83 e8 0c             	sub    $0xc,%eax
    2ccd:	83 f8 01             	cmp    $0x1,%eax
    2cd0:	77 07                	ja     2cd9 <print_string_ptr+0xd0>
    2cd2:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    2cd7:	eb 11                	jmp    2cea <print_string_ptr+0xe1>
    2cd9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2cdd:	0f b6 00             	movzbl (%rax),%eax
    2ce0:	3c 1f                	cmp    $0x1f,%al
    2ce2:	77 05                	ja     2ce9 <print_string_ptr+0xe0>
    2ce4:	48 83 45 e8 05       	addq   $0x5,-0x18(%rbp)
    2ce9:	90                   	nop
    2cea:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    2cef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2cf3:	0f b6 00             	movzbl (%rax),%eax
    2cf6:	84 c0                	test   %al,%al
    2cf8:	75 a6                	jne    2ca0 <print_string_ptr+0x97>
    2cfa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2cfe:	48 2b 45 c8          	sub    -0x38(%rbp),%rax
    2d02:	48 89 c2             	mov    %rax,%rdx
    2d05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2d09:	48 01 d0             	add    %rdx,%rax
    2d0c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2d10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2d14:	48 8d 50 03          	lea    0x3(%rax),%rdx
    2d18:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2d1c:	48 89 d6             	mov    %rdx,%rsi
    2d1f:	48 89 c7             	mov    %rax,%rdi
    2d22:	e8 70 f2 ff ff       	call   1f97 <ensure>
    2d27:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2d2b:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    2d30:	75 0a                	jne    2d3c <print_string_ptr+0x133>
    2d32:	b8 00 00 00 00       	mov    $0x0,%eax
    2d37:	e9 a8 01 00 00       	jmp    2ee4 <print_string_ptr+0x2db>
    2d3c:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    2d41:	75 50                	jne    2d93 <print_string_ptr+0x18a>
    2d43:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2d47:	c6 00 22             	movb   $0x22,(%rax)
    2d4a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2d4e:	48 8d 48 01          	lea    0x1(%rax),%rcx
    2d52:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2d56:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2d5a:	48 89 c6             	mov    %rax,%rsi
    2d5d:	48 89 cf             	mov    %rcx,%rdi
    2d60:	e8 8b e3 ff ff       	call   10f0 <memcpy@plt>
    2d65:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2d69:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2d6d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2d71:	48 01 d0             	add    %rdx,%rax
    2d74:	c6 00 22             	movb   $0x22,(%rax)
    2d77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2d7b:	48 8d 50 02          	lea    0x2(%rax),%rdx
    2d7f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2d83:	48 01 d0             	add    %rdx,%rax
    2d86:	c6 00 00             	movb   $0x0,(%rax)
    2d89:	b8 01 00 00 00       	mov    $0x1,%eax
    2d8e:	e9 51 01 00 00       	jmp    2ee4 <print_string_ptr+0x2db>
    2d93:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2d97:	c6 00 22             	movb   $0x22,(%rax)
    2d9a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2d9e:	48 83 c0 01          	add    $0x1,%rax
    2da2:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2da6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2daa:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2dae:	e9 f9 00 00 00       	jmp    2eac <print_string_ptr+0x2a3>
    2db3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2db7:	0f b6 00             	movzbl (%rax),%eax
    2dba:	3c 1f                	cmp    $0x1f,%al
    2dbc:	76 28                	jbe    2de6 <print_string_ptr+0x1dd>
    2dbe:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2dc2:	0f b6 00             	movzbl (%rax),%eax
    2dc5:	3c 22                	cmp    $0x22,%al
    2dc7:	74 1d                	je     2de6 <print_string_ptr+0x1dd>
    2dc9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2dcd:	0f b6 00             	movzbl (%rax),%eax
    2dd0:	3c 5c                	cmp    $0x5c,%al
    2dd2:	74 12                	je     2de6 <print_string_ptr+0x1dd>
    2dd4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2dd8:	0f b6 10             	movzbl (%rax),%edx
    2ddb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2ddf:	88 10                	mov    %dl,(%rax)
    2de1:	e9 bc 00 00 00       	jmp    2ea2 <print_string_ptr+0x299>
    2de6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2dea:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2dee:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    2df2:	c6 00 5c             	movb   $0x5c,(%rax)
    2df5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2df9:	0f b6 00             	movzbl (%rax),%eax
    2dfc:	0f b6 c0             	movzbl %al,%eax
    2dff:	83 f8 22             	cmp    $0x22,%eax
    2e02:	7f 2f                	jg     2e33 <print_string_ptr+0x22a>
    2e04:	83 f8 08             	cmp    $0x8,%eax
    2e07:	7c 6e                	jl     2e77 <print_string_ptr+0x26e>
    2e09:	83 e8 08             	sub    $0x8,%eax
    2e0c:	83 f8 1a             	cmp    $0x1a,%eax
    2e0f:	77 66                	ja     2e77 <print_string_ptr+0x26e>
    2e11:	89 c0                	mov    %eax,%eax
    2e13:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2e1a:	00 
    2e1b:	48 8d 05 ba 42 00 00 	lea    0x42ba(%rip),%rax        # 70dc <_IO_stdin_used+0xdc>
    2e22:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    2e25:	48 98                	cltq
    2e27:	48 8d 15 ae 42 00 00 	lea    0x42ae(%rip),%rdx        # 70dc <_IO_stdin_used+0xdc>
    2e2e:	48 01 d0             	add    %rdx,%rax
    2e31:	ff e0                	jmp    *%rax
    2e33:	83 f8 5c             	cmp    $0x5c,%eax
    2e36:	75 3f                	jne    2e77 <print_string_ptr+0x26e>
    2e38:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2e3c:	c6 00 5c             	movb   $0x5c,(%rax)
    2e3f:	eb 61                	jmp    2ea2 <print_string_ptr+0x299>
    2e41:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2e45:	c6 00 22             	movb   $0x22,(%rax)
    2e48:	eb 58                	jmp    2ea2 <print_string_ptr+0x299>
    2e4a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2e4e:	c6 00 62             	movb   $0x62,(%rax)
    2e51:	eb 4f                	jmp    2ea2 <print_string_ptr+0x299>
    2e53:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2e57:	c6 00 66             	movb   $0x66,(%rax)
    2e5a:	eb 46                	jmp    2ea2 <print_string_ptr+0x299>
    2e5c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2e60:	c6 00 6e             	movb   $0x6e,(%rax)
    2e63:	eb 3d                	jmp    2ea2 <print_string_ptr+0x299>
    2e65:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2e69:	c6 00 72             	movb   $0x72,(%rax)
    2e6c:	eb 34                	jmp    2ea2 <print_string_ptr+0x299>
    2e6e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2e72:	c6 00 74             	movb   $0x74,(%rax)
    2e75:	eb 2b                	jmp    2ea2 <print_string_ptr+0x299>
    2e77:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2e7b:	0f b6 00             	movzbl (%rax),%eax
    2e7e:	0f b6 d0             	movzbl %al,%edx
    2e81:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2e85:	48 8d 0d 48 42 00 00 	lea    0x4248(%rip),%rcx        # 70d4 <_IO_stdin_used+0xd4>
    2e8c:	48 89 ce             	mov    %rcx,%rsi
    2e8f:	48 89 c7             	mov    %rax,%rdi
    2e92:	b8 00 00 00 00       	mov    $0x0,%eax
    2e97:	e8 a4 e2 ff ff       	call   1140 <sprintf@plt>
    2e9c:	48 83 45 e0 04       	addq   $0x4,-0x20(%rbp)
    2ea1:	90                   	nop
    2ea2:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    2ea7:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    2eac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2eb0:	0f b6 00             	movzbl (%rax),%eax
    2eb3:	84 c0                	test   %al,%al
    2eb5:	0f 85 f8 fe ff ff    	jne    2db3 <print_string_ptr+0x1aa>
    2ebb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2ebf:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2ec3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2ec7:	48 01 d0             	add    %rdx,%rax
    2eca:	c6 00 22             	movb   $0x22,(%rax)
    2ecd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2ed1:	48 8d 50 02          	lea    0x2(%rax),%rdx
    2ed5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2ed9:	48 01 d0             	add    %rdx,%rax
    2edc:	c6 00 00             	movb   $0x0,(%rax)
    2edf:	b8 01 00 00 00       	mov    $0x1,%eax
    2ee4:	c9                   	leave
    2ee5:	c3                   	ret

0000000000002ee6 <print_string>:
    2ee6:	55                   	push   %rbp
    2ee7:	48 89 e5             	mov    %rsp,%rbp
    2eea:	48 83 ec 10          	sub    $0x10,%rsp
    2eee:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2ef2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2ef6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2efa:	48 8b 40 20          	mov    0x20(%rax),%rax
    2efe:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    2f02:	48 89 d6             	mov    %rdx,%rsi
    2f05:	48 89 c7             	mov    %rax,%rdi
    2f08:	e8 fc fc ff ff       	call   2c09 <print_string_ptr>
    2f0d:	c9                   	leave
    2f0e:	c3                   	ret

0000000000002f0f <buffer_skip_whitespace>:
    2f0f:	55                   	push   %rbp
    2f10:	48 89 e5             	mov    %rsp,%rbp
    2f13:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2f17:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    2f1c:	74 0c                	je     2f2a <buffer_skip_whitespace+0x1b>
    2f1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f22:	48 8b 00             	mov    (%rax),%rax
    2f25:	48 85 c0             	test   %rax,%rax
    2f28:	75 0a                	jne    2f34 <buffer_skip_whitespace+0x25>
    2f2a:	b8 00 00 00 00       	mov    $0x0,%eax
    2f2f:	e9 98 00 00 00       	jmp    2fcc <buffer_skip_whitespace+0xbd>
    2f34:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    2f39:	74 15                	je     2f50 <buffer_skip_whitespace+0x41>
    2f3b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f3f:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2f43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f47:	48 8b 40 08          	mov    0x8(%rax),%rax
    2f4b:	48 39 c2             	cmp    %rax,%rdx
    2f4e:	72 1a                	jb     2f6a <buffer_skip_whitespace+0x5b>
    2f50:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f54:	eb 76                	jmp    2fcc <buffer_skip_whitespace+0xbd>
    2f56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f5a:	48 8b 40 10          	mov    0x10(%rax),%rax
    2f5e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2f62:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f66:	48 89 50 10          	mov    %rdx,0x10(%rax)
    2f6a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    2f6f:	74 2e                	je     2f9f <buffer_skip_whitespace+0x90>
    2f71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f75:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2f79:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f7d:	48 8b 40 08          	mov    0x8(%rax),%rax
    2f81:	48 39 c2             	cmp    %rax,%rdx
    2f84:	73 19                	jae    2f9f <buffer_skip_whitespace+0x90>
    2f86:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f8a:	48 8b 10             	mov    (%rax),%rdx
    2f8d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f91:	48 8b 40 10          	mov    0x10(%rax),%rax
    2f95:	48 01 d0             	add    %rdx,%rax
    2f98:	0f b6 00             	movzbl (%rax),%eax
    2f9b:	3c 20                	cmp    $0x20,%al
    2f9d:	76 b7                	jbe    2f56 <buffer_skip_whitespace+0x47>
    2f9f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fa3:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2fa7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fab:	48 8b 40 08          	mov    0x8(%rax),%rax
    2faf:	48 39 c2             	cmp    %rax,%rdx
    2fb2:	75 14                	jne    2fc8 <buffer_skip_whitespace+0xb9>
    2fb4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fb8:	48 8b 40 10          	mov    0x10(%rax),%rax
    2fbc:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    2fc0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fc4:	48 89 50 10          	mov    %rdx,0x10(%rax)
    2fc8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fcc:	5d                   	pop    %rbp
    2fcd:	c3                   	ret

0000000000002fce <skip_utf8_bom>:
    2fce:	55                   	push   %rbp
    2fcf:	48 89 e5             	mov    %rsp,%rbp
    2fd2:	48 83 ec 10          	sub    $0x10,%rsp
    2fd6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2fda:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    2fdf:	74 19                	je     2ffa <skip_utf8_bom+0x2c>
    2fe1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fe5:	48 8b 00             	mov    (%rax),%rax
    2fe8:	48 85 c0             	test   %rax,%rax
    2feb:	74 0d                	je     2ffa <skip_utf8_bom+0x2c>
    2fed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2ff1:	48 8b 40 10          	mov    0x10(%rax),%rax
    2ff5:	48 85 c0             	test   %rax,%rax
    2ff8:	74 07                	je     3001 <skip_utf8_bom+0x33>
    2ffa:	b8 00 00 00 00       	mov    $0x0,%eax
    2fff:	eb 65                	jmp    3066 <skip_utf8_bom+0x98>
    3001:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    3006:	74 5a                	je     3062 <skip_utf8_bom+0x94>
    3008:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    300c:	48 8b 40 10          	mov    0x10(%rax),%rax
    3010:	48 8d 50 04          	lea    0x4(%rax),%rdx
    3014:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3018:	48 8b 40 08          	mov    0x8(%rax),%rax
    301c:	48 39 c2             	cmp    %rax,%rdx
    301f:	73 41                	jae    3062 <skip_utf8_bom+0x94>
    3021:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3025:	48 8b 10             	mov    (%rax),%rdx
    3028:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    302c:	48 8b 40 10          	mov    0x10(%rax),%rax
    3030:	48 01 d0             	add    %rdx,%rax
    3033:	ba 03 00 00 00       	mov    $0x3,%edx
    3038:	48 8d 0d 09 41 00 00 	lea    0x4109(%rip),%rcx        # 7148 <_IO_stdin_used+0x148>
    303f:	48 89 ce             	mov    %rcx,%rsi
    3042:	48 89 c7             	mov    %rax,%rdi
    3045:	e8 e6 df ff ff       	call   1030 <strncmp@plt>
    304a:	85 c0                	test   %eax,%eax
    304c:	75 14                	jne    3062 <skip_utf8_bom+0x94>
    304e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3052:	48 8b 40 10          	mov    0x10(%rax),%rax
    3056:	48 8d 50 03          	lea    0x3(%rax),%rdx
    305a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    305e:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3062:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3066:	c9                   	leave
    3067:	c3                   	ret

0000000000003068 <cJSON_ParseWithOpts>:
    3068:	55                   	push   %rbp
    3069:	48 89 e5             	mov    %rsp,%rbp
    306c:	48 83 ec 30          	sub    $0x30,%rsp
    3070:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3074:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    3078:	89 55 dc             	mov    %edx,-0x24(%rbp)
    307b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3080:	75 07                	jne    3089 <cJSON_ParseWithOpts+0x21>
    3082:	b8 00 00 00 00       	mov    $0x0,%eax
    3087:	eb 2b                	jmp    30b4 <cJSON_ParseWithOpts+0x4c>
    3089:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    308d:	48 89 c7             	mov    %rax,%rdi
    3090:	e8 fb df ff ff       	call   1090 <strlen@plt>
    3095:	48 83 c0 01          	add    $0x1,%rax
    3099:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    309d:	8b 4d dc             	mov    -0x24(%rbp),%ecx
    30a0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    30a4:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    30a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    30ac:	48 89 c7             	mov    %rax,%rdi
    30af:	e8 02 00 00 00       	call   30b6 <cJSON_ParseWithLengthOpts>
    30b4:	c9                   	leave
    30b5:	c3                   	ret

00000000000030b6 <cJSON_ParseWithLengthOpts>:
    30b6:	55                   	push   %rbp
    30b7:	48 89 e5             	mov    %rsp,%rbp
    30ba:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    30be:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
    30c2:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
    30c6:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
    30ca:	89 4d 84             	mov    %ecx,-0x7c(%rbp)
    30cd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    30d4:	00 00 
    30d6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    30da:	31 c0                	xor    %eax,%eax
    30dc:	66 0f ef c0          	pxor   %xmm0,%xmm0
    30e0:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
    30e4:	0f 29 45 d0          	movaps %xmm0,-0x30(%rbp)
    30e8:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    30ec:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    30f1:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    30f8:	00 
    30f9:	48 c7 05 1c 70 00 00 	movq   $0x0,0x701c(%rip)        # a120 <global_error>
    3100:	00 00 00 00 
    3104:	48 c7 05 19 70 00 00 	movq   $0x0,0x7019(%rip)        # a128 <global_error+0x8>
    310b:	00 00 00 00 
    310f:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
    3114:	0f 84 df 00 00 00    	je     31f9 <cJSON_ParseWithLengthOpts+0x143>
    311a:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
    311f:	0f 84 d4 00 00 00    	je     31f9 <cJSON_ParseWithLengthOpts+0x143>
    3125:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    3129:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    312d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    3131:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    3135:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    313c:	00 
    313d:	48 8b 05 6c 6f 00 00 	mov    0x6f6c(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    3144:	48 8b 15 6d 6f 00 00 	mov    0x6f6d(%rip),%rdx        # a0b8 <free@GLIBC_2.2.5>
    314b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    314f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3153:	48 8b 05 66 6f 00 00 	mov    0x6f66(%rip),%rax        # a0c0 <realloc@GLIBC_2.2.5>
    315a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    315e:	48 8d 05 4b 6f 00 00 	lea    0x6f4b(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    3165:	48 89 c7             	mov    %rax,%rdi
    3168:	e8 8a e8 ff ff       	call   19f7 <cJSON_New_Item>
    316d:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    3171:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
    3176:	0f 84 80 00 00 00    	je     31fc <cJSON_ParseWithLengthOpts+0x146>
    317c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    3180:	48 89 c7             	mov    %rax,%rdi
    3183:	e8 46 fe ff ff       	call   2fce <skip_utf8_bom>
    3188:	48 89 c7             	mov    %rax,%rdi
    318b:	e8 7f fd ff ff       	call   2f0f <buffer_skip_whitespace>
    3190:	48 89 c2             	mov    %rax,%rdx
    3193:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    3197:	48 89 d6             	mov    %rdx,%rsi
    319a:	48 89 c7             	mov    %rax,%rdi
    319d:	e8 25 05 00 00       	call   36c7 <parse_value>
    31a2:	85 c0                	test   %eax,%eax
    31a4:	74 59                	je     31ff <cJSON_ParseWithLengthOpts+0x149>
    31a6:	83 7d 84 00          	cmpl   $0x0,-0x7c(%rbp)
    31aa:	74 2b                	je     31d7 <cJSON_ParseWithLengthOpts+0x121>
    31ac:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    31b0:	48 89 c7             	mov    %rax,%rdi
    31b3:	e8 57 fd ff ff       	call   2f0f <buffer_skip_whitespace>
    31b8:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    31bc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    31c0:	48 39 c2             	cmp    %rax,%rdx
    31c3:	73 3d                	jae    3202 <cJSON_ParseWithLengthOpts+0x14c>
    31c5:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    31c9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    31cd:	48 01 d0             	add    %rdx,%rax
    31d0:	0f b6 00             	movzbl (%rax),%eax
    31d3:	84 c0                	test   %al,%al
    31d5:	75 2b                	jne    3202 <cJSON_ParseWithLengthOpts+0x14c>
    31d7:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
    31dc:	74 12                	je     31f0 <cJSON_ParseWithLengthOpts+0x13a>
    31de:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    31e2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    31e6:	48 01 c2             	add    %rax,%rdx
    31e9:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    31ed:	48 89 10             	mov    %rdx,(%rax)
    31f0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    31f4:	e9 94 00 00 00       	jmp    328d <cJSON_ParseWithLengthOpts+0x1d7>
    31f9:	90                   	nop
    31fa:	eb 07                	jmp    3203 <cJSON_ParseWithLengthOpts+0x14d>
    31fc:	90                   	nop
    31fd:	eb 04                	jmp    3203 <cJSON_ParseWithLengthOpts+0x14d>
    31ff:	90                   	nop
    3200:	eb 01                	jmp    3203 <cJSON_ParseWithLengthOpts+0x14d>
    3202:	90                   	nop
    3203:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
    3208:	74 0c                	je     3216 <cJSON_ParseWithLengthOpts+0x160>
    320a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    320e:	48 89 c7             	mov    %rax,%rdi
    3211:	e8 22 e8 ff ff       	call   1a38 <cJSON_Delete>
    3216:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
    321b:	74 6b                	je     3288 <cJSON_ParseWithLengthOpts+0x1d2>
    321d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    3221:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    3225:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    322c:	00 
    322d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3231:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    3235:	48 39 c2             	cmp    %rax,%rdx
    3238:	73 0a                	jae    3244 <cJSON_ParseWithLengthOpts+0x18e>
    323a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    323e:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    3242:	eb 15                	jmp    3259 <cJSON_ParseWithLengthOpts+0x1a3>
    3244:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    3248:	48 85 c0             	test   %rax,%rax
    324b:	74 0c                	je     3259 <cJSON_ParseWithLengthOpts+0x1a3>
    324d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    3251:	48 83 e8 01          	sub    $0x1,%rax
    3255:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    3259:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
    325e:	74 12                	je     3272 <cJSON_ParseWithLengthOpts+0x1bc>
    3260:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    3264:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3268:	48 01 c2             	add    %rax,%rdx
    326b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    326f:	48 89 10             	mov    %rdx,(%rax)
    3272:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    3276:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    327a:	48 89 05 9f 6e 00 00 	mov    %rax,0x6e9f(%rip)        # a120 <global_error>
    3281:	48 89 15 a0 6e 00 00 	mov    %rdx,0x6ea0(%rip)        # a128 <global_error+0x8>
    3288:	b8 00 00 00 00       	mov    $0x0,%eax
    328d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3291:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3298:	00 00 
    329a:	74 05                	je     32a1 <cJSON_ParseWithLengthOpts+0x1eb>
    329c:	e8 ff dd ff ff       	call   10a0 <__stack_chk_fail@plt>
    32a1:	c9                   	leave
    32a2:	c3                   	ret

00000000000032a3 <cJSON_Parse>:
    32a3:	55                   	push   %rbp
    32a4:	48 89 e5             	mov    %rsp,%rbp
    32a7:	48 83 ec 10          	sub    $0x10,%rsp
    32ab:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    32af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    32b3:	ba 00 00 00 00       	mov    $0x0,%edx
    32b8:	be 00 00 00 00       	mov    $0x0,%esi
    32bd:	48 89 c7             	mov    %rax,%rdi
    32c0:	e8 a3 fd ff ff       	call   3068 <cJSON_ParseWithOpts>
    32c5:	c9                   	leave
    32c6:	c3                   	ret

00000000000032c7 <cJSON_ParseWithLength>:
    32c7:	55                   	push   %rbp
    32c8:	48 89 e5             	mov    %rsp,%rbp
    32cb:	48 83 ec 10          	sub    $0x10,%rsp
    32cf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    32d3:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    32d7:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    32db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    32df:	b9 00 00 00 00       	mov    $0x0,%ecx
    32e4:	ba 00 00 00 00       	mov    $0x0,%edx
    32e9:	48 89 c7             	mov    %rax,%rdi
    32ec:	e8 c5 fd ff ff       	call   30b6 <cJSON_ParseWithLengthOpts>
    32f1:	c9                   	leave
    32f2:	c3                   	ret

00000000000032f3 <print>:
    32f3:	55                   	push   %rbp
    32f4:	48 89 e5             	mov    %rsp,%rbp
    32f7:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    32fb:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
    32ff:	89 75 94             	mov    %esi,-0x6c(%rbp)
    3302:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
    3306:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    330d:	00 00 
    330f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3313:	31 c0                	xor    %eax,%eax
    3315:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    331c:	00 
    331d:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    3321:	ba 40 00 00 00       	mov    $0x40,%edx
    3326:	be 00 00 00 00       	mov    $0x0,%esi
    332b:	48 89 c7             	mov    %rax,%rdi
    332e:	e8 8d dd ff ff       	call   10c0 <memset@plt>
    3333:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    3337:	48 8b 10             	mov    (%rax),%rdx
    333a:	48 8b 05 bf 3f 00 00 	mov    0x3fbf(%rip),%rax        # 7300 <default_buffer_size.0>
    3341:	48 89 c7             	mov    %rax,%rdi
    3344:	ff d2                	call   *%rdx
    3346:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    334a:	48 8b 05 af 3f 00 00 	mov    0x3faf(%rip),%rax        # 7300 <default_buffer_size.0>
    3351:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    3355:	8b 45 94             	mov    -0x6c(%rbp),%eax
    3358:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    335b:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
    335f:	48 8b 01             	mov    (%rcx),%rax
    3362:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    3366:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    336a:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    336e:	48 8b 41 10          	mov    0x10(%rcx),%rax
    3372:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3376:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    337a:	48 85 c0             	test   %rax,%rax
    337d:	0f 84 db 00 00 00    	je     345e <print+0x16b>
    3383:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    3387:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    338b:	48 89 d6             	mov    %rdx,%rsi
    338e:	48 89 c7             	mov    %rax,%rdi
    3391:	e8 32 06 00 00       	call   39c8 <print_value>
    3396:	85 c0                	test   %eax,%eax
    3398:	0f 84 c3 00 00 00    	je     3461 <print+0x16e>
    339e:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    33a2:	48 89 c7             	mov    %rax,%rdi
    33a5:	e8 08 ee ff ff       	call   21b2 <update_offset>
    33aa:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    33ae:	48 8b 40 10          	mov    0x10(%rax),%rax
    33b2:	48 85 c0             	test   %rax,%rax
    33b5:	74 35                	je     33ec <print+0xf9>
    33b7:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    33bb:	48 8b 50 10          	mov    0x10(%rax),%rdx
    33bf:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    33c3:	48 8d 48 01          	lea    0x1(%rax),%rcx
    33c7:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    33cb:	48 89 ce             	mov    %rcx,%rsi
    33ce:	48 89 c7             	mov    %rax,%rdi
    33d1:	ff d2                	call   *%rdx
    33d3:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    33d7:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
    33dc:	0f 84 82 00 00 00    	je     3464 <print+0x171>
    33e2:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    33e9:	00 
    33ea:	eb 6c                	jmp    3458 <print+0x165>
    33ec:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    33f0:	48 8b 00             	mov    (%rax),%rax
    33f3:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    33f7:	48 83 c2 01          	add    $0x1,%rdx
    33fb:	48 89 d7             	mov    %rdx,%rdi
    33fe:	ff d0                	call   *%rax
    3400:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    3404:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
    3409:	74 5c                	je     3467 <print+0x174>
    340b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    340f:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3413:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3417:	48 39 c2             	cmp    %rax,%rdx
    341a:	48 0f 47 d0          	cmova  %rax,%rdx
    341e:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    3422:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    3426:	48 89 ce             	mov    %rcx,%rsi
    3429:	48 89 c7             	mov    %rax,%rdi
    342c:	e8 bf dc ff ff       	call   10f0 <memcpy@plt>
    3431:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    3435:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    3439:	48 01 d0             	add    %rdx,%rax
    343c:	c6 00 00             	movb   $0x0,(%rax)
    343f:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    3443:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3447:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    344b:	48 89 c7             	mov    %rax,%rdi
    344e:	ff d2                	call   *%rdx
    3450:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    3457:	00 
    3458:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    345c:	eb 51                	jmp    34af <print+0x1bc>
    345e:	90                   	nop
    345f:	eb 07                	jmp    3468 <print+0x175>
    3461:	90                   	nop
    3462:	eb 04                	jmp    3468 <print+0x175>
    3464:	90                   	nop
    3465:	eb 01                	jmp    3468 <print+0x175>
    3467:	90                   	nop
    3468:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    346c:	48 85 c0             	test   %rax,%rax
    346f:	74 19                	je     348a <print+0x197>
    3471:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    3475:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3479:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    347d:	48 89 c7             	mov    %rax,%rdi
    3480:	ff d2                	call   *%rdx
    3482:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    3489:	00 
    348a:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
    348f:	74 19                	je     34aa <print+0x1b7>
    3491:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    3495:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3499:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    349d:	48 89 c7             	mov    %rax,%rdi
    34a0:	ff d2                	call   *%rdx
    34a2:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    34a9:	00 
    34aa:	b8 00 00 00 00       	mov    $0x0,%eax
    34af:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    34b3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    34ba:	00 00 
    34bc:	74 05                	je     34c3 <print+0x1d0>
    34be:	e8 dd db ff ff       	call   10a0 <__stack_chk_fail@plt>
    34c3:	c9                   	leave
    34c4:	c3                   	ret

00000000000034c5 <cJSON_Print>:
    34c5:	55                   	push   %rbp
    34c6:	48 89 e5             	mov    %rsp,%rbp
    34c9:	48 83 ec 10          	sub    $0x10,%rsp
    34cd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    34d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    34d5:	48 8d 15 d4 6b 00 00 	lea    0x6bd4(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    34dc:	be 01 00 00 00       	mov    $0x1,%esi
    34e1:	48 89 c7             	mov    %rax,%rdi
    34e4:	e8 0a fe ff ff       	call   32f3 <print>
    34e9:	c9                   	leave
    34ea:	c3                   	ret

00000000000034eb <cJSON_PrintUnformatted>:
    34eb:	55                   	push   %rbp
    34ec:	48 89 e5             	mov    %rsp,%rbp
    34ef:	48 83 ec 10          	sub    $0x10,%rsp
    34f3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    34f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    34fb:	48 8d 15 ae 6b 00 00 	lea    0x6bae(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    3502:	be 00 00 00 00       	mov    $0x0,%esi
    3507:	48 89 c7             	mov    %rax,%rdi
    350a:	e8 e4 fd ff ff       	call   32f3 <print>
    350f:	c9                   	leave
    3510:	c3                   	ret

0000000000003511 <cJSON_PrintBuffered>:
    3511:	55                   	push   %rbp
    3512:	48 89 e5             	mov    %rsp,%rbp
    3515:	48 83 ec 60          	sub    $0x60,%rsp
    3519:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    351d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
    3520:	89 55 a0             	mov    %edx,-0x60(%rbp)
    3523:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    352a:	00 00 
    352c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3530:	31 c0                	xor    %eax,%eax
    3532:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3536:	0f 29 45 b0          	movaps %xmm0,-0x50(%rbp)
    353a:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
    353e:	0f 29 45 d0          	movaps %xmm0,-0x30(%rbp)
    3542:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    3546:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
    354a:	79 0a                	jns    3556 <cJSON_PrintBuffered+0x45>
    354c:	b8 00 00 00 00       	mov    $0x0,%eax
    3551:	e9 9e 00 00 00       	jmp    35f4 <cJSON_PrintBuffered+0xe3>
    3556:	48 8b 15 53 6b 00 00 	mov    0x6b53(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    355d:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    3560:	48 98                	cltq
    3562:	48 89 c7             	mov    %rax,%rdi
    3565:	ff d2                	call   *%rdx
    3567:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    356b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    356f:	48 85 c0             	test   %rax,%rax
    3572:	75 07                	jne    357b <cJSON_PrintBuffered+0x6a>
    3574:	b8 00 00 00 00       	mov    $0x0,%eax
    3579:	eb 79                	jmp    35f4 <cJSON_PrintBuffered+0xe3>
    357b:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    357e:	48 98                	cltq
    3580:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    3584:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    358b:	00 
    358c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
    3593:	8b 45 a0             	mov    -0x60(%rbp),%eax
    3596:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    3599:	48 8b 05 10 6b 00 00 	mov    0x6b10(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    35a0:	48 8b 15 11 6b 00 00 	mov    0x6b11(%rip),%rdx        # a0b8 <free@GLIBC_2.2.5>
    35a7:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    35ab:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    35af:	48 8b 05 0a 6b 00 00 	mov    0x6b0a(%rip),%rax        # a0c0 <realloc@GLIBC_2.2.5>
    35b6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    35ba:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    35be:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    35c2:	48 89 d6             	mov    %rdx,%rsi
    35c5:	48 89 c7             	mov    %rax,%rdi
    35c8:	e8 fb 03 00 00       	call   39c8 <print_value>
    35cd:	85 c0                	test   %eax,%eax
    35cf:	75 1f                	jne    35f0 <cJSON_PrintBuffered+0xdf>
    35d1:	48 8b 15 e0 6a 00 00 	mov    0x6ae0(%rip),%rdx        # a0b8 <free@GLIBC_2.2.5>
    35d8:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    35dc:	48 89 c7             	mov    %rax,%rdi
    35df:	ff d2                	call   *%rdx
    35e1:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    35e8:	00 
    35e9:	b8 00 00 00 00       	mov    $0x0,%eax
    35ee:	eb 04                	jmp    35f4 <cJSON_PrintBuffered+0xe3>
    35f0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    35f4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    35f8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    35ff:	00 00 
    3601:	74 05                	je     3608 <cJSON_PrintBuffered+0xf7>
    3603:	e8 98 da ff ff       	call   10a0 <__stack_chk_fail@plt>
    3608:	c9                   	leave
    3609:	c3                   	ret

000000000000360a <cJSON_PrintPreallocated>:
    360a:	55                   	push   %rbp
    360b:	48 89 e5             	mov    %rsp,%rbp
    360e:	48 83 ec 70          	sub    $0x70,%rsp
    3612:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    3616:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    361a:	89 55 9c             	mov    %edx,-0x64(%rbp)
    361d:	89 4d 98             	mov    %ecx,-0x68(%rbp)
    3620:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3627:	00 00 
    3629:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    362d:	31 c0                	xor    %eax,%eax
    362f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3633:	0f 29 45 b0          	movaps %xmm0,-0x50(%rbp)
    3637:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
    363b:	0f 29 45 d0          	movaps %xmm0,-0x30(%rbp)
    363f:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    3643:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
    3647:	78 07                	js     3650 <cJSON_PrintPreallocated+0x46>
    3649:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
    364e:	75 07                	jne    3657 <cJSON_PrintPreallocated+0x4d>
    3650:	b8 00 00 00 00       	mov    $0x0,%eax
    3655:	eb 5a                	jmp    36b1 <cJSON_PrintPreallocated+0xa7>
    3657:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    365b:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    365f:	8b 45 9c             	mov    -0x64(%rbp),%eax
    3662:	48 98                	cltq
    3664:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    3668:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    366f:	00 
    3670:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%rbp)
    3677:	8b 45 98             	mov    -0x68(%rbp),%eax
    367a:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    367d:	48 8b 05 2c 6a 00 00 	mov    0x6a2c(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    3684:	48 8b 15 2d 6a 00 00 	mov    0x6a2d(%rip),%rdx        # a0b8 <free@GLIBC_2.2.5>
    368b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    368f:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    3693:	48 8b 05 26 6a 00 00 	mov    0x6a26(%rip),%rax        # a0c0 <realloc@GLIBC_2.2.5>
    369a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    369e:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    36a2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    36a6:	48 89 d6             	mov    %rdx,%rsi
    36a9:	48 89 c7             	mov    %rax,%rdi
    36ac:	e8 17 03 00 00       	call   39c8 <print_value>
    36b1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    36b5:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    36bc:	00 00 
    36be:	74 05                	je     36c5 <cJSON_PrintPreallocated+0xbb>
    36c0:	e8 db d9 ff ff       	call   10a0 <__stack_chk_fail@plt>
    36c5:	c9                   	leave
    36c6:	c3                   	ret

00000000000036c7 <parse_value>:
    36c7:	55                   	push   %rbp
    36c8:	48 89 e5             	mov    %rsp,%rbp
    36cb:	48 83 ec 10          	sub    $0x10,%rsp
    36cf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    36d3:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    36d7:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    36dc:	74 0c                	je     36ea <parse_value+0x23>
    36de:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    36e2:	48 8b 00             	mov    (%rax),%rax
    36e5:	48 85 c0             	test   %rax,%rax
    36e8:	75 0a                	jne    36f4 <parse_value+0x2d>
    36ea:	b8 00 00 00 00       	mov    $0x0,%eax
    36ef:	e9 d2 02 00 00       	jmp    39c6 <parse_value+0x2ff>
    36f4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    36f9:	74 6f                	je     376a <parse_value+0xa3>
    36fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    36ff:	48 8b 40 10          	mov    0x10(%rax),%rax
    3703:	48 8d 50 04          	lea    0x4(%rax),%rdx
    3707:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    370b:	48 8b 40 08          	mov    0x8(%rax),%rax
    370f:	48 39 d0             	cmp    %rdx,%rax
    3712:	72 56                	jb     376a <parse_value+0xa3>
    3714:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3718:	48 8b 10             	mov    (%rax),%rdx
    371b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    371f:	48 8b 40 10          	mov    0x10(%rax),%rax
    3723:	48 01 d0             	add    %rdx,%rax
    3726:	ba 04 00 00 00       	mov    $0x4,%edx
    372b:	48 8d 0d 37 39 00 00 	lea    0x3937(%rip),%rcx        # 7069 <_IO_stdin_used+0x69>
    3732:	48 89 ce             	mov    %rcx,%rsi
    3735:	48 89 c7             	mov    %rax,%rdi
    3738:	e8 f3 d8 ff ff       	call   1030 <strncmp@plt>
    373d:	85 c0                	test   %eax,%eax
    373f:	75 29                	jne    376a <parse_value+0xa3>
    3741:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3745:	c7 40 18 04 00 00 00 	movl   $0x4,0x18(%rax)
    374c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3750:	48 8b 40 10          	mov    0x10(%rax),%rax
    3754:	48 8d 50 04          	lea    0x4(%rax),%rdx
    3758:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    375c:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3760:	b8 01 00 00 00       	mov    $0x1,%eax
    3765:	e9 5c 02 00 00       	jmp    39c6 <parse_value+0x2ff>
    376a:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    376f:	74 6f                	je     37e0 <parse_value+0x119>
    3771:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3775:	48 8b 40 10          	mov    0x10(%rax),%rax
    3779:	48 8d 50 05          	lea    0x5(%rax),%rdx
    377d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3781:	48 8b 40 08          	mov    0x8(%rax),%rax
    3785:	48 39 d0             	cmp    %rdx,%rax
    3788:	72 56                	jb     37e0 <parse_value+0x119>
    378a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    378e:	48 8b 10             	mov    (%rax),%rdx
    3791:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3795:	48 8b 40 10          	mov    0x10(%rax),%rax
    3799:	48 01 d0             	add    %rdx,%rax
    379c:	ba 05 00 00 00       	mov    $0x5,%edx
    37a1:	48 8d 0d a4 39 00 00 	lea    0x39a4(%rip),%rcx        # 714c <_IO_stdin_used+0x14c>
    37a8:	48 89 ce             	mov    %rcx,%rsi
    37ab:	48 89 c7             	mov    %rax,%rdi
    37ae:	e8 7d d8 ff ff       	call   1030 <strncmp@plt>
    37b3:	85 c0                	test   %eax,%eax
    37b5:	75 29                	jne    37e0 <parse_value+0x119>
    37b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    37bb:	c7 40 18 01 00 00 00 	movl   $0x1,0x18(%rax)
    37c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37c6:	48 8b 40 10          	mov    0x10(%rax),%rax
    37ca:	48 8d 50 05          	lea    0x5(%rax),%rdx
    37ce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37d2:	48 89 50 10          	mov    %rdx,0x10(%rax)
    37d6:	b8 01 00 00 00       	mov    $0x1,%eax
    37db:	e9 e6 01 00 00       	jmp    39c6 <parse_value+0x2ff>
    37e0:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    37e5:	74 7a                	je     3861 <parse_value+0x19a>
    37e7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37eb:	48 8b 40 10          	mov    0x10(%rax),%rax
    37ef:	48 8d 50 04          	lea    0x4(%rax),%rdx
    37f3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37f7:	48 8b 40 08          	mov    0x8(%rax),%rax
    37fb:	48 39 d0             	cmp    %rdx,%rax
    37fe:	72 61                	jb     3861 <parse_value+0x19a>
    3800:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3804:	48 8b 10             	mov    (%rax),%rdx
    3807:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    380b:	48 8b 40 10          	mov    0x10(%rax),%rax
    380f:	48 01 d0             	add    %rdx,%rax
    3812:	ba 04 00 00 00       	mov    $0x4,%edx
    3817:	48 8d 0d 34 39 00 00 	lea    0x3934(%rip),%rcx        # 7152 <_IO_stdin_used+0x152>
    381e:	48 89 ce             	mov    %rcx,%rsi
    3821:	48 89 c7             	mov    %rax,%rdi
    3824:	e8 07 d8 ff ff       	call   1030 <strncmp@plt>
    3829:	85 c0                	test   %eax,%eax
    382b:	75 34                	jne    3861 <parse_value+0x19a>
    382d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3831:	c7 40 18 02 00 00 00 	movl   $0x2,0x18(%rax)
    3838:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    383c:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%rax)
    3843:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3847:	48 8b 40 10          	mov    0x10(%rax),%rax
    384b:	48 8d 50 04          	lea    0x4(%rax),%rdx
    384f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3853:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3857:	b8 01 00 00 00       	mov    $0x1,%eax
    385c:	e9 65 01 00 00       	jmp    39c6 <parse_value+0x2ff>
    3861:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    3866:	74 46                	je     38ae <parse_value+0x1e7>
    3868:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    386c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    3870:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3874:	48 8b 40 08          	mov    0x8(%rax),%rax
    3878:	48 39 c2             	cmp    %rax,%rdx
    387b:	73 31                	jae    38ae <parse_value+0x1e7>
    387d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3881:	48 8b 10             	mov    (%rax),%rdx
    3884:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3888:	48 8b 40 10          	mov    0x10(%rax),%rax
    388c:	48 01 d0             	add    %rdx,%rax
    388f:	0f b6 00             	movzbl (%rax),%eax
    3892:	3c 22                	cmp    $0x22,%al
    3894:	75 18                	jne    38ae <parse_value+0x1e7>
    3896:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    389a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    389e:	48 89 d6             	mov    %rdx,%rsi
    38a1:	48 89 c7             	mov    %rax,%rdi
    38a4:	e8 bd ef ff ff       	call   2866 <parse_string>
    38a9:	e9 18 01 00 00       	jmp    39c6 <parse_value+0x2ff>
    38ae:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    38b3:	74 78                	je     392d <parse_value+0x266>
    38b5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38b9:	48 8b 50 10          	mov    0x10(%rax),%rdx
    38bd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38c1:	48 8b 40 08          	mov    0x8(%rax),%rax
    38c5:	48 39 c2             	cmp    %rax,%rdx
    38c8:	73 63                	jae    392d <parse_value+0x266>
    38ca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38ce:	48 8b 10             	mov    (%rax),%rdx
    38d1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38d5:	48 8b 40 10          	mov    0x10(%rax),%rax
    38d9:	48 01 d0             	add    %rdx,%rax
    38dc:	0f b6 00             	movzbl (%rax),%eax
    38df:	3c 2d                	cmp    $0x2d,%al
    38e1:	74 32                	je     3915 <parse_value+0x24e>
    38e3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38e7:	48 8b 10             	mov    (%rax),%rdx
    38ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38ee:	48 8b 40 10          	mov    0x10(%rax),%rax
    38f2:	48 01 d0             	add    %rdx,%rax
    38f5:	0f b6 00             	movzbl (%rax),%eax
    38f8:	3c 2f                	cmp    $0x2f,%al
    38fa:	76 31                	jbe    392d <parse_value+0x266>
    38fc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3900:	48 8b 10             	mov    (%rax),%rdx
    3903:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3907:	48 8b 40 10          	mov    0x10(%rax),%rax
    390b:	48 01 d0             	add    %rdx,%rax
    390e:	0f b6 00             	movzbl (%rax),%eax
    3911:	3c 39                	cmp    $0x39,%al
    3913:	77 18                	ja     392d <parse_value+0x266>
    3915:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3919:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    391d:	48 89 d6             	mov    %rdx,%rsi
    3920:	48 89 c7             	mov    %rax,%rdi
    3923:	e8 0d e2 ff ff       	call   1b35 <parse_number>
    3928:	e9 99 00 00 00       	jmp    39c6 <parse_value+0x2ff>
    392d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    3932:	74 43                	je     3977 <parse_value+0x2b0>
    3934:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3938:	48 8b 50 10          	mov    0x10(%rax),%rdx
    393c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3940:	48 8b 40 08          	mov    0x8(%rax),%rax
    3944:	48 39 c2             	cmp    %rax,%rdx
    3947:	73 2e                	jae    3977 <parse_value+0x2b0>
    3949:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    394d:	48 8b 10             	mov    (%rax),%rdx
    3950:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3954:	48 8b 40 10          	mov    0x10(%rax),%rax
    3958:	48 01 d0             	add    %rdx,%rax
    395b:	0f b6 00             	movzbl (%rax),%eax
    395e:	3c 5b                	cmp    $0x5b,%al
    3960:	75 15                	jne    3977 <parse_value+0x2b0>
    3962:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3966:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    396a:	48 89 d6             	mov    %rdx,%rsi
    396d:	48 89 c7             	mov    %rax,%rdi
    3970:	e8 81 02 00 00       	call   3bf6 <parse_array>
    3975:	eb 4f                	jmp    39c6 <parse_value+0x2ff>
    3977:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    397c:	74 43                	je     39c1 <parse_value+0x2fa>
    397e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3982:	48 8b 50 10          	mov    0x10(%rax),%rdx
    3986:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    398a:	48 8b 40 08          	mov    0x8(%rax),%rax
    398e:	48 39 c2             	cmp    %rax,%rdx
    3991:	73 2e                	jae    39c1 <parse_value+0x2fa>
    3993:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3997:	48 8b 10             	mov    (%rax),%rdx
    399a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    399e:	48 8b 40 10          	mov    0x10(%rax),%rax
    39a2:	48 01 d0             	add    %rdx,%rax
    39a5:	0f b6 00             	movzbl (%rax),%eax
    39a8:	3c 7b                	cmp    $0x7b,%al
    39aa:	75 15                	jne    39c1 <parse_value+0x2fa>
    39ac:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    39b0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    39b4:	48 89 d6             	mov    %rdx,%rsi
    39b7:	48 89 c7             	mov    %rax,%rdi
    39ba:	e8 ba 06 00 00       	call   4079 <parse_object>
    39bf:	eb 05                	jmp    39c6 <parse_value+0x2ff>
    39c1:	b8 00 00 00 00       	mov    $0x0,%eax
    39c6:	c9                   	leave
    39c7:	c3                   	ret

00000000000039c8 <print_value>:
    39c8:	55                   	push   %rbp
    39c9:	48 89 e5             	mov    %rsp,%rbp
    39cc:	48 83 ec 20          	sub    $0x20,%rsp
    39d0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    39d4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    39d8:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    39df:	00 
    39e0:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    39e5:	74 07                	je     39ee <print_value+0x26>
    39e7:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    39ec:	75 0a                	jne    39f8 <print_value+0x30>
    39ee:	b8 00 00 00 00       	mov    $0x0,%eax
    39f3:	e9 fc 01 00 00       	jmp    3bf4 <print_value+0x22c>
    39f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    39fc:	8b 40 18             	mov    0x18(%rax),%eax
    39ff:	0f b6 c0             	movzbl %al,%eax
    3a02:	3d 80 00 00 00       	cmp    $0x80,%eax
    3a07:	0f 84 25 01 00 00    	je     3b32 <print_value+0x16a>
    3a0d:	3d 80 00 00 00       	cmp    $0x80,%eax
    3a12:	0f 8f d7 01 00 00    	jg     3bef <print_value+0x227>
    3a18:	83 f8 20             	cmp    $0x20,%eax
    3a1b:	7f 33                	jg     3a50 <print_value+0x88>
    3a1d:	85 c0                	test   %eax,%eax
    3a1f:	0f 8e ca 01 00 00    	jle    3bef <print_value+0x227>
    3a25:	83 f8 20             	cmp    $0x20,%eax
    3a28:	0f 87 c1 01 00 00    	ja     3bef <print_value+0x227>
    3a2e:	89 c0                	mov    %eax,%eax
    3a30:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    3a37:	00 
    3a38:	48 8d 05 19 37 00 00 	lea    0x3719(%rip),%rax        # 7158 <_IO_stdin_used+0x158>
    3a3f:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    3a42:	48 98                	cltq
    3a44:	48 8d 15 0d 37 00 00 	lea    0x370d(%rip),%rdx        # 7158 <_IO_stdin_used+0x158>
    3a4b:	48 01 d0             	add    %rdx,%rax
    3a4e:	ff e0                	jmp    *%rax
    3a50:	83 f8 40             	cmp    $0x40,%eax
    3a53:	0f 84 81 01 00 00    	je     3bda <print_value+0x212>
    3a59:	e9 91 01 00 00       	jmp    3bef <print_value+0x227>
    3a5e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3a62:	be 05 00 00 00       	mov    $0x5,%esi
    3a67:	48 89 c7             	mov    %rax,%rdi
    3a6a:	e8 28 e5 ff ff       	call   1f97 <ensure>
    3a6f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3a73:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    3a78:	75 0a                	jne    3a84 <print_value+0xbc>
    3a7a:	b8 00 00 00 00       	mov    $0x0,%eax
    3a7f:	e9 70 01 00 00       	jmp    3bf4 <print_value+0x22c>
    3a84:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3a88:	c7 00 6e 75 6c 6c    	movl   $0x6c6c756e,(%rax)
    3a8e:	c6 40 04 00          	movb   $0x0,0x4(%rax)
    3a92:	b8 01 00 00 00       	mov    $0x1,%eax
    3a97:	e9 58 01 00 00       	jmp    3bf4 <print_value+0x22c>
    3a9c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3aa0:	be 06 00 00 00       	mov    $0x6,%esi
    3aa5:	48 89 c7             	mov    %rax,%rdi
    3aa8:	e8 ea e4 ff ff       	call   1f97 <ensure>
    3aad:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3ab1:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    3ab6:	75 0a                	jne    3ac2 <print_value+0xfa>
    3ab8:	b8 00 00 00 00       	mov    $0x0,%eax
    3abd:	e9 32 01 00 00       	jmp    3bf4 <print_value+0x22c>
    3ac2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3ac6:	c7 00 66 61 6c 73    	movl   $0x736c6166,(%rax)
    3acc:	66 c7 40 04 65 00    	movw   $0x65,0x4(%rax)
    3ad2:	b8 01 00 00 00       	mov    $0x1,%eax
    3ad7:	e9 18 01 00 00       	jmp    3bf4 <print_value+0x22c>
    3adc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3ae0:	be 05 00 00 00       	mov    $0x5,%esi
    3ae5:	48 89 c7             	mov    %rax,%rdi
    3ae8:	e8 aa e4 ff ff       	call   1f97 <ensure>
    3aed:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3af1:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    3af6:	75 0a                	jne    3b02 <print_value+0x13a>
    3af8:	b8 00 00 00 00       	mov    $0x0,%eax
    3afd:	e9 f2 00 00 00       	jmp    3bf4 <print_value+0x22c>
    3b02:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3b06:	c7 00 74 72 75 65    	movl   $0x65757274,(%rax)
    3b0c:	c6 40 04 00          	movb   $0x0,0x4(%rax)
    3b10:	b8 01 00 00 00       	mov    $0x1,%eax
    3b15:	e9 da 00 00 00       	jmp    3bf4 <print_value+0x22c>
    3b1a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    3b1e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3b22:	48 89 d6             	mov    %rdx,%rsi
    3b25:	48 89 c7             	mov    %rax,%rdi
    3b28:	e8 7e e7 ff ff       	call   22ab <print_number>
    3b2d:	e9 c2 00 00 00       	jmp    3bf4 <print_value+0x22c>
    3b32:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    3b39:	00 
    3b3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3b3e:	48 8b 40 20          	mov    0x20(%rax),%rax
    3b42:	48 85 c0             	test   %rax,%rax
    3b45:	75 0a                	jne    3b51 <print_value+0x189>
    3b47:	b8 00 00 00 00       	mov    $0x0,%eax
    3b4c:	e9 a3 00 00 00       	jmp    3bf4 <print_value+0x22c>
    3b51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3b55:	48 8b 40 20          	mov    0x20(%rax),%rax
    3b59:	48 89 c7             	mov    %rax,%rdi
    3b5c:	e8 2f d5 ff ff       	call   1090 <strlen@plt>
    3b61:	48 83 c0 01          	add    $0x1,%rax
    3b65:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3b69:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3b6d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3b71:	48 89 d6             	mov    %rdx,%rsi
    3b74:	48 89 c7             	mov    %rax,%rdi
    3b77:	e8 1b e4 ff ff       	call   1f97 <ensure>
    3b7c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3b80:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    3b85:	75 07                	jne    3b8e <print_value+0x1c6>
    3b87:	b8 00 00 00 00       	mov    $0x0,%eax
    3b8c:	eb 66                	jmp    3bf4 <print_value+0x22c>
    3b8e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3b92:	48 8b 48 20          	mov    0x20(%rax),%rcx
    3b96:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3b9a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3b9e:	48 89 ce             	mov    %rcx,%rsi
    3ba1:	48 89 c7             	mov    %rax,%rdi
    3ba4:	e8 47 d5 ff ff       	call   10f0 <memcpy@plt>
    3ba9:	b8 01 00 00 00       	mov    $0x1,%eax
    3bae:	eb 44                	jmp    3bf4 <print_value+0x22c>
    3bb0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    3bb4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3bb8:	48 89 d6             	mov    %rdx,%rsi
    3bbb:	48 89 c7             	mov    %rax,%rdi
    3bbe:	e8 23 f3 ff ff       	call   2ee6 <print_string>
    3bc3:	eb 2f                	jmp    3bf4 <print_value+0x22c>
    3bc5:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    3bc9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3bcd:	48 89 d6             	mov    %rdx,%rsi
    3bd0:	48 89 c7             	mov    %rax,%rdi
    3bd3:	e8 bb 02 00 00       	call   3e93 <print_array>
    3bd8:	eb 1a                	jmp    3bf4 <print_value+0x22c>
    3bda:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    3bde:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3be2:	48 89 d6             	mov    %rdx,%rsi
    3be5:	48 89 c7             	mov    %rax,%rdi
    3be8:	e8 26 08 00 00       	call   4413 <print_object>
    3bed:	eb 05                	jmp    3bf4 <print_value+0x22c>
    3bef:	b8 00 00 00 00       	mov    $0x0,%eax
    3bf4:	c9                   	leave
    3bf5:	c3                   	ret

0000000000003bf6 <parse_array>:
    3bf6:	55                   	push   %rbp
    3bf7:	48 89 e5             	mov    %rsp,%rbp
    3bfa:	48 83 ec 30          	sub    $0x30,%rsp
    3bfe:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3c02:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    3c06:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    3c0d:	00 
    3c0e:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    3c15:	00 
    3c16:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c1a:	48 8b 40 18          	mov    0x18(%rax),%rax
    3c1e:	48 3d e7 03 00 00    	cmp    $0x3e7,%rax
    3c24:	76 0a                	jbe    3c30 <parse_array+0x3a>
    3c26:	b8 00 00 00 00       	mov    $0x0,%eax
    3c2b:	e9 61 02 00 00       	jmp    3e91 <parse_array+0x29b>
    3c30:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c34:	48 8b 40 18          	mov    0x18(%rax),%rax
    3c38:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3c3c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c40:	48 89 50 18          	mov    %rdx,0x18(%rax)
    3c44:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c48:	48 8b 10             	mov    (%rax),%rdx
    3c4b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c4f:	48 8b 40 10          	mov    0x10(%rax),%rax
    3c53:	48 01 d0             	add    %rdx,%rax
    3c56:	0f b6 00             	movzbl (%rax),%eax
    3c59:	3c 5b                	cmp    $0x5b,%al
    3c5b:	0f 85 0e 02 00 00    	jne    3e6f <parse_array+0x279>
    3c61:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c65:	48 8b 40 10          	mov    0x10(%rax),%rax
    3c69:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3c6d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c71:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3c75:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c79:	48 89 c7             	mov    %rax,%rdi
    3c7c:	e8 8e f2 ff ff       	call   2f0f <buffer_skip_whitespace>
    3c81:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    3c86:	74 32                	je     3cba <parse_array+0xc4>
    3c88:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c8c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    3c90:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3c94:	48 8b 40 08          	mov    0x8(%rax),%rax
    3c98:	48 39 c2             	cmp    %rax,%rdx
    3c9b:	73 1d                	jae    3cba <parse_array+0xc4>
    3c9d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3ca1:	48 8b 10             	mov    (%rax),%rdx
    3ca4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3ca8:	48 8b 40 10          	mov    0x10(%rax),%rax
    3cac:	48 01 d0             	add    %rdx,%rax
    3caf:	0f b6 00             	movzbl (%rax),%eax
    3cb2:	3c 5d                	cmp    $0x5d,%al
    3cb4:	0f 84 5b 01 00 00    	je     3e15 <parse_array+0x21f>
    3cba:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    3cbf:	74 15                	je     3cd6 <parse_array+0xe0>
    3cc1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3cc5:	48 8b 50 10          	mov    0x10(%rax),%rdx
    3cc9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3ccd:	48 8b 40 08          	mov    0x8(%rax),%rax
    3cd1:	48 39 c2             	cmp    %rax,%rdx
    3cd4:	72 19                	jb     3cef <parse_array+0xf9>
    3cd6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3cda:	48 8b 40 10          	mov    0x10(%rax),%rax
    3cde:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    3ce2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3ce6:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3cea:	e9 8a 01 00 00       	jmp    3e79 <parse_array+0x283>
    3cef:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3cf3:	48 8b 40 10          	mov    0x10(%rax),%rax
    3cf7:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    3cfb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3cff:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3d03:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3d07:	48 83 c0 20          	add    $0x20,%rax
    3d0b:	48 89 c7             	mov    %rax,%rdi
    3d0e:	e8 e4 dc ff ff       	call   19f7 <cJSON_New_Item>
    3d13:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3d17:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    3d1c:	0f 84 50 01 00 00    	je     3e72 <parse_array+0x27c>
    3d22:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3d27:	75 12                	jne    3d3b <parse_array+0x145>
    3d29:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d2d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3d31:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3d35:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3d39:	eb 1f                	jmp    3d5a <parse_array+0x164>
    3d3b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3d3f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3d43:	48 89 10             	mov    %rdx,(%rax)
    3d46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d4a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3d4e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    3d52:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d56:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3d5a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3d5e:	48 8b 40 10          	mov    0x10(%rax),%rax
    3d62:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3d66:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3d6a:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3d6e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3d72:	48 89 c7             	mov    %rax,%rdi
    3d75:	e8 95 f1 ff ff       	call   2f0f <buffer_skip_whitespace>
    3d7a:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3d7e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3d82:	48 89 d6             	mov    %rdx,%rsi
    3d85:	48 89 c7             	mov    %rax,%rdi
    3d88:	e8 3a f9 ff ff       	call   36c7 <parse_value>
    3d8d:	85 c0                	test   %eax,%eax
    3d8f:	0f 84 e0 00 00 00    	je     3e75 <parse_array+0x27f>
    3d95:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3d99:	48 89 c7             	mov    %rax,%rdi
    3d9c:	e8 6e f1 ff ff       	call   2f0f <buffer_skip_whitespace>
    3da1:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    3da6:	74 32                	je     3dda <parse_array+0x1e4>
    3da8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3dac:	48 8b 50 10          	mov    0x10(%rax),%rdx
    3db0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3db4:	48 8b 40 08          	mov    0x8(%rax),%rax
    3db8:	48 39 c2             	cmp    %rax,%rdx
    3dbb:	73 1d                	jae    3dda <parse_array+0x1e4>
    3dbd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3dc1:	48 8b 10             	mov    (%rax),%rdx
    3dc4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3dc8:	48 8b 40 10          	mov    0x10(%rax),%rax
    3dcc:	48 01 d0             	add    %rdx,%rax
    3dcf:	0f b6 00             	movzbl (%rax),%eax
    3dd2:	3c 2c                	cmp    $0x2c,%al
    3dd4:	0f 84 29 ff ff ff    	je     3d03 <parse_array+0x10d>
    3dda:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    3ddf:	0f 84 93 00 00 00    	je     3e78 <parse_array+0x282>
    3de5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3de9:	48 8b 50 10          	mov    0x10(%rax),%rdx
    3ded:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3df1:	48 8b 40 08          	mov    0x8(%rax),%rax
    3df5:	48 39 c2             	cmp    %rax,%rdx
    3df8:	73 7e                	jae    3e78 <parse_array+0x282>
    3dfa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3dfe:	48 8b 10             	mov    (%rax),%rdx
    3e01:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3e05:	48 8b 40 10          	mov    0x10(%rax),%rax
    3e09:	48 01 d0             	add    %rdx,%rax
    3e0c:	0f b6 00             	movzbl (%rax),%eax
    3e0f:	3c 5d                	cmp    $0x5d,%al
    3e11:	75 65                	jne    3e78 <parse_array+0x282>
    3e13:	eb 01                	jmp    3e16 <parse_array+0x220>
    3e15:	90                   	nop
    3e16:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3e1a:	48 8b 40 18          	mov    0x18(%rax),%rax
    3e1e:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    3e22:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3e26:	48 89 50 18          	mov    %rdx,0x18(%rax)
    3e2a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3e2f:	74 0c                	je     3e3d <parse_array+0x247>
    3e31:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3e35:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3e39:	48 89 50 08          	mov    %rdx,0x8(%rax)
    3e3d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3e41:	c7 40 18 20 00 00 00 	movl   $0x20,0x18(%rax)
    3e48:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3e4c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3e50:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3e54:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3e58:	48 8b 40 10          	mov    0x10(%rax),%rax
    3e5c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3e60:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3e64:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3e68:	b8 01 00 00 00       	mov    $0x1,%eax
    3e6d:	eb 22                	jmp    3e91 <parse_array+0x29b>
    3e6f:	90                   	nop
    3e70:	eb 07                	jmp    3e79 <parse_array+0x283>
    3e72:	90                   	nop
    3e73:	eb 04                	jmp    3e79 <parse_array+0x283>
    3e75:	90                   	nop
    3e76:	eb 01                	jmp    3e79 <parse_array+0x283>
    3e78:	90                   	nop
    3e79:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3e7e:	74 0c                	je     3e8c <parse_array+0x296>
    3e80:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3e84:	48 89 c7             	mov    %rax,%rdi
    3e87:	e8 ac db ff ff       	call   1a38 <cJSON_Delete>
    3e8c:	b8 00 00 00 00       	mov    $0x0,%eax
    3e91:	c9                   	leave
    3e92:	c3                   	ret

0000000000003e93 <print_array>:
    3e93:	55                   	push   %rbp
    3e94:	48 89 e5             	mov    %rsp,%rbp
    3e97:	48 83 ec 30          	sub    $0x30,%rsp
    3e9b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3e9f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    3ea3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    3eaa:	00 
    3eab:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    3eb2:	00 
    3eb3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3eb7:	48 8b 40 10          	mov    0x10(%rax),%rax
    3ebb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3ebf:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    3ec4:	75 0a                	jne    3ed0 <print_array+0x3d>
    3ec6:	b8 00 00 00 00       	mov    $0x0,%eax
    3ecb:	e9 a7 01 00 00       	jmp    4077 <print_array+0x1e4>
    3ed0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3ed4:	48 8b 40 18          	mov    0x18(%rax),%rax
    3ed8:	48 3d e7 03 00 00    	cmp    $0x3e7,%rax
    3ede:	76 0a                	jbe    3eea <print_array+0x57>
    3ee0:	b8 00 00 00 00       	mov    $0x0,%eax
    3ee5:	e9 8d 01 00 00       	jmp    4077 <print_array+0x1e4>
    3eea:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3eee:	be 01 00 00 00       	mov    $0x1,%esi
    3ef3:	48 89 c7             	mov    %rax,%rdi
    3ef6:	e8 9c e0 ff ff       	call   1f97 <ensure>
    3efb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3eff:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3f04:	75 0a                	jne    3f10 <print_array+0x7d>
    3f06:	b8 00 00 00 00       	mov    $0x0,%eax
    3f0b:	e9 67 01 00 00       	jmp    4077 <print_array+0x1e4>
    3f10:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3f14:	c6 00 5b             	movb   $0x5b,(%rax)
    3f17:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3f1b:	48 8b 40 10          	mov    0x10(%rax),%rax
    3f1f:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3f23:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3f27:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3f2b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3f2f:	48 8b 40 18          	mov    0x18(%rax),%rax
    3f33:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3f37:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3f3b:	48 89 50 18          	mov    %rdx,0x18(%rax)
    3f3f:	e9 d6 00 00 00       	jmp    401a <print_array+0x187>
    3f44:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3f48:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3f4c:	48 89 d6             	mov    %rdx,%rsi
    3f4f:	48 89 c7             	mov    %rax,%rdi
    3f52:	e8 71 fa ff ff       	call   39c8 <print_value>
    3f57:	85 c0                	test   %eax,%eax
    3f59:	75 0a                	jne    3f65 <print_array+0xd2>
    3f5b:	b8 00 00 00 00       	mov    $0x0,%eax
    3f60:	e9 12 01 00 00       	jmp    4077 <print_array+0x1e4>
    3f65:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3f69:	48 89 c7             	mov    %rax,%rdi
    3f6c:	e8 41 e2 ff ff       	call   21b2 <update_offset>
    3f71:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3f75:	48 8b 00             	mov    (%rax),%rax
    3f78:	48 85 c0             	test   %rax,%rax
    3f7b:	0f 84 8e 00 00 00    	je     400f <print_array+0x17c>
    3f81:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3f85:	8b 40 24             	mov    0x24(%rax),%eax
    3f88:	85 c0                	test   %eax,%eax
    3f8a:	74 07                	je     3f93 <print_array+0x100>
    3f8c:	b8 02 00 00 00       	mov    $0x2,%eax
    3f91:	eb 05                	jmp    3f98 <print_array+0x105>
    3f93:	b8 01 00 00 00       	mov    $0x1,%eax
    3f98:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3f9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fa0:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3fa4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3fa8:	48 89 d6             	mov    %rdx,%rsi
    3fab:	48 89 c7             	mov    %rax,%rdi
    3fae:	e8 e4 df ff ff       	call   1f97 <ensure>
    3fb3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3fb7:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3fbc:	75 0a                	jne    3fc8 <print_array+0x135>
    3fbe:	b8 00 00 00 00       	mov    $0x0,%eax
    3fc3:	e9 af 00 00 00       	jmp    4077 <print_array+0x1e4>
    3fc8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3fcc:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3fd0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3fd4:	c6 00 2c             	movb   $0x2c,(%rax)
    3fd7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3fdb:	8b 40 24             	mov    0x24(%rax),%eax
    3fde:	85 c0                	test   %eax,%eax
    3fe0:	74 0f                	je     3ff1 <print_array+0x15e>
    3fe2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3fe6:	48 8d 50 01          	lea    0x1(%rax),%rdx
    3fea:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3fee:	c6 00 20             	movb   $0x20,(%rax)
    3ff1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3ff5:	c6 00 00             	movb   $0x0,(%rax)
    3ff8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3ffc:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4000:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4004:	48 01 c2             	add    %rax,%rdx
    4007:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    400b:	48 89 50 10          	mov    %rdx,0x10(%rax)
    400f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4013:	48 8b 00             	mov    (%rax),%rax
    4016:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    401a:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    401f:	0f 85 1f ff ff ff    	jne    3f44 <print_array+0xb1>
    4025:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4029:	be 02 00 00 00       	mov    $0x2,%esi
    402e:	48 89 c7             	mov    %rax,%rdi
    4031:	e8 61 df ff ff       	call   1f97 <ensure>
    4036:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    403a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    403f:	75 07                	jne    4048 <print_array+0x1b5>
    4041:	b8 00 00 00 00       	mov    $0x0,%eax
    4046:	eb 2f                	jmp    4077 <print_array+0x1e4>
    4048:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    404c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4050:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    4054:	c6 00 5d             	movb   $0x5d,(%rax)
    4057:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    405b:	c6 00 00             	movb   $0x0,(%rax)
    405e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4062:	48 8b 40 18          	mov    0x18(%rax),%rax
    4066:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    406a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    406e:	48 89 50 18          	mov    %rdx,0x18(%rax)
    4072:	b8 01 00 00 00       	mov    $0x1,%eax
    4077:	c9                   	leave
    4078:	c3                   	ret

0000000000004079 <parse_object>:
    4079:	55                   	push   %rbp
    407a:	48 89 e5             	mov    %rsp,%rbp
    407d:	48 83 ec 30          	sub    $0x30,%rsp
    4081:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4085:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4089:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    4090:	00 
    4091:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    4098:	00 
    4099:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    409d:	48 8b 40 18          	mov    0x18(%rax),%rax
    40a1:	48 3d e7 03 00 00    	cmp    $0x3e7,%rax
    40a7:	76 0a                	jbe    40b3 <parse_object+0x3a>
    40a9:	b8 00 00 00 00       	mov    $0x0,%eax
    40ae:	e9 5e 03 00 00       	jmp    4411 <parse_object+0x398>
    40b3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    40b7:	48 8b 40 18          	mov    0x18(%rax),%rax
    40bb:	48 8d 50 01          	lea    0x1(%rax),%rdx
    40bf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    40c3:	48 89 50 18          	mov    %rdx,0x18(%rax)
    40c7:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    40cc:	0f 84 14 03 00 00    	je     43e6 <parse_object+0x36d>
    40d2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    40d6:	48 8b 50 10          	mov    0x10(%rax),%rdx
    40da:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    40de:	48 8b 40 08          	mov    0x8(%rax),%rax
    40e2:	48 39 c2             	cmp    %rax,%rdx
    40e5:	0f 83 fb 02 00 00    	jae    43e6 <parse_object+0x36d>
    40eb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    40ef:	48 8b 10             	mov    (%rax),%rdx
    40f2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    40f6:	48 8b 40 10          	mov    0x10(%rax),%rax
    40fa:	48 01 d0             	add    %rdx,%rax
    40fd:	0f b6 00             	movzbl (%rax),%eax
    4100:	3c 7b                	cmp    $0x7b,%al
    4102:	0f 85 de 02 00 00    	jne    43e6 <parse_object+0x36d>
    4108:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    410c:	48 8b 40 10          	mov    0x10(%rax),%rax
    4110:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4114:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4118:	48 89 50 10          	mov    %rdx,0x10(%rax)
    411c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4120:	48 89 c7             	mov    %rax,%rdi
    4123:	e8 e7 ed ff ff       	call   2f0f <buffer_skip_whitespace>
    4128:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    412d:	74 32                	je     4161 <parse_object+0xe8>
    412f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4133:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4137:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    413b:	48 8b 40 08          	mov    0x8(%rax),%rax
    413f:	48 39 c2             	cmp    %rax,%rdx
    4142:	73 1d                	jae    4161 <parse_object+0xe8>
    4144:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4148:	48 8b 10             	mov    (%rax),%rdx
    414b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    414f:	48 8b 40 10          	mov    0x10(%rax),%rax
    4153:	48 01 d0             	add    %rdx,%rax
    4156:	0f b6 00             	movzbl (%rax),%eax
    4159:	3c 7d                	cmp    $0x7d,%al
    415b:	0f 84 2b 02 00 00    	je     438c <parse_object+0x313>
    4161:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    4166:	74 15                	je     417d <parse_object+0x104>
    4168:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    416c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4170:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4174:	48 8b 40 08          	mov    0x8(%rax),%rax
    4178:	48 39 c2             	cmp    %rax,%rdx
    417b:	72 19                	jb     4196 <parse_object+0x11d>
    417d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4181:	48 8b 40 10          	mov    0x10(%rax),%rax
    4185:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    4189:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    418d:	48 89 50 10          	mov    %rdx,0x10(%rax)
    4191:	e9 63 02 00 00       	jmp    43f9 <parse_object+0x380>
    4196:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    419a:	48 8b 40 10          	mov    0x10(%rax),%rax
    419e:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    41a2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    41a6:	48 89 50 10          	mov    %rdx,0x10(%rax)
    41aa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    41ae:	48 83 c0 20          	add    $0x20,%rax
    41b2:	48 89 c7             	mov    %rax,%rdi
    41b5:	e8 3d d8 ff ff       	call   19f7 <cJSON_New_Item>
    41ba:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    41be:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    41c3:	0f 84 20 02 00 00    	je     43e9 <parse_object+0x370>
    41c9:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    41ce:	75 12                	jne    41e2 <parse_object+0x169>
    41d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    41d4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    41d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    41dc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    41e0:	eb 1f                	jmp    4201 <parse_object+0x188>
    41e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    41e6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    41ea:	48 89 10             	mov    %rdx,(%rax)
    41ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    41f1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    41f5:	48 89 50 08          	mov    %rdx,0x8(%rax)
    41f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    41fd:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4201:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    4206:	0f 84 e0 01 00 00    	je     43ec <parse_object+0x373>
    420c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4210:	48 8b 40 10          	mov    0x10(%rax),%rax
    4214:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4218:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    421c:	48 8b 40 08          	mov    0x8(%rax),%rax
    4220:	48 39 c2             	cmp    %rax,%rdx
    4223:	0f 83 c3 01 00 00    	jae    43ec <parse_object+0x373>
    4229:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    422d:	48 8b 40 10          	mov    0x10(%rax),%rax
    4231:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4235:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4239:	48 89 50 10          	mov    %rdx,0x10(%rax)
    423d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4241:	48 89 c7             	mov    %rax,%rdi
    4244:	e8 c6 ec ff ff       	call   2f0f <buffer_skip_whitespace>
    4249:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    424d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4251:	48 89 d6             	mov    %rdx,%rsi
    4254:	48 89 c7             	mov    %rax,%rdi
    4257:	e8 0a e6 ff ff       	call   2866 <parse_string>
    425c:	85 c0                	test   %eax,%eax
    425e:	0f 84 8b 01 00 00    	je     43ef <parse_object+0x376>
    4264:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4268:	48 89 c7             	mov    %rax,%rdi
    426b:	e8 9f ec ff ff       	call   2f0f <buffer_skip_whitespace>
    4270:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4274:	48 8b 50 20          	mov    0x20(%rax),%rdx
    4278:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    427c:	48 89 50 38          	mov    %rdx,0x38(%rax)
    4280:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4284:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
    428b:	00 
    428c:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    4291:	0f 84 5b 01 00 00    	je     43f2 <parse_object+0x379>
    4297:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    429b:	48 8b 50 10          	mov    0x10(%rax),%rdx
    429f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    42a3:	48 8b 40 08          	mov    0x8(%rax),%rax
    42a7:	48 39 c2             	cmp    %rax,%rdx
    42aa:	0f 83 42 01 00 00    	jae    43f2 <parse_object+0x379>
    42b0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    42b4:	48 8b 10             	mov    (%rax),%rdx
    42b7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    42bb:	48 8b 40 10          	mov    0x10(%rax),%rax
    42bf:	48 01 d0             	add    %rdx,%rax
    42c2:	0f b6 00             	movzbl (%rax),%eax
    42c5:	3c 3a                	cmp    $0x3a,%al
    42c7:	0f 85 25 01 00 00    	jne    43f2 <parse_object+0x379>
    42cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    42d1:	48 8b 40 10          	mov    0x10(%rax),%rax
    42d5:	48 8d 50 01          	lea    0x1(%rax),%rdx
    42d9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    42dd:	48 89 50 10          	mov    %rdx,0x10(%rax)
    42e1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    42e5:	48 89 c7             	mov    %rax,%rdi
    42e8:	e8 22 ec ff ff       	call   2f0f <buffer_skip_whitespace>
    42ed:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    42f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    42f5:	48 89 d6             	mov    %rdx,%rsi
    42f8:	48 89 c7             	mov    %rax,%rdi
    42fb:	e8 c7 f3 ff ff       	call   36c7 <parse_value>
    4300:	85 c0                	test   %eax,%eax
    4302:	0f 84 ed 00 00 00    	je     43f5 <parse_object+0x37c>
    4308:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    430c:	48 89 c7             	mov    %rax,%rdi
    430f:	e8 fb eb ff ff       	call   2f0f <buffer_skip_whitespace>
    4314:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    4319:	74 32                	je     434d <parse_object+0x2d4>
    431b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    431f:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4323:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4327:	48 8b 40 08          	mov    0x8(%rax),%rax
    432b:	48 39 c2             	cmp    %rax,%rdx
    432e:	73 1d                	jae    434d <parse_object+0x2d4>
    4330:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4334:	48 8b 10             	mov    (%rax),%rdx
    4337:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    433b:	48 8b 40 10          	mov    0x10(%rax),%rax
    433f:	48 01 d0             	add    %rdx,%rax
    4342:	0f b6 00             	movzbl (%rax),%eax
    4345:	3c 2c                	cmp    $0x2c,%al
    4347:	0f 84 5d fe ff ff    	je     41aa <parse_object+0x131>
    434d:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    4352:	0f 84 a0 00 00 00    	je     43f8 <parse_object+0x37f>
    4358:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    435c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4360:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4364:	48 8b 40 08          	mov    0x8(%rax),%rax
    4368:	48 39 c2             	cmp    %rax,%rdx
    436b:	0f 83 87 00 00 00    	jae    43f8 <parse_object+0x37f>
    4371:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4375:	48 8b 10             	mov    (%rax),%rdx
    4378:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    437c:	48 8b 40 10          	mov    0x10(%rax),%rax
    4380:	48 01 d0             	add    %rdx,%rax
    4383:	0f b6 00             	movzbl (%rax),%eax
    4386:	3c 7d                	cmp    $0x7d,%al
    4388:	75 6e                	jne    43f8 <parse_object+0x37f>
    438a:	eb 01                	jmp    438d <parse_object+0x314>
    438c:	90                   	nop
    438d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4391:	48 8b 40 18          	mov    0x18(%rax),%rax
    4395:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    4399:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    439d:	48 89 50 18          	mov    %rdx,0x18(%rax)
    43a1:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    43a6:	74 0c                	je     43b4 <parse_object+0x33b>
    43a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    43ac:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    43b0:	48 89 50 08          	mov    %rdx,0x8(%rax)
    43b4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    43b8:	c7 40 18 40 00 00 00 	movl   $0x40,0x18(%rax)
    43bf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    43c3:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    43c7:	48 89 50 10          	mov    %rdx,0x10(%rax)
    43cb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    43cf:	48 8b 40 10          	mov    0x10(%rax),%rax
    43d3:	48 8d 50 01          	lea    0x1(%rax),%rdx
    43d7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    43db:	48 89 50 10          	mov    %rdx,0x10(%rax)
    43df:	b8 01 00 00 00       	mov    $0x1,%eax
    43e4:	eb 2b                	jmp    4411 <parse_object+0x398>
    43e6:	90                   	nop
    43e7:	eb 10                	jmp    43f9 <parse_object+0x380>
    43e9:	90                   	nop
    43ea:	eb 0d                	jmp    43f9 <parse_object+0x380>
    43ec:	90                   	nop
    43ed:	eb 0a                	jmp    43f9 <parse_object+0x380>
    43ef:	90                   	nop
    43f0:	eb 07                	jmp    43f9 <parse_object+0x380>
    43f2:	90                   	nop
    43f3:	eb 04                	jmp    43f9 <parse_object+0x380>
    43f5:	90                   	nop
    43f6:	eb 01                	jmp    43f9 <parse_object+0x380>
    43f8:	90                   	nop
    43f9:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    43fe:	74 0c                	je     440c <parse_object+0x393>
    4400:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4404:	48 89 c7             	mov    %rax,%rdi
    4407:	e8 2c d6 ff ff       	call   1a38 <cJSON_Delete>
    440c:	b8 00 00 00 00       	mov    $0x0,%eax
    4411:	c9                   	leave
    4412:	c3                   	ret

0000000000004413 <print_object>:
    4413:	55                   	push   %rbp
    4414:	48 89 e5             	mov    %rsp,%rbp
    4417:	48 83 ec 40          	sub    $0x40,%rsp
    441b:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    441f:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    4423:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    442a:	00 
    442b:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4432:	00 
    4433:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4437:	48 8b 40 10          	mov    0x10(%rax),%rax
    443b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    443f:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
    4444:	75 0a                	jne    4450 <print_object+0x3d>
    4446:	b8 00 00 00 00       	mov    $0x0,%eax
    444b:	e9 8d 03 00 00       	jmp    47dd <print_object+0x3ca>
    4450:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4454:	48 8b 40 18          	mov    0x18(%rax),%rax
    4458:	48 3d e7 03 00 00    	cmp    $0x3e7,%rax
    445e:	76 0a                	jbe    446a <print_object+0x57>
    4460:	b8 00 00 00 00       	mov    $0x0,%eax
    4465:	e9 73 03 00 00       	jmp    47dd <print_object+0x3ca>
    446a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    446e:	8b 40 24             	mov    0x24(%rax),%eax
    4471:	85 c0                	test   %eax,%eax
    4473:	74 07                	je     447c <print_object+0x69>
    4475:	b8 02 00 00 00       	mov    $0x2,%eax
    447a:	eb 05                	jmp    4481 <print_object+0x6e>
    447c:	b8 01 00 00 00       	mov    $0x1,%eax
    4481:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4485:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4489:	48 8d 50 01          	lea    0x1(%rax),%rdx
    448d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4491:	48 89 d6             	mov    %rdx,%rsi
    4494:	48 89 c7             	mov    %rax,%rdi
    4497:	e8 fb da ff ff       	call   1f97 <ensure>
    449c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    44a0:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    44a5:	75 0a                	jne    44b1 <print_object+0x9e>
    44a7:	b8 00 00 00 00       	mov    $0x0,%eax
    44ac:	e9 2c 03 00 00       	jmp    47dd <print_object+0x3ca>
    44b1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    44b5:	48 8d 50 01          	lea    0x1(%rax),%rdx
    44b9:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    44bd:	c6 00 7b             	movb   $0x7b,(%rax)
    44c0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    44c4:	48 8b 40 18          	mov    0x18(%rax),%rax
    44c8:	48 8d 50 01          	lea    0x1(%rax),%rdx
    44cc:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    44d0:	48 89 50 18          	mov    %rdx,0x18(%rax)
    44d4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    44d8:	8b 40 24             	mov    0x24(%rax),%eax
    44db:	85 c0                	test   %eax,%eax
    44dd:	74 0f                	je     44ee <print_object+0xdb>
    44df:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    44e3:	48 8d 50 01          	lea    0x1(%rax),%rdx
    44e7:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    44eb:	c6 00 0a             	movb   $0xa,(%rax)
    44ee:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    44f2:	48 8b 50 10          	mov    0x10(%rax),%rdx
    44f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    44fa:	48 01 c2             	add    %rax,%rdx
    44fd:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4501:	48 89 50 10          	mov    %rdx,0x10(%rax)
    4505:	e9 1f 02 00 00       	jmp    4729 <print_object+0x316>
    450a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    450e:	8b 40 24             	mov    0x24(%rax),%eax
    4511:	85 c0                	test   %eax,%eax
    4513:	74 73                	je     4588 <print_object+0x175>
    4515:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4519:	48 8b 50 18          	mov    0x18(%rax),%rdx
    451d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4521:	48 89 d6             	mov    %rdx,%rsi
    4524:	48 89 c7             	mov    %rax,%rdi
    4527:	e8 6b da ff ff       	call   1f97 <ensure>
    452c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    4530:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    4535:	75 0a                	jne    4541 <print_object+0x12e>
    4537:	b8 00 00 00 00       	mov    $0x0,%eax
    453c:	e9 9c 02 00 00       	jmp    47dd <print_object+0x3ca>
    4541:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    4548:	00 
    4549:	eb 14                	jmp    455f <print_object+0x14c>
    454b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    454f:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4553:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4557:	c6 00 09             	movb   $0x9,(%rax)
    455a:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    455f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4563:	48 8b 40 18          	mov    0x18(%rax),%rax
    4567:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
    456b:	72 de                	jb     454b <print_object+0x138>
    456d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4571:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4575:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4579:	48 8b 40 18          	mov    0x18(%rax),%rax
    457d:	48 01 c2             	add    %rax,%rdx
    4580:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4584:	48 89 50 10          	mov    %rdx,0x10(%rax)
    4588:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    458c:	48 8b 40 38          	mov    0x38(%rax),%rax
    4590:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    4594:	48 89 d6             	mov    %rdx,%rsi
    4597:	48 89 c7             	mov    %rax,%rdi
    459a:	e8 6a e6 ff ff       	call   2c09 <print_string_ptr>
    459f:	85 c0                	test   %eax,%eax
    45a1:	75 0a                	jne    45ad <print_object+0x19a>
    45a3:	b8 00 00 00 00       	mov    $0x0,%eax
    45a8:	e9 30 02 00 00       	jmp    47dd <print_object+0x3ca>
    45ad:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    45b1:	48 89 c7             	mov    %rax,%rdi
    45b4:	e8 f9 db ff ff       	call   21b2 <update_offset>
    45b9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    45bd:	8b 40 24             	mov    0x24(%rax),%eax
    45c0:	85 c0                	test   %eax,%eax
    45c2:	74 07                	je     45cb <print_object+0x1b8>
    45c4:	b8 02 00 00 00       	mov    $0x2,%eax
    45c9:	eb 05                	jmp    45d0 <print_object+0x1bd>
    45cb:	b8 01 00 00 00       	mov    $0x1,%eax
    45d0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    45d4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    45d8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    45dc:	48 89 d6             	mov    %rdx,%rsi
    45df:	48 89 c7             	mov    %rax,%rdi
    45e2:	e8 b0 d9 ff ff       	call   1f97 <ensure>
    45e7:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    45eb:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    45f0:	75 0a                	jne    45fc <print_object+0x1e9>
    45f2:	b8 00 00 00 00       	mov    $0x0,%eax
    45f7:	e9 e1 01 00 00       	jmp    47dd <print_object+0x3ca>
    45fc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4600:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4604:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4608:	c6 00 3a             	movb   $0x3a,(%rax)
    460b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    460f:	8b 40 24             	mov    0x24(%rax),%eax
    4612:	85 c0                	test   %eax,%eax
    4614:	74 0f                	je     4625 <print_object+0x212>
    4616:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    461a:	48 8d 50 01          	lea    0x1(%rax),%rdx
    461e:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4622:	c6 00 09             	movb   $0x9,(%rax)
    4625:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4629:	48 8b 50 10          	mov    0x10(%rax),%rdx
    462d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4631:	48 01 c2             	add    %rax,%rdx
    4634:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4638:	48 89 50 10          	mov    %rdx,0x10(%rax)
    463c:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    4640:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4644:	48 89 d6             	mov    %rdx,%rsi
    4647:	48 89 c7             	mov    %rax,%rdi
    464a:	e8 79 f3 ff ff       	call   39c8 <print_value>
    464f:	85 c0                	test   %eax,%eax
    4651:	75 0a                	jne    465d <print_object+0x24a>
    4653:	b8 00 00 00 00       	mov    $0x0,%eax
    4658:	e9 80 01 00 00       	jmp    47dd <print_object+0x3ca>
    465d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4661:	48 89 c7             	mov    %rax,%rdi
    4664:	e8 49 db ff ff       	call   21b2 <update_offset>
    4669:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    466d:	8b 40 24             	mov    0x24(%rax),%eax
    4670:	85 c0                	test   %eax,%eax
    4672:	74 07                	je     467b <print_object+0x268>
    4674:	ba 01 00 00 00       	mov    $0x1,%edx
    4679:	eb 05                	jmp    4680 <print_object+0x26d>
    467b:	ba 00 00 00 00       	mov    $0x0,%edx
    4680:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4684:	48 8b 00             	mov    (%rax),%rax
    4687:	48 85 c0             	test   %rax,%rax
    468a:	74 07                	je     4693 <print_object+0x280>
    468c:	b8 01 00 00 00       	mov    $0x1,%eax
    4691:	eb 05                	jmp    4698 <print_object+0x285>
    4693:	b8 00 00 00 00       	mov    $0x0,%eax
    4698:	48 01 d0             	add    %rdx,%rax
    469b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    469f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46a3:	48 8d 50 01          	lea    0x1(%rax),%rdx
    46a7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    46ab:	48 89 d6             	mov    %rdx,%rsi
    46ae:	48 89 c7             	mov    %rax,%rdi
    46b1:	e8 e1 d8 ff ff       	call   1f97 <ensure>
    46b6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    46ba:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    46bf:	75 0a                	jne    46cb <print_object+0x2b8>
    46c1:	b8 00 00 00 00       	mov    $0x0,%eax
    46c6:	e9 12 01 00 00       	jmp    47dd <print_object+0x3ca>
    46cb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    46cf:	48 8b 00             	mov    (%rax),%rax
    46d2:	48 85 c0             	test   %rax,%rax
    46d5:	74 0f                	je     46e6 <print_object+0x2d3>
    46d7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    46db:	48 8d 50 01          	lea    0x1(%rax),%rdx
    46df:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    46e3:	c6 00 2c             	movb   $0x2c,(%rax)
    46e6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    46ea:	8b 40 24             	mov    0x24(%rax),%eax
    46ed:	85 c0                	test   %eax,%eax
    46ef:	74 0f                	je     4700 <print_object+0x2ed>
    46f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    46f5:	48 8d 50 01          	lea    0x1(%rax),%rdx
    46f9:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    46fd:	c6 00 0a             	movb   $0xa,(%rax)
    4700:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4704:	c6 00 00             	movb   $0x0,(%rax)
    4707:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    470b:	48 8b 50 10          	mov    0x10(%rax),%rdx
    470f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4713:	48 01 c2             	add    %rax,%rdx
    4716:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    471a:	48 89 50 10          	mov    %rdx,0x10(%rax)
    471e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4722:	48 8b 00             	mov    (%rax),%rax
    4725:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    4729:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    472e:	0f 85 d6 fd ff ff    	jne    450a <print_object+0xf7>
    4734:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4738:	8b 40 24             	mov    0x24(%rax),%eax
    473b:	85 c0                	test   %eax,%eax
    473d:	74 0e                	je     474d <print_object+0x33a>
    473f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4743:	48 8b 40 18          	mov    0x18(%rax),%rax
    4747:	48 8d 50 01          	lea    0x1(%rax),%rdx
    474b:	eb 05                	jmp    4752 <print_object+0x33f>
    474d:	ba 02 00 00 00       	mov    $0x2,%edx
    4752:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4756:	48 89 d6             	mov    %rdx,%rsi
    4759:	48 89 c7             	mov    %rax,%rdi
    475c:	e8 36 d8 ff ff       	call   1f97 <ensure>
    4761:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    4765:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    476a:	75 07                	jne    4773 <print_object+0x360>
    476c:	b8 00 00 00 00       	mov    $0x0,%eax
    4771:	eb 6a                	jmp    47dd <print_object+0x3ca>
    4773:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4777:	8b 40 24             	mov    0x24(%rax),%eax
    477a:	85 c0                	test   %eax,%eax
    477c:	74 30                	je     47ae <print_object+0x39b>
    477e:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    4785:	00 
    4786:	eb 14                	jmp    479c <print_object+0x389>
    4788:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    478c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4790:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4794:	c6 00 09             	movb   $0x9,(%rax)
    4797:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    479c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    47a0:	48 8b 40 18          	mov    0x18(%rax),%rax
    47a4:	48 83 e8 01          	sub    $0x1,%rax
    47a8:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    47ac:	72 da                	jb     4788 <print_object+0x375>
    47ae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    47b2:	48 8d 50 01          	lea    0x1(%rax),%rdx
    47b6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    47ba:	c6 00 7d             	movb   $0x7d,(%rax)
    47bd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    47c1:	c6 00 00             	movb   $0x0,(%rax)
    47c4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    47c8:	48 8b 40 18          	mov    0x18(%rax),%rax
    47cc:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    47d0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    47d4:	48 89 50 18          	mov    %rdx,0x18(%rax)
    47d8:	b8 01 00 00 00       	mov    $0x1,%eax
    47dd:	c9                   	leave
    47de:	c3                   	ret

00000000000047df <cJSON_GetArraySize>:
    47df:	55                   	push   %rbp
    47e0:	48 89 e5             	mov    %rsp,%rbp
    47e3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    47e7:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    47ee:	00 
    47ef:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    47f6:	00 
    47f7:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    47fc:	75 07                	jne    4805 <cJSON_GetArraySize+0x26>
    47fe:	b8 00 00 00 00       	mov    $0x0,%eax
    4803:	eb 29                	jmp    482e <cJSON_GetArraySize+0x4f>
    4805:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4809:	48 8b 40 10          	mov    0x10(%rax),%rax
    480d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4811:	eb 10                	jmp    4823 <cJSON_GetArraySize+0x44>
    4813:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    4818:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    481c:	48 8b 00             	mov    (%rax),%rax
    481f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4823:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    4828:	75 e9                	jne    4813 <cJSON_GetArraySize+0x34>
    482a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    482e:	5d                   	pop    %rbp
    482f:	c3                   	ret

0000000000004830 <get_array_item>:
    4830:	55                   	push   %rbp
    4831:	48 89 e5             	mov    %rsp,%rbp
    4834:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4838:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    483c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4843:	00 
    4844:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    4849:	75 07                	jne    4852 <get_array_item+0x22>
    484b:	b8 00 00 00 00       	mov    $0x0,%eax
    4850:	eb 30                	jmp    4882 <get_array_item+0x52>
    4852:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4856:	48 8b 40 10          	mov    0x10(%rax),%rax
    485a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    485e:	eb 10                	jmp    4870 <get_array_item+0x40>
    4860:	48 83 6d e0 01       	subq   $0x1,-0x20(%rbp)
    4865:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4869:	48 8b 00             	mov    (%rax),%rax
    486c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4870:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4875:	74 07                	je     487e <get_array_item+0x4e>
    4877:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    487c:	75 e2                	jne    4860 <get_array_item+0x30>
    487e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4882:	5d                   	pop    %rbp
    4883:	c3                   	ret

0000000000004884 <cJSON_GetArrayItem>:
    4884:	55                   	push   %rbp
    4885:	48 89 e5             	mov    %rsp,%rbp
    4888:	48 83 ec 10          	sub    $0x10,%rsp
    488c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4890:	89 75 f4             	mov    %esi,-0xc(%rbp)
    4893:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    4897:	79 07                	jns    48a0 <cJSON_GetArrayItem+0x1c>
    4899:	b8 00 00 00 00       	mov    $0x0,%eax
    489e:	eb 15                	jmp    48b5 <cJSON_GetArrayItem+0x31>
    48a0:	8b 45 f4             	mov    -0xc(%rbp),%eax
    48a3:	48 63 d0             	movslq %eax,%rdx
    48a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48aa:	48 89 d6             	mov    %rdx,%rsi
    48ad:	48 89 c7             	mov    %rax,%rdi
    48b0:	e8 7b ff ff ff       	call   4830 <get_array_item>
    48b5:	c9                   	leave
    48b6:	c3                   	ret

00000000000048b7 <get_object_item>:
    48b7:	55                   	push   %rbp
    48b8:	48 89 e5             	mov    %rsp,%rbp
    48bb:	48 83 ec 30          	sub    $0x30,%rsp
    48bf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    48c3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    48c7:	89 55 dc             	mov    %edx,-0x24(%rbp)
    48ca:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    48d1:	00 
    48d2:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    48d7:	74 07                	je     48e0 <get_object_item+0x29>
    48d9:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    48de:	75 0a                	jne    48ea <get_object_item+0x33>
    48e0:	b8 00 00 00 00       	mov    $0x0,%eax
    48e5:	e9 9c 00 00 00       	jmp    4986 <get_object_item+0xcf>
    48ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    48ee:	48 8b 40 10          	mov    0x10(%rax),%rax
    48f2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    48f6:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    48fa:	74 49                	je     4945 <get_object_item+0x8e>
    48fc:	eb 0b                	jmp    4909 <get_object_item+0x52>
    48fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4902:	48 8b 00             	mov    (%rax),%rax
    4905:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4909:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    490e:	74 57                	je     4967 <get_object_item+0xb0>
    4910:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4914:	48 8b 40 38          	mov    0x38(%rax),%rax
    4918:	48 85 c0             	test   %rax,%rax
    491b:	74 4a                	je     4967 <get_object_item+0xb0>
    491d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4921:	48 8b 50 38          	mov    0x38(%rax),%rdx
    4925:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4929:	48 89 d6             	mov    %rdx,%rsi
    492c:	48 89 c7             	mov    %rax,%rdi
    492f:	e8 9c c7 ff ff       	call   10d0 <strcmp@plt>
    4934:	85 c0                	test   %eax,%eax
    4936:	75 c6                	jne    48fe <get_object_item+0x47>
    4938:	eb 2d                	jmp    4967 <get_object_item+0xb0>
    493a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    493e:	48 8b 00             	mov    (%rax),%rax
    4941:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4945:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    494a:	74 1b                	je     4967 <get_object_item+0xb0>
    494c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4950:	48 8b 50 38          	mov    0x38(%rax),%rdx
    4954:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4958:	48 89 d6             	mov    %rdx,%rsi
    495b:	48 89 c7             	mov    %rax,%rdi
    495e:	e8 97 ce ff ff       	call   17fa <case_insensitive_strcmp>
    4963:	85 c0                	test   %eax,%eax
    4965:	75 d3                	jne    493a <get_object_item+0x83>
    4967:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    496c:	74 0d                	je     497b <get_object_item+0xc4>
    496e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4972:	48 8b 40 38          	mov    0x38(%rax),%rax
    4976:	48 85 c0             	test   %rax,%rax
    4979:	75 07                	jne    4982 <get_object_item+0xcb>
    497b:	b8 00 00 00 00       	mov    $0x0,%eax
    4980:	eb 04                	jmp    4986 <get_object_item+0xcf>
    4982:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4986:	c9                   	leave
    4987:	c3                   	ret

0000000000004988 <cJSON_GetObjectItem>:
    4988:	55                   	push   %rbp
    4989:	48 89 e5             	mov    %rsp,%rbp
    498c:	48 83 ec 10          	sub    $0x10,%rsp
    4990:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4994:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4998:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    499c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    49a0:	ba 00 00 00 00       	mov    $0x0,%edx
    49a5:	48 89 ce             	mov    %rcx,%rsi
    49a8:	48 89 c7             	mov    %rax,%rdi
    49ab:	e8 07 ff ff ff       	call   48b7 <get_object_item>
    49b0:	c9                   	leave
    49b1:	c3                   	ret

00000000000049b2 <cJSON_GetObjectItemCaseSensitive>:
    49b2:	55                   	push   %rbp
    49b3:	48 89 e5             	mov    %rsp,%rbp
    49b6:	48 83 ec 10          	sub    $0x10,%rsp
    49ba:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    49be:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    49c2:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    49c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    49ca:	ba 01 00 00 00       	mov    $0x1,%edx
    49cf:	48 89 ce             	mov    %rcx,%rsi
    49d2:	48 89 c7             	mov    %rax,%rdi
    49d5:	e8 dd fe ff ff       	call   48b7 <get_object_item>
    49da:	c9                   	leave
    49db:	c3                   	ret

00000000000049dc <cJSON_HasObjectItem>:
    49dc:	55                   	push   %rbp
    49dd:	48 89 e5             	mov    %rsp,%rbp
    49e0:	48 83 ec 10          	sub    $0x10,%rsp
    49e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    49e8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    49ec:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    49f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    49f4:	48 89 d6             	mov    %rdx,%rsi
    49f7:	48 89 c7             	mov    %rax,%rdi
    49fa:	e8 89 ff ff ff       	call   4988 <cJSON_GetObjectItem>
    49ff:	48 85 c0             	test   %rax,%rax
    4a02:	0f 95 c0             	setne  %al
    4a05:	0f b6 c0             	movzbl %al,%eax
    4a08:	c9                   	leave
    4a09:	c3                   	ret

0000000000004a0a <suffix_object>:
    4a0a:	55                   	push   %rbp
    4a0b:	48 89 e5             	mov    %rsp,%rbp
    4a0e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4a12:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4a16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a1a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4a1e:	48 89 10             	mov    %rdx,(%rax)
    4a21:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4a25:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4a29:	48 89 50 08          	mov    %rdx,0x8(%rax)
    4a2d:	90                   	nop
    4a2e:	5d                   	pop    %rbp
    4a2f:	c3                   	ret

0000000000004a30 <create_reference>:
    4a30:	55                   	push   %rbp
    4a31:	48 89 e5             	mov    %rsp,%rbp
    4a34:	48 83 ec 20          	sub    $0x20,%rsp
    4a38:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4a3c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4a40:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4a47:	00 
    4a48:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    4a4d:	75 07                	jne    4a56 <create_reference+0x26>
    4a4f:	b8 00 00 00 00       	mov    $0x0,%eax
    4a54:	eb 74                	jmp    4aca <create_reference+0x9a>
    4a56:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4a5a:	48 89 c7             	mov    %rax,%rdi
    4a5d:	e8 95 cf ff ff       	call   19f7 <cJSON_New_Item>
    4a62:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4a66:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4a6b:	75 07                	jne    4a74 <create_reference+0x44>
    4a6d:	b8 00 00 00 00       	mov    $0x0,%eax
    4a72:	eb 56                	jmp    4aca <create_reference+0x9a>
    4a74:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    4a78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a7c:	ba 40 00 00 00       	mov    $0x40,%edx
    4a81:	48 89 ce             	mov    %rcx,%rsi
    4a84:	48 89 c7             	mov    %rax,%rdi
    4a87:	e8 64 c6 ff ff       	call   10f0 <memcpy@plt>
    4a8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a90:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
    4a97:	00 
    4a98:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a9c:	8b 40 18             	mov    0x18(%rax),%eax
    4a9f:	80 cc 01             	or     $0x1,%ah
    4aa2:	89 c2                	mov    %eax,%edx
    4aa4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4aa8:	89 50 18             	mov    %edx,0x18(%rax)
    4aab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4aaf:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    4ab6:	00 
    4ab7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4abb:	48 8b 50 08          	mov    0x8(%rax),%rdx
    4abf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ac3:	48 89 10             	mov    %rdx,(%rax)
    4ac6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4aca:	c9                   	leave
    4acb:	c3                   	ret

0000000000004acc <add_item_to_array>:
    4acc:	55                   	push   %rbp
    4acd:	48 89 e5             	mov    %rsp,%rbp
    4ad0:	48 83 ec 20          	sub    $0x20,%rsp
    4ad4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4ad8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4adc:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4ae3:	00 
    4ae4:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    4ae9:	74 11                	je     4afc <add_item_to_array+0x30>
    4aeb:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    4af0:	74 0a                	je     4afc <add_item_to_array+0x30>
    4af2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4af6:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    4afa:	75 07                	jne    4b03 <add_item_to_array+0x37>
    4afc:	b8 00 00 00 00       	mov    $0x0,%eax
    4b01:	eb 71                	jmp    4b74 <add_item_to_array+0xa8>
    4b03:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4b07:	48 8b 40 10          	mov    0x10(%rax),%rax
    4b0b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4b0f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4b14:	75 25                	jne    4b3b <add_item_to_array+0x6f>
    4b16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4b1a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4b1e:	48 89 50 10          	mov    %rdx,0x10(%rax)
    4b22:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4b26:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4b2a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    4b2e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4b32:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    4b39:	eb 34                	jmp    4b6f <add_item_to_array+0xa3>
    4b3b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b3f:	48 8b 40 08          	mov    0x8(%rax),%rax
    4b43:	48 85 c0             	test   %rax,%rax
    4b46:	74 27                	je     4b6f <add_item_to_array+0xa3>
    4b48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b4c:	48 8b 40 08          	mov    0x8(%rax),%rax
    4b50:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4b54:	48 89 d6             	mov    %rdx,%rsi
    4b57:	48 89 c7             	mov    %rax,%rdi
    4b5a:	e8 ab fe ff ff       	call   4a0a <suffix_object>
    4b5f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4b63:	48 8b 40 10          	mov    0x10(%rax),%rax
    4b67:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4b6b:	48 89 50 08          	mov    %rdx,0x8(%rax)
    4b6f:	b8 01 00 00 00       	mov    $0x1,%eax
    4b74:	c9                   	leave
    4b75:	c3                   	ret

0000000000004b76 <cJSON_AddItemToArray>:
    4b76:	55                   	push   %rbp
    4b77:	48 89 e5             	mov    %rsp,%rbp
    4b7a:	48 83 ec 10          	sub    $0x10,%rsp
    4b7e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4b82:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4b86:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4b8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b8e:	48 89 d6             	mov    %rdx,%rsi
    4b91:	48 89 c7             	mov    %rax,%rdi
    4b94:	e8 33 ff ff ff       	call   4acc <add_item_to_array>
    4b99:	c9                   	leave
    4b9a:	c3                   	ret

0000000000004b9b <cast_away_const>:
    4b9b:	55                   	push   %rbp
    4b9c:	48 89 e5             	mov    %rsp,%rbp
    4b9f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4ba3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ba7:	5d                   	pop    %rbp
    4ba8:	c3                   	ret

0000000000004ba9 <add_item_to_object>:
    4ba9:	55                   	push   %rbp
    4baa:	48 89 e5             	mov    %rsp,%rbp
    4bad:	48 83 ec 40          	sub    $0x40,%rsp
    4bb1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4bb5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4bb9:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4bbd:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    4bc1:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
    4bc5:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4bcc:	00 
    4bcd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    4bd4:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    4bd9:	74 18                	je     4bf3 <add_item_to_object+0x4a>
    4bdb:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    4be0:	74 11                	je     4bf3 <add_item_to_object+0x4a>
    4be2:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    4be7:	74 0a                	je     4bf3 <add_item_to_object+0x4a>
    4be9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4bed:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    4bf1:	75 0a                	jne    4bfd <add_item_to_object+0x54>
    4bf3:	b8 00 00 00 00       	mov    $0x0,%eax
    4bf8:	e9 b2 00 00 00       	jmp    4caf <add_item_to_object+0x106>
    4bfd:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    4c01:	74 1f                	je     4c22 <add_item_to_object+0x79>
    4c03:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c07:	48 89 c7             	mov    %rax,%rdi
    4c0a:	e8 8c ff ff ff       	call   4b9b <cast_away_const>
    4c0f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4c13:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c17:	8b 40 18             	mov    0x18(%rax),%eax
    4c1a:	80 cc 02             	or     $0x2,%ah
    4c1d:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4c20:	eb 32                	jmp    4c54 <add_item_to_object+0xab>
    4c22:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    4c26:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c2a:	48 89 d6             	mov    %rdx,%rsi
    4c2d:	48 89 c7             	mov    %rax,%rdi
    4c30:	e8 70 cc ff ff       	call   18a5 <cJSON_strdup>
    4c35:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4c39:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4c3e:	75 07                	jne    4c47 <add_item_to_object+0x9e>
    4c40:	b8 00 00 00 00       	mov    $0x0,%eax
    4c45:	eb 68                	jmp    4caf <add_item_to_object+0x106>
    4c47:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c4b:	8b 40 18             	mov    0x18(%rax),%eax
    4c4e:	80 e4 fd             	and    $0xfd,%ah
    4c51:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4c54:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c58:	8b 40 18             	mov    0x18(%rax),%eax
    4c5b:	25 00 02 00 00       	and    $0x200,%eax
    4c60:	85 c0                	test   %eax,%eax
    4c62:	75 22                	jne    4c86 <add_item_to_object+0xdd>
    4c64:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c68:	48 8b 40 38          	mov    0x38(%rax),%rax
    4c6c:	48 85 c0             	test   %rax,%rax
    4c6f:	74 15                	je     4c86 <add_item_to_object+0xdd>
    4c71:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4c75:	48 8b 50 08          	mov    0x8(%rax),%rdx
    4c79:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c7d:	48 8b 40 38          	mov    0x38(%rax),%rax
    4c81:	48 89 c7             	mov    %rax,%rdi
    4c84:	ff d2                	call   *%rdx
    4c86:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c8a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4c8e:	48 89 50 38          	mov    %rdx,0x38(%rax)
    4c92:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c96:	8b 55 f4             	mov    -0xc(%rbp),%edx
    4c99:	89 50 18             	mov    %edx,0x18(%rax)
    4c9c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4ca0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ca4:	48 89 d6             	mov    %rdx,%rsi
    4ca7:	48 89 c7             	mov    %rax,%rdi
    4caa:	e8 1d fe ff ff       	call   4acc <add_item_to_array>
    4caf:	c9                   	leave
    4cb0:	c3                   	ret

0000000000004cb1 <cJSON_AddItemToObject>:
    4cb1:	55                   	push   %rbp
    4cb2:	48 89 e5             	mov    %rsp,%rbp
    4cb5:	48 83 ec 20          	sub    $0x20,%rsp
    4cb9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4cbd:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4cc1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    4cc5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4cc9:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    4ccd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4cd1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    4cd7:	48 8d 0d d2 53 00 00 	lea    0x53d2(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    4cde:	48 89 c7             	mov    %rax,%rdi
    4ce1:	e8 c3 fe ff ff       	call   4ba9 <add_item_to_object>
    4ce6:	c9                   	leave
    4ce7:	c3                   	ret

0000000000004ce8 <cJSON_AddItemToObjectCS>:
    4ce8:	55                   	push   %rbp
    4ce9:	48 89 e5             	mov    %rsp,%rbp
    4cec:	48 83 ec 20          	sub    $0x20,%rsp
    4cf0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4cf4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4cf8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    4cfc:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4d00:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    4d04:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d08:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    4d0e:	48 8d 0d 9b 53 00 00 	lea    0x539b(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    4d15:	48 89 c7             	mov    %rax,%rdi
    4d18:	e8 8c fe ff ff       	call   4ba9 <add_item_to_object>
    4d1d:	c9                   	leave
    4d1e:	c3                   	ret

0000000000004d1f <cJSON_AddItemReferenceToArray>:
    4d1f:	55                   	push   %rbp
    4d20:	48 89 e5             	mov    %rsp,%rbp
    4d23:	48 83 ec 10          	sub    $0x10,%rsp
    4d27:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4d2b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4d2f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4d34:	75 07                	jne    4d3d <cJSON_AddItemReferenceToArray+0x1e>
    4d36:	b8 00 00 00 00       	mov    $0x0,%eax
    4d3b:	eb 28                	jmp    4d65 <cJSON_AddItemReferenceToArray+0x46>
    4d3d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4d41:	48 8d 15 68 53 00 00 	lea    0x5368(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    4d48:	48 89 d6             	mov    %rdx,%rsi
    4d4b:	48 89 c7             	mov    %rax,%rdi
    4d4e:	e8 dd fc ff ff       	call   4a30 <create_reference>
    4d53:	48 89 c2             	mov    %rax,%rdx
    4d56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d5a:	48 89 d6             	mov    %rdx,%rsi
    4d5d:	48 89 c7             	mov    %rax,%rdi
    4d60:	e8 67 fd ff ff       	call   4acc <add_item_to_array>
    4d65:	c9                   	leave
    4d66:	c3                   	ret

0000000000004d67 <cJSON_AddItemReferenceToObject>:
    4d67:	55                   	push   %rbp
    4d68:	48 89 e5             	mov    %rsp,%rbp
    4d6b:	48 83 ec 20          	sub    $0x20,%rsp
    4d6f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4d73:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4d77:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    4d7b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4d80:	74 07                	je     4d89 <cJSON_AddItemReferenceToObject+0x22>
    4d82:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    4d87:	75 07                	jne    4d90 <cJSON_AddItemReferenceToObject+0x29>
    4d89:	b8 00 00 00 00       	mov    $0x0,%eax
    4d8e:	eb 3c                	jmp    4dcc <cJSON_AddItemReferenceToObject+0x65>
    4d90:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4d94:	48 8d 15 15 53 00 00 	lea    0x5315(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    4d9b:	48 89 d6             	mov    %rdx,%rsi
    4d9e:	48 89 c7             	mov    %rax,%rdi
    4da1:	e8 8a fc ff ff       	call   4a30 <create_reference>
    4da6:	48 89 c7             	mov    %rax,%rdi
    4da9:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    4dad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4db1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    4db7:	48 8d 15 f2 52 00 00 	lea    0x52f2(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    4dbe:	48 89 d1             	mov    %rdx,%rcx
    4dc1:	48 89 fa             	mov    %rdi,%rdx
    4dc4:	48 89 c7             	mov    %rax,%rdi
    4dc7:	e8 dd fd ff ff       	call   4ba9 <add_item_to_object>
    4dcc:	c9                   	leave
    4dcd:	c3                   	ret

0000000000004dce <cJSON_AddNullToObject>:
    4dce:	55                   	push   %rbp
    4dcf:	48 89 e5             	mov    %rsp,%rbp
    4dd2:	48 83 ec 20          	sub    $0x20,%rsp
    4dd6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4dda:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4dde:	e8 d0 08 00 00       	call   56b3 <cJSON_CreateNull>
    4de3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4de7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4deb:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    4def:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4df3:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    4df9:	48 8d 0d b0 52 00 00 	lea    0x52b0(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    4e00:	48 89 c7             	mov    %rax,%rdi
    4e03:	e8 a1 fd ff ff       	call   4ba9 <add_item_to_object>
    4e08:	85 c0                	test   %eax,%eax
    4e0a:	74 06                	je     4e12 <cJSON_AddNullToObject+0x44>
    4e0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e10:	eb 11                	jmp    4e23 <cJSON_AddNullToObject+0x55>
    4e12:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e16:	48 89 c7             	mov    %rax,%rdi
    4e19:	e8 1a cc ff ff       	call   1a38 <cJSON_Delete>
    4e1e:	b8 00 00 00 00       	mov    $0x0,%eax
    4e23:	c9                   	leave
    4e24:	c3                   	ret

0000000000004e25 <cJSON_AddTrueToObject>:
    4e25:	55                   	push   %rbp
    4e26:	48 89 e5             	mov    %rsp,%rbp
    4e29:	48 83 ec 20          	sub    $0x20,%rsp
    4e2d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4e31:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4e35:	e8 ac 08 00 00       	call   56e6 <cJSON_CreateTrue>
    4e3a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4e3e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4e42:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    4e46:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e4a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    4e50:	48 8d 0d 59 52 00 00 	lea    0x5259(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    4e57:	48 89 c7             	mov    %rax,%rdi
    4e5a:	e8 4a fd ff ff       	call   4ba9 <add_item_to_object>
    4e5f:	85 c0                	test   %eax,%eax
    4e61:	74 06                	je     4e69 <cJSON_AddTrueToObject+0x44>
    4e63:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e67:	eb 11                	jmp    4e7a <cJSON_AddTrueToObject+0x55>
    4e69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e6d:	48 89 c7             	mov    %rax,%rdi
    4e70:	e8 c3 cb ff ff       	call   1a38 <cJSON_Delete>
    4e75:	b8 00 00 00 00       	mov    $0x0,%eax
    4e7a:	c9                   	leave
    4e7b:	c3                   	ret

0000000000004e7c <cJSON_AddFalseToObject>:
    4e7c:	55                   	push   %rbp
    4e7d:	48 89 e5             	mov    %rsp,%rbp
    4e80:	48 83 ec 20          	sub    $0x20,%rsp
    4e84:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4e88:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4e8c:	e8 88 08 00 00       	call   5719 <cJSON_CreateFalse>
    4e91:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4e95:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4e99:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    4e9d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ea1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    4ea7:	48 8d 0d 02 52 00 00 	lea    0x5202(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    4eae:	48 89 c7             	mov    %rax,%rdi
    4eb1:	e8 f3 fc ff ff       	call   4ba9 <add_item_to_object>
    4eb6:	85 c0                	test   %eax,%eax
    4eb8:	74 06                	je     4ec0 <cJSON_AddFalseToObject+0x44>
    4eba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ebe:	eb 11                	jmp    4ed1 <cJSON_AddFalseToObject+0x55>
    4ec0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ec4:	48 89 c7             	mov    %rax,%rdi
    4ec7:	e8 6c cb ff ff       	call   1a38 <cJSON_Delete>
    4ecc:	b8 00 00 00 00       	mov    $0x0,%eax
    4ed1:	c9                   	leave
    4ed2:	c3                   	ret

0000000000004ed3 <cJSON_AddBoolToObject>:
    4ed3:	55                   	push   %rbp
    4ed4:	48 89 e5             	mov    %rsp,%rbp
    4ed7:	48 83 ec 30          	sub    $0x30,%rsp
    4edb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4edf:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4ee3:	89 55 dc             	mov    %edx,-0x24(%rbp)
    4ee6:	8b 45 dc             	mov    -0x24(%rbp),%eax
    4ee9:	89 c7                	mov    %eax,%edi
    4eeb:	e8 5c 08 00 00       	call   574c <cJSON_CreateBool>
    4ef0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4ef4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4ef8:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    4efc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f00:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    4f06:	48 8d 0d a3 51 00 00 	lea    0x51a3(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    4f0d:	48 89 c7             	mov    %rax,%rdi
    4f10:	e8 94 fc ff ff       	call   4ba9 <add_item_to_object>
    4f15:	85 c0                	test   %eax,%eax
    4f17:	74 06                	je     4f1f <cJSON_AddBoolToObject+0x4c>
    4f19:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f1d:	eb 11                	jmp    4f30 <cJSON_AddBoolToObject+0x5d>
    4f1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f23:	48 89 c7             	mov    %rax,%rdi
    4f26:	e8 0d cb ff ff       	call   1a38 <cJSON_Delete>
    4f2b:	b8 00 00 00 00       	mov    $0x0,%eax
    4f30:	c9                   	leave
    4f31:	c3                   	ret

0000000000004f32 <cJSON_AddNumberToObject>:
    4f32:	55                   	push   %rbp
    4f33:	48 89 e5             	mov    %rsp,%rbp
    4f36:	48 83 ec 30          	sub    $0x30,%rsp
    4f3a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4f3e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4f42:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
    4f47:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4f4b:	66 48 0f 6e c0       	movq   %rax,%xmm0
    4f50:	e8 3b 08 00 00       	call   5790 <cJSON_CreateNumber>
    4f55:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4f59:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4f5d:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    4f61:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f65:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    4f6b:	48 8d 0d 3e 51 00 00 	lea    0x513e(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    4f72:	48 89 c7             	mov    %rax,%rdi
    4f75:	e8 2f fc ff ff       	call   4ba9 <add_item_to_object>
    4f7a:	85 c0                	test   %eax,%eax
    4f7c:	74 06                	je     4f84 <cJSON_AddNumberToObject+0x52>
    4f7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f82:	eb 11                	jmp    4f95 <cJSON_AddNumberToObject+0x63>
    4f84:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f88:	48 89 c7             	mov    %rax,%rdi
    4f8b:	e8 a8 ca ff ff       	call   1a38 <cJSON_Delete>
    4f90:	b8 00 00 00 00       	mov    $0x0,%eax
    4f95:	c9                   	leave
    4f96:	c3                   	ret

0000000000004f97 <cJSON_AddStringToObject>:
    4f97:	55                   	push   %rbp
    4f98:	48 89 e5             	mov    %rsp,%rbp
    4f9b:	48 83 ec 30          	sub    $0x30,%rsp
    4f9f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4fa3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4fa7:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4fab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4faf:	48 89 c7             	mov    %rax,%rdi
    4fb2:	e8 67 08 00 00       	call   581e <cJSON_CreateString>
    4fb7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4fbb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4fbf:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    4fc3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4fc7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    4fcd:	48 8d 0d dc 50 00 00 	lea    0x50dc(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    4fd4:	48 89 c7             	mov    %rax,%rdi
    4fd7:	e8 cd fb ff ff       	call   4ba9 <add_item_to_object>
    4fdc:	85 c0                	test   %eax,%eax
    4fde:	74 06                	je     4fe6 <cJSON_AddStringToObject+0x4f>
    4fe0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4fe4:	eb 11                	jmp    4ff7 <cJSON_AddStringToObject+0x60>
    4fe6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4fea:	48 89 c7             	mov    %rax,%rdi
    4fed:	e8 46 ca ff ff       	call   1a38 <cJSON_Delete>
    4ff2:	b8 00 00 00 00       	mov    $0x0,%eax
    4ff7:	c9                   	leave
    4ff8:	c3                   	ret

0000000000004ff9 <cJSON_AddRawToObject>:
    4ff9:	55                   	push   %rbp
    4ffa:	48 89 e5             	mov    %rsp,%rbp
    4ffd:	48 83 ec 30          	sub    $0x30,%rsp
    5001:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5005:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5009:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    500d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5011:	48 89 c7             	mov    %rax,%rdi
    5014:	e8 5b 09 00 00       	call   5974 <cJSON_CreateRaw>
    5019:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    501d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    5021:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5025:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5029:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    502f:	48 8d 0d 7a 50 00 00 	lea    0x507a(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    5036:	48 89 c7             	mov    %rax,%rdi
    5039:	e8 6b fb ff ff       	call   4ba9 <add_item_to_object>
    503e:	85 c0                	test   %eax,%eax
    5040:	74 06                	je     5048 <cJSON_AddRawToObject+0x4f>
    5042:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5046:	eb 11                	jmp    5059 <cJSON_AddRawToObject+0x60>
    5048:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    504c:	48 89 c7             	mov    %rax,%rdi
    504f:	e8 e4 c9 ff ff       	call   1a38 <cJSON_Delete>
    5054:	b8 00 00 00 00       	mov    $0x0,%eax
    5059:	c9                   	leave
    505a:	c3                   	ret

000000000000505b <cJSON_AddObjectToObject>:
    505b:	55                   	push   %rbp
    505c:	48 89 e5             	mov    %rsp,%rbp
    505f:	48 83 ec 20          	sub    $0x20,%rsp
    5063:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5067:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    506b:	e8 ac 09 00 00       	call   5a1c <cJSON_CreateObject>
    5070:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5074:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    5078:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    507c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5080:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5086:	48 8d 0d 23 50 00 00 	lea    0x5023(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    508d:	48 89 c7             	mov    %rax,%rdi
    5090:	e8 14 fb ff ff       	call   4ba9 <add_item_to_object>
    5095:	85 c0                	test   %eax,%eax
    5097:	74 06                	je     509f <cJSON_AddObjectToObject+0x44>
    5099:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    509d:	eb 11                	jmp    50b0 <cJSON_AddObjectToObject+0x55>
    509f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50a3:	48 89 c7             	mov    %rax,%rdi
    50a6:	e8 8d c9 ff ff       	call   1a38 <cJSON_Delete>
    50ab:	b8 00 00 00 00       	mov    $0x0,%eax
    50b0:	c9                   	leave
    50b1:	c3                   	ret

00000000000050b2 <cJSON_AddArrayToObject>:
    50b2:	55                   	push   %rbp
    50b3:	48 89 e5             	mov    %rsp,%rbp
    50b6:	48 83 ec 20          	sub    $0x20,%rsp
    50ba:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    50be:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    50c2:	e8 22 09 00 00       	call   59e9 <cJSON_CreateArray>
    50c7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    50cb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    50cf:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    50d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50d7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    50dd:	48 8d 0d cc 4f 00 00 	lea    0x4fcc(%rip),%rcx        # a0b0 <malloc@GLIBC_2.2.5>
    50e4:	48 89 c7             	mov    %rax,%rdi
    50e7:	e8 bd fa ff ff       	call   4ba9 <add_item_to_object>
    50ec:	85 c0                	test   %eax,%eax
    50ee:	74 06                	je     50f6 <cJSON_AddArrayToObject+0x44>
    50f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50f4:	eb 11                	jmp    5107 <cJSON_AddArrayToObject+0x55>
    50f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50fa:	48 89 c7             	mov    %rax,%rdi
    50fd:	e8 36 c9 ff ff       	call   1a38 <cJSON_Delete>
    5102:	b8 00 00 00 00       	mov    $0x0,%eax
    5107:	c9                   	leave
    5108:	c3                   	ret

0000000000005109 <cJSON_DetachItemViaPointer>:
    5109:	55                   	push   %rbp
    510a:	48 89 e5             	mov    %rsp,%rbp
    510d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5111:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5115:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    511a:	74 22                	je     513e <cJSON_DetachItemViaPointer+0x35>
    511c:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    5121:	74 1b                	je     513e <cJSON_DetachItemViaPointer+0x35>
    5123:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5127:	48 8b 40 10          	mov    0x10(%rax),%rax
    512b:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    512f:	74 17                	je     5148 <cJSON_DetachItemViaPointer+0x3f>
    5131:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5135:	48 8b 40 08          	mov    0x8(%rax),%rax
    5139:	48 85 c0             	test   %rax,%rax
    513c:	75 0a                	jne    5148 <cJSON_DetachItemViaPointer+0x3f>
    513e:	b8 00 00 00 00       	mov    $0x0,%eax
    5143:	e9 99 00 00 00       	jmp    51e1 <cJSON_DetachItemViaPointer+0xd8>
    5148:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    514c:	48 8b 40 10          	mov    0x10(%rax),%rax
    5150:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    5154:	74 12                	je     5168 <cJSON_DetachItemViaPointer+0x5f>
    5156:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    515a:	48 8b 40 08          	mov    0x8(%rax),%rax
    515e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5162:	48 8b 12             	mov    (%rdx),%rdx
    5165:	48 89 10             	mov    %rdx,(%rax)
    5168:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    516c:	48 8b 00             	mov    (%rax),%rax
    516f:	48 85 c0             	test   %rax,%rax
    5172:	74 13                	je     5187 <cJSON_DetachItemViaPointer+0x7e>
    5174:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5178:	48 8b 00             	mov    (%rax),%rax
    517b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    517f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    5183:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5187:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    518b:	48 8b 40 10          	mov    0x10(%rax),%rax
    518f:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    5193:	75 11                	jne    51a6 <cJSON_DetachItemViaPointer+0x9d>
    5195:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5199:	48 8b 10             	mov    (%rax),%rdx
    519c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    51a0:	48 89 50 10          	mov    %rdx,0x10(%rax)
    51a4:	eb 20                	jmp    51c6 <cJSON_DetachItemViaPointer+0xbd>
    51a6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    51aa:	48 8b 00             	mov    (%rax),%rax
    51ad:	48 85 c0             	test   %rax,%rax
    51b0:	75 14                	jne    51c6 <cJSON_DetachItemViaPointer+0xbd>
    51b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    51b6:	48 8b 40 10          	mov    0x10(%rax),%rax
    51ba:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    51be:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    51c2:	48 89 50 08          	mov    %rdx,0x8(%rax)
    51c6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    51ca:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    51d1:	00 
    51d2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    51d6:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    51dd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    51e1:	5d                   	pop    %rbp
    51e2:	c3                   	ret

00000000000051e3 <cJSON_DetachItemFromArray>:
    51e3:	55                   	push   %rbp
    51e4:	48 89 e5             	mov    %rsp,%rbp
    51e7:	48 83 ec 10          	sub    $0x10,%rsp
    51eb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    51ef:	89 75 f4             	mov    %esi,-0xc(%rbp)
    51f2:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    51f6:	79 07                	jns    51ff <cJSON_DetachItemFromArray+0x1c>
    51f8:	b8 00 00 00 00       	mov    $0x0,%eax
    51fd:	eb 27                	jmp    5226 <cJSON_DetachItemFromArray+0x43>
    51ff:	8b 45 f4             	mov    -0xc(%rbp),%eax
    5202:	48 63 d0             	movslq %eax,%rdx
    5205:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5209:	48 89 d6             	mov    %rdx,%rsi
    520c:	48 89 c7             	mov    %rax,%rdi
    520f:	e8 1c f6 ff ff       	call   4830 <get_array_item>
    5214:	48 89 c2             	mov    %rax,%rdx
    5217:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    521b:	48 89 d6             	mov    %rdx,%rsi
    521e:	48 89 c7             	mov    %rax,%rdi
    5221:	e8 e3 fe ff ff       	call   5109 <cJSON_DetachItemViaPointer>
    5226:	c9                   	leave
    5227:	c3                   	ret

0000000000005228 <cJSON_DeleteItemFromArray>:
    5228:	55                   	push   %rbp
    5229:	48 89 e5             	mov    %rsp,%rbp
    522c:	48 83 ec 10          	sub    $0x10,%rsp
    5230:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5234:	89 75 f4             	mov    %esi,-0xc(%rbp)
    5237:	8b 55 f4             	mov    -0xc(%rbp),%edx
    523a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    523e:	89 d6                	mov    %edx,%esi
    5240:	48 89 c7             	mov    %rax,%rdi
    5243:	e8 9b ff ff ff       	call   51e3 <cJSON_DetachItemFromArray>
    5248:	48 89 c7             	mov    %rax,%rdi
    524b:	e8 e8 c7 ff ff       	call   1a38 <cJSON_Delete>
    5250:	90                   	nop
    5251:	c9                   	leave
    5252:	c3                   	ret

0000000000005253 <cJSON_DetachItemFromObject>:
    5253:	55                   	push   %rbp
    5254:	48 89 e5             	mov    %rsp,%rbp
    5257:	48 83 ec 20          	sub    $0x20,%rsp
    525b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    525f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5263:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5267:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    526b:	48 89 d6             	mov    %rdx,%rsi
    526e:	48 89 c7             	mov    %rax,%rdi
    5271:	e8 12 f7 ff ff       	call   4988 <cJSON_GetObjectItem>
    5276:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    527a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    527e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5282:	48 89 d6             	mov    %rdx,%rsi
    5285:	48 89 c7             	mov    %rax,%rdi
    5288:	e8 7c fe ff ff       	call   5109 <cJSON_DetachItemViaPointer>
    528d:	c9                   	leave
    528e:	c3                   	ret

000000000000528f <cJSON_DetachItemFromObjectCaseSensitive>:
    528f:	55                   	push   %rbp
    5290:	48 89 e5             	mov    %rsp,%rbp
    5293:	48 83 ec 20          	sub    $0x20,%rsp
    5297:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    529b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    529f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    52a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    52a7:	48 89 d6             	mov    %rdx,%rsi
    52aa:	48 89 c7             	mov    %rax,%rdi
    52ad:	e8 00 f7 ff ff       	call   49b2 <cJSON_GetObjectItemCaseSensitive>
    52b2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    52b6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    52ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    52be:	48 89 d6             	mov    %rdx,%rsi
    52c1:	48 89 c7             	mov    %rax,%rdi
    52c4:	e8 40 fe ff ff       	call   5109 <cJSON_DetachItemViaPointer>
    52c9:	c9                   	leave
    52ca:	c3                   	ret

00000000000052cb <cJSON_DeleteItemFromObject>:
    52cb:	55                   	push   %rbp
    52cc:	48 89 e5             	mov    %rsp,%rbp
    52cf:	48 83 ec 10          	sub    $0x10,%rsp
    52d3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    52d7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    52db:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    52df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    52e3:	48 89 d6             	mov    %rdx,%rsi
    52e6:	48 89 c7             	mov    %rax,%rdi
    52e9:	e8 65 ff ff ff       	call   5253 <cJSON_DetachItemFromObject>
    52ee:	48 89 c7             	mov    %rax,%rdi
    52f1:	e8 42 c7 ff ff       	call   1a38 <cJSON_Delete>
    52f6:	90                   	nop
    52f7:	c9                   	leave
    52f8:	c3                   	ret

00000000000052f9 <cJSON_DeleteItemFromObjectCaseSensitive>:
    52f9:	55                   	push   %rbp
    52fa:	48 89 e5             	mov    %rsp,%rbp
    52fd:	48 83 ec 10          	sub    $0x10,%rsp
    5301:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5305:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5309:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    530d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5311:	48 89 d6             	mov    %rdx,%rsi
    5314:	48 89 c7             	mov    %rax,%rdi
    5317:	e8 73 ff ff ff       	call   528f <cJSON_DetachItemFromObjectCaseSensitive>
    531c:	48 89 c7             	mov    %rax,%rdi
    531f:	e8 14 c7 ff ff       	call   1a38 <cJSON_Delete>
    5324:	90                   	nop
    5325:	c9                   	leave
    5326:	c3                   	ret

0000000000005327 <cJSON_InsertItemInArray>:
    5327:	55                   	push   %rbp
    5328:	48 89 e5             	mov    %rsp,%rbp
    532b:	48 83 ec 28          	sub    $0x28,%rsp
    532f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5333:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    5336:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    533a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    5341:	00 
    5342:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
    5346:	78 07                	js     534f <cJSON_InsertItemInArray+0x28>
    5348:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    534d:	75 0a                	jne    5359 <cJSON_InsertItemInArray+0x32>
    534f:	b8 00 00 00 00       	mov    $0x0,%eax
    5354:	e9 ae 00 00 00       	jmp    5407 <cJSON_InsertItemInArray+0xe0>
    5359:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    535c:	48 63 d0             	movslq %eax,%rdx
    535f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5363:	48 89 d6             	mov    %rdx,%rsi
    5366:	48 89 c7             	mov    %rax,%rdi
    5369:	e8 c2 f4 ff ff       	call   4830 <get_array_item>
    536e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5372:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5377:	75 15                	jne    538e <cJSON_InsertItemInArray+0x67>
    5379:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    537d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5381:	48 89 d6             	mov    %rdx,%rsi
    5384:	48 89 c7             	mov    %rax,%rdi
    5387:	e8 40 f7 ff ff       	call   4acc <add_item_to_array>
    538c:	eb 79                	jmp    5407 <cJSON_InsertItemInArray+0xe0>
    538e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5392:	48 8b 40 10          	mov    0x10(%rax),%rax
    5396:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    539a:	74 14                	je     53b0 <cJSON_InsertItemInArray+0x89>
    539c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53a0:	48 8b 40 08          	mov    0x8(%rax),%rax
    53a4:	48 85 c0             	test   %rax,%rax
    53a7:	75 07                	jne    53b0 <cJSON_InsertItemInArray+0x89>
    53a9:	b8 00 00 00 00       	mov    $0x0,%eax
    53ae:	eb 57                	jmp    5407 <cJSON_InsertItemInArray+0xe0>
    53b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    53b4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    53b8:	48 89 10             	mov    %rdx,(%rax)
    53bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53bf:	48 8b 50 08          	mov    0x8(%rax),%rdx
    53c3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    53c7:	48 89 50 08          	mov    %rdx,0x8(%rax)
    53cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53cf:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    53d3:	48 89 50 08          	mov    %rdx,0x8(%rax)
    53d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    53db:	48 8b 40 10          	mov    0x10(%rax),%rax
    53df:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    53e3:	75 0e                	jne    53f3 <cJSON_InsertItemInArray+0xcc>
    53e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    53e9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    53ed:	48 89 50 10          	mov    %rdx,0x10(%rax)
    53f1:	eb 0f                	jmp    5402 <cJSON_InsertItemInArray+0xdb>
    53f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    53f7:	48 8b 40 08          	mov    0x8(%rax),%rax
    53fb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    53ff:	48 89 10             	mov    %rdx,(%rax)
    5402:	b8 01 00 00 00       	mov    $0x1,%eax
    5407:	c9                   	leave
    5408:	c3                   	ret

0000000000005409 <cJSON_ReplaceItemViaPointer>:
    5409:	55                   	push   %rbp
    540a:	48 89 e5             	mov    %rsp,%rbp
    540d:	48 83 ec 20          	sub    $0x20,%rsp
    5411:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5415:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5419:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    541d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5422:	74 1b                	je     543f <cJSON_ReplaceItemViaPointer+0x36>
    5424:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5428:	48 8b 40 10          	mov    0x10(%rax),%rax
    542c:	48 85 c0             	test   %rax,%rax
    542f:	74 0e                	je     543f <cJSON_ReplaceItemViaPointer+0x36>
    5431:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    5436:	74 07                	je     543f <cJSON_ReplaceItemViaPointer+0x36>
    5438:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    543d:	75 0a                	jne    5449 <cJSON_ReplaceItemViaPointer+0x40>
    543f:	b8 00 00 00 00       	mov    $0x0,%eax
    5444:	e9 ee 00 00 00       	jmp    5537 <cJSON_ReplaceItemViaPointer+0x12e>
    5449:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    544d:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    5451:	75 0a                	jne    545d <cJSON_ReplaceItemViaPointer+0x54>
    5453:	b8 01 00 00 00       	mov    $0x1,%eax
    5458:	e9 da 00 00 00       	jmp    5537 <cJSON_ReplaceItemViaPointer+0x12e>
    545d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5461:	48 8b 10             	mov    (%rax),%rdx
    5464:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5468:	48 89 10             	mov    %rdx,(%rax)
    546b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    546f:	48 8b 50 08          	mov    0x8(%rax),%rdx
    5473:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5477:	48 89 50 08          	mov    %rdx,0x8(%rax)
    547b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    547f:	48 8b 00             	mov    (%rax),%rax
    5482:	48 85 c0             	test   %rax,%rax
    5485:	74 0f                	je     5496 <cJSON_ReplaceItemViaPointer+0x8d>
    5487:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    548b:	48 8b 00             	mov    (%rax),%rax
    548e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5492:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5496:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    549a:	48 8b 40 10          	mov    0x10(%rax),%rax
    549e:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    54a2:	75 33                	jne    54d7 <cJSON_ReplaceItemViaPointer+0xce>
    54a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    54a8:	48 8b 40 10          	mov    0x10(%rax),%rax
    54ac:	48 8b 50 08          	mov    0x8(%rax),%rdx
    54b0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    54b4:	48 8b 40 10          	mov    0x10(%rax),%rax
    54b8:	48 39 c2             	cmp    %rax,%rdx
    54bb:	75 0c                	jne    54c9 <cJSON_ReplaceItemViaPointer+0xc0>
    54bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    54c1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    54c5:	48 89 50 08          	mov    %rdx,0x8(%rax)
    54c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    54cd:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    54d1:	48 89 50 10          	mov    %rdx,0x10(%rax)
    54d5:	eb 38                	jmp    550f <cJSON_ReplaceItemViaPointer+0x106>
    54d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    54db:	48 8b 40 08          	mov    0x8(%rax),%rax
    54df:	48 85 c0             	test   %rax,%rax
    54e2:	74 0f                	je     54f3 <cJSON_ReplaceItemViaPointer+0xea>
    54e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    54e8:	48 8b 40 08          	mov    0x8(%rax),%rax
    54ec:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    54f0:	48 89 10             	mov    %rdx,(%rax)
    54f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    54f7:	48 8b 00             	mov    (%rax),%rax
    54fa:	48 85 c0             	test   %rax,%rax
    54fd:	75 10                	jne    550f <cJSON_ReplaceItemViaPointer+0x106>
    54ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5503:	48 8b 40 10          	mov    0x10(%rax),%rax
    5507:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    550b:	48 89 50 08          	mov    %rdx,0x8(%rax)
    550f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5513:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    551a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    551e:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    5525:	00 
    5526:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    552a:	48 89 c7             	mov    %rax,%rdi
    552d:	e8 06 c5 ff ff       	call   1a38 <cJSON_Delete>
    5532:	b8 01 00 00 00       	mov    $0x1,%eax
    5537:	c9                   	leave
    5538:	c3                   	ret

0000000000005539 <cJSON_ReplaceItemInArray>:
    5539:	55                   	push   %rbp
    553a:	48 89 e5             	mov    %rsp,%rbp
    553d:	48 83 ec 20          	sub    $0x20,%rsp
    5541:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5545:	89 75 f4             	mov    %esi,-0xc(%rbp)
    5548:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    554c:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    5550:	79 07                	jns    5559 <cJSON_ReplaceItemInArray+0x20>
    5552:	b8 00 00 00 00       	mov    $0x0,%eax
    5557:	eb 2b                	jmp    5584 <cJSON_ReplaceItemInArray+0x4b>
    5559:	8b 45 f4             	mov    -0xc(%rbp),%eax
    555c:	48 63 d0             	movslq %eax,%rdx
    555f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5563:	48 89 d6             	mov    %rdx,%rsi
    5566:	48 89 c7             	mov    %rax,%rdi
    5569:	e8 c2 f2 ff ff       	call   4830 <get_array_item>
    556e:	48 89 c1             	mov    %rax,%rcx
    5571:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5575:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5579:	48 89 ce             	mov    %rcx,%rsi
    557c:	48 89 c7             	mov    %rax,%rdi
    557f:	e8 85 fe ff ff       	call   5409 <cJSON_ReplaceItemViaPointer>
    5584:	c9                   	leave
    5585:	c3                   	ret

0000000000005586 <replace_item_in_object>:
    5586:	55                   	push   %rbp
    5587:	48 89 e5             	mov    %rsp,%rbp
    558a:	48 83 ec 20          	sub    $0x20,%rsp
    558e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5592:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5596:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    559a:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
    559d:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    55a2:	74 07                	je     55ab <replace_item_in_object+0x25>
    55a4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    55a9:	75 0a                	jne    55b5 <replace_item_in_object+0x2f>
    55ab:	b8 00 00 00 00       	mov    $0x0,%eax
    55b0:	e9 9e 00 00 00       	jmp    5653 <replace_item_in_object+0xcd>
    55b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    55b9:	8b 40 18             	mov    0x18(%rax),%eax
    55bc:	25 00 02 00 00       	and    $0x200,%eax
    55c1:	85 c0                	test   %eax,%eax
    55c3:	75 1d                	jne    55e2 <replace_item_in_object+0x5c>
    55c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    55c9:	48 8b 40 38          	mov    0x38(%rax),%rax
    55cd:	48 85 c0             	test   %rax,%rax
    55d0:	74 10                	je     55e2 <replace_item_in_object+0x5c>
    55d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    55d6:	48 8b 40 38          	mov    0x38(%rax),%rax
    55da:	48 89 c7             	mov    %rax,%rdi
    55dd:	e8 4c 13 00 00       	call   692e <cJSON_free>
    55e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    55e6:	48 8d 15 c3 4a 00 00 	lea    0x4ac3(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    55ed:	48 89 d6             	mov    %rdx,%rsi
    55f0:	48 89 c7             	mov    %rax,%rdi
    55f3:	e8 ad c2 ff ff       	call   18a5 <cJSON_strdup>
    55f8:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    55fc:	48 89 42 38          	mov    %rax,0x38(%rdx)
    5600:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5604:	48 8b 40 38          	mov    0x38(%rax),%rax
    5608:	48 85 c0             	test   %rax,%rax
    560b:	75 07                	jne    5614 <replace_item_in_object+0x8e>
    560d:	b8 00 00 00 00       	mov    $0x0,%eax
    5612:	eb 3f                	jmp    5653 <replace_item_in_object+0xcd>
    5614:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5618:	8b 40 18             	mov    0x18(%rax),%eax
    561b:	80 e4 fd             	and    $0xfd,%ah
    561e:	89 c2                	mov    %eax,%edx
    5620:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5624:	89 50 18             	mov    %edx,0x18(%rax)
    5627:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    562a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    562e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5632:	48 89 ce             	mov    %rcx,%rsi
    5635:	48 89 c7             	mov    %rax,%rdi
    5638:	e8 7a f2 ff ff       	call   48b7 <get_object_item>
    563d:	48 89 c1             	mov    %rax,%rcx
    5640:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5644:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5648:	48 89 ce             	mov    %rcx,%rsi
    564b:	48 89 c7             	mov    %rax,%rdi
    564e:	e8 b6 fd ff ff       	call   5409 <cJSON_ReplaceItemViaPointer>
    5653:	c9                   	leave
    5654:	c3                   	ret

0000000000005655 <cJSON_ReplaceItemInObject>:
    5655:	55                   	push   %rbp
    5656:	48 89 e5             	mov    %rsp,%rbp
    5659:	48 83 ec 20          	sub    $0x20,%rsp
    565d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5661:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5665:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    5669:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    566d:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    5671:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5675:	b9 00 00 00 00       	mov    $0x0,%ecx
    567a:	48 89 c7             	mov    %rax,%rdi
    567d:	e8 04 ff ff ff       	call   5586 <replace_item_in_object>
    5682:	c9                   	leave
    5683:	c3                   	ret

0000000000005684 <cJSON_ReplaceItemInObjectCaseSensitive>:
    5684:	55                   	push   %rbp
    5685:	48 89 e5             	mov    %rsp,%rbp
    5688:	48 83 ec 20          	sub    $0x20,%rsp
    568c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5690:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5694:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    5698:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    569c:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    56a0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    56a4:	b9 01 00 00 00       	mov    $0x1,%ecx
    56a9:	48 89 c7             	mov    %rax,%rdi
    56ac:	e8 d5 fe ff ff       	call   5586 <replace_item_in_object>
    56b1:	c9                   	leave
    56b2:	c3                   	ret

00000000000056b3 <cJSON_CreateNull>:
    56b3:	55                   	push   %rbp
    56b4:	48 89 e5             	mov    %rsp,%rbp
    56b7:	48 83 ec 10          	sub    $0x10,%rsp
    56bb:	48 8d 05 ee 49 00 00 	lea    0x49ee(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    56c2:	48 89 c7             	mov    %rax,%rdi
    56c5:	e8 2d c3 ff ff       	call   19f7 <cJSON_New_Item>
    56ca:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    56ce:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    56d3:	74 0b                	je     56e0 <cJSON_CreateNull+0x2d>
    56d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    56d9:	c7 40 18 04 00 00 00 	movl   $0x4,0x18(%rax)
    56e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    56e4:	c9                   	leave
    56e5:	c3                   	ret

00000000000056e6 <cJSON_CreateTrue>:
    56e6:	55                   	push   %rbp
    56e7:	48 89 e5             	mov    %rsp,%rbp
    56ea:	48 83 ec 10          	sub    $0x10,%rsp
    56ee:	48 8d 05 bb 49 00 00 	lea    0x49bb(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    56f5:	48 89 c7             	mov    %rax,%rdi
    56f8:	e8 fa c2 ff ff       	call   19f7 <cJSON_New_Item>
    56fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5701:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5706:	74 0b                	je     5713 <cJSON_CreateTrue+0x2d>
    5708:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    570c:	c7 40 18 02 00 00 00 	movl   $0x2,0x18(%rax)
    5713:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5717:	c9                   	leave
    5718:	c3                   	ret

0000000000005719 <cJSON_CreateFalse>:
    5719:	55                   	push   %rbp
    571a:	48 89 e5             	mov    %rsp,%rbp
    571d:	48 83 ec 10          	sub    $0x10,%rsp
    5721:	48 8d 05 88 49 00 00 	lea    0x4988(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    5728:	48 89 c7             	mov    %rax,%rdi
    572b:	e8 c7 c2 ff ff       	call   19f7 <cJSON_New_Item>
    5730:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5734:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5739:	74 0b                	je     5746 <cJSON_CreateFalse+0x2d>
    573b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    573f:	c7 40 18 01 00 00 00 	movl   $0x1,0x18(%rax)
    5746:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    574a:	c9                   	leave
    574b:	c3                   	ret

000000000000574c <cJSON_CreateBool>:
    574c:	55                   	push   %rbp
    574d:	48 89 e5             	mov    %rsp,%rbp
    5750:	48 83 ec 20          	sub    $0x20,%rsp
    5754:	89 7d ec             	mov    %edi,-0x14(%rbp)
    5757:	48 8d 05 52 49 00 00 	lea    0x4952(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    575e:	48 89 c7             	mov    %rax,%rdi
    5761:	e8 91 c2 ff ff       	call   19f7 <cJSON_New_Item>
    5766:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    576a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    576f:	74 19                	je     578a <cJSON_CreateBool+0x3e>
    5771:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    5775:	74 07                	je     577e <cJSON_CreateBool+0x32>
    5777:	ba 02 00 00 00       	mov    $0x2,%edx
    577c:	eb 05                	jmp    5783 <cJSON_CreateBool+0x37>
    577e:	ba 01 00 00 00       	mov    $0x1,%edx
    5783:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5787:	89 50 18             	mov    %edx,0x18(%rax)
    578a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    578e:	c9                   	leave
    578f:	c3                   	ret

0000000000005790 <cJSON_CreateNumber>:
    5790:	55                   	push   %rbp
    5791:	48 89 e5             	mov    %rsp,%rbp
    5794:	48 83 ec 20          	sub    $0x20,%rsp
    5798:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    579d:	48 8d 05 0c 49 00 00 	lea    0x490c(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    57a4:	48 89 c7             	mov    %rax,%rdi
    57a7:	e8 4b c2 ff ff       	call   19f7 <cJSON_New_Item>
    57ac:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    57b0:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    57b5:	74 61                	je     5818 <cJSON_CreateNumber+0x88>
    57b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    57bb:	c7 40 18 08 00 00 00 	movl   $0x8,0x18(%rax)
    57c2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    57c6:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    57cb:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    57d0:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    57d5:	66 0f 2f 05 33 1b 00 	comisd 0x1b33(%rip),%xmm0        # 7310 <default_buffer_size.0+0x10>
    57dc:	00 
    57dd:	72 0d                	jb     57ec <cJSON_CreateNumber+0x5c>
    57df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    57e3:	c7 40 28 ff ff ff 7f 	movl   $0x7fffffff,0x28(%rax)
    57ea:	eb 2c                	jmp    5818 <cJSON_CreateNumber+0x88>
    57ec:	f2 0f 10 05 24 1b 00 	movsd  0x1b24(%rip),%xmm0        # 7318 <default_buffer_size.0+0x18>
    57f3:	00 
    57f4:	66 0f 2f 45 e8       	comisd -0x18(%rbp),%xmm0
    57f9:	72 0d                	jb     5808 <cJSON_CreateNumber+0x78>
    57fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    57ff:	c7 40 28 00 00 00 80 	movl   $0x80000000,0x28(%rax)
    5806:	eb 10                	jmp    5818 <cJSON_CreateNumber+0x88>
    5808:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    580d:	f2 0f 2c d0          	cvttsd2si %xmm0,%edx
    5811:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5815:	89 50 28             	mov    %edx,0x28(%rax)
    5818:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    581c:	c9                   	leave
    581d:	c3                   	ret

000000000000581e <cJSON_CreateString>:
    581e:	55                   	push   %rbp
    581f:	48 89 e5             	mov    %rsp,%rbp
    5822:	48 83 ec 20          	sub    $0x20,%rsp
    5826:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    582a:	48 8d 05 7f 48 00 00 	lea    0x487f(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    5831:	48 89 c7             	mov    %rax,%rdi
    5834:	e8 be c1 ff ff       	call   19f7 <cJSON_New_Item>
    5839:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    583d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5842:	74 49                	je     588d <cJSON_CreateString+0x6f>
    5844:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5848:	c7 40 18 10 00 00 00 	movl   $0x10,0x18(%rax)
    584f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5853:	48 8d 15 56 48 00 00 	lea    0x4856(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    585a:	48 89 d6             	mov    %rdx,%rsi
    585d:	48 89 c7             	mov    %rax,%rdi
    5860:	e8 40 c0 ff ff       	call   18a5 <cJSON_strdup>
    5865:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    5869:	48 89 42 20          	mov    %rax,0x20(%rdx)
    586d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5871:	48 8b 40 20          	mov    0x20(%rax),%rax
    5875:	48 85 c0             	test   %rax,%rax
    5878:	75 13                	jne    588d <cJSON_CreateString+0x6f>
    587a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    587e:	48 89 c7             	mov    %rax,%rdi
    5881:	e8 b2 c1 ff ff       	call   1a38 <cJSON_Delete>
    5886:	b8 00 00 00 00       	mov    $0x0,%eax
    588b:	eb 04                	jmp    5891 <cJSON_CreateString+0x73>
    588d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5891:	c9                   	leave
    5892:	c3                   	ret

0000000000005893 <cJSON_CreateStringReference>:
    5893:	55                   	push   %rbp
    5894:	48 89 e5             	mov    %rsp,%rbp
    5897:	48 83 ec 20          	sub    $0x20,%rsp
    589b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    589f:	48 8d 05 0a 48 00 00 	lea    0x480a(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    58a6:	48 89 c7             	mov    %rax,%rdi
    58a9:	e8 49 c1 ff ff       	call   19f7 <cJSON_New_Item>
    58ae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    58b2:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    58b7:	74 1f                	je     58d8 <cJSON_CreateStringReference+0x45>
    58b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    58bd:	c7 40 18 10 01 00 00 	movl   $0x110,0x18(%rax)
    58c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    58c8:	48 89 c7             	mov    %rax,%rdi
    58cb:	e8 cb f2 ff ff       	call   4b9b <cast_away_const>
    58d0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    58d4:	48 89 42 20          	mov    %rax,0x20(%rdx)
    58d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    58dc:	c9                   	leave
    58dd:	c3                   	ret

00000000000058de <cJSON_CreateObjectReference>:
    58de:	55                   	push   %rbp
    58df:	48 89 e5             	mov    %rsp,%rbp
    58e2:	48 83 ec 20          	sub    $0x20,%rsp
    58e6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    58ea:	48 8d 05 bf 47 00 00 	lea    0x47bf(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    58f1:	48 89 c7             	mov    %rax,%rdi
    58f4:	e8 fe c0 ff ff       	call   19f7 <cJSON_New_Item>
    58f9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    58fd:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5902:	74 1f                	je     5923 <cJSON_CreateObjectReference+0x45>
    5904:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5908:	c7 40 18 40 01 00 00 	movl   $0x140,0x18(%rax)
    590f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5913:	48 89 c7             	mov    %rax,%rdi
    5916:	e8 80 f2 ff ff       	call   4b9b <cast_away_const>
    591b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    591f:	48 89 42 10          	mov    %rax,0x10(%rdx)
    5923:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5927:	c9                   	leave
    5928:	c3                   	ret

0000000000005929 <cJSON_CreateArrayReference>:
    5929:	55                   	push   %rbp
    592a:	48 89 e5             	mov    %rsp,%rbp
    592d:	48 83 ec 20          	sub    $0x20,%rsp
    5931:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5935:	48 8d 05 74 47 00 00 	lea    0x4774(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    593c:	48 89 c7             	mov    %rax,%rdi
    593f:	e8 b3 c0 ff ff       	call   19f7 <cJSON_New_Item>
    5944:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5948:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    594d:	74 1f                	je     596e <cJSON_CreateArrayReference+0x45>
    594f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5953:	c7 40 18 20 01 00 00 	movl   $0x120,0x18(%rax)
    595a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    595e:	48 89 c7             	mov    %rax,%rdi
    5961:	e8 35 f2 ff ff       	call   4b9b <cast_away_const>
    5966:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    596a:	48 89 42 10          	mov    %rax,0x10(%rdx)
    596e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5972:	c9                   	leave
    5973:	c3                   	ret

0000000000005974 <cJSON_CreateRaw>:
    5974:	55                   	push   %rbp
    5975:	48 89 e5             	mov    %rsp,%rbp
    5978:	48 83 ec 20          	sub    $0x20,%rsp
    597c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5980:	48 8d 05 29 47 00 00 	lea    0x4729(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    5987:	48 89 c7             	mov    %rax,%rdi
    598a:	e8 68 c0 ff ff       	call   19f7 <cJSON_New_Item>
    598f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5993:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5998:	74 49                	je     59e3 <cJSON_CreateRaw+0x6f>
    599a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    599e:	c7 40 18 80 00 00 00 	movl   $0x80,0x18(%rax)
    59a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    59a9:	48 8d 15 00 47 00 00 	lea    0x4700(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    59b0:	48 89 d6             	mov    %rdx,%rsi
    59b3:	48 89 c7             	mov    %rax,%rdi
    59b6:	e8 ea be ff ff       	call   18a5 <cJSON_strdup>
    59bb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    59bf:	48 89 42 20          	mov    %rax,0x20(%rdx)
    59c3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    59c7:	48 8b 40 20          	mov    0x20(%rax),%rax
    59cb:	48 85 c0             	test   %rax,%rax
    59ce:	75 13                	jne    59e3 <cJSON_CreateRaw+0x6f>
    59d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    59d4:	48 89 c7             	mov    %rax,%rdi
    59d7:	e8 5c c0 ff ff       	call   1a38 <cJSON_Delete>
    59dc:	b8 00 00 00 00       	mov    $0x0,%eax
    59e1:	eb 04                	jmp    59e7 <cJSON_CreateRaw+0x73>
    59e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    59e7:	c9                   	leave
    59e8:	c3                   	ret

00000000000059e9 <cJSON_CreateArray>:
    59e9:	55                   	push   %rbp
    59ea:	48 89 e5             	mov    %rsp,%rbp
    59ed:	48 83 ec 10          	sub    $0x10,%rsp
    59f1:	48 8d 05 b8 46 00 00 	lea    0x46b8(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    59f8:	48 89 c7             	mov    %rax,%rdi
    59fb:	e8 f7 bf ff ff       	call   19f7 <cJSON_New_Item>
    5a00:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5a04:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5a09:	74 0b                	je     5a16 <cJSON_CreateArray+0x2d>
    5a0b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5a0f:	c7 40 18 20 00 00 00 	movl   $0x20,0x18(%rax)
    5a16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5a1a:	c9                   	leave
    5a1b:	c3                   	ret

0000000000005a1c <cJSON_CreateObject>:
    5a1c:	55                   	push   %rbp
    5a1d:	48 89 e5             	mov    %rsp,%rbp
    5a20:	48 83 ec 10          	sub    $0x10,%rsp
    5a24:	48 8d 05 85 46 00 00 	lea    0x4685(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    5a2b:	48 89 c7             	mov    %rax,%rdi
    5a2e:	e8 c4 bf ff ff       	call   19f7 <cJSON_New_Item>
    5a33:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5a37:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5a3c:	74 0b                	je     5a49 <cJSON_CreateObject+0x2d>
    5a3e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5a42:	c7 40 18 40 00 00 00 	movl   $0x40,0x18(%rax)
    5a49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5a4d:	c9                   	leave
    5a4e:	c3                   	ret

0000000000005a4f <cJSON_CreateIntArray>:
    5a4f:	55                   	push   %rbp
    5a50:	48 89 e5             	mov    %rsp,%rbp
    5a53:	48 83 ec 30          	sub    $0x30,%rsp
    5a57:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5a5b:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    5a5e:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5a65:	00 
    5a66:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    5a6d:	00 
    5a6e:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    5a75:	00 
    5a76:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    5a7d:	00 
    5a7e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    5a82:	78 07                	js     5a8b <cJSON_CreateIntArray+0x3c>
    5a84:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    5a89:	75 0a                	jne    5a95 <cJSON_CreateIntArray+0x46>
    5a8b:	b8 00 00 00 00       	mov    $0x0,%eax
    5a90:	e9 d0 00 00 00       	jmp    5b65 <cJSON_CreateIntArray+0x116>
    5a95:	e8 4f ff ff ff       	call   59e9 <cJSON_CreateArray>
    5a9a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5a9e:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5aa5:	00 
    5aa6:	eb 7f                	jmp    5b27 <cJSON_CreateIntArray+0xd8>
    5aa8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5aac:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5ab3:	00 
    5ab4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5ab8:	48 01 d0             	add    %rdx,%rax
    5abb:	8b 00                	mov    (%rax),%eax
    5abd:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5ac1:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    5ac5:	66 48 0f 7e c8       	movq   %xmm1,%rax
    5aca:	66 48 0f 6e c0       	movq   %rax,%xmm0
    5acf:	e8 bc fc ff ff       	call   5790 <cJSON_CreateNumber>
    5ad4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5ad8:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    5add:	75 13                	jne    5af2 <cJSON_CreateIntArray+0xa3>
    5adf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ae3:	48 89 c7             	mov    %rax,%rdi
    5ae6:	e8 4d bf ff ff       	call   1a38 <cJSON_Delete>
    5aeb:	b8 00 00 00 00       	mov    $0x0,%eax
    5af0:	eb 73                	jmp    5b65 <cJSON_CreateIntArray+0x116>
    5af2:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    5af7:	75 0e                	jne    5b07 <cJSON_CreateIntArray+0xb8>
    5af9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5afd:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5b01:	48 89 50 10          	mov    %rdx,0x10(%rax)
    5b05:	eb 13                	jmp    5b1a <cJSON_CreateIntArray+0xcb>
    5b07:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5b0b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5b0f:	48 89 d6             	mov    %rdx,%rsi
    5b12:	48 89 c7             	mov    %rax,%rdi
    5b15:	e8 f0 ee ff ff       	call   4a0a <suffix_object>
    5b1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5b1e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5b22:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    5b27:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5b2c:	74 0f                	je     5b3d <cJSON_CreateIntArray+0xee>
    5b2e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    5b31:	48 98                	cltq
    5b33:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    5b37:	0f 82 6b ff ff ff    	jb     5aa8 <cJSON_CreateIntArray+0x59>
    5b3d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5b42:	74 1d                	je     5b61 <cJSON_CreateIntArray+0x112>
    5b44:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5b48:	48 8b 40 10          	mov    0x10(%rax),%rax
    5b4c:	48 85 c0             	test   %rax,%rax
    5b4f:	74 10                	je     5b61 <cJSON_CreateIntArray+0x112>
    5b51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5b55:	48 8b 40 10          	mov    0x10(%rax),%rax
    5b59:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5b5d:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5b61:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5b65:	c9                   	leave
    5b66:	c3                   	ret

0000000000005b67 <cJSON_CreateFloatArray>:
    5b67:	55                   	push   %rbp
    5b68:	48 89 e5             	mov    %rsp,%rbp
    5b6b:	48 83 ec 30          	sub    $0x30,%rsp
    5b6f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5b73:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    5b76:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5b7d:	00 
    5b7e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    5b85:	00 
    5b86:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    5b8d:	00 
    5b8e:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    5b95:	00 
    5b96:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    5b9a:	78 07                	js     5ba3 <cJSON_CreateFloatArray+0x3c>
    5b9c:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    5ba1:	75 0a                	jne    5bad <cJSON_CreateFloatArray+0x46>
    5ba3:	b8 00 00 00 00       	mov    $0x0,%eax
    5ba8:	e9 d5 00 00 00       	jmp    5c82 <cJSON_CreateFloatArray+0x11b>
    5bad:	e8 37 fe ff ff       	call   59e9 <cJSON_CreateArray>
    5bb2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5bb6:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5bbd:	00 
    5bbe:	e9 81 00 00 00       	jmp    5c44 <cJSON_CreateFloatArray+0xdd>
    5bc3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5bc7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5bce:	00 
    5bcf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5bd3:	48 01 d0             	add    %rdx,%rax
    5bd6:	f3 0f 10 00          	movss  (%rax),%xmm0
    5bda:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5bde:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    5be2:	66 48 0f 7e c8       	movq   %xmm1,%rax
    5be7:	66 48 0f 6e c0       	movq   %rax,%xmm0
    5bec:	e8 9f fb ff ff       	call   5790 <cJSON_CreateNumber>
    5bf1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5bf5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    5bfa:	75 13                	jne    5c0f <cJSON_CreateFloatArray+0xa8>
    5bfc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c00:	48 89 c7             	mov    %rax,%rdi
    5c03:	e8 30 be ff ff       	call   1a38 <cJSON_Delete>
    5c08:	b8 00 00 00 00       	mov    $0x0,%eax
    5c0d:	eb 73                	jmp    5c82 <cJSON_CreateFloatArray+0x11b>
    5c0f:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    5c14:	75 0e                	jne    5c24 <cJSON_CreateFloatArray+0xbd>
    5c16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c1a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5c1e:	48 89 50 10          	mov    %rdx,0x10(%rax)
    5c22:	eb 13                	jmp    5c37 <cJSON_CreateFloatArray+0xd0>
    5c24:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5c28:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5c2c:	48 89 d6             	mov    %rdx,%rsi
    5c2f:	48 89 c7             	mov    %rax,%rdi
    5c32:	e8 d3 ed ff ff       	call   4a0a <suffix_object>
    5c37:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5c3b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5c3f:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    5c44:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5c49:	74 0f                	je     5c5a <cJSON_CreateFloatArray+0xf3>
    5c4b:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    5c4e:	48 98                	cltq
    5c50:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    5c54:	0f 82 69 ff ff ff    	jb     5bc3 <cJSON_CreateFloatArray+0x5c>
    5c5a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5c5f:	74 1d                	je     5c7e <cJSON_CreateFloatArray+0x117>
    5c61:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c65:	48 8b 40 10          	mov    0x10(%rax),%rax
    5c69:	48 85 c0             	test   %rax,%rax
    5c6c:	74 10                	je     5c7e <cJSON_CreateFloatArray+0x117>
    5c6e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c72:	48 8b 40 10          	mov    0x10(%rax),%rax
    5c76:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5c7a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5c7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c82:	c9                   	leave
    5c83:	c3                   	ret

0000000000005c84 <cJSON_CreateDoubleArray>:
    5c84:	55                   	push   %rbp
    5c85:	48 89 e5             	mov    %rsp,%rbp
    5c88:	48 83 ec 30          	sub    $0x30,%rsp
    5c8c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5c90:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    5c93:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5c9a:	00 
    5c9b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    5ca2:	00 
    5ca3:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    5caa:	00 
    5cab:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    5cb2:	00 
    5cb3:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    5cb7:	78 07                	js     5cc0 <cJSON_CreateDoubleArray+0x3c>
    5cb9:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    5cbe:	75 0a                	jne    5cca <cJSON_CreateDoubleArray+0x46>
    5cc0:	b8 00 00 00 00       	mov    $0x0,%eax
    5cc5:	e9 c4 00 00 00       	jmp    5d8e <cJSON_CreateDoubleArray+0x10a>
    5cca:	e8 1a fd ff ff       	call   59e9 <cJSON_CreateArray>
    5ccf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5cd3:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5cda:	00 
    5cdb:	eb 73                	jmp    5d50 <cJSON_CreateDoubleArray+0xcc>
    5cdd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ce1:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5ce8:	00 
    5ce9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5ced:	48 01 d0             	add    %rdx,%rax
    5cf0:	48 8b 00             	mov    (%rax),%rax
    5cf3:	66 48 0f 6e c0       	movq   %rax,%xmm0
    5cf8:	e8 93 fa ff ff       	call   5790 <cJSON_CreateNumber>
    5cfd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5d01:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    5d06:	75 13                	jne    5d1b <cJSON_CreateDoubleArray+0x97>
    5d08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d0c:	48 89 c7             	mov    %rax,%rdi
    5d0f:	e8 24 bd ff ff       	call   1a38 <cJSON_Delete>
    5d14:	b8 00 00 00 00       	mov    $0x0,%eax
    5d19:	eb 73                	jmp    5d8e <cJSON_CreateDoubleArray+0x10a>
    5d1b:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    5d20:	75 0e                	jne    5d30 <cJSON_CreateDoubleArray+0xac>
    5d22:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d26:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5d2a:	48 89 50 10          	mov    %rdx,0x10(%rax)
    5d2e:	eb 13                	jmp    5d43 <cJSON_CreateDoubleArray+0xbf>
    5d30:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5d34:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5d38:	48 89 d6             	mov    %rdx,%rsi
    5d3b:	48 89 c7             	mov    %rax,%rdi
    5d3e:	e8 c7 ec ff ff       	call   4a0a <suffix_object>
    5d43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d47:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5d4b:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    5d50:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5d55:	74 0f                	je     5d66 <cJSON_CreateDoubleArray+0xe2>
    5d57:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    5d5a:	48 98                	cltq
    5d5c:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    5d60:	0f 82 77 ff ff ff    	jb     5cdd <cJSON_CreateDoubleArray+0x59>
    5d66:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5d6b:	74 1d                	je     5d8a <cJSON_CreateDoubleArray+0x106>
    5d6d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d71:	48 8b 40 10          	mov    0x10(%rax),%rax
    5d75:	48 85 c0             	test   %rax,%rax
    5d78:	74 10                	je     5d8a <cJSON_CreateDoubleArray+0x106>
    5d7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d7e:	48 8b 40 10          	mov    0x10(%rax),%rax
    5d82:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5d86:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5d8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d8e:	c9                   	leave
    5d8f:	c3                   	ret

0000000000005d90 <cJSON_CreateStringArray>:
    5d90:	55                   	push   %rbp
    5d91:	48 89 e5             	mov    %rsp,%rbp
    5d94:	48 83 ec 30          	sub    $0x30,%rsp
    5d98:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5d9c:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    5d9f:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5da6:	00 
    5da7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    5dae:	00 
    5daf:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    5db6:	00 
    5db7:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    5dbe:	00 
    5dbf:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    5dc3:	78 07                	js     5dcc <cJSON_CreateStringArray+0x3c>
    5dc5:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    5dca:	75 0a                	jne    5dd6 <cJSON_CreateStringArray+0x46>
    5dcc:	b8 00 00 00 00       	mov    $0x0,%eax
    5dd1:	e9 c2 00 00 00       	jmp    5e98 <cJSON_CreateStringArray+0x108>
    5dd6:	e8 0e fc ff ff       	call   59e9 <cJSON_CreateArray>
    5ddb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ddf:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5de6:	00 
    5de7:	eb 71                	jmp    5e5a <cJSON_CreateStringArray+0xca>
    5de9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ded:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5df4:	00 
    5df5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5df9:	48 01 d0             	add    %rdx,%rax
    5dfc:	48 8b 00             	mov    (%rax),%rax
    5dff:	48 89 c7             	mov    %rax,%rdi
    5e02:	e8 17 fa ff ff       	call   581e <cJSON_CreateString>
    5e07:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5e0b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    5e10:	75 13                	jne    5e25 <cJSON_CreateStringArray+0x95>
    5e12:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5e16:	48 89 c7             	mov    %rax,%rdi
    5e19:	e8 1a bc ff ff       	call   1a38 <cJSON_Delete>
    5e1e:	b8 00 00 00 00       	mov    $0x0,%eax
    5e23:	eb 73                	jmp    5e98 <cJSON_CreateStringArray+0x108>
    5e25:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    5e2a:	75 0e                	jne    5e3a <cJSON_CreateStringArray+0xaa>
    5e2c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5e30:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5e34:	48 89 50 10          	mov    %rdx,0x10(%rax)
    5e38:	eb 13                	jmp    5e4d <cJSON_CreateStringArray+0xbd>
    5e3a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5e3e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5e42:	48 89 d6             	mov    %rdx,%rsi
    5e45:	48 89 c7             	mov    %rax,%rdi
    5e48:	e8 bd eb ff ff       	call   4a0a <suffix_object>
    5e4d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5e51:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5e55:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    5e5a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5e5f:	74 0f                	je     5e70 <cJSON_CreateStringArray+0xe0>
    5e61:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    5e64:	48 98                	cltq
    5e66:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    5e6a:	0f 82 79 ff ff ff    	jb     5de9 <cJSON_CreateStringArray+0x59>
    5e70:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5e75:	74 1d                	je     5e94 <cJSON_CreateStringArray+0x104>
    5e77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5e7b:	48 8b 40 10          	mov    0x10(%rax),%rax
    5e7f:	48 85 c0             	test   %rax,%rax
    5e82:	74 10                	je     5e94 <cJSON_CreateStringArray+0x104>
    5e84:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5e88:	48 8b 40 10          	mov    0x10(%rax),%rax
    5e8c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5e90:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5e94:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5e98:	c9                   	leave
    5e99:	c3                   	ret

0000000000005e9a <cJSON_Duplicate>:
    5e9a:	55                   	push   %rbp
    5e9b:	48 89 e5             	mov    %rsp,%rbp
    5e9e:	48 83 ec 10          	sub    $0x10,%rsp
    5ea2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5ea6:	89 75 f4             	mov    %esi,-0xc(%rbp)
    5ea9:	8b 55 f4             	mov    -0xc(%rbp),%edx
    5eac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5eb0:	be 00 00 00 00       	mov    $0x0,%esi
    5eb5:	48 89 c7             	mov    %rax,%rdi
    5eb8:	e8 02 00 00 00       	call   5ebf <cJSON_Duplicate_rec>
    5ebd:	c9                   	leave
    5ebe:	c3                   	ret

0000000000005ebf <cJSON_Duplicate_rec>:
    5ebf:	55                   	push   %rbp
    5ec0:	48 89 e5             	mov    %rsp,%rbp
    5ec3:	48 83 ec 40          	sub    $0x40,%rsp
    5ec7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5ecb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5ecf:	89 55 cc             	mov    %edx,-0x34(%rbp)
    5ed2:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    5ed9:	00 
    5eda:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    5ee1:	00 
    5ee2:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    5ee9:	00 
    5eea:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    5ef1:	00 
    5ef2:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    5ef7:	0f 84 c0 01 00 00    	je     60bd <cJSON_Duplicate_rec+0x1fe>
    5efd:	48 8d 05 ac 41 00 00 	lea    0x41ac(%rip),%rax        # a0b0 <malloc@GLIBC_2.2.5>
    5f04:	48 89 c7             	mov    %rax,%rdi
    5f07:	e8 eb ba ff ff       	call   19f7 <cJSON_New_Item>
    5f0c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    5f10:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    5f15:	0f 84 a5 01 00 00    	je     60c0 <cJSON_Duplicate_rec+0x201>
    5f1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5f1f:	8b 40 18             	mov    0x18(%rax),%eax
    5f22:	80 e4 fe             	and    $0xfe,%ah
    5f25:	89 c2                	mov    %eax,%edx
    5f27:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f2b:	89 50 18             	mov    %edx,0x18(%rax)
    5f2e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5f32:	8b 50 28             	mov    0x28(%rax),%edx
    5f35:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f39:	89 50 28             	mov    %edx,0x28(%rax)
    5f3c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5f40:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    5f45:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f49:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    5f4e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5f52:	48 8b 40 20          	mov    0x20(%rax),%rax
    5f56:	48 85 c0             	test   %rax,%rax
    5f59:	74 33                	je     5f8e <cJSON_Duplicate_rec+0xcf>
    5f5b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5f5f:	48 8b 40 20          	mov    0x20(%rax),%rax
    5f63:	48 8d 15 46 41 00 00 	lea    0x4146(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    5f6a:	48 89 d6             	mov    %rdx,%rsi
    5f6d:	48 89 c7             	mov    %rax,%rdi
    5f70:	e8 30 b9 ff ff       	call   18a5 <cJSON_strdup>
    5f75:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5f79:	48 89 42 20          	mov    %rax,0x20(%rdx)
    5f7d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f81:	48 8b 40 20          	mov    0x20(%rax),%rax
    5f85:	48 85 c0             	test   %rax,%rax
    5f88:	0f 84 35 01 00 00    	je     60c3 <cJSON_Duplicate_rec+0x204>
    5f8e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5f92:	48 8b 40 38          	mov    0x38(%rax),%rax
    5f96:	48 85 c0             	test   %rax,%rax
    5f99:	74 4d                	je     5fe8 <cJSON_Duplicate_rec+0x129>
    5f9b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5f9f:	8b 40 18             	mov    0x18(%rax),%eax
    5fa2:	25 00 02 00 00       	and    $0x200,%eax
    5fa7:	85 c0                	test   %eax,%eax
    5fa9:	74 0a                	je     5fb5 <cJSON_Duplicate_rec+0xf6>
    5fab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5faf:	48 8b 40 38          	mov    0x38(%rax),%rax
    5fb3:	eb 1a                	jmp    5fcf <cJSON_Duplicate_rec+0x110>
    5fb5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5fb9:	48 8b 40 38          	mov    0x38(%rax),%rax
    5fbd:	48 8d 15 ec 40 00 00 	lea    0x40ec(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    5fc4:	48 89 d6             	mov    %rdx,%rsi
    5fc7:	48 89 c7             	mov    %rax,%rdi
    5fca:	e8 d6 b8 ff ff       	call   18a5 <cJSON_strdup>
    5fcf:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5fd3:	48 89 42 38          	mov    %rax,0x38(%rdx)
    5fd7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5fdb:	48 8b 40 38          	mov    0x38(%rax),%rax
    5fdf:	48 85 c0             	test   %rax,%rax
    5fe2:	0f 84 de 00 00 00    	je     60c6 <cJSON_Duplicate_rec+0x207>
    5fe8:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    5fec:	75 09                	jne    5ff7 <cJSON_Duplicate_rec+0x138>
    5fee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ff2:	e9 ee 00 00 00       	jmp    60e5 <cJSON_Duplicate_rec+0x226>
    5ff7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5ffb:	48 8b 40 10          	mov    0x10(%rax),%rax
    5fff:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    6003:	e9 80 00 00 00       	jmp    6088 <cJSON_Duplicate_rec+0x1c9>
    6008:	48 81 7d d0 0f 27 00 	cmpq   $0x270f,-0x30(%rbp)
    600f:	00 
    6010:	0f 87 b3 00 00 00    	ja     60c9 <cJSON_Duplicate_rec+0x20a>
    6016:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    601a:	48 8d 48 01          	lea    0x1(%rax),%rcx
    601e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6022:	ba 01 00 00 00       	mov    $0x1,%edx
    6027:	48 89 ce             	mov    %rcx,%rsi
    602a:	48 89 c7             	mov    %rax,%rdi
    602d:	e8 8d fe ff ff       	call   5ebf <cJSON_Duplicate_rec>
    6032:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6036:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    603b:	0f 84 8b 00 00 00    	je     60cc <cJSON_Duplicate_rec+0x20d>
    6041:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    6046:	74 21                	je     6069 <cJSON_Duplicate_rec+0x1aa>
    6048:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    604c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    6050:	48 89 10             	mov    %rdx,(%rax)
    6053:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6057:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    605b:	48 89 50 08          	mov    %rdx,0x8(%rax)
    605f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6063:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6067:	eb 14                	jmp    607d <cJSON_Duplicate_rec+0x1be>
    6069:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    606d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    6071:	48 89 50 10          	mov    %rdx,0x10(%rax)
    6075:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6079:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    607d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6081:	48 8b 00             	mov    (%rax),%rax
    6084:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    6088:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    608d:	0f 85 75 ff ff ff    	jne    6008 <cJSON_Duplicate_rec+0x149>
    6093:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    6098:	74 1d                	je     60b7 <cJSON_Duplicate_rec+0x1f8>
    609a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    609e:	48 8b 40 10          	mov    0x10(%rax),%rax
    60a2:	48 85 c0             	test   %rax,%rax
    60a5:	74 10                	je     60b7 <cJSON_Duplicate_rec+0x1f8>
    60a7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    60ab:	48 8b 40 10          	mov    0x10(%rax),%rax
    60af:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    60b3:	48 89 50 08          	mov    %rdx,0x8(%rax)
    60b7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    60bb:	eb 28                	jmp    60e5 <cJSON_Duplicate_rec+0x226>
    60bd:	90                   	nop
    60be:	eb 0d                	jmp    60cd <cJSON_Duplicate_rec+0x20e>
    60c0:	90                   	nop
    60c1:	eb 0a                	jmp    60cd <cJSON_Duplicate_rec+0x20e>
    60c3:	90                   	nop
    60c4:	eb 07                	jmp    60cd <cJSON_Duplicate_rec+0x20e>
    60c6:	90                   	nop
    60c7:	eb 04                	jmp    60cd <cJSON_Duplicate_rec+0x20e>
    60c9:	90                   	nop
    60ca:	eb 01                	jmp    60cd <cJSON_Duplicate_rec+0x20e>
    60cc:	90                   	nop
    60cd:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    60d2:	74 0c                	je     60e0 <cJSON_Duplicate_rec+0x221>
    60d4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    60d8:	48 89 c7             	mov    %rax,%rdi
    60db:	e8 58 b9 ff ff       	call   1a38 <cJSON_Delete>
    60e0:	b8 00 00 00 00       	mov    $0x0,%eax
    60e5:	c9                   	leave
    60e6:	c3                   	ret

00000000000060e7 <skip_oneline_comment>:
    60e7:	55                   	push   %rbp
    60e8:	48 89 e5             	mov    %rsp,%rbp
    60eb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    60ef:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    60f3:	48 8b 00             	mov    (%rax),%rax
    60f6:	48 8d 50 02          	lea    0x2(%rax),%rdx
    60fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    60fe:	48 89 10             	mov    %rdx,(%rax)
    6101:	eb 34                	jmp    6137 <skip_oneline_comment+0x50>
    6103:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6107:	48 8b 00             	mov    (%rax),%rax
    610a:	0f b6 00             	movzbl (%rax),%eax
    610d:	3c 0a                	cmp    $0xa,%al
    610f:	75 14                	jne    6125 <skip_oneline_comment+0x3e>
    6111:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6115:	48 8b 00             	mov    (%rax),%rax
    6118:	48 8d 50 01          	lea    0x1(%rax),%rdx
    611c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6120:	48 89 10             	mov    %rdx,(%rax)
    6123:	eb 20                	jmp    6145 <skip_oneline_comment+0x5e>
    6125:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6129:	48 8b 00             	mov    (%rax),%rax
    612c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    6130:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6134:	48 89 10             	mov    %rdx,(%rax)
    6137:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    613b:	48 8b 00             	mov    (%rax),%rax
    613e:	0f b6 00             	movzbl (%rax),%eax
    6141:	84 c0                	test   %al,%al
    6143:	75 be                	jne    6103 <skip_oneline_comment+0x1c>
    6145:	5d                   	pop    %rbp
    6146:	c3                   	ret

0000000000006147 <skip_multiline_comment>:
    6147:	55                   	push   %rbp
    6148:	48 89 e5             	mov    %rsp,%rbp
    614b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    614f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6153:	48 8b 00             	mov    (%rax),%rax
    6156:	48 8d 50 02          	lea    0x2(%rax),%rdx
    615a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    615e:	48 89 10             	mov    %rdx,(%rax)
    6161:	eb 46                	jmp    61a9 <skip_multiline_comment+0x62>
    6163:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6167:	48 8b 00             	mov    (%rax),%rax
    616a:	0f b6 00             	movzbl (%rax),%eax
    616d:	3c 2a                	cmp    $0x2a,%al
    616f:	75 26                	jne    6197 <skip_multiline_comment+0x50>
    6171:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6175:	48 8b 00             	mov    (%rax),%rax
    6178:	48 83 c0 01          	add    $0x1,%rax
    617c:	0f b6 00             	movzbl (%rax),%eax
    617f:	3c 2f                	cmp    $0x2f,%al
    6181:	75 14                	jne    6197 <skip_multiline_comment+0x50>
    6183:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6187:	48 8b 00             	mov    (%rax),%rax
    618a:	48 8d 50 02          	lea    0x2(%rax),%rdx
    618e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6192:	48 89 10             	mov    %rdx,(%rax)
    6195:	eb 20                	jmp    61b7 <skip_multiline_comment+0x70>
    6197:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    619b:	48 8b 00             	mov    (%rax),%rax
    619e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    61a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    61a6:	48 89 10             	mov    %rdx,(%rax)
    61a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    61ad:	48 8b 00             	mov    (%rax),%rax
    61b0:	0f b6 00             	movzbl (%rax),%eax
    61b3:	84 c0                	test   %al,%al
    61b5:	75 ac                	jne    6163 <skip_multiline_comment+0x1c>
    61b7:	5d                   	pop    %rbp
    61b8:	c3                   	ret

00000000000061b9 <minify_string>:
    61b9:	55                   	push   %rbp
    61ba:	48 89 e5             	mov    %rsp,%rbp
    61bd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    61c1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    61c5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    61c9:	48 8b 10             	mov    (%rax),%rdx
    61cc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    61d0:	48 8b 00             	mov    (%rax),%rax
    61d3:	0f b6 12             	movzbl (%rdx),%edx
    61d6:	88 10                	mov    %dl,(%rax)
    61d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    61dc:	48 8b 00             	mov    (%rax),%rax
    61df:	48 8d 50 01          	lea    0x1(%rax),%rdx
    61e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    61e7:	48 89 10             	mov    %rdx,(%rax)
    61ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    61ee:	48 8b 00             	mov    (%rax),%rax
    61f1:	48 8d 50 01          	lea    0x1(%rax),%rdx
    61f5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    61f9:	48 89 10             	mov    %rdx,(%rax)
    61fc:	e9 d4 00 00 00       	jmp    62d5 <minify_string+0x11c>
    6201:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6205:	48 8b 10             	mov    (%rax),%rdx
    6208:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    620c:	48 8b 00             	mov    (%rax),%rax
    620f:	0f b6 12             	movzbl (%rdx),%edx
    6212:	88 10                	mov    %dl,(%rax)
    6214:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6218:	48 8b 00             	mov    (%rax),%rax
    621b:	0f b6 00             	movzbl (%rax),%eax
    621e:	3c 22                	cmp    $0x22,%al
    6220:	75 33                	jne    6255 <minify_string+0x9c>
    6222:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6226:	48 8b 00             	mov    (%rax),%rax
    6229:	c6 00 22             	movb   $0x22,(%rax)
    622c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6230:	48 8b 00             	mov    (%rax),%rax
    6233:	48 8d 50 01          	lea    0x1(%rax),%rdx
    6237:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    623b:	48 89 10             	mov    %rdx,(%rax)
    623e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6242:	48 8b 00             	mov    (%rax),%rax
    6245:	48 8d 50 01          	lea    0x1(%rax),%rdx
    6249:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    624d:	48 89 10             	mov    %rdx,(%rax)
    6250:	e9 92 00 00 00       	jmp    62e7 <minify_string+0x12e>
    6255:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6259:	48 8b 00             	mov    (%rax),%rax
    625c:	0f b6 00             	movzbl (%rax),%eax
    625f:	3c 5c                	cmp    $0x5c,%al
    6261:	75 4e                	jne    62b1 <minify_string+0xf8>
    6263:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6267:	48 8b 00             	mov    (%rax),%rax
    626a:	48 83 c0 01          	add    $0x1,%rax
    626e:	0f b6 00             	movzbl (%rax),%eax
    6271:	3c 22                	cmp    $0x22,%al
    6273:	75 3c                	jne    62b1 <minify_string+0xf8>
    6275:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6279:	48 8b 00             	mov    (%rax),%rax
    627c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6280:	48 8b 12             	mov    (%rdx),%rdx
    6283:	48 83 c2 01          	add    $0x1,%rdx
    6287:	0f b6 40 01          	movzbl 0x1(%rax),%eax
    628b:	88 02                	mov    %al,(%rdx)
    628d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6291:	48 8b 00             	mov    (%rax),%rax
    6294:	48 8d 50 01          	lea    0x1(%rax),%rdx
    6298:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    629c:	48 89 10             	mov    %rdx,(%rax)
    629f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    62a3:	48 8b 00             	mov    (%rax),%rax
    62a6:	48 8d 50 01          	lea    0x1(%rax),%rdx
    62aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    62ae:	48 89 10             	mov    %rdx,(%rax)
    62b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    62b5:	48 8b 00             	mov    (%rax),%rax
    62b8:	48 8d 50 01          	lea    0x1(%rax),%rdx
    62bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    62c0:	48 89 10             	mov    %rdx,(%rax)
    62c3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    62c7:	48 8b 00             	mov    (%rax),%rax
    62ca:	48 8d 50 01          	lea    0x1(%rax),%rdx
    62ce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    62d2:	48 89 10             	mov    %rdx,(%rax)
    62d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    62d9:	48 8b 00             	mov    (%rax),%rax
    62dc:	0f b6 00             	movzbl (%rax),%eax
    62df:	84 c0                	test   %al,%al
    62e1:	0f 85 1a ff ff ff    	jne    6201 <minify_string+0x48>
    62e7:	5d                   	pop    %rbp
    62e8:	c3                   	ret

00000000000062e9 <cJSON_Minify>:
    62e9:	55                   	push   %rbp
    62ea:	48 89 e5             	mov    %rsp,%rbp
    62ed:	48 83 ec 20          	sub    $0x20,%rsp
    62f1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    62f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    62fc:	00 00 
    62fe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6302:	31 c0                	xor    %eax,%eax
    6304:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6308:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    630c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6310:	48 85 c0             	test   %rax,%rax
    6313:	0f 84 e8 00 00 00    	je     6401 <cJSON_Minify+0x118>
    6319:	e9 cb 00 00 00       	jmp    63e9 <cJSON_Minify+0x100>
    631e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6322:	0f b6 00             	movzbl (%rax),%eax
    6325:	0f be c0             	movsbl %al,%eax
    6328:	83 e8 09             	sub    $0x9,%eax
    632b:	83 f8 26             	cmp    $0x26,%eax
    632e:	0f 87 90 00 00 00    	ja     63c4 <cJSON_Minify+0xdb>
    6334:	89 c0                	mov    %eax,%eax
    6336:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    633d:	00 
    633e:	48 8d 05 97 0e 00 00 	lea    0xe97(%rip),%rax        # 71dc <_IO_stdin_used+0x1dc>
    6345:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    6348:	48 98                	cltq
    634a:	48 8d 15 8b 0e 00 00 	lea    0xe8b(%rip),%rdx        # 71dc <_IO_stdin_used+0x1dc>
    6351:	48 01 d0             	add    %rdx,%rax
    6354:	ff e0                	jmp    *%rax
    6356:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    635a:	48 83 c0 01          	add    $0x1,%rax
    635e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    6362:	e9 82 00 00 00       	jmp    63e9 <cJSON_Minify+0x100>
    6367:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    636b:	48 83 c0 01          	add    $0x1,%rax
    636f:	0f b6 00             	movzbl (%rax),%eax
    6372:	3c 2f                	cmp    $0x2f,%al
    6374:	75 0e                	jne    6384 <cJSON_Minify+0x9b>
    6376:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    637a:	48 89 c7             	mov    %rax,%rdi
    637d:	e8 65 fd ff ff       	call   60e7 <skip_oneline_comment>
    6382:	eb 65                	jmp    63e9 <cJSON_Minify+0x100>
    6384:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6388:	48 83 c0 01          	add    $0x1,%rax
    638c:	0f b6 00             	movzbl (%rax),%eax
    638f:	3c 2a                	cmp    $0x2a,%al
    6391:	75 0e                	jne    63a1 <cJSON_Minify+0xb8>
    6393:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    6397:	48 89 c7             	mov    %rax,%rdi
    639a:	e8 a8 fd ff ff       	call   6147 <skip_multiline_comment>
    639f:	eb 48                	jmp    63e9 <cJSON_Minify+0x100>
    63a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63a5:	48 83 c0 01          	add    $0x1,%rax
    63a9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    63ad:	eb 3a                	jmp    63e9 <cJSON_Minify+0x100>
    63af:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    63b3:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    63b7:	48 89 d6             	mov    %rdx,%rsi
    63ba:	48 89 c7             	mov    %rax,%rdi
    63bd:	e8 f7 fd ff ff       	call   61b9 <minify_string>
    63c2:	eb 25                	jmp    63e9 <cJSON_Minify+0x100>
    63c4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    63c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    63cc:	0f b6 12             	movzbl (%rdx),%edx
    63cf:	88 10                	mov    %dl,(%rax)
    63d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63d5:	48 83 c0 01          	add    $0x1,%rax
    63d9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    63dd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    63e1:	48 83 c0 01          	add    $0x1,%rax
    63e5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    63e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63ed:	0f b6 00             	movzbl (%rax),%eax
    63f0:	84 c0                	test   %al,%al
    63f2:	0f 85 26 ff ff ff    	jne    631e <cJSON_Minify+0x35>
    63f8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    63fc:	c6 00 00             	movb   $0x0,(%rax)
    63ff:	eb 01                	jmp    6402 <cJSON_Minify+0x119>
    6401:	90                   	nop
    6402:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6406:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    640d:	00 00 
    640f:	74 05                	je     6416 <cJSON_Minify+0x12d>
    6411:	e8 8a ac ff ff       	call   10a0 <__stack_chk_fail@plt>
    6416:	c9                   	leave
    6417:	c3                   	ret

0000000000006418 <cJSON_IsInvalid>:
    6418:	55                   	push   %rbp
    6419:	48 89 e5             	mov    %rsp,%rbp
    641c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6420:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    6425:	75 07                	jne    642e <cJSON_IsInvalid+0x16>
    6427:	b8 00 00 00 00       	mov    $0x0,%eax
    642c:	eb 12                	jmp    6440 <cJSON_IsInvalid+0x28>
    642e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6432:	8b 40 18             	mov    0x18(%rax),%eax
    6435:	0f b6 c0             	movzbl %al,%eax
    6438:	85 c0                	test   %eax,%eax
    643a:	0f 94 c0             	sete   %al
    643d:	0f b6 c0             	movzbl %al,%eax
    6440:	5d                   	pop    %rbp
    6441:	c3                   	ret

0000000000006442 <cJSON_IsFalse>:
    6442:	55                   	push   %rbp
    6443:	48 89 e5             	mov    %rsp,%rbp
    6446:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    644a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    644f:	75 07                	jne    6458 <cJSON_IsFalse+0x16>
    6451:	b8 00 00 00 00       	mov    $0x0,%eax
    6456:	eb 13                	jmp    646b <cJSON_IsFalse+0x29>
    6458:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    645c:	8b 40 18             	mov    0x18(%rax),%eax
    645f:	0f b6 c0             	movzbl %al,%eax
    6462:	83 f8 01             	cmp    $0x1,%eax
    6465:	0f 94 c0             	sete   %al
    6468:	0f b6 c0             	movzbl %al,%eax
    646b:	5d                   	pop    %rbp
    646c:	c3                   	ret

000000000000646d <cJSON_IsTrue>:
    646d:	55                   	push   %rbp
    646e:	48 89 e5             	mov    %rsp,%rbp
    6471:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6475:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    647a:	75 07                	jne    6483 <cJSON_IsTrue+0x16>
    647c:	b8 00 00 00 00       	mov    $0x0,%eax
    6481:	eb 13                	jmp    6496 <cJSON_IsTrue+0x29>
    6483:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6487:	8b 40 18             	mov    0x18(%rax),%eax
    648a:	0f b6 c0             	movzbl %al,%eax
    648d:	83 f8 02             	cmp    $0x2,%eax
    6490:	0f 94 c0             	sete   %al
    6493:	0f b6 c0             	movzbl %al,%eax
    6496:	5d                   	pop    %rbp
    6497:	c3                   	ret

0000000000006498 <cJSON_IsBool>:
    6498:	55                   	push   %rbp
    6499:	48 89 e5             	mov    %rsp,%rbp
    649c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    64a0:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    64a5:	75 07                	jne    64ae <cJSON_IsBool+0x16>
    64a7:	b8 00 00 00 00       	mov    $0x0,%eax
    64ac:	eb 12                	jmp    64c0 <cJSON_IsBool+0x28>
    64ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    64b2:	8b 40 18             	mov    0x18(%rax),%eax
    64b5:	83 e0 03             	and    $0x3,%eax
    64b8:	85 c0                	test   %eax,%eax
    64ba:	0f 95 c0             	setne  %al
    64bd:	0f b6 c0             	movzbl %al,%eax
    64c0:	5d                   	pop    %rbp
    64c1:	c3                   	ret

00000000000064c2 <cJSON_IsNull>:
    64c2:	55                   	push   %rbp
    64c3:	48 89 e5             	mov    %rsp,%rbp
    64c6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    64ca:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    64cf:	75 07                	jne    64d8 <cJSON_IsNull+0x16>
    64d1:	b8 00 00 00 00       	mov    $0x0,%eax
    64d6:	eb 13                	jmp    64eb <cJSON_IsNull+0x29>
    64d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    64dc:	8b 40 18             	mov    0x18(%rax),%eax
    64df:	0f b6 c0             	movzbl %al,%eax
    64e2:	83 f8 04             	cmp    $0x4,%eax
    64e5:	0f 94 c0             	sete   %al
    64e8:	0f b6 c0             	movzbl %al,%eax
    64eb:	5d                   	pop    %rbp
    64ec:	c3                   	ret

00000000000064ed <cJSON_IsNumber>:
    64ed:	55                   	push   %rbp
    64ee:	48 89 e5             	mov    %rsp,%rbp
    64f1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    64f5:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    64fa:	75 07                	jne    6503 <cJSON_IsNumber+0x16>
    64fc:	b8 00 00 00 00       	mov    $0x0,%eax
    6501:	eb 13                	jmp    6516 <cJSON_IsNumber+0x29>
    6503:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6507:	8b 40 18             	mov    0x18(%rax),%eax
    650a:	0f b6 c0             	movzbl %al,%eax
    650d:	83 f8 08             	cmp    $0x8,%eax
    6510:	0f 94 c0             	sete   %al
    6513:	0f b6 c0             	movzbl %al,%eax
    6516:	5d                   	pop    %rbp
    6517:	c3                   	ret

0000000000006518 <cJSON_IsString>:
    6518:	55                   	push   %rbp
    6519:	48 89 e5             	mov    %rsp,%rbp
    651c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6520:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    6525:	75 07                	jne    652e <cJSON_IsString+0x16>
    6527:	b8 00 00 00 00       	mov    $0x0,%eax
    652c:	eb 13                	jmp    6541 <cJSON_IsString+0x29>
    652e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6532:	8b 40 18             	mov    0x18(%rax),%eax
    6535:	0f b6 c0             	movzbl %al,%eax
    6538:	83 f8 10             	cmp    $0x10,%eax
    653b:	0f 94 c0             	sete   %al
    653e:	0f b6 c0             	movzbl %al,%eax
    6541:	5d                   	pop    %rbp
    6542:	c3                   	ret

0000000000006543 <cJSON_IsArray>:
    6543:	55                   	push   %rbp
    6544:	48 89 e5             	mov    %rsp,%rbp
    6547:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    654b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    6550:	75 07                	jne    6559 <cJSON_IsArray+0x16>
    6552:	b8 00 00 00 00       	mov    $0x0,%eax
    6557:	eb 13                	jmp    656c <cJSON_IsArray+0x29>
    6559:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    655d:	8b 40 18             	mov    0x18(%rax),%eax
    6560:	0f b6 c0             	movzbl %al,%eax
    6563:	83 f8 20             	cmp    $0x20,%eax
    6566:	0f 94 c0             	sete   %al
    6569:	0f b6 c0             	movzbl %al,%eax
    656c:	5d                   	pop    %rbp
    656d:	c3                   	ret

000000000000656e <cJSON_IsObject>:
    656e:	55                   	push   %rbp
    656f:	48 89 e5             	mov    %rsp,%rbp
    6572:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6576:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    657b:	75 07                	jne    6584 <cJSON_IsObject+0x16>
    657d:	b8 00 00 00 00       	mov    $0x0,%eax
    6582:	eb 13                	jmp    6597 <cJSON_IsObject+0x29>
    6584:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6588:	8b 40 18             	mov    0x18(%rax),%eax
    658b:	0f b6 c0             	movzbl %al,%eax
    658e:	83 f8 40             	cmp    $0x40,%eax
    6591:	0f 94 c0             	sete   %al
    6594:	0f b6 c0             	movzbl %al,%eax
    6597:	5d                   	pop    %rbp
    6598:	c3                   	ret

0000000000006599 <cJSON_IsRaw>:
    6599:	55                   	push   %rbp
    659a:	48 89 e5             	mov    %rsp,%rbp
    659d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    65a1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    65a6:	75 07                	jne    65af <cJSON_IsRaw+0x16>
    65a8:	b8 00 00 00 00       	mov    $0x0,%eax
    65ad:	eb 15                	jmp    65c4 <cJSON_IsRaw+0x2b>
    65af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    65b3:	8b 40 18             	mov    0x18(%rax),%eax
    65b6:	0f b6 c0             	movzbl %al,%eax
    65b9:	3d 80 00 00 00       	cmp    $0x80,%eax
    65be:	0f 94 c0             	sete   %al
    65c1:	0f b6 c0             	movzbl %al,%eax
    65c4:	5d                   	pop    %rbp
    65c5:	c3                   	ret

00000000000065c6 <cJSON_Compare>:
    65c6:	55                   	push   %rbp
    65c7:	48 89 e5             	mov    %rsp,%rbp
    65ca:	48 83 ec 40          	sub    $0x40,%rsp
    65ce:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    65d2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    65d6:	89 55 cc             	mov    %edx,-0x34(%rbp)
    65d9:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    65de:	74 1e                	je     65fe <cJSON_Compare+0x38>
    65e0:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    65e5:	74 17                	je     65fe <cJSON_Compare+0x38>
    65e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    65eb:	8b 50 18             	mov    0x18(%rax),%edx
    65ee:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    65f2:	8b 40 18             	mov    0x18(%rax),%eax
    65f5:	31 d0                	xor    %edx,%eax
    65f7:	0f b6 c0             	movzbl %al,%eax
    65fa:	85 c0                	test   %eax,%eax
    65fc:	74 0a                	je     6608 <cJSON_Compare+0x42>
    65fe:	b8 00 00 00 00       	mov    $0x0,%eax
    6603:	e9 06 03 00 00       	jmp    690e <cJSON_Compare+0x348>
    6608:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    660c:	8b 40 18             	mov    0x18(%rax),%eax
    660f:	0f b6 c0             	movzbl %al,%eax
    6612:	3d 80 00 00 00       	cmp    $0x80,%eax
    6617:	74 4a                	je     6663 <cJSON_Compare+0x9d>
    6619:	3d 80 00 00 00       	cmp    $0x80,%eax
    661e:	7f 39                	jg     6659 <cJSON_Compare+0x93>
    6620:	83 f8 02             	cmp    $0x2,%eax
    6623:	7f 2a                	jg     664f <cJSON_Compare+0x89>
    6625:	85 c0                	test   %eax,%eax
    6627:	7f 3a                	jg     6663 <cJSON_Compare+0x9d>
    6629:	eb 2e                	jmp    6659 <cJSON_Compare+0x93>
    662b:	83 e8 04             	sub    $0x4,%eax
    662e:	48 ba 11 10 00 10 00 	movabs $0x1000000010001011,%rdx
    6635:	00 00 10 
    6638:	89 c1                	mov    %eax,%ecx
    663a:	48 d3 ea             	shr    %cl,%rdx
    663d:	48 89 d0             	mov    %rdx,%rax
    6640:	83 e0 01             	and    $0x1,%eax
    6643:	48 85 c0             	test   %rax,%rax
    6646:	0f 95 c0             	setne  %al
    6649:	84 c0                	test   %al,%al
    664b:	75 16                	jne    6663 <cJSON_Compare+0x9d>
    664d:	eb 0a                	jmp    6659 <cJSON_Compare+0x93>
    664f:	83 f8 40             	cmp    $0x40,%eax
    6652:	7f 05                	jg     6659 <cJSON_Compare+0x93>
    6654:	83 f8 04             	cmp    $0x4,%eax
    6657:	7d d2                	jge    662b <cJSON_Compare+0x65>
    6659:	b8 00 00 00 00       	mov    $0x0,%eax
    665e:	e9 ab 02 00 00       	jmp    690e <cJSON_Compare+0x348>
    6663:	90                   	nop
    6664:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6668:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
    666c:	75 0a                	jne    6678 <cJSON_Compare+0xb2>
    666e:	b8 01 00 00 00       	mov    $0x1,%eax
    6673:	e9 96 02 00 00       	jmp    690e <cJSON_Compare+0x348>
    6678:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    667c:	8b 40 18             	mov    0x18(%rax),%eax
    667f:	0f b6 c0             	movzbl %al,%eax
    6682:	3d 80 00 00 00       	cmp    $0x80,%eax
    6687:	0f 84 92 00 00 00    	je     671f <cJSON_Compare+0x159>
    668d:	3d 80 00 00 00       	cmp    $0x80,%eax
    6692:	0f 8f 71 02 00 00    	jg     6909 <cJSON_Compare+0x343>
    6698:	83 f8 20             	cmp    $0x20,%eax
    669b:	7f 33                	jg     66d0 <cJSON_Compare+0x10a>
    669d:	85 c0                	test   %eax,%eax
    669f:	0f 8e 64 02 00 00    	jle    6909 <cJSON_Compare+0x343>
    66a5:	83 f8 20             	cmp    $0x20,%eax
    66a8:	0f 87 5b 02 00 00    	ja     6909 <cJSON_Compare+0x343>
    66ae:	89 c0                	mov    %eax,%eax
    66b0:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    66b7:	00 
    66b8:	48 8d 05 b9 0b 00 00 	lea    0xbb9(%rip),%rax        # 7278 <_IO_stdin_used+0x278>
    66bf:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    66c2:	48 98                	cltq
    66c4:	48 8d 15 ad 0b 00 00 	lea    0xbad(%rip),%rdx        # 7278 <_IO_stdin_used+0x278>
    66cb:	48 01 d0             	add    %rdx,%rax
    66ce:	ff e0                	jmp    *%rax
    66d0:	83 f8 40             	cmp    $0x40,%eax
    66d3:	0f 84 1d 01 00 00    	je     67f6 <cJSON_Compare+0x230>
    66d9:	e9 2b 02 00 00       	jmp    6909 <cJSON_Compare+0x343>
    66de:	b8 01 00 00 00       	mov    $0x1,%eax
    66e3:	e9 26 02 00 00       	jmp    690e <cJSON_Compare+0x348>
    66e8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    66ec:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    66f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    66f5:	48 8b 40 30          	mov    0x30(%rax),%rax
    66f9:	66 0f 28 c8          	movapd %xmm0,%xmm1
    66fd:	66 48 0f 6e c0       	movq   %rax,%xmm0
    6702:	e8 12 bb ff ff       	call   2219 <compare_double>
    6707:	85 c0                	test   %eax,%eax
    6709:	74 0a                	je     6715 <cJSON_Compare+0x14f>
    670b:	b8 01 00 00 00       	mov    $0x1,%eax
    6710:	e9 f9 01 00 00       	jmp    690e <cJSON_Compare+0x348>
    6715:	b8 00 00 00 00       	mov    $0x0,%eax
    671a:	e9 ef 01 00 00       	jmp    690e <cJSON_Compare+0x348>
    671f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6723:	48 8b 40 20          	mov    0x20(%rax),%rax
    6727:	48 85 c0             	test   %rax,%rax
    672a:	74 0d                	je     6739 <cJSON_Compare+0x173>
    672c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6730:	48 8b 40 20          	mov    0x20(%rax),%rax
    6734:	48 85 c0             	test   %rax,%rax
    6737:	75 0a                	jne    6743 <cJSON_Compare+0x17d>
    6739:	b8 00 00 00 00       	mov    $0x0,%eax
    673e:	e9 cb 01 00 00       	jmp    690e <cJSON_Compare+0x348>
    6743:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6747:	48 8b 50 20          	mov    0x20(%rax),%rdx
    674b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    674f:	48 8b 40 20          	mov    0x20(%rax),%rax
    6753:	48 89 d6             	mov    %rdx,%rsi
    6756:	48 89 c7             	mov    %rax,%rdi
    6759:	e8 72 a9 ff ff       	call   10d0 <strcmp@plt>
    675e:	85 c0                	test   %eax,%eax
    6760:	75 0a                	jne    676c <cJSON_Compare+0x1a6>
    6762:	b8 01 00 00 00       	mov    $0x1,%eax
    6767:	e9 a2 01 00 00       	jmp    690e <cJSON_Compare+0x348>
    676c:	b8 00 00 00 00       	mov    $0x0,%eax
    6771:	e9 98 01 00 00       	jmp    690e <cJSON_Compare+0x348>
    6776:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    677a:	48 8b 40 10          	mov    0x10(%rax),%rax
    677e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6782:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6786:	48 8b 40 10          	mov    0x10(%rax),%rax
    678a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    678e:	eb 3a                	jmp    67ca <cJSON_Compare+0x204>
    6790:	8b 55 cc             	mov    -0x34(%rbp),%edx
    6793:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    6797:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    679b:	48 89 ce             	mov    %rcx,%rsi
    679e:	48 89 c7             	mov    %rax,%rdi
    67a1:	e8 20 fe ff ff       	call   65c6 <cJSON_Compare>
    67a6:	85 c0                	test   %eax,%eax
    67a8:	75 0a                	jne    67b4 <cJSON_Compare+0x1ee>
    67aa:	b8 00 00 00 00       	mov    $0x0,%eax
    67af:	e9 5a 01 00 00       	jmp    690e <cJSON_Compare+0x348>
    67b4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    67b8:	48 8b 00             	mov    (%rax),%rax
    67bb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    67bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    67c3:	48 8b 00             	mov    (%rax),%rax
    67c6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    67ca:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    67cf:	74 07                	je     67d8 <cJSON_Compare+0x212>
    67d1:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    67d6:	75 b8                	jne    6790 <cJSON_Compare+0x1ca>
    67d8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    67dc:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    67e0:	74 0a                	je     67ec <cJSON_Compare+0x226>
    67e2:	b8 00 00 00 00       	mov    $0x0,%eax
    67e7:	e9 22 01 00 00       	jmp    690e <cJSON_Compare+0x348>
    67ec:	b8 01 00 00 00       	mov    $0x1,%eax
    67f1:	e9 18 01 00 00       	jmp    690e <cJSON_Compare+0x348>
    67f6:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    67fd:	00 
    67fe:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    6805:	00 
    6806:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    680b:	74 0a                	je     6817 <cJSON_Compare+0x251>
    680d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6811:	48 8b 40 10          	mov    0x10(%rax),%rax
    6815:	eb 05                	jmp    681c <cJSON_Compare+0x256>
    6817:	b8 00 00 00 00       	mov    $0x0,%eax
    681c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6820:	eb 5e                	jmp    6880 <cJSON_Compare+0x2ba>
    6822:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6826:	48 8b 48 38          	mov    0x38(%rax),%rcx
    682a:	8b 55 cc             	mov    -0x34(%rbp),%edx
    682d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6831:	48 89 ce             	mov    %rcx,%rsi
    6834:	48 89 c7             	mov    %rax,%rdi
    6837:	e8 7b e0 ff ff       	call   48b7 <get_object_item>
    683c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6840:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    6845:	75 0a                	jne    6851 <cJSON_Compare+0x28b>
    6847:	b8 00 00 00 00       	mov    $0x0,%eax
    684c:	e9 bd 00 00 00       	jmp    690e <cJSON_Compare+0x348>
    6851:	8b 55 cc             	mov    -0x34(%rbp),%edx
    6854:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    6858:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    685c:	48 89 ce             	mov    %rcx,%rsi
    685f:	48 89 c7             	mov    %rax,%rdi
    6862:	e8 5f fd ff ff       	call   65c6 <cJSON_Compare>
    6867:	85 c0                	test   %eax,%eax
    6869:	75 0a                	jne    6875 <cJSON_Compare+0x2af>
    686b:	b8 00 00 00 00       	mov    $0x0,%eax
    6870:	e9 99 00 00 00       	jmp    690e <cJSON_Compare+0x348>
    6875:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6879:	48 8b 00             	mov    (%rax),%rax
    687c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6880:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    6885:	75 9b                	jne    6822 <cJSON_Compare+0x25c>
    6887:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    688c:	74 0a                	je     6898 <cJSON_Compare+0x2d2>
    688e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6892:	48 8b 40 10          	mov    0x10(%rax),%rax
    6896:	eb 05                	jmp    689d <cJSON_Compare+0x2d7>
    6898:	b8 00 00 00 00       	mov    $0x0,%eax
    689d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    68a1:	eb 58                	jmp    68fb <cJSON_Compare+0x335>
    68a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    68a7:	48 8b 48 38          	mov    0x38(%rax),%rcx
    68ab:	8b 55 cc             	mov    -0x34(%rbp),%edx
    68ae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    68b2:	48 89 ce             	mov    %rcx,%rsi
    68b5:	48 89 c7             	mov    %rax,%rdi
    68b8:	e8 fa df ff ff       	call   48b7 <get_object_item>
    68bd:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    68c1:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    68c6:	75 07                	jne    68cf <cJSON_Compare+0x309>
    68c8:	b8 00 00 00 00       	mov    $0x0,%eax
    68cd:	eb 3f                	jmp    690e <cJSON_Compare+0x348>
    68cf:	8b 55 cc             	mov    -0x34(%rbp),%edx
    68d2:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    68d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    68da:	48 89 ce             	mov    %rcx,%rsi
    68dd:	48 89 c7             	mov    %rax,%rdi
    68e0:	e8 e1 fc ff ff       	call   65c6 <cJSON_Compare>
    68e5:	85 c0                	test   %eax,%eax
    68e7:	75 07                	jne    68f0 <cJSON_Compare+0x32a>
    68e9:	b8 00 00 00 00       	mov    $0x0,%eax
    68ee:	eb 1e                	jmp    690e <cJSON_Compare+0x348>
    68f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    68f4:	48 8b 00             	mov    (%rax),%rax
    68f7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    68fb:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    6900:	75 a1                	jne    68a3 <cJSON_Compare+0x2dd>
    6902:	b8 01 00 00 00       	mov    $0x1,%eax
    6907:	eb 05                	jmp    690e <cJSON_Compare+0x348>
    6909:	b8 00 00 00 00       	mov    $0x0,%eax
    690e:	c9                   	leave
    690f:	c3                   	ret

0000000000006910 <cJSON_malloc>:
    6910:	55                   	push   %rbp
    6911:	48 89 e5             	mov    %rsp,%rbp
    6914:	48 83 ec 10          	sub    $0x10,%rsp
    6918:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    691c:	48 8b 15 8d 37 00 00 	mov    0x378d(%rip),%rdx        # a0b0 <malloc@GLIBC_2.2.5>
    6923:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6927:	48 89 c7             	mov    %rax,%rdi
    692a:	ff d2                	call   *%rdx
    692c:	c9                   	leave
    692d:	c3                   	ret

000000000000692e <cJSON_free>:
    692e:	55                   	push   %rbp
    692f:	48 89 e5             	mov    %rsp,%rbp
    6932:	48 83 ec 10          	sub    $0x10,%rsp
    6936:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    693a:	48 8b 15 77 37 00 00 	mov    0x3777(%rip),%rdx        # a0b8 <free@GLIBC_2.2.5>
    6941:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6945:	48 89 c7             	mov    %rax,%rdi
    6948:	ff d2                	call   *%rdx
    694a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    6951:	00 
    6952:	90                   	nop
    6953:	c9                   	leave
    6954:	c3                   	ret

Disassembly of section .fini:

0000000000006958 <_fini>:
    6958:	48 83 ec 08          	sub    $0x8,%rsp
    695c:	48 83 c4 08          	add    $0x8,%rsp
    6960:	c3                   	ret
