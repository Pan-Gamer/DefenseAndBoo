package com.skill
{
	import com.effect.*;
	
	public class Skill12 extends SkillBase
	{
		public function Skill12()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="折光";
			typeList=[];
			cost=0;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=3;
			var tempEffect=new AddBuffEffect();
			tempEffect.target=0;
			tempEffect.isAttack=false;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=false;
			tempEffect.buffType="防止伤害";
			tempEffect.buffDuration=5;
			tempEffect.point=2;
			effectList=[tempEffect0,tempEffect];
		}
	}
}