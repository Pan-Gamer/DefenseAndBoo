package com.skill
{
	import com.effect.*;
	
	public class Skill1 extends SkillBase
	{
		public function Skill1()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="波";
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
			effectList=[tempEffect0,tempEffect];
		}
	}
}