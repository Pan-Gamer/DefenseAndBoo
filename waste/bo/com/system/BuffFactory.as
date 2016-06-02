package com.system
{
	import com.skill.*;
	
	public class BuffFactory
	{
		public static function getNewBuff(index:String):BuffBase
		{
			var result:BuffBase=null;
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
				default:
					result=new SingleBuff();
					break;
			}
			return result;
		}
	}
}