package com.effect
{
	public class SingleEffect extends EffectBase
	{		
		public function SingleEffect()
		{
			effectType="SingleEffect";
		}
		
		public function set type(s:String):void
		{
			effectType=s;
		}
	}
}