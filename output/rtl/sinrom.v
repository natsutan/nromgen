//-------------------------------------------------
// sinrom
// This file was auto-generated by nromgen 2015-11-09T15:26:57
//-------------------------------------------------
module sinrom
	(
	input CLK,
	input RESET_X,
	input [8:0] ADR,
	output reg [23:0] DATA
	);
	always @(posedge CLK or negedge RESET_X)begin
		if(RESET_X == 1'b0)begin
			DATA <= 24'd0;
		end else begin
			case(ADR)
			0:DATA <= 24'hffffcb;
			1:DATA <= 24'hfffe39;
			2:DATA <= 24'hfffca8;
			3:DATA <= 24'hfffb16;
			4:DATA <= 24'hfff984;
			5:DATA <= 24'hfff7f3;
			6:DATA <= 24'hfff662;
			7:DATA <= 24'hfff4d2;
			8:DATA <= 24'hfff341;
			9:DATA <= 24'hfff1b2;
			10:DATA <= 24'hfff023;
			11:DATA <= 24'hffee94;
			12:DATA <= 24'hffed06;
			13:DATA <= 24'hffeb79;
			14:DATA <= 24'hffe9ed;
			15:DATA <= 24'hffe861;
			16:DATA <= 24'hffe6d7;
			17:DATA <= 24'hffe54d;
			18:DATA <= 24'hffe3c5;
			19:DATA <= 24'hffe23d;
			20:DATA <= 24'hffe0b7;
			21:DATA <= 24'hffdf32;
			22:DATA <= 24'hffddae;
			23:DATA <= 24'hffdc2b;
			24:DATA <= 24'hffdaaa;
			25:DATA <= 24'hffd92a;
			26:DATA <= 24'hffd7ac;
			27:DATA <= 24'hffd630;
			28:DATA <= 24'hffd4b5;
			29:DATA <= 24'hffd33b;
			30:DATA <= 24'hffd1c3;
			31:DATA <= 24'hffd04e;
			32:DATA <= 24'hffceda;
			33:DATA <= 24'hffcd67;
			34:DATA <= 24'hffcbf7;
			35:DATA <= 24'hffca89;
			36:DATA <= 24'hffc91d;
			37:DATA <= 24'hffc7b3;
			38:DATA <= 24'hffc64b;
			39:DATA <= 24'hffc4e5;
			40:DATA <= 24'hffc382;
			41:DATA <= 24'hffc221;
			42:DATA <= 24'hffc0c2;
			43:DATA <= 24'hffbf66;
			44:DATA <= 24'hffbe0c;
			45:DATA <= 24'hffbcb5;
			46:DATA <= 24'hffbb61;
			47:DATA <= 24'hffba0f;
			48:DATA <= 24'hffb8bf;
			49:DATA <= 24'hffb773;
			50:DATA <= 24'hffb629;
			51:DATA <= 24'hffb4e2;
			52:DATA <= 24'hffb39e;
			53:DATA <= 24'hffb25d;
			54:DATA <= 24'hffb11f;
			55:DATA <= 24'hffafe4;
			56:DATA <= 24'hffaeac;
			57:DATA <= 24'hffad77;
			58:DATA <= 24'hffac46;
			59:DATA <= 24'hffab17;
			60:DATA <= 24'hffa9ec;
			61:DATA <= 24'hffa8c4;
			62:DATA <= 24'hffa7a0;
			63:DATA <= 24'hffa67f;
			64:DATA <= 24'hffa561;
			65:DATA <= 24'hffa447;
			66:DATA <= 24'hffa331;
			67:DATA <= 24'hffa21e;
			68:DATA <= 24'hffa10e;
			69:DATA <= 24'hffa003;
			70:DATA <= 24'hff9efb;
			71:DATA <= 24'hff9df6;
			72:DATA <= 24'hff9cf6;
			73:DATA <= 24'hff9bf9;
			74:DATA <= 24'hff9b00;
			75:DATA <= 24'hff9a0b;
			76:DATA <= 24'hff991a;
			77:DATA <= 24'hff982d;
			78:DATA <= 24'hff9744;
			79:DATA <= 24'hff965f;
			80:DATA <= 24'hff957e;
			81:DATA <= 24'hff94a1;
			82:DATA <= 24'hff93c8;
			83:DATA <= 24'hff92f4;
			84:DATA <= 24'hff9223;
			85:DATA <= 24'hff9157;
			86:DATA <= 24'hff908f;
			87:DATA <= 24'hff8fcc;
			88:DATA <= 24'hff8f0d;
			89:DATA <= 24'hff8e52;
			90:DATA <= 24'hff8d9b;
			91:DATA <= 24'hff8ce9;
			92:DATA <= 24'hff8c3b;
			93:DATA <= 24'hff8b92;
			94:DATA <= 24'hff8aed;
			95:DATA <= 24'hff8a4d;
			96:DATA <= 24'hff89b1;
			97:DATA <= 24'hff891a;
			98:DATA <= 24'hff8888;
			99:DATA <= 24'hff87fa;
			100:DATA <= 24'hff8770;
			101:DATA <= 24'hff86ec;
			102:DATA <= 24'hff866c;
			103:DATA <= 24'hff85f0;
			104:DATA <= 24'hff8579;
			105:DATA <= 24'hff8508;
			106:DATA <= 24'hff849a;
			107:DATA <= 24'hff8432;
			108:DATA <= 24'hff83ce;
			109:DATA <= 24'hff836f;
			110:DATA <= 24'hff8315;
			111:DATA <= 24'hff82c0;
			112:DATA <= 24'hff826f;
			113:DATA <= 24'hff8224;
			114:DATA <= 24'hff81dd;
			115:DATA <= 24'hff819b;
			116:DATA <= 24'hff815e;
			117:DATA <= 24'hff8126;
			118:DATA <= 24'hff80f2;
			119:DATA <= 24'hff80c4;
			120:DATA <= 24'hff809b;
			121:DATA <= 24'hff8076;
			122:DATA <= 24'hff8056;
			123:DATA <= 24'hff803c;
			124:DATA <= 24'hff8026;
			125:DATA <= 24'hff8015;
			126:DATA <= 24'hff8009;
			127:DATA <= 24'hff8002;
			128:DATA <= 24'hff8000;
			129:DATA <= 24'hff8002;
			130:DATA <= 24'hff800a;
			131:DATA <= 24'hff8017;
			132:DATA <= 24'hff8028;
			133:DATA <= 24'hff803f;
			134:DATA <= 24'hff805a;
			135:DATA <= 24'hff807a;
			136:DATA <= 24'hff80a0;
			137:DATA <= 24'hff80ca;
			138:DATA <= 24'hff80f9;
			139:DATA <= 24'hff812d;
			140:DATA <= 24'hff8166;
			141:DATA <= 24'hff81a3;
			142:DATA <= 24'hff81e6;
			143:DATA <= 24'hff822d;
			144:DATA <= 24'hff827a;
			145:DATA <= 24'hff82cb;
			146:DATA <= 24'hff8321;
			147:DATA <= 24'hff837b;
			148:DATA <= 24'hff83db;
			149:DATA <= 24'hff843f;
			150:DATA <= 24'hff84a8;
			151:DATA <= 24'hff8516;
			152:DATA <= 24'hff8589;
			153:DATA <= 24'hff8600;
			154:DATA <= 24'hff867c;
			155:DATA <= 24'hff86fd;
			156:DATA <= 24'hff8782;
			157:DATA <= 24'hff880c;
			158:DATA <= 24'hff889a;
			159:DATA <= 24'hff892e;
			160:DATA <= 24'hff89c5;
			161:DATA <= 24'hff8a62;
			162:DATA <= 24'hff8b02;
			163:DATA <= 24'hff8ba8;
			164:DATA <= 24'hff8c52;
			165:DATA <= 24'hff8d00;
			166:DATA <= 24'hff8db3;
			167:DATA <= 24'hff8e6a;
			168:DATA <= 24'hff8f25;
			169:DATA <= 24'hff8fe5;
			170:DATA <= 24'hff90a9;
			171:DATA <= 24'hff9172;
			172:DATA <= 24'hff923e;
			173:DATA <= 24'hff930f;
			174:DATA <= 24'hff93e4;
			175:DATA <= 24'hff94be;
			176:DATA <= 24'hff959b;
			177:DATA <= 24'hff967c;
			178:DATA <= 24'hff9762;
			179:DATA <= 24'hff984c;
			180:DATA <= 24'hff9939;
			181:DATA <= 24'hff9a2b;
			182:DATA <= 24'hff9b20;
			183:DATA <= 24'hff9c1a;
			184:DATA <= 24'hff9d17;
			185:DATA <= 24'hff9e18;
			186:DATA <= 24'hff9f1d;
			187:DATA <= 24'hffa025;
			188:DATA <= 24'hffa131;
			189:DATA <= 24'hffa241;
			190:DATA <= 24'hffa355;
			191:DATA <= 24'hffa46c;
			192:DATA <= 24'hffa586;
			193:DATA <= 24'hffa6a4;
			194:DATA <= 24'hffa7c6;
			195:DATA <= 24'hffa8eb;
			196:DATA <= 24'hffaa13;
			197:DATA <= 24'hffab3e;
			198:DATA <= 24'hffac6d;
			199:DATA <= 24'hffad9f;
			200:DATA <= 24'hffaed5;
			201:DATA <= 24'hffb00d;
			202:DATA <= 24'hffb148;
			203:DATA <= 24'hffb287;
			204:DATA <= 24'hffb3c8;
			205:DATA <= 24'hffb50d;
			206:DATA <= 24'hffb654;
			207:DATA <= 24'hffb79e;
			208:DATA <= 24'hffb8eb;
			209:DATA <= 24'hffba3a;
			210:DATA <= 24'hffbb8d;
			211:DATA <= 24'hffbce2;
			212:DATA <= 24'hffbe39;
			213:DATA <= 24'hffbf93;
			214:DATA <= 24'hffc0f0;
			215:DATA <= 24'hffc24f;
			216:DATA <= 24'hffc3b0;
			217:DATA <= 24'hffc514;
			218:DATA <= 24'hffc67a;
			219:DATA <= 24'hffc7e2;
			220:DATA <= 24'hffc94c;
			221:DATA <= 24'hffcab8;
			222:DATA <= 24'hffcc27;
			223:DATA <= 24'hffcd97;
			224:DATA <= 24'hffcf0a;
			225:DATA <= 24'hffd07e;
			226:DATA <= 24'hffd1f4;
			227:DATA <= 24'hffd36c;
			228:DATA <= 24'hffd4e6;
			229:DATA <= 24'hffd661;
			230:DATA <= 24'hffd7de;
			231:DATA <= 24'hffd95c;
			232:DATA <= 24'hffdadc;
			233:DATA <= 24'hffdc5d;
			234:DATA <= 24'hffdde0;
			235:DATA <= 24'hffdf64;
			236:DATA <= 24'hffe0e9;
			237:DATA <= 24'hffe270;
			238:DATA <= 24'hffe3f8;
			239:DATA <= 24'hffe580;
			240:DATA <= 24'hffe70a;
			241:DATA <= 24'hffe895;
			242:DATA <= 24'hffea20;
			243:DATA <= 24'hffebad;
			244:DATA <= 24'hffed3a;
			245:DATA <= 24'hffeec8;
			246:DATA <= 24'hfff056;
			247:DATA <= 24'hfff1e6;
			248:DATA <= 24'hfff375;
			249:DATA <= 24'hfff506;
			250:DATA <= 24'hfff696;
			251:DATA <= 24'hfff827;
			252:DATA <= 24'hfff9b8;
			253:DATA <= 24'hfffb4a;
			254:DATA <= 24'hfffcdc;
			255:DATA <= 24'hfffe6e;
			256:DATA <= 24'h0;
			257:DATA <= 24'h191;
			258:DATA <= 24'h323;
			259:DATA <= 24'h4b5;
			260:DATA <= 24'h647;
			261:DATA <= 24'h7d8;
			262:DATA <= 24'h969;
			263:DATA <= 24'haf9;
			264:DATA <= 24'hc8a;
			265:DATA <= 24'he19;
			266:DATA <= 24'hfa9;
			267:DATA <= 24'h1137;
			268:DATA <= 24'h12c5;
			269:DATA <= 24'h1452;
			270:DATA <= 24'h15df;
			271:DATA <= 24'h176a;
			272:DATA <= 24'h18f5;
			273:DATA <= 24'h1a7f;
			274:DATA <= 24'h1c07;
			275:DATA <= 24'h1d8f;
			276:DATA <= 24'h1f16;
			277:DATA <= 24'h209b;
			278:DATA <= 24'h221f;
			279:DATA <= 24'h23a2;
			280:DATA <= 24'h2523;
			281:DATA <= 24'h26a3;
			282:DATA <= 24'h2821;
			283:DATA <= 24'h299e;
			284:DATA <= 24'h2b19;
			285:DATA <= 24'h2c93;
			286:DATA <= 24'h2e0b;
			287:DATA <= 24'h2f81;
			288:DATA <= 24'h30f5;
			289:DATA <= 24'h3268;
			290:DATA <= 24'h33d8;
			291:DATA <= 24'h3547;
			292:DATA <= 24'h36b3;
			293:DATA <= 24'h381d;
			294:DATA <= 24'h3985;
			295:DATA <= 24'h3aeb;
			296:DATA <= 24'h3c4f;
			297:DATA <= 24'h3db0;
			298:DATA <= 24'h3f0f;
			299:DATA <= 24'h406c;
			300:DATA <= 24'h41c6;
			301:DATA <= 24'h431d;
			302:DATA <= 24'h4472;
			303:DATA <= 24'h45c5;
			304:DATA <= 24'h4714;
			305:DATA <= 24'h4861;
			306:DATA <= 24'h49ab;
			307:DATA <= 24'h4af2;
			308:DATA <= 24'h4c37;
			309:DATA <= 24'h4d78;
			310:DATA <= 24'h4eb7;
			311:DATA <= 24'h4ff2;
			312:DATA <= 24'h512a;
			313:DATA <= 24'h5260;
			314:DATA <= 24'h5392;
			315:DATA <= 24'h54c1;
			316:DATA <= 24'h55ec;
			317:DATA <= 24'h5714;
			318:DATA <= 24'h5839;
			319:DATA <= 24'h595b;
			320:DATA <= 24'h5a79;
			321:DATA <= 24'h5b93;
			322:DATA <= 24'h5caa;
			323:DATA <= 24'h5dbe;
			324:DATA <= 24'h5ece;
			325:DATA <= 24'h5fda;
			326:DATA <= 24'h60e2;
			327:DATA <= 24'h61e7;
			328:DATA <= 24'h62e8;
			329:DATA <= 24'h63e5;
			330:DATA <= 24'h64df;
			331:DATA <= 24'h65d4;
			332:DATA <= 24'h66c6;
			333:DATA <= 24'h67b3;
			334:DATA <= 24'h689d;
			335:DATA <= 24'h6983;
			336:DATA <= 24'h6a64;
			337:DATA <= 24'h6b41;
			338:DATA <= 24'h6c1b;
			339:DATA <= 24'h6cf0;
			340:DATA <= 24'h6dc1;
			341:DATA <= 24'h6e8d;
			342:DATA <= 24'h6f56;
			343:DATA <= 24'h701a;
			344:DATA <= 24'h70da;
			345:DATA <= 24'h7195;
			346:DATA <= 24'h724c;
			347:DATA <= 24'h72ff;
			348:DATA <= 24'h73ad;
			349:DATA <= 24'h7457;
			350:DATA <= 24'h74fd;
			351:DATA <= 24'h759d;
			352:DATA <= 24'h763a;
			353:DATA <= 24'h76d1;
			354:DATA <= 24'h7765;
			355:DATA <= 24'h77f3;
			356:DATA <= 24'h787d;
			357:DATA <= 24'h7902;
			358:DATA <= 24'h7983;
			359:DATA <= 24'h79ff;
			360:DATA <= 24'h7a76;
			361:DATA <= 24'h7ae9;
			362:DATA <= 24'h7b57;
			363:DATA <= 24'h7bc0;
			364:DATA <= 24'h7c24;
			365:DATA <= 24'h7c84;
			366:DATA <= 24'h7cde;
			367:DATA <= 24'h7d34;
			368:DATA <= 24'h7d85;
			369:DATA <= 24'h7dd2;
			370:DATA <= 24'h7e19;
			371:DATA <= 24'h7e5c;
			372:DATA <= 24'h7e99;
			373:DATA <= 24'h7ed2;
			374:DATA <= 24'h7f06;
			375:DATA <= 24'h7f35;
			376:DATA <= 24'h7f5f;
			377:DATA <= 24'h7f85;
			378:DATA <= 24'h7fa5;
			379:DATA <= 24'h7fc0;
			380:DATA <= 24'h7fd7;
			381:DATA <= 24'h7fe8;
			382:DATA <= 24'h7ff5;
			383:DATA <= 24'h7ffd;
			384:DATA <= 24'h7fff;
			385:DATA <= 24'h7ffd;
			386:DATA <= 24'h7ff6;
			387:DATA <= 24'h7fea;
			388:DATA <= 24'h7fd9;
			389:DATA <= 24'h7fc3;
			390:DATA <= 24'h7fa9;
			391:DATA <= 24'h7f89;
			392:DATA <= 24'h7f64;
			393:DATA <= 24'h7f3b;
			394:DATA <= 24'h7f0d;
			395:DATA <= 24'h7ed9;
			396:DATA <= 24'h7ea1;
			397:DATA <= 24'h7e64;
			398:DATA <= 24'h7e22;
			399:DATA <= 24'h7ddb;
			400:DATA <= 24'h7d90;
			401:DATA <= 24'h7d3f;
			402:DATA <= 24'h7cea;
			403:DATA <= 24'h7c90;
			404:DATA <= 24'h7c31;
			405:DATA <= 24'h7bcd;
			406:DATA <= 24'h7b65;
			407:DATA <= 24'h7af7;
			408:DATA <= 24'h7a86;
			409:DATA <= 24'h7a0f;
			410:DATA <= 24'h7993;
			411:DATA <= 24'h7913;
			412:DATA <= 24'h788f;
			413:DATA <= 24'h7805;
			414:DATA <= 24'h7777;
			415:DATA <= 24'h76e5;
			416:DATA <= 24'h764e;
			417:DATA <= 24'h75b2;
			418:DATA <= 24'h7512;
			419:DATA <= 24'h746d;
			420:DATA <= 24'h73c4;
			421:DATA <= 24'h7316;
			422:DATA <= 24'h7264;
			423:DATA <= 24'h71ad;
			424:DATA <= 24'h70f2;
			425:DATA <= 24'h7033;
			426:DATA <= 24'h6f70;
			427:DATA <= 24'h6ea8;
			428:DATA <= 24'h6ddc;
			429:DATA <= 24'h6d0b;
			430:DATA <= 24'h6c37;
			431:DATA <= 24'h6b5e;
			432:DATA <= 24'h6a81;
			433:DATA <= 24'h69a0;
			434:DATA <= 24'h68bb;
			435:DATA <= 24'h67d2;
			436:DATA <= 24'h66e5;
			437:DATA <= 24'h65f4;
			438:DATA <= 24'h64ff;
			439:DATA <= 24'h6406;
			440:DATA <= 24'h6309;
			441:DATA <= 24'h6209;
			442:DATA <= 24'h6104;
			443:DATA <= 24'h5ffc;
			444:DATA <= 24'h5ef1;
			445:DATA <= 24'h5de1;
			446:DATA <= 24'h5cce;
			447:DATA <= 24'h5bb8;
			448:DATA <= 24'h5a9e;
			449:DATA <= 24'h5980;
			450:DATA <= 24'h585f;
			451:DATA <= 24'h573b;
			452:DATA <= 24'h5613;
			453:DATA <= 24'h54e8;
			454:DATA <= 24'h53b9;
			455:DATA <= 24'h5288;
			456:DATA <= 24'h5153;
			457:DATA <= 24'h501b;
			458:DATA <= 24'h4ee0;
			459:DATA <= 24'h4da2;
			460:DATA <= 24'h4c61;
			461:DATA <= 24'h4b1d;
			462:DATA <= 24'h49d6;
			463:DATA <= 24'h488c;
			464:DATA <= 24'h4740;
			465:DATA <= 24'h45f0;
			466:DATA <= 24'h449e;
			467:DATA <= 24'h434a;
			468:DATA <= 24'h41f3;
			469:DATA <= 24'h4099;
			470:DATA <= 24'h3f3d;
			471:DATA <= 24'h3dde;
			472:DATA <= 24'h3c7d;
			473:DATA <= 24'h3b1a;
			474:DATA <= 24'h39b4;
			475:DATA <= 24'h384c;
			476:DATA <= 24'h36e2;
			477:DATA <= 24'h3576;
			478:DATA <= 24'h3408;
			479:DATA <= 24'h3298;
			480:DATA <= 24'h3125;
			481:DATA <= 24'h2fb1;
			482:DATA <= 24'h2e3c;
			483:DATA <= 24'h2cc4;
			484:DATA <= 24'h2b4a;
			485:DATA <= 24'h29cf;
			486:DATA <= 24'h2853;
			487:DATA <= 24'h26d5;
			488:DATA <= 24'h2555;
			489:DATA <= 24'h23d4;
			490:DATA <= 24'h2251;
			491:DATA <= 24'h20cd;
			492:DATA <= 24'h1f48;
			493:DATA <= 24'h1dc2;
			494:DATA <= 24'h1c3a;
			495:DATA <= 24'h1ab2;
			496:DATA <= 24'h1928;
			497:DATA <= 24'h179e;
			498:DATA <= 24'h1612;
			499:DATA <= 24'h1486;
			500:DATA <= 24'h12f9;
			501:DATA <= 24'h116b;
			502:DATA <= 24'hfdc;
			503:DATA <= 24'he4d;
			504:DATA <= 24'hcbe;
			505:DATA <= 24'hb2d;
			506:DATA <= 24'h99d;
			507:DATA <= 24'h80c;
			508:DATA <= 24'h67b;
			509:DATA <= 24'h4e9;
			510:DATA <= 24'h357;
			511:DATA <= 24'h1c6;
			endcase
		end
	end
endmodule
