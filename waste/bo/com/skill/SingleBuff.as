package com.skill
{
	public class SingleBuff extends BuffBase
	{
		public function set type(s:String):void
		{
			buffType=s;
		}
		
		public function SingleBuff()
		{
			init();
		}
		
		public function init():void
		{
			buffType="SingleBuff";
		}
	}
}