package com.skill
{
	import com.effect.*;
	/*
	* 曲折的诅咒
	* 4费,-3人偶,1魔法攻击,4回合1魔法伤害的dot.
	*/
	public class Skill_2_9 extends SkillBase
	{
		public function Skill_2_9()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="曲折的诅咒";
			typeList=[];
			cost=4;
			var tempJudge=new BuffCostJudgement();
			tempJudge.type2=">=";
			tempJudge.buffType="待机人偶";
			tempJudge.point=3;
			m_otherCost=[tempJudge];
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=4;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			tempEffect.point=1;
			tempEffect.attackSpeed=2;
			var tempEffect2=new RemoveBuffEffect();
			tempEffect2.target=0;
			tempEffect2.buffType="待机人偶";
			tempEffect2.point=3;
			var tempEffect3=new AddBuffEffect();
			tempEffect3.target=1;
			tempEffect3.buffType="曲折的诅咒";
			tempEffect3.buffDuration=4;
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3];
		}
	}
}