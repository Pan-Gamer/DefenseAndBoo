package com.effect
{
	import com.system.*;
	import com.gameObject.*;
	
	/*
	* 判断某种资源/某种buff是否达到x.如果达到,执行子effect.
	* 性质参照[门槛].
	* 生效时间应该是施法时h或按攻击速度走.偶尔会是回合结束时~这种考虑单独做个effect了.
	*/
	public class ConditionEffect extends EffectBase
	{
		public var conditionType:String="";
		public var successEffectList:Array=[];
		public var failEffectList:Array=[];
		
		public function ConditionEffect()
		{
			effectType="ConditionEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			var dealEffectCallback=args[0] as Function;
			if(null==dealEffectCallback)
			{
				//error
				return;
			}
			if(condition(target,action))
			{
				for(var i=0;i<successEffectList.length;i++)
				{
					dealEffectCallback(successEffectList[i],action);
				}
			}
			else
			{
				for(i=0;i<failEffectList.length;i++)
				{
					dealEffectCallback(failEffectList[i],action);
				}
			}
			
		}
		
		private function condition(target:PlayerBase,action:ActionBase,...args):Boolean
		{
			switch(conditionType)
			{
				case "actionAttackSuccess":
					return action.attackSuccess;
					break;
			}
			return false;
		}
	}
}