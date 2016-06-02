package com.effect
{
	import com.system.*;
	import com.gameObject.*;
	
	/*
	* 判断某种资源/某种buff是否达到x.如果达到,执行子effect.
	* 性质参照[门槛].
	* 生效时间是回合结束.
	* 
	* 未实现,占位.
	*/
	public class ConditionEffect2 extends EffectBase
	{
		public function ConditionEffect()
		{
			effectType="ConditionEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			target.mp-=point;
		}
	}
}