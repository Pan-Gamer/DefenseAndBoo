package com.effect
{
	import com.gameObject.*;
	import com.system.*;
	/*
	* 预期为,在deal之前/之后额外执行某些方法.
	* 未实现,占位.
	*/
	public class AdvanceDamageEffect extends DamageEffect
	{
		public function AdvanceDamageEffect()
		{
			effectType="AdvanceDamageEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			super.deal(target,action,args);
		}
	}
}