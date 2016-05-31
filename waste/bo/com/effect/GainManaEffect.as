package com.effect
{
	import com.gameObject.*;
	import com.system.*;
	
	public class GainManaEffect extends EffectBase
	{
		public var point:int=0;
		
		public function GainManaEffect()
		{
			effectType="GainManaEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			target.mp+=point;
			if(target.mp>=target.mpMax)
			{
				target.mp=target.mpMax;
			}
		}
	}
}