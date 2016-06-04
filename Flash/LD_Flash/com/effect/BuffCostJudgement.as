package com.effect
{
	import com.gameObject.*;
	import com.skill.*;
	
	public class BuffCostJudgement extends OtherCostJudgementBase
	{
		public var buffType:String="";
		
		public function BuffCostJudgement()
		{
			type="Buff";
		}
		
		public override function judge(s:SkillBase,host:PlayerBase,...args):Boolean
		{
			var count:int=0;
			if(host.containBuff(buffType))
			{
				count=host.getBuffCount(buffType);
			}
			else
			{
				count=0;
			}
			
			return mathJudge(count);
		}
	}
}