package com.skill
{
	import com.effect.*;
	
	public class Skill_2_0 extends SkillBase
	{
		public function Skill_2_0()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="十字军人偶";
			typeList=[];
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=1;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=1;
			tempEffect.attackSpeed=1;
			var tempEffect2=new SingleEffect();
			tempEffect2.type="缓攻";
			var tempEffect3=new SingleEffect();
			tempEffect3.type="前摇";
			var tempEffect4=new AddBuffEffect();
			tempEffect4.target=0;
			tempEffect4.isAttack=false;
			tempEffect4.isMagic=false;
			tempEffect4.isPhysics=false;
			tempEffect4.buffType="待机人偶";
			tempEffect4.buffDuration=-1;
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3,tempEffect4];
		}
	}
}