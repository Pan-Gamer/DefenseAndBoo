package com.effect
{
	import com.gameObject.*;
	import com.system.*;
	
	public class HealEffect extends EffectBase
	{
		public var point:int=0;
		
		public function HealEffect()
		{
			effectType="HealEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			//todo 减治疗和吸奶
			target.hp+=point;
			if(target.hp>=target.hpMax)
			{
				target.hp=target.hpMax;
			}
		}
	}
}