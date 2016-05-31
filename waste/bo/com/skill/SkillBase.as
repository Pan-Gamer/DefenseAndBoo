package com.skill
{
	public class SkillBase
	{
		public var name:String="";
		public var typeList:Array=[];//一堆没太大意义的tag
		public var effectList:Array=[];
		public var m_cost:int=0;
		public var coolDown:int=-1;
		public var coolDownMax:int=-1;
		public var coolDownCharge:int=-1;
		public var coolDownChargeMax:int=-1;
		
		public function set cost(i:int):void
		{
			m_cost=i;
		}
		
		public function get cost():int
		{
			return m_cost;
		}
		
		public function getActionSkill(...args):SkillBase
		{
			return this;
		}
	}
}