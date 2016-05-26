package com.system
{
	import com.skill.*;
	
	public class ActionBase
	{
		public var currentSkill:SkillBase=null;
		public var host:int=0;
		
		public var hasCountered:Boolean=false;//是否被康
		public var hasCounterAttacked:Boolean=false;//是否被打康
	}
}