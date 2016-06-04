package com.skill
{
	import com.effect.*;
	import com.gameObject.*;
	/*
	* 子技能.
	* action中使用的currentSkill直接就是子技能.某些地方需要特别处理以转嫁到父技能上,故有此类.
	* 比如cd.
	*
	* 嵌套似乎问题不大.
	* 用了继承关系.发生冲突怎么办...天知道.
	*/
	public class ChildSkill extends SkillBase
	{
		public var parentSkill:SkillBase=null;
		
		public override function get hasCoolDown():Boolean
		{
			if(null!=parentSkill)
			{
				return parentSkill.hasCoolDown;
			}
			else
			{
				//error
			}
			return false;
		}
		
		public override function setCoolDown(type:String="fade",i:int=-1):void
		{
			if(null!=parentSkill)
			{
				parentSkill.setCoolDown(type,i);
			}
			else
			{
				//error
			}
		}
	}
}