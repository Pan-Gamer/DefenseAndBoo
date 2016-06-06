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
		public var conditionType2:String="";//如果需要,填入
		public var conditionCount:int=1;//如果需要,填入
		public var successEffectList:Array=[];
		public var failEffectList:Array=[];
		
		public function ConditionEffect()
		{
			effectType="ConditionEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{//args[回调,buff,hostaction,enermyaction]
			var dealEffectCallback=args[0] as Function;
			if(null==dealEffectCallback)
			{
				//error
				return;
			}
			if(condition(target,action,args[2],args[3]))
			{
				for(var i=0;i<successEffectList.length;i++)
				{
					if(null!=action)
					{
						dealEffectCallback(successEffectList[i],action);
					}
					else
					{
						dealEffectCallback(successEffectList[i],args[2]);//姑且对付一下
					}
				}
			}
			else
			{
				for(i=0;i<failEffectList.length;i++)
				{
					if(null!=action)
					{
						dealEffectCallback(failEffectList[i],action);
					}
					else
					{
						dealEffectCallback(failEffectList[i],args[2]);//姑且对付一下
					}
				}
			}
		}
		
		private function condition(target:PlayerBase,action:ActionBase,...args):Boolean
		{
			var aimAction:ActionBase;
			switch(this.target)
			{
				case 0:
					aimAction=args[0];
					break;
				case 1:
					aimAction=args[1];
					break;
				default:
					aimAction=action;
					break;
			}
			switch(conditionType)
			{
				case "actionAttackSuccess":
					return aimAction.attackSuccess;
					break;
				case "hasAttackAction":
					return aimAction.hasAttackAction;
					break;
				case "buff":
					return (target.getBuffCount(conditionType2)>=conditionCount);
					break;
			}
			return false;
		}
	}
}