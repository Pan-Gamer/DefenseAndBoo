package com.skill
{
	import com.effect.*;
	/*
	* 萌萌千枪
	* 4费,-3人偶,缓攻,4物理攻击,不被被打康.
	*/
	public class Skill_2_8 extends SkillBase
	{
		public function Skill_2_8()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="萌萌千枪";
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
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=4;
			tempEffect.attackSpeed=2;
			var tempEffect4=new RemoveBuffEffect();
			tempEffect4.target=0;
			tempEffect4.buffType="待机人偶";
			tempEffect4.point=3;
			effectList=[tempEffect0,tempEffect,tempEffect4];
		}
	}
}