package com.effect
{
	import com.system.*;
	
	//为什么要把cost和lostmp分开呢.我也不知道啊.
	public class CostEffect extends EffectBase
	{
		import com.gameObject.*;
		
		public var point:int=0;
		
		public function CostEffect()
		{
			effectType="CostEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			target.mp-=point;
		}
	}
}