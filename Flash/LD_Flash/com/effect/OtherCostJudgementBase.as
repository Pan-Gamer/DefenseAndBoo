package com.effect
{
	import com.gameObject.*;
	import com.skill.*;
	
	public class OtherCostJudgementBase
	{
		public var type:String="Base";//判断主体类型
		public var type2:String=">=";//数学判断类型
		public var point:int=0;
		
		public function deal(s:SkillBase,host:PlayerBase):Boolean
		{
			return false;
		}
		
		public function judge(s:SkillBase,host:PlayerBase,...args):Boolean
		{
			return false;
		}
		
		protected function mathJudge(count:int=0):Boolean
		{
			switch(type2)
			{
				case ">=":
					return (count>=point);
					break;
				case "<=":
					return (count<=point);
					break;
				case "==":
					return (count==point);
					break;
				default:
					//error
					return false;
					break;
			}
		}
	}
}