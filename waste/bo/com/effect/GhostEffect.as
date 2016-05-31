package com.effect
{
	import com.gameObject.*;
	import com.system.*;
	/*
		被防时,蹭血或蹭蓝
		离别暂定为失去生命.
	*/
	public class GhostEffect extends EffectBase
	{
		public var hpPoint:int=0;
		public var mpPoint:int=0;
		
		public function GhostEffect()
		{
			effectType="GhostEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			if(target.containBuff("防"))
			{
				if(hpPoint>0)
				{
					target.hp-=hpPoint;
				}
				if(mpPoint>0)
				{
					target.mp-=mpPoint;
				}
			}
		}
	}
}