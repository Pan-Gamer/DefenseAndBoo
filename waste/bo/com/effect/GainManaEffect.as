package com.effect
{
	import com.gameObject.*;
	
	public class GainManaEffect extends EffectBase
	{
		public var point:int=0;
		
		public override function deal(target:PlayerBase,...args):void
		{
			target.mp+=point;
			if(target.mp>=target.mpMax)
			{
				target.mp=target.mpMax;
			}
		}
	}
}