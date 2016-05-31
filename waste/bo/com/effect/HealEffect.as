package com.effect
{
	public class HealEffect extends EffectBase
	{
		public var point:int=0;
		
		public function HealEffect()
		{
			effectType="HealEffect";
		}
		
		public override function deal(target:PlayerBase,...args):void
		{
			target.hp+=point;
			if(target.hp>=target.hpMax)
			{
				target.hp=target.hpMax;
			}
		}
	}
}