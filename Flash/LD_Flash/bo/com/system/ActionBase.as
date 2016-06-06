package com.system
{
	import com.skill.*;
	import com.effect.*;
	import com.gameObject.*;
	
	public class ActionBase
	{
		public var m_currentSkill:SkillBase=null;
		public var host:int=0;
		public var hostPlayer:PlayerBase=null;
		
		//临时数据
		public var hasCountered:Boolean=false;//是否被康
		public var hasAttackCountered:Boolean=false;//是否被打康
		//次级临时数据
		public var attackSuccess:Boolean=false;
		public var hasAttackAction:Boolean=false;
		public var dynamicPointX:int=0;
		public var dynamicPointY:int=0;
		
		public function get currentSkill():SkillBase
		{
			return m_currentSkill;
		}
		
		public function set currentSkill(s:SkillBase):void
		{
			m_currentSkill=s.getActionSkill(hostPlayer);
		}
		
		/*
		* 主要功能还是筛skillList的effectList
		* 不排除未来需要筛host的buffList
		*/
		public function containEffect(type:String):Boolean
		{
			if(null!=currentSkill)
			{
				for each(var tempEffect:EffectBase in currentSkill.effectList)
				{
					if(tempEffect.type==type)
					{
						return true;
					}
				}
			}
			return false;
		}
	}
}