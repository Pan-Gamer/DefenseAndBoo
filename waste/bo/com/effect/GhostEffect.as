package com.effect
{
	import com.gameObject.*;
	/*
		被防时,蹭血或蹭蓝
	*/
	public class GhostEffect extends EffectBase
	{
		public var hpPoint:int=0;
		public var mpPoint:int=0;
		
		public override function deal(target:PlayerBase,...args):void
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