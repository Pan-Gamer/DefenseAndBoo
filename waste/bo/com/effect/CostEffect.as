package com.effect
{
	//为什么要把cost和lostmp分开呢.我也不知道啊.
	public class CostEffect extends EffectBase
	{
		import com.gameObject.*;
		
		public var point:int=0;
		
		public override function deal(target:PlayerBase,...args):void
		{
			target.mp-=point;
		}
	}
}