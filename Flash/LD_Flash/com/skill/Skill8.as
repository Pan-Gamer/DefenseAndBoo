package com.skill
{
	import com.effect.*;
	
	public class Skill8 extends SkillBase
	{
		public function Skill8()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="未来永劫斩";
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
			tempEffect.attackSpeed=2;
			var tempEffect2=new SingleEffect();
			tempEffect2.type="破防";
			var tempEffect3=new SingleEffect();
			tempEffect3.type="前摇";
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3];
		}
	}
}