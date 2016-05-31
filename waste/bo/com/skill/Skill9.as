package com.skill
{
	import com.effect.*;
	
	public class Skill9 extends SkillBase
	{
		public function Skill9()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="六根清净斩";
			typeList=[];
			cost=5;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=5;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=6;
			var tempEffect2=new SingleEffect();
			tempEffect2.type="破闪";
			effectList=[tempEffect0,tempEffect,tempEffect2];
		}
	}
}