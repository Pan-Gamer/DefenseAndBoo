package com.skill
{
	import com.effect.*;
	
	public class Skill_3_2_0 extends SkillBase
	{
		public function Skill_3_2_0()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="倾袈斩0";
			typeList=[];
			cost=2;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=2;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=2;
			tempEffect.attackSpeed=1;
			var tempEffect2=new SingleEffect();
			tempEffect2.type="前摇";
			effectList=[tempEffect0,tempEffect,tempEffect2];
		}
	}
}