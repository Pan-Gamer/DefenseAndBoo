package com.skill
{
	import com.effect.*;
	
	public class Skill_2_1 extends SkillBase
	{
		public function Skill_2_1()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="射线人偶";
			typeList=[];
			cost=1;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=1;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			tempEffect.point=1;
			tempEffect.attackSpeed=2;
			var tempEffect4=new AddBuffEffect();
			tempEffect4.target=0;
			tempEffect4.isAttack=false;
			tempEffect4.isMagic=false;
			tempEffect4.isPhysics=false;
			tempEffect4.buffType="待机人偶";
			tempEffect4.buffDuration=-1;
			effectList=[tempEffect0,tempEffect,tempEffect4];
		}
	}
}