package com.effect
{
	import com.gameObject.*;
	import com.system.*;
	/*
		被防时,蹭血或蹭蓝
		暂定为失去生命.
		
		实现方式是一次独立的attack判定,如果对方在防御状态则生效.
		机制上允许物理灵体存在.但灵体对闪并不生效所以尽量少出现.
		失去生命不涉及打康别人,速度理应是最慢,注意会因为特殊效果被打康.
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