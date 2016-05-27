package com.system
{
	import com.skill.*;
	
	public class BuffFactory
	{
		public static function getNewBuff(index:int):BuffBase
		{
			var result:BuffBase=null;
			switch(index)
			{
				case 0:
					result=new Buff0();
					break;
				case 1:
					result=new Buff1();
					break;
				default:
					result=new SingleBuff();
					break;
			}
			return result;
		}
	}
}