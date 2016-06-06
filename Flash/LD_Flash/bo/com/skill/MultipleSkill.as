package com.skill
{
	import com.effect.*;
	import com.gameObject.*;
	/*
	* 下辖多个子技能.
	* 目前来看,cost和生成action时需要使用子技能.
	* 
	*/
	public class MultipleSkill extends SkillBase
	{
		public var childSkillList:Array=[];
		//public var currentChildSkill:SkillBase=null;
		
		/*public function MultipleSkill()
		{
			initTest();
		}
		
		public function initTest():void
		{
			
		}*/
		
		public override function getActionSkill(...args):SkillBase
		{
			return getChildSkill(args[0]);
		}
		
		public function getChildSkill(host:PlayerBase):SkillBase
		{
			//to be override
			return null;
		}
	}
}