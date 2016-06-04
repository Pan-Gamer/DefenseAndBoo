package com.skill
{
	import com.effect.*;
	import com.util.*;
	/*
	* 人偶战争
	* 6费,消耗所有人偶,缓攻,无法被打康.x魔法攻击.
	*/
	public class Skill_2_10 extends SkillBase
	{
		public function Skill_2_10()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="人偶战争";
			typeList=[];
			cost=6;
			var tempJudge=new BuffCostJudgement();
			tempJudge.type2=">=";
			tempJudge.buffType="待机人偶";
			tempJudge.point=1;
			m_otherCost=[tempJudge];
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=6;
			var tempEffect=new CountXEffect();
			tempEffect.resultIndex=ConstantUtil.DYNAMIC_POINT_X;
			tempEffect.target=0;
			tempEffect.countType="buff";
			tempEffect.countType2="待机人偶";
			var tempEffect2=new DamageEffect();
			tempEffect2.target=1;
			tempEffect2.isAttack=true;
			tempEffect2.isMagic=false;
			tempEffect2.isPhysics=true;
			tempEffect2.point=ConstantUtil.DYNAMIC_POINT_X;
			tempEffect2.attackSpeed=1;
			var tempEffect3=new RemoveBuffEffect();
			tempEffect3.target=0;
			tempEffect3.buffType="待机人偶";
			tempEffect3.point=-1;
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3];
		}
	}
}