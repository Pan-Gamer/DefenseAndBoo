﻿package com.system
{
	import com.skill.*;
	
	public class BuffFactory
	{
		public static function getNewBuff(index:String):BuffBase
		{
			var result:BuffBase=null;
			var tempBuff;
			switch(index)
			{
				case 0:
				case "防":
					result=new Buff0();
					break;
				case 1:
				case "闪":
					result=new Buff1();
					break;
				case 2:
				case "魔免":
					result=new Buff2();
					break;
				case 3:
				case "生死流转":
					result=new Buff3();
					break;
				case 4:
				case "防止伤害":
					result=new Buff4();
					break;
				case 5:
				case "待机人偶":
					result=new Buff5();
					break;
				case "_2_9":
				case "曲折的诅咒":
					result=new Buff_2_9();
					break;
				case "_3_0":
				case "居合剑":
					return new Buff_3_0();
					break;
				case "收刀入鞘":
					tempBuff=new SingleBuff();
					tempBuff.type="收刀入鞘";
					tempBuff.name="收刀入鞘";
					return tempBuff;
					break;
				case "刀光一闪":
					tempBuff=new SingleBuff();
					tempBuff.type="刀光一闪";
					tempBuff.name="刀光一闪";
					return tempBuff;
					break;
				default:
					result=new SingleBuff();
					break;
			}
			return result;
		}
	}
}