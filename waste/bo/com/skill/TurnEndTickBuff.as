package com.skill
{
	public class TurnEndTickBuff extends BuffBase
	{
		public var tickEffectList:Array=[];
		
		public function TurnEndTickBuff()
		{
			init();
		}
		
		public function init():void
		{
			buffType="TurnEndTickBuff";
		}
	}
}